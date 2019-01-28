<?php
defined('BASEPATH') OR exit('No direct script access allowed');

Class Subject extends CI_Controller {

	public function __construct()
	{
		parent::__construct();

		$this->load->library('user_agent');

		$this->load->helper('form');

		$model = array('subject_model');

		$this->load->model($model);

		$this->twig->addGlobal('session', $this->session);
		$this->twig->addGlobal('uri', $this->uri);
	}

	public function index()
	{
		$data = array(
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
		$description = array(
			'description' => $this->input->post('description')
		);

		$clause = array(
			'id' => $this->input->post('id')
		);

		$this->subject_model->edit($description, $clause);

		$this->session->set_flashdata('message', "<div class='alert alert-success'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>Subject description has been added!</div>");

		redirect(base_url('subject'));
	}
}