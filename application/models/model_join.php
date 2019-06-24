<?php defined('BASEPATH') OR exit('No direct script access allowed');
class model_join extends CI_Model {

	public function getall_ak()
	{
		$this->db->select('*');
		$this->db->from('data_surat_aktifkuliah');
		$this->db->join('data_mahasiswa', 'id_data_mahasiswa');
		$query = $this->db->get();

		return $query->result();
	}

	public function getall_ip()
	{
		$this->db->select('*');
		$this->db->from('data_surat_izinpenelitian');
		$this->db->join('data_mahasiswa', 'id_data_mahasiswa');
		$query = $this->db->get();

		return $query->result();
	}

	public function getall_kp()
	{
		$this->db->select('*');
		$this->db->from('data_surat_kerjapraktek');
		$this->db->join('data_mahasiswa', 'id_data_mahasiswa');
		$query = $this->db->get();

		return $query->result();
	}

	public function getsurat($t)
	{
		$query = $this->db->get($t);
		return $query->result();
	}

	/*public function insert($data1, $data2)
	{
		$this->db->insert('master_departemen', $data1);
		$id_departemen = $this->db->insert_id();

		$data2['id_master_departemen'] = $id_departemen;
		$this->db->insert
	}*/

	public function surat_selesai()
	{
		$jml1 = $this->db->query("SELECT * FROM data_surat_aktifkuliah WHERE proses = 'selesai'");
		$jml2 = $this->db->query("SELECT * FROM data_surat_izinpenelitian WHERE proses_surat = 'selesai'");
		$jml3 = $this->db->query("SELECT * FROM data_surat_kerjapraktek WHERE status_surat = 'selesai'");

		$jml1 = $jml1->num_rows();
		$jml2 = $jml2->num_rows();
		$jml3 = $jml3->num_rows();

		$jumlah = $jml1+$jml2+$jml3;

		return $jumlah;
	}

	public function surat_proses()
	{
		$jml1 = $this->db->query("SELECT * FROM data_surat_aktifkuliah WHERE proses = 'proses'");
		$jml2 = $this->db->query("SELECT * FROM data_surat_izinpenelitian WHERE proses_surat = 'proses'");
		$jml3 = $this->db->query("SELECT * FROM data_surat_kerjapraktek WHERE status_surat = 'proses'");

		$jml1 = $jml1->num_rows();
		$jml2 = $jml2->num_rows();
		$jml3 = $jml3->num_rows();

		$jumlah = $jml1+$jml2+$jml3;

		return $jumlah;
	}

	public function surat_batal()
	{
		$jml1 = $this->db->query("SELECT * FROM data_surat_aktifkuliah WHERE proses = 'batal'");
		$jml2 = $this->db->query("SELECT * FROM data_surat_izinpenelitian WHERE proses_surat = 'batal'");
		$jml3 = $this->db->query("SELECT * FROM data_surat_kerjapraktek WHERE status_surat = 'batal'");

		$jml1 = $jml1->num_rows();
		$jml2 = $jml2->num_rows();
		$jml3 = $jml3->num_rows();

		$jumlah = $jml1+$jml2+$jml3;

		return $jumlah;
	}
}