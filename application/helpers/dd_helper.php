<?php

/**
 * Helper inspecting variable values
 */
defined('BASEPATH') OR exit('No direct script access allowed');

if (!function_exists('dd'))
{
	function dd($data)
	{
		echo '<pre>';
		print_r($data);
		echo '</pre>';
		die;
	}
}

if (!function_exists('array_trim_recursive'))
{
	function array_trim_recursive($data)
	{
		$container = array();

		foreach ($data as $row)
		{
			$container[] = is_array($row) ? array_map('trim', $row) : trim($row);
		}

		return $container;
	}
}