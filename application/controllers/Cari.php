<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Cari extends CI_Controller {
	
	public function prodi(){
		$data1=$_GET['id'];
		$data['prodi']=$this->M_cari->lihatprodi($data1);
		$this->load->view("template/prodi",$data);
		
	}
	public function tentang_kami(){
		$this->load->view("template/tentang-kami");
	}
	public function bantuan(){
		$this->load->view("template/bantuan");
	}
	
	public function informasi_dosen($id){
		$where=array('dosen.id_dosen'=>$id);
		$data['dosen']=$this->M_cari->get_dosen($where,'dosen');
		$data['matkul']=$this->M_cari->get_matkul($where,'dosen');
		$this->load->view("informasi/informasi-dosen",$data);
	}
	
	public function informasi_mahasiswa($id){
		$where=$id;
		$data['mahasiswa']=$this->M_cari->mahasiswa($where);
		$this->load->view("informasi/informasi-mahasiswa",$data);
	}
	
	public function informasi_matkul($id){
		$where=array('id_matkul'=>$id);
		$data['matkul']=$this->M_cari->matkul($where,'mata_kuliah');
		$this->load->view("informasi/informasi-matkul",$data);
	}
	
	public function auto(){
		$keyword=$this->uri->segment(3);
		$data['informasi']=$this->M_cari->lihat($keyword);
		// cari di database
		//$data = $this->db->form('siswa')->like('nama',$keyword)->get();
		
		foreach($data['informasi'] as $row)
		{
			$nama['query']=$keyword;
			$nama['suggestions'][] = array(
				'value'=>$row->pertanyaan,
				
			
				
			);
			
		}
			echo json_encode($nama);
	}
	
}

