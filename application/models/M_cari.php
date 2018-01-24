<?php

class M_cari extends CI_Model{
function input_data($data,$table){
	$this->db->insert($table,$data);
}
function tampil_pertanyaan(){
	$hasil=$this->db->query('select pertanyaan from pertanyaan');
		if($hasil->num_rows() > 0){
			return $hasil->result();
		}else{
			return array();
		}
}
function mahasiswa($where){
	$hasil=$this->db->query("select * from mahsiswa inner join dosen on mahsiswa.id_dosen= dosen.id_dosen where nim= '$where' ");
		if($hasil->num_rows() > 0){
			return $hasil->result();
		}else{
			return array();
		}
}
function matkul($where,$table){
		$hasil=$this->db->get_where($table,$where);
			if($hasil->num_rows() > 0){
			return $hasil->result();
		}else{
			return array();
		}
	//$this->db->join("detail_matkul","dosen.id_dosen=detail_matkul.id_dosen","inner");
	//$this->db->join("mata_kuliah","mata_kuliah.id_matkul=detail_matkul.id_matkul","inner");
	//	$hasil=$this->db->get_where($table,$where);
	//		if($hasil->num_rows() > 0){
	//		return $hasil->result();
	//	}else{
	//		return array();
	//	}
}
function mata_kuliah($value){
	$this->db->select('nama_matkul');
    $this->db->from('mata_kuliah');
	  $this->db->like('nama_matkul',$value);
    $query = $this->db->get();
	return $query->row();
}
function get_dosen($where,$table){
	//$this->db->join("detail_matkul","pembayaran.id_siswa=siswa.id","inner");
	//$this->db->order_by("id_pembayaran","desc");
		$hasil=$this->db->get_where($table,$where);
			if($hasil->num_rows() > 0){
			return $hasil->result();
		}else{
			return array();
		}
}
function get_matkul($where,$table){
	$this->db->join("detail_matkul","dosen.id_dosen=detail_matkul.id_dosen","inner");
	$this->db->join("mata_kuliah","mata_kuliah.id_matkul=detail_matkul.id_matkul","inner");
	$this->db->order_by("mata_kuliah.id_matkul","desc");
		$hasil=$this->db->get_where($table,$where);
			if($hasil->num_rows() > 0){
			return $hasil->result();
		}else{
			return array();
		}
}
//function dosen(){
//	$hasil=$this->db->query("select nama_dosen from dosen ");
//		if($hasil->num_rows() > 0){
//			return $hasil->result();
//		}else{
//			return array();
//		}
//}
//function mahasiswa(){
//	$hasil=$this->db->query("select nama from mahasiswa ");
//		if($hasil->num_rows() > 0){
//			return $hasil->result();
//		}else{
//			return array();
//		}
//}
function whitepos($value){
	$this->db->select('whitepos');
    $this->db->from('whitepos');
	$this->db->where('whitepos',$value);
    $query = $this->db->get();
	return $query->row();
}
function lihat($keyword){
	$hasil=$this->db->query("select * from pertanyaan  WHERE pertanyaan LIKE '%$keyword%'");
		if($hasil->num_rows() > 0){
			return $hasil->result();
		}else{
			return array();
		}
}
function cek_mata_kuliah($value){
	$this->db->select('nama_matkul');
    $this->db->from('mata_kuliah');
	  $this->db->like('nama_matkul',$value);
    $query = $this->db->get();
	return $query->row();
}
function cek_nama_dosen($value){
	$this->db->select('nama_dosen');
    $this->db->from('dosen');
	  $this->db->like('nama_dosen',$value);
    $query = $this->db->get();
	return $query->row();
}
function getpost($value)
{
	$this->db->select('*');
    $this->db->from('pos');
    $this->db->where('kata',$value);
    $query = $this->db->get();
	return $query->row();


}

function getner($value){
	//$hasil=$this->db->query("select ner from mata_kuliah where nama_matkul LIKE '$value%'");
	//	if($hasil->num_rows() > 0){
	//		return $hasil->result();
	//	}else{
	//		return array();
	//	}

		$this->db->select('*');
		$this->db->from('mata_kuliah');
		  $this->db->like('nama_matkul',$value);
		  $query2 =$this->db->get();
		   return $query2->row();
}
function getner2($value){
		//$hasil=$this->db->query("select ner from dosen where nama_dosen LIKE '$value%'");
		//if($hasil->num_rows() > 0){
		//	return $hasil->result();
		//}else{
		//	return array();
		//}
	$this->db->select('*');
	$this->db->from('dosen');
	$this->db->like('nama_dosen',$value,'both');
	$query2 =$this->db->get();
	return $query2->row();
}


function getanswer($u){
	$hasil=$this->db->query("SELECT * FROM dosen INNER JOIN detail_matkul ON dosen.id_dosen=detail_matkul.id_dosen INNER JOIN mata_kuliah on mata_kuliah.id_matkul=detail_matkul.id_matkul WHERE nama_matkul LIKE '%$u%'");
		if($hasil->num_rows() > 0){
			return $hasil->result();
		}else{
			return array();
		}

}
function getanswer2($u){
	$hasil=$this->db->query("SELECT * FROM dosen INNER JOIN detail_matkul ON dosen.id_dosen=detail_matkul.id_dosen INNER JOIN mata_kuliah on mata_kuliah.id_matkul=detail_matkul.id_matkul WHERE nama_dosen LIKE '%$u%'");
		if($hasil->num_rows() > 0){
			return $hasil->result();
		}else{
			return array();
		}
}
function getnomor($u){
	$hasil=$this->db->query("select * from dosen  WHERE nama_dosen LIKE '%$u%'");
		if($hasil->num_rows() > 0){
			return $hasil->result();
		}else{
			return array();
		}
}
function getnama($u){
	$hasil=$this->db->query("select * from dosen WHERE no_induk LIKE '%$u%'");
		if($hasil->num_rows() > 0){
			return $hasil->result();
		}else{
			return array();
		}
}
function getprodi($u){
$hasil=$this->db->query("SELECT * FROM dosen  WHERE prodi LIKE '%$u%' ");
		if($hasil->num_rows() > 0){
			return $hasil->result();
		}else{
			return array();
		}
}
function getjabatan($table,$u){
	$hasil=$this->db->get_where($table, $u);
		if($hasil->num_rows() > 0){
			return $hasil->result();
		}else{
			return array();
		}
}

function get_pembimbing($table,$u){
	$this->db->join("mahsiswa","dosen.id_dosen=mahsiswa.id_dosen","inner");
	$this->db->group_by("nama_dosen");
		$hasil=$this->db->get_where($table,$u);
			if($hasil->num_rows() > 0){
			return $hasil->result();
		}else{
			return array();
		}
	
}
function get_mahasiswa($u){
	$hasil = $this->db->query("select * from mahsiswa inner join dosen on mahsiswa.id_dosen=dosen.id_dosen where nama_dosen LIKE '%$u%'");
	//$this->db->join("mahsiswa","dosen.id_dosen=mahsiswa.id_dosen","inner");
	//$this->db->group_by("nama_dosen");
		//$hasil=$this->db->like($table,$u,'both');
			if($hasil->num_rows() > 0){
			return $hasil->result();
		}else{
			return array();
		}
	
}
function get_waktu($u){
			$hasil=$this->db->query("SELECT * FROM dosen INNER JOIN detail_matkul ON dosen.id_dosen=detail_matkul.id_dosen INNER JOIN mata_kuliah on mata_kuliah.id_matkul=detail_matkul.id_matkul WHERE mata_kuliah.nama_matkul LIKE '%$u%'");
		if($hasil->num_rows() > 0){
			return $hasil->result();
		}else{
			return array();
		}
	
}
function get_tampilmatkul($u,$table){
			$hasil=$this->db->get_where($table,$u);
			if($hasil->num_rows() > 0){
			return $hasil->result();
			}else{
				return array();
			}
}

function get_bayaran($u,$table){
	$hasil=$this->db->get_where($table,$u);
			if($hasil->num_rows() > 0){
			return $hasil->result();
			}else{
				return array();
			}
}
function get_krs($u,$table){
	$hasil=$this->db->get_where($table,$u);
			if($hasil->num_rows() > 0){
			return $hasil->result();
			}else{
				return array();
			}
}

function get_matkulgenap(){
	$hasil=$this->db->query("SELECT * FROM mata_kuliah  WHERE semester %2 = 0 ");
		if($hasil->num_rows() > 0){
			return $hasil->result();
		}else{
			return array();
		}
}

function get_matkulganjil(){
	$hasil=$this->db->query("SELECT * FROM mata_kuliah  WHERE semester %2 <> 0 ");
		if($hasil->num_rows() > 0){
			return $hasil->result();
		}else{
			return array();
		}
}

function get_tampildosen($u){
	$hasil= $this->db->query("SELECT * FROM dosen INNER JOIN detail_matkul ON dosen.id_dosen=detail_matkul.id_dosen INNER join mata_kuliah on mata_kuliah.id_matkul=detail_matkul.id_matkul where nama_dosen LIkE '%$u%' ");
			if($hasil->num_rows() > 0){
			return $hasil->result();
		}else{
			return array();
		}
}

function getsyarat($u){
$hasil=$this->db->query("select * from mata_kuliah WHERE nama_matkul LIKE '%$u%'");
		if($hasil->num_rows() > 0){
			return $hasil->result();
		}else{
			return array();
		}
}
function lihatprodi($data1){
	$hasil=$this->db->query("SELECT * FROM dosen INNER JOIN detail_matkul ON dosen.id_dosen=detail_matkul.id_dosen INNER JOIN mata_kuliah on mata_kuliah.id_matkul=detail_matkul.id_matkul WHERE detail_matkul.id_dosen LIKE '%$data1%' ");
		if($hasil->num_rows() > 0){
			return $hasil->result();
		}else{
			return array();
		}
}



function cekpertanyaan($value){ //catatan (saya tambahkan)
	$this->db->select('pertanyaan');
	$this->db->from('pertanyaan');
	$this->db->where('pertanyaan',$value);
	$query = $this->db->get();

	if($query->num_rows() > 0){
		return true;
	}else{
		return false;
	}
}

function datamatkul(){ //catatan (saya tambahkan)
	$this->db->select('nama_matkul');
	$this->db->from('mata_kuliah');
	$query = $this->db->get();
	return $query->result_array();
}

function datadosen(){ //catatan (saya tambahkan)
	$this->db->select('nama_dosen');
	$this->db->from('dosen');
	$query = $this->db->get();
	return $query->result_array();
}
function datajabatan(){ //catatan (saya tambahkan)
	$this->db->select('jabatan');
	$this->db->from('dosen');
	$query = $this->db->get();
	return $query->result_array();
}
function datafakultas(){ //catatan (saya tambahkan)
	$this->db->select('fakultas');
	$this->db->from('dosen');
	$query = $this->db->get();
	return $query->result_array();
}
function datajurusan(){ //catatan (saya tambahkan)
	$this->db->select('jurusan');
	$this->db->from('mahsiswa');
	$query = $this->db->get();
	return $query->result_array();
}

}
