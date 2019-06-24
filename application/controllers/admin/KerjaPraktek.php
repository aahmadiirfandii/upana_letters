<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class KerjaPraktek extends MY_Controller {

    // Load database
    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
    	$this->load->model('model_join');
        $data = array(  'title'     => 'Administrator | Halaman Arsip Surat Kerja Praktek',
                        //'subtitle'  => 'Selamat datang, '.$this->session->fullname.'.',
                        'isi'       => 'admin/arsipKP',
                        'data'      => $this->model_join->getall_kp());
        $this->load->view('admin/_layout/wrapper', $data);
    }

}