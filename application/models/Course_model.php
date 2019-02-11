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

	public function read($id)
	{
		$query = $this->db->get_where('courses_tbl', array('id' => $id));

		return $query->row_array();
	}

	public function delete($id)
	{
		$query = $this->db->delete('courses_tbl', array('id' => $id));
	}
}
