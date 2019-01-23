<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User_model extends CI_Model {

	public function __construct()
	{
		$this->load->database();
	}

	/**
	 * Validate user credentials
	 */
	public function authenticate($params)
	{
		$fields = array('ut.id', 'ut.username', 'ut.email', 'pit.fullname', 'rt.name AS user_type');

		$query = $this->db->select($fields)->from('users_tbl as ut')
				->join('personal_info_tbl as pit', 'ut.p_id = pit.id', 'INNER')
				->join('user_role_tbl as urt', 'urt.user_id = ut.id', 'INNER')
				->join('roles_tbl AS rt', 'rt.id = urt.role_id', 'INNER')
				->where($params)->get();

		if ($query->num_rows())
		{
			return $query->row_array();
		}

		return false;
	}

	public function fetch()
	{
		$fields = ['ut.username', 'pit.fullname', 'pit.birthdate', 'pit.gender', 'pit.mobile', 'ut.email'];

		$query = $this->db->select($fields)->from('users_tbl as ut')
				->join('personal_info_tbl as pit', 'ut.p_id = pit.id', 'INNER')
				->join('user_role_tbl as urt', 'urt.user_id = ut.id', 'INNER')
				->join('roles_tbl AS rt', 'rt.id = urt.role_id', 'INNER')
				->get();

		return $query->result();
	}

	public function store($params)
	{
		$this->db->insert('users_tbl', $params);

		return $this->db->insert_id();
	}

	public function storePersonalInfo($params)
	{
		$this->db->insert('personal_info_tbl', $params);

		return $this->db->insert_id();
	}

	public function storeUserRole($params)
	{
		$this->db->insert('user_role_tbl', $params);

	}
}