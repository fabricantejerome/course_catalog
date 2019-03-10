<?php
defined('BASEPATH') OR exit('No direct script access allowed');

Class Subject extends CI_Controller {

	public function __construct()
	{
		parent::__construct();

		$this->load->library('user_agent');

		$this->load->helper('form');

		$model = array('subject_model', 'log_model');

		$this->load->model($model);

		$this->twig->addGlobal('session', $this->session);
		$this->twig->addGlobal('uri', $this->uri);
	}

	public function index()
	{
		$data = array(
			'title'    => 'Subjects',
			'entities' => $this->subject_model->fetch()
		);

		$this->twig->display('subjects/list_view', $data);
	}

	public function edit()
	{
		$id = $this->uri->segment(3);

		$data = array(
			'entity' => $this->subject_model->read($id)
		);

		$this->twig->display('subjects/form_view', $data);
	}

	public function store()
	{
		$data = array_map('trim', $this->input->post());

		$upload	= $this->_handleUpload();

		if (is_array($upload))
		{
			$config = array(
				'title'       => $data['title'],
				'description' => $data['description'],
				'attachment'  => $upload['file_name'],
				'size'        => $upload['file_size'],
				'path'        => base_url('/resources/upload/' . $upload['file_name'])
			);

			$clause = array(
				'id' => $data['id']
			);

			$this->subject_model->edit($config, $clause);

			$config = array(
				'name'         => $this->session->userdata('fullname'),
				'user_type'    => $this->session->userdata('user_type'),
				'activity'     => 'Edited subject!',
				'date_created' => date('Y-m-d H:i:s')
			);

			$this->log_model->store($config);

			$this->session->set_flashdata('message', "<div class='alert alert-success'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>Subject description has been added!</div>");
		}
		else
		{
			$this->session->set_flashdata('message', '<div class="alert alert-error">' . $upload . '</div>');
		}

		redirect(base_url('subject'));
	}

	protected function _handleUpload()
	{
		// Configuration
		$config = array(
				'upload_path'   => './resources/upload',
				'allowed_types' => 'pdf', // Allow only define types to be uploaded
				'max_size'      => 100000 // Set the maximum file size to 10mb
			);

		$this->load->library('upload', $config);

		if (!$this->upload->do_upload('attachment'))
		{
			$error = array('error' => $this->upload->display_errors());

			return $this->upload->display_errors();
		}

		return $this->upload->data();
	}
}