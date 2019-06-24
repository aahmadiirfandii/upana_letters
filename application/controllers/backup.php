<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
		$this->load->view('welcome_message');
	}
	public function cek_surat($kode = "INV")
    {
    	if($kode = "INV")
    	{
    		$query = $this->db->query("SELECT nomor_surat FROM  data_suratinvoice");
    		$query = $query->row_array();
    		$data = explode("/", $query["nomor_surat"]);
    		if($query>0)
    		{
    		$bulan = date('n');
            var_dump($bulan);
            die();
    			if(date('Y') == $data[4]->row_array())
    			{
    				if(number_to_roman($bulan) == $data[3]->row_array())
    				{
    					$surat = $data[0]+1;
    					$surat = $surat."/".$kode."/USI".number_to_roman($bulan)."/".date("Y");
    					echo $surat;
    				}
    				else
    				{
    					$surat = "0001/".$kode."/USI".number_to_roman($bulan)."/".date("Y");
    					echo $surat;
    				}
    			}
    			else
    			{
    				$surat = "0001/".$kode."/USI".number_to_roman($bulan)."/".date("Y");
    				echo $surat;
    			}
    		}
    		else
    		{
    			$surat = "0001/".$kode."/USI".number_to_roman($bulan)."/".date("Y");
    			echo $surat;
    		}
    	}
    	elseif ($kode = "SPK-01") 
    	{
    		$query = ("SELECT nomor_surat FROM  data_suratspk01");
    		$bulan = date('n');
    		$data = explode("/", $query);
    		if($query->num_rows()>0)
    		{
    			if(date('Y') == $data[4]->row_array())
    			{
    				if(number_to_roman($bulan) == $data[3]->row_array())
    				{
    					$surat = $data[0]+1;
    					$surat = $surat."/".$kode."/USI".number_to_roman($bulan)."/".date("Y");
    				}
    				else
    				{
    					$surat = "0001/".$kode."/USI".number_to_roman($bulan)."/".date("Y");
    				}
    			}
    			else
    			{
    				$surat = "0001/".$kode."/USI".number_to_roman($bulan)."/".date("Y");
    			}
    		}
    		else
    		{
    			$surat = "0001/".$kode."/USI".number_to_roman($bulan)."/".date("Y");
    		}
    	}
    	elseif ($kode = "SPK-02") 
    	{
    		$query = ("SELECT nomor_surat FROM  data_suratspk02");
    		$bulan = date('n');
    		$data = explode("/", $query);
    		if($query->num_rows()>0)
    		{
    			if(date('Y') == $data[4]->row_array())
    			{
    				if(number_to_roman($bulan) == $data[3]->row_array())
    				{
    					$surat = $data[0]+1;
    					$surat = $surat."/".$kode."/USI".number_to_roman($bulan)."/".date("Y");
    				}
    				else
    				{
    					$surat = "0001/".$kode."/USI".number_to_roman($bulan)."/".date("Y");
    				}
    			}
    			else
    			{
    				$surat = "0001/".$kode."/USI".number_to_roman($bulan)."/".date("Y");
    			}
    		}
    		else
    		{
    			$surat = "0001/".$kode."/USI".number_to_roman($bulan)."/".date("Y");
    		}
    	}
    }
}
