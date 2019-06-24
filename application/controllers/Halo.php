<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Halo extends CI_Controller {

	public function index()
	{
		$this->load->view('login');
	}

	public function test()
	{
		$angka = 1213113;
		echo terbilang($angka);
	}

	public function cek_surat()
	{
		$kode = $this->input->post('prodi');
		$this->nomor_surat->cek_surat($kode);
	}

	public function tampil_surat()
	{
		$this->load->model('model_crud');
		$a['data'] = $this->model_crud->ga('data_suratinvoice');
		$this->load->view('tes', $a);
	}

}