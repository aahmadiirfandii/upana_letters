<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class BuatSurat extends MY_Controller {

    // Load database
    public function __construct()
    {
        parent::__construct();
    	$this->load->model('model_join');
        $this->load->model('model_crud');
    }

    public function index()
    {
        $data = array(  'title'     => 'Administrator | Halaman Arsip Surat Izin Penelitian',
                        //'subtitle'  => 'Selamat datang, '.$this->session->fullname.'.',
                        'isi'       => 'admin/BuatSurat/spk-01',
                        'data'      => $this->model_join->getsurat('master_surat'));
        /*var_dump($data);
        die();*/
        $this->load->view('admin/_layout/wrapper', $data);
    }

    public function cek_surat()
    {
        $kode = $this->input->post('jenissurat');
        /*var_dump($kode);
        die();*/
        if($kode == "SPK01")
        {
            $kode = $this->nomor_surat->cek_surat($kode);
            $data = array(
                    'pemohon' => $this->input->post('pemohon'),
                    'nomor_surat' => $kode,
                    'perusahaan' => $this->input->post('perusahaan'),
                    'jabatan_pemohon' => $this->input->post('jabatan'),
                    'alamat' => $this->input->post('alamat'),
                    'pesanan' => $this->input->post('pesanan'),
                    'waktu_kerja' => $this->input->post('waktu'),
                    'harga' => $this->input->post('harga'),
                    'bank' => $this->input->post('bank'),
                    'no_rekening' => $this->input->post('rekening'),
                    'pemilik_rekening' => $this->input->post('pemilik')
                );
            $this->model_crud->i('data_suratspk01', $data);
        }
        elseif ($kode == "SPK02") 
        {
            $lahir = $this->input->post('ttl');
            $lahir = explode(",", $lahir);
            $kode = $this->nomor_surat->cek_surat($kode);
            $data = array(
                    'pemohon' => $this->input->post('pemohon'),
                    'nomor_surat' => $kode,
                    'tempat_lahir' => $lahir[0],
                    'tanggal_lahir' => $lahir[1],
                    'alamat' => $this->input->post('alamat'),
                    'agama' => $this->input->post('agama'),
                    'no_ktp' => $this->input->post('ktp'),
                    'tugas' => $this->input->post('tugas'),
                    'waktu_kerja' => $this->input->post('waktu'),
                    'tanggal_selesai' => $this->input->post('lama_kerja'),
                    'harga' => $this->input->post('harga')
                );
            $this->model_crud->i('data_suratspk02', $data);
        }
        elseif ($kode == "INV") 
        {
            $kode = $this->nomor_surat->cek_surat($kode);
            $data = array(
                    'pengirim' => $this->input->post('pengirim'),
                    'nomor_surat' => $kode,
                    'projek' => $this->input->post('projek'),
                    'tanggal' => $this->input->post('tanggal'),
                    'deskripsi' => $this->input->post('deskripsi'),
                    'harga' => $this->input->post('harga')
                );
            $this->model_crud->i('data_suratinvoice', $data);
        }
    }

    public function SPK01(){
        $data = array(  'title'     => 'Administrator | Halaman Arsip Surat Izin Penelitian',
                        //'subtitle'  => 'Selamat datang, '.$this->session->fullname.'.',
                        'isi'       => 'admin/BuatSurat/spk-01',
                        'data'      => $this->model_join->getsurat('master_surat'));
        $this->load->view('admin/_layout/wrapper', $data);
    }

    public function SPK02()
    {
        $data = array(  'title'     => 'Administrator | Halaman Arsip Surat Izin Penelitian',
                        //'subtitle'  => 'Selamat datang, '.$this->session->fullname.'.',
                        'isi'       => 'admin/BuatSurat/spk-01',
                        'data'      => $this->model_join->getsurat('master_surat'));
        $this->load->view('admin/_layout/wrapper', $data);
    }

    public function INV()
    {
       $data = array(  'title'     => 'Administrator | Halaman Arsip Surat Izin Penelitian',
                        //'subtitle'  => 'Selamat datang, '.$this->session->fullname.'.',
                        'isi'       => 'admin/BuatSurat/spk-01',
                        'data'      => $this->model_join->getsurat('master_surat'));
        $this->load->view('admin/_layout/wrapper', $data);
    }

}