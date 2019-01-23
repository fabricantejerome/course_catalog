<?php
defined('BASEPATH') OR exit('No direct script access allowed');

Class User extends CI_Controller {

	public function __construct()
	{
		parent::__construct();

		$models = ['user_model', 'role_model'];

		$this->load->model($models);

		$this->load->library('user_agent');

		$this->load->helper('form');

		$this->twig->addGlobal('session', $this->session);
		$this->twig->addGlobal('uri', $this->uri);

		$this->_redirectUnauthorized();
	}

	public function index()
	{
		$data = [
			'title'    => 'List of Users',
			'entities' => $this->user_model->fetch()
		];

		$this->twig->display('users/list_view', $data);
	}

	public function create()
	{
		$data = [
			'title'    => 'Create New User',
			'roles'    => $this->role_model->fetch(),
		];

		$this->twig->display('users/form_view', $data);
	}

	public function store()
	{
		$personal = [
			'fullname'  => strtoupper($this->input->post('fullname')),
			'gender'    => $this->input->post('gender'),
			'birthdate' => date('Y-m-d', strtotime($this->input->post('birthdate'))),
			'address'   => strtoupper($this->input->post('address')),
			'mobile'    => $this->input->post('mobile')
		];

		$p_id = $this->user_model->storePersonalInfo($personal);

		$user = [
			'username' => $this->input->post('username'),
			'password' => $this->input->post('password'),
			'email'    => $this->input->post('email'),
			'p_id'     => $p_id,
		];

		$user_id = $this->user_model->store($user);

		$user_role = [
			'user_id' => $user_id,
			'role_id' => $this->input->post('user_type')
		];

		$this->user_model->storeUserRole($user_role);

		$this->session->set_flashdata('message', "<div class='alert alert-success'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>Account has been created!</div>");

		redirect(base_url('user'));
	}

	protected function _redirectUnauthorized()
	{
		if (count($this->session->userdata()) < 3)
		{
			$this->session->set_flashdata('message', "<div class='alert alert-warning'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>You don't have permission to access the page!</div>");
			redirect(base_url());
		}
	}
}