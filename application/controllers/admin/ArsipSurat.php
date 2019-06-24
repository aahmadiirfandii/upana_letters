<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class ArsipSurat extends MY_Controller {

    // Load database
    public function __construct()
    {
        parent::__construct();
    }

    public function Invoice()
    {
    	$this->load->model('model_join');
		$data = array(  'title'     => 'Administrator | Halaman Arsip Surat Aktif Kuliah',
                        //'subtitle'  => 'Selamat datang, '.$this->session->fullname.'.',
                        'isi'       => 'admin/ArsipSurat/arsipAK',
                    	'data'		=> $this->model_join->getall_ak());
        $this->load->view('admin/_layout/wrapper', $data);
    }

    public function SPK01()
    {
        $this->load->model('model_join');
        $data = array(  'title'     => 'Administrator | Halaman Arsip Surat Aktif Kuliah',
                        //'subtitle'  => 'Selamat datang, '.$this->session->fullname.'.',
                        'isi'       => 'admin/ArsipSurat/arsipKP',
                        'data'      => $this->model_join->getall_kp());
        $this->load->view('admin/_layout/wrapper', $data);
    }

    public function SPK02()
    {
        $this->load->model('model_join');
        $data = array(  'title'     => 'Administrator | Halaman Arsip Surat Aktif Kuliah',
                        //'subtitle'  => 'Selamat datang, '.$this->session->fullname.'.',
                        'isi'       => 'admin/ArsipSurat/arsipIP',
                        'data'      => $this->model_join->getall_ip());
        $this->load->view('admin/_layout/wrapper', $data);
    }

}