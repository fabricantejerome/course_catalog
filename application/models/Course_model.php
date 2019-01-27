<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Course_model extends CI_Model {

	public function __construct()
	{
		$this->load->database();
	}

	public function fetch()
	{
		$query = $this->db->get('courses_tbl');

		return $query->result_array();
	}

	public function store($param)
	{
		if (!empty($param['code']) && !empty($param['title']))
		{
			$this->db->insert('courses_tbl', $param);

			return $this->db->insert_id();
		}
		
		return false;
	}
}
