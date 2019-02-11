<?php
defined('BASEPATH') OR exit('No direct script access allowed');

Class Log extends CI_Controller {

	public function __construct()
	{
		parent::__construct();

		$this->load->library('user_agent');

		$model = array('log_model');

		$this->load->model($model);

		$this->twig->addGlobal('session', $this->session);
		$this->twig->addGlobal('uri', $this->uri);
	}

	public function index()
	{
		$data = array(
			'title'    => 'Logs',
			'entities' => $this->log_model->fetch() 
		);

		$this->twig->display('logs/list_view', $data);

	}
}