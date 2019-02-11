<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Log_model extends CI_Model {

	public function __construct()
	{
		$this->load->database();
	}

	public function fetch()
	{
		return $this->db->get('logs_tbl')->result_array();
	}

	public function store($param)
	{
		$this->db->insert('logs_tbl', $param);
	}
}