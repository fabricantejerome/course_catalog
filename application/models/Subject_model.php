<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Subject_model extends CI_Model {

	public function __construct()
	{
		$this->load->database();
	}

	public function fetch()
	{
		$fields = array('st.id', 'st.code', 'st.title', 'st.units', 'ct.code AS course');

		$query = $this->db->select($fields)
				->from('subjects_tbl AS st')
				->join('courses_tbl AS ct', 'st.course_id = ct.id', 'INNER')
				->get();

		return $query->result_array();
	}

	public function read($id)
	{
		$fields = array('st.id', 'st.code', 'st.title', 'st.units', 'ct.code AS course', 'st.description');

		$query = $this->db->select($fields)
				->from('subjects_tbl AS st')
				->join('courses_tbl AS ct', 'st.course_id = ct.id', 'INNER')
				->where('st.id', $id)
				->get();

		return $query->row_array();
	}

	public function store($args)
	{
		$this->db->trans_begin();
		$this->db->insert_batch('subjects_tbl', $args);

		if ($this->db->trans_status() == FALSE) {
			$this->db->trans_rollback();

			return false;
		}
		else {
			$this->db->trans_commit();

			return true;
		}
	}

	public function edit($description, $id)
	{
		$this->db->update('subjects_tbl', $description, $id);
	}

	public function fetchByCourseId($course_id)
	{
		$query = $this->db->get_where('subjects_tbl', array('course_id' => $course_id));

		return $query->result_array();
	}

	public function delete($course_id)
	{
		$query = $this->db->delete('subjects_tbl', array('course_id' => $course_id));
	}

	public function search($course_code)
	{
		$query = $this->db->select('*')->from('subjects_tbl')->like($course_code)->get();

		return $query->row_array();
	}

	public function fetchResult($param)
	{
		$query= $this->db->select('*')->from('subjects_tbl')->like($param)->group_by('title', 'ASC')->get();

		return $query->result_array();
	}

	public function fetchByTitle()
	{
		$fields = array('st.id', 'st.code', 'st.title', 'st.units', 'st.description', 'st.attachment', 'st.path', 'ct.code AS course');

		$query = $this->db->select($fields)
				->from('subjects_tbl AS st')
				->join('courses_tbl AS ct', 'st.course_id = ct.id', 'INNER')
				->group_by('st.title')
				->order_by('st.code')
				->get();

		return $query->result_array();
	}
}