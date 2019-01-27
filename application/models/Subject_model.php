<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Subject_model extends CI_Model {

	public function __construct()
	{
		$this->load->database();
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
}