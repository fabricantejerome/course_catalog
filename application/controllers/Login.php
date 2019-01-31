<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	public function __construct()
	{
		parent::__construct();

		$this->load->model('user_model');
		$this->load->helper('form');
		$this->twig->addGlobal('session', $this->session);
	}

	public function index()
	{
		$this->twig->display('login');
	}

	public function authenticate()
	{
		$user_data = $this->user_model->authenticate($this->input->post());

		if ($user_data)
		{
			$this->session->set_userdata($user_data);

			redirect(base_url('curriculum/dashboard'));
			
		}

		$this->session->set_flashdata('message', "<div class='alert alert-warning'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>You don't have rights to access this system!</div>");

		redirect(base_url('login'));
	}

	public function template()
	{
		$this->load->view('partials/template');
	}

	public function logout()
	{
		$this->session->sess_destroy();

		redirect(base_url('login'));
	}

}