<?php
defined('BASEPATH') OR exit('No direct script access allowed');

Class Curriculum extends CI_Controller {

	public function __construct()
	{
		parent::__construct();

		$this->load->library('user_agent');

		$this->load->helper('form');

		$model = array('course_model', 'subject_model');

		$this->load->model($model);

		$this->twig->addGlobal('session', $this->session);
		$this->twig->addGlobal('uri', $this->uri);
	}

	public function index()
	{
		$data = array(
			'title'    => 'Curriculum',
			'entities' => $this->course_model->fetch()
		);

		$this->twig->display('curriculum/list_view', $data);
	}

	public function create()
	{
		$this->twig->display('curriculum/form_view');
	}

	public function edit()
	{
		$id = $this->uri->segment(3);

		$data = array(
			'id' => $id
		);

		$this->twig->display('curriculum/edit_view', $data);
	}

	public function delete()
	{
		$id = $this->uri->segment(3);

		$this->course_model->delete($id);
		$this->subject_model->delete($id);

		$this->session->set_flashdata('message', "<div class='alert alert-success'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>The curriculum has been deleted!</div>");

		return redirect(base_url('curriculum'));
	}

	public function dashboard()
	{
		$this->twig->display('curriculum/dashboard_view');
	}

	public function ajaxFetchSubjects()
	{
		$data = json_decode(file_get_contents( "php://input"), true);

		$year_level = array(1 => 'firstYear', 2 => 'secondYear', 3 => 'thirdYear', 4 => 'fourthYear');
		$sem_terms  = array(1 => 'firstSem', 2 => 'secondSem');
		$container  = array();
		$year_tracker = 0;
		$sem_tracker = 0;

		$programs = $this->subject_model->fetchByCourseId($data['id']);

		foreach ($programs as $key => $entity)
		{
			if ($entity['year'] != $year_tracker)
			{
				$year_tracker =  $entity['year'];
			}

			if ($entity['sem'] != $sem_tracker)
			{
				$sem_tracker =  $entity['sem'];
			}

			$container[$year_level[$year_tracker]][$sem_terms[$sem_tracker]][] = array(
				'id'          => $entity['id'],
				'code'        => $entity['code'],
				'title'       => $entity['title'],
				'units'       => $entity['units'],
				'description' => $entity['description']
			);
		}

		return $this->output->set_content_type('application/json')->set_output(json_encode($container));
	}

	public function ajaxReadCourse()
	{
		$data = json_decode(file_get_contents( "php://input"), true);

		$course = $this->course_model->read($data['id']);

		return $this->output->set_content_type('application/json')->set_output(json_encode($course));
	}

	public function ajaxFetchCourses()
	{
		$courses = $this->course_model->fetch();

		return $this->output->set_content_type('application/json')->set_output(json_encode($courses));
	}

	public function store()
	{
		$data = json_decode(file_get_contents( "php://input"), true);
		
		$course = $data['course'];

		$subjects = $data['subjects'];

		$course_id = $this->course_model->store($course);

		$config = $this->_handleStoreData($subjects, $course_id);

		$this->subject_model->store($config);
	}

	protected function _handleStoreData($curriculum, $course_id)
	{
		$year_level = array(
			'firstYear'  => 1,
			'secondYear' => 2,
			'thirdYear'  => 3,
			'fourthYear' => 4
		);

		$semester_term = array(
			'firstSem'  => 1,
			'secondSem' => 2
		);

		$container = array();

		foreach ($curriculum as $year => $years)
		{
			foreach ($years as $sem => $semesters)
			{
				foreach ($semesters as $key => $subject)
				{
					if (!empty($subject['code']) && !empty($subject['title']) && !empty($subject['units']))
					{
						$container[] = array(
							'code'      => $subject['code'],
							'title'     => $subject['title'],
							'units'     => $subject['units'],
							'year'      => $year_level[$year],
							'sem'       => $semester_term[$sem],
							'course_id' => $course_id
						);
					}	
				}
			}
		}

		return $container;
	}
}