<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class ProsesAktifKuliah extends MY_Controller {

    // Load database
    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
    	$this->load->model('model_join');
		$data = array(  'title'     => 'Administrator | Halaman Proses Surat Aktif Kuliah',
                        //'subtitle'  => 'Selamat datang, '.$this->session->fullname.'.',
                        'isi'       => 'admin/suratAK',
                    	'data'		=> $this->model_join->getall_ak());
        $this->load->view('admin/_layout/wrapper', $data);
    }

}