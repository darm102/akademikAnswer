<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function index()
	{

		$this->load->view('Welcome');
	}
	public function atas(){
		//$data1=$_GET['id'];
		$this->load->view('template/header2');
	}
	public function error(){
		$this->load->view("hasil/error");
	}
	public function token(){

		$data=$this->input->get("search");
		$data1 = str_replace(' ', ' ', $data);// menghilangkan spasi berlebih
		$kalimat= strtolower($data1);
    $data = array( //catatan (saya tambahkan)
        'matkul' => $this->M_cari->datamatkul(),
        'dosen' =>  $this->M_cari->datadosen(),
		'jabatan'=> $this->M_cari->datajabatan(),
		'fakultas'=> $this->M_cari->datafakultas(),
		'jurusan'=>  $this->M_cari->datajurusan()
    );
	
	foreach($data['matkul'] as $value){ //catatan (saya tambahkan)
	if(preg_match('/\s/',$value['nama_matkul'])==1){ //catatan (kalau ada space pada data nama matakuliah)
		$replacedata = preg_replace('/\s+/', '@', $value['nama_matkul']); //catatan (mengganti space menjadi @ pada data nama matakuliah)
		$kalimat = str_replace($value['nama_matkul'],$replacedata,$kalimat);
	}
	}
	foreach($data['dosen'] as $value){ //catatan (saya tambahkan)
	if(preg_match('/\s/',$value['nama_dosen'])==1){ //catatan (kalau ada space pada data nama dosen)
		$replacedata = preg_replace('/\s+/', '@', $value['nama_dosen']); //catatan (mengganti space menjadi @ pada data nama dosen)
		$kalimat = str_replace($value['nama_dosen'],$replacedata,$kalimat);
	}
	}
	foreach($data['jabatan'] as $value){ //catatan (saya tambahkan)
	if(preg_match('/\s/',$value['jabatan'])==1){ //catatan (kalau ada space pada data nama dosen)
		$replacedata = preg_replace('/\s+/', '@', $value['jabatan']); //catatan (mengganti space menjadi @ pada data nama dosen)
		$kalimat = str_replace($value['jabatan'],$replacedata,$kalimat);
	}
	}
	foreach($data['fakultas'] as $value){ //catatan (saya tambahkan)
	if(preg_match('/\s/',$value['fakultas'])==1){ //catatan (kalau ada space pada data nama dosen)
		$replacedata = preg_replace('/\s+/', '@', $value['fakultas']); //catatan (mengganti space menjadi @ pada data nama dosen)
		$kalimat = str_replace($value['fakultas'],$replacedata,$kalimat);
	}
	}
  foreach($data['jurusan'] as $value){ //catatan (saya tambahkan)
   if(preg_match('/\s/',$value['jurusan'])==1){ //catatan (kalau ada space pada data nama dosen)
     $replacedata = preg_replace('/\s+/', '@', $value['jurusan']); //catatan (mengganti space menjadi @ pada data nama dosen)
     $kalimat = str_replace($value['jurusan'],$replacedata,$kalimat);
    }
  }
	$tanda['informasi']=preg_split("/ +/ ",$kalimat);
		if(end($tanda['informasi'])=="?"){
			array_pop($tanda['informasi']);
			foreach ($tanda['informasi'] as $value) {		//catatan (saya tambahkan(mengembalikan @ menajdi space))
	
				$value = str_replace("@"," ",$value);
				$tanda['newinformasi'][] = $value;
		
			}
		$this->getpos($tanda);
		}else{
				foreach ($tanda['informasi'] as $value) {		//catatan (saya tambahkan(mengembalikan @ menajdi space))
	
				$value = str_replace("@"," ",$value);
				$tanda['newinformasi'][] = $value;
		
			}
		$this->getpos($tanda);
		}
		
		
		
		//$value=implode(" ",$tanda['informasi']);
		//echo $value;
	

	
		///$value=end($tanda['informasi']);
		///$data=$this->M_cari->mata_kuliah($value);
		///$tanda['kuliah'][]=$data->nama_matkul;
		///$informasi=implode($tanda['informasi']);
	
	
		//print_r($tanda['newinformasi']);

	}
public function getpos($tanda){
		foreach($tanda['newinformasi'] as $value){ //catatan (saya ubah dari $tanda['informasi'] menjadi $tanda['newinformasi'] )
		$datapos=$this->M_cari->getpost($value);
		if($this->M_cari->getpost($value)==null){
			if($this->M_cari->getner($value)==null){
				if($this->M_cari->getner2($value)==null){
						$tanda['listpos'][]="other";
				}else{
					$dataner=$this->M_cari->getner2($value);
					$tanda['listpos'][]=$dataner->ner;
				}
			}else{
				$dataner=$this->M_cari->getner($value);
				$tanda['listpos'][]=$dataner->ner;
			}
	}
			else{
				$tanda['listpos'][]=$datapos->list_pos;
			}
	}
		//$value=implode(" ",$tanda['listpos']);
		//echo $value;
	//	
		//print_r($tanda['newinformasi']);
		$this->getanswer($tanda);
}
//public function getasosiatif($tanda){
//foreach($tanda['informasi'] as $u){
//
//	//foreach($tanda['listpos'] as $b){
//	//	echo $u;
//	//
//	//	//$gabungan=array(
//	//	//	$b=>$u
//	//	//);
//	//}
//
//}
//foreach ($tanda['listpos'] as $b){
//
//}
//$tanda=array($b=>$u);
////print_r($tanda);
//
//}

public function getanswer($tanda){
	$tanya=array("siapa","apa","kapan");
	$katadepan=array_shift($tanda['newinformasi']);
	$unik=array_unique($tanda['listpos']);
	$value=implode(" ",$tanda['listpos']);
	$datawp=$this->M_cari->whitepos($value);
	$data['whitepos'][]=$datawp->whitepos;
	//echo $value;
	//print_r($data['whitepos']);
	if($katadepan=="siapa" || $katadepan=="apa" || $katadepan=="kapan" || $katadepan=="siapakah" || $katadepan=="apakah" || $katadepan=="kapankah"){
		if(in_array($value,$data['whitepos'],TRUE)){
				if($katadepan=="siapa" || $katadepan=="siapakah"  ){
			if(end($unik)=="mata kuliah"){
				$u=end($tanda['newinformasi']);
				$tanda['jawab']=$this->M_cari->getanswer($u);
				if($tanda['jawab']==null){
					$this->session->set_flashdata("gagal","<div class='alert alert-success' role='alert'><h1>Pertanyaan yang anda tanyakan tidak ada jawaban kemungkinan data dari pertanyaan tersebut belum ada</h1></div>");
					redirect(base_url("welcome/error"));
				}else{
					$this->jawab3($tanda);
				}
			}else if(in_array('prodi',$tanda['newinformasi'],TRUE) && in_array('mengajar',$tanda['informasi'])){
					$u=end($tanda['newinformasi']);
					$tanda['jawab']=$this->M_cari->getprodi($u);
					if($tanda['jawab']==null){
					$this->session->set_flashdata("gagal","<div class='alert alert-success' role='alert'><h1>Pertanyaan yang anda tanyakan tidak ada jawaban kemungkinan data dari pertanyaan tersebut belum ada</h1></div>");
					redirect(base_url("welcome/error"));
				}else{
					$this->jawab($tanda);
				}
			}else if(in_array('koordinator',$tanda['newinformasi'],TRUE) && in_array('kerja praktik',$tanda['newinformasi'],TRUE) || in_array('koordinator kp',$tanda['newinformasi'],TRUE)  ){
					$data=end($tanda['newinformasi']);
					$jabatan="koordinator kp";
					$u=array(
						"jabatan"=>$jabatan,
						"prodi"=>$data= end($tanda['newinformasi'])
					);
					$tanda['jawab']=$this->M_cari->getjabatan('dosen',$u);
					if($tanda['jawab']==null){
					$this->session->set_flashdata("gagal","<div class='alert alert-success' role='alert'><h1>Pertanyaan yang anda tanyakan tidak ada jawaban kemungkinan data dari pertanyaan tersebut belum ada</h1></div>");
					redirect(base_url("welcome/error"));
				}else{
					$this->jawab_jabatan($tanda);
				}
			}else if(in_array('koordinator',$tanda['newinformasi'],TRUE) && in_array('skripsi',$tanda['newinformasi'],TRUE) || in_array('seminar',$tanda['newinformasi'],TRUE) ){
					$data=end($tanda['newinformasi']);
					$jabatan="ketua prodi";
					$u=array(
						"jabatan"=>$jabatan,
						 "prodi"=>$data=end($tanda['newinformasi'])
					);
					$tanda['jawab']=$this->M_cari->getjabatan('dosen',$u);
					if($tanda['jawab']==null){
					$this->session->set_flashdata("gagal","<div class='alert alert-success' role='alert'><h1>Pertanyaan yang anda tanyakan tidak ada jawaban  dikarenakan kesalahan penulisan atau data nya tidak ditemukan</h1></div>");
					redirect(base_url("welcome/error"));
				}else{
					$this->jawab_jabatan($tanda);
				}
				}else if(in_array('dekan',$tanda['newinformasi'],TRUE)  ){
					$data=end($tanda['newinformasi']);
					$jabatan="dekan";
					$u=array(
						"jabatan"=>$jabatan,
						 "fakultas"=>$data=end($tanda['newinformasi'])
					);
					$tanda['jawab']=$this->M_cari->getjabatan('dosen',$u);
					if($tanda['jawab']==null){
					$this->session->set_flashdata("gagal","<div class='alert alert-success' role='alert'><h1>Pertanyaan yang anda tanyakan tidak ada jawaban  dikarenakan kesalahan penulisan atau data nya tidak ditemukan</h1></div>");
					redirect(base_url("welcome/error"));
				}else{
					$this->jawab_jabatan($tanda);
				}
			}else if(in_array('ketua prodi',$tanda['newinformasi'],TRUE) || in_array('kaprodi',$tanda['newinformasi'],TRUE) ) {
					$data=end($tanda['newinformasi']);
					$jabatan="ketua prodi";
					$u=array(
						"jabatan"=>$jabatan,
						 "prodi"=>$data=end($tanda['newinformasi'])
					);
					$tanda['jawab']=$this->M_cari->getjabatan('dosen',$u);
					if($tanda['jawab']==null){
					$this->session->set_flashdata("gagal","<div class='alert alert-success' role='alert'><h1>Pertanyaan yang anda tanyakan tidak ada jawaban  dikarenakan kesalahan penulisan atau data nya tidak ditemukan</h1></div>");
					redirect(base_url("welcome/error"));
				}else{
					$this->jawab_jabatan($tanda);
				}
			}else if(in_array('pembimbing',$tanda['newinformasi'],TRUE) && in_array('akademik',$tanda['newinformasi'],TRUE) && in_array('tahun',$tanda['newinformasi'],TRUE)  )  {
				if(in_array('prodi',$tanda['newinformasi'])){
					$data=end($tanda['newinformasi']);
					$potong=array_slice($tanda['newinformasi'],5,1);
					$data1=implode("",$potong);
						$u=array(
							"prodi"=>$data1,
							"tahun_akademik"=>$data
						);
						$tanda['jawab']=$this->M_cari->get_pembimbing('dosen',$u);
						if($tanda['jawab']==null){
					$this->session->set_flashdata("gagal","<div class='alert alert-success' role='alert'><h1>Pertanyaan yang anda tanyakan tidak ada jawaban  dikarenakan kesalahan penulisan atau data nya tidak ditemukan</h1></div>");
					redirect(base_url("welcome/error"));
				}else{
						$this->jawab_pembimbing($tanda);
				}
				}else{
					$data=end($tanda['newinformasi']);
					$potong=array_slice($tanda['newinformasi'],4,1);
					$data1=implode("",$potong);
					$u=array(
						"prodi"=>$data1,
						"tahun_akademik"=>$data
					);
					$tanda['jawab']=$this->M_cari->get_pembimbing('dosen',$u);
					if($tanda['jawab']==null){
					$this->session->set_flashdata("gagal","<div class='alert alert-success' role='alert'><h1>Pertanyaan yang anda tanyakan tidak ada jawaban  dikarenakan kesalahan penulisan atau data nya tidak ditemukan</h1></div>");
					redirect(base_url("welcome/error"));
				}else{
					$this->jawab_pembimbing($tanda);
				}
				}
		
			}else if(in_array('dibimbing',$tanda['newinformasi'],TRUE) && in_array('mahasiswa',$tanda['newinformasi'],TRUE)){
				$u=end($tanda['newinformasi']);
				
				$tanda['jawab']=$this->M_cari->get_mahasiswa($u);
				if($tanda['jawab']==null){
					$this->session->set_flashdata("gagal","<div class='alert alert-success' role='alert'><h1>Pertanyaan yang anda tanyakan tidak ada jawaban  dikarenakan kesalahan penulisan atau data nya tidak ditemukan</h1></div>");
					redirect(base_url("welcome/error"));
				}else{
				$this->jawab_mahasiswa($tanda);
				}
				
			}else if(in_array('pembimbing',$tanda['newinformasi'],TRUE) && in_array('mahasiswa',$tanda['newinformasi'],TRUE)){
				$u=end($tanda['newinformasi']);
				$tanda['jawab']=$this->M_cari->get_mahasiswa($u);
				if($tanda['jawab']==null){
					$this->session->set_flashdata("gagal","<div class='alert alert-success' role='alert'><h1>Pertanyaan yang anda tanyakan tidak ada jawaban  dikarenakan kesalahan penulisan atau data nya tidak ditemukan</h1></div>");
					redirect(base_url("welcome/error"));
				}else{
				$this->jawab_mahasiswa($tanda);
				}
				
			}else if(in_array('pembimbing',$tanda['newinformasi'],TRUE) ){
				$u=end($tanda['newinformasi']);
				$tanda['jawab']=$this->M_cari->get_mahasiswa($u);
				if($tanda['jawab']==null){
					$this->session->set_flashdata("gagal","<div class='alert alert-success' role='alert'><h1>Pertanyaan yang anda tanyakan tidak ada jawaban  dikarenakan kesalahan penulisan atau data nya tidak ditemukan</h1></div>");
					redirect(base_url("welcome/error"));
				}else{
				$this->jawab_mahasiswa($tanda);
				}
				
			}else if(in_array('dosen',$tanda['newinformasi'],TRUE) && in_array('nidn',$tanda['newinformasi'],TRUE) || in_array('nomor',$tanda['newinformasi'],TRUE) && in_array('induk',$tanda['newinformasi'],TRUE) || in_array('nasional',$tanda['newinformasi'],TRUE)){
				$u=end($tanda['newinformasi']);
				$tanda['jawab']=$this->M_cari->getnama($u);
				if($tanda['jawab']==null){
					$this->session->set_flashdata("gagal","<div class='alert alert-success' role='alert'><h1>Pertanyaan yang anda tanyakan tidak ada jawaban  dikarenakan kesalahan penulisan atau data nya tidak ditemukan</h1></div>");
					redirect(base_url("welcome/error"));
				}else{
				$this->jawab($tanda);
				}
				
			}
			
			
			else{
				$this->session->set_flashdata("gagal","<div class='alert alert-success' role='alert'><h1>Pertanyaan yang anda tanyakan tidak ada jawaban  dikarenakan kesalahan penulisan atau data nya tidak ditemukan</h1></div>");
				redirect(base_url("welcome/error"));
			}
			
		}else if($katadepan=="apa" || $katadepan=="apakah"){
			//echo "pertanyaan apa";
		if(in_array('nidn',$tanda['newinformasi'],TRUE ) && in_array('dosen',$tanda['newinformasi'],TRUE )){
				$u=end($tanda['newinformasi']);
				$tanda['jawab']=$this->M_cari->getnomor($u);
				if($tanda['jawab']==null){
					$this->session->set_flashdata("gagal","<div class='alert alert-success' role='alert'><h1>Pertanyaan yang anda tanyakan tidak ada jawaban  dikarenakan kesalahan penulisan atau data nya tidak ditemukan</h1></div>");
					redirect(base_url("welcome/error"));
				}else{
				$this->jawab2($tanda);
				}
			}else if(in_array('nidn',$tanda['newinformasi'],TRUE ) || in_array('nomor',$tanda['newinformasi'],TRUE ) && in_array('induk',$tanda['newinformasi'],TRUE ) && in_array('dosen',$tanda['newinformasi'],TRUE ) ){
				if(in_array('dekan',$tanda['newinformasi'],TRUE )){
					$data=end($tanda['newinformasi']);
					$jabatan="dekan";
					$u=array(
							"jabatan"=>$jabatan,
							"fakultas"=>$data
						);
						$tanda['jawab']=$this->M_cari->getjabatan('dosen',$u);
						if($tanda['jawab']==null){
					$this->session->set_flashdata("gagal","<div class='alert alert-success' role='alert'><h1>Pertanyaan yang anda tanyakan tidak ada jawaban  dikarenakan kesalahan penulisan atau data nya tidak ditemukan</h1></div>");
					redirect(base_url("welcome/error"));
				}else{
						$this->jawab2($tanda);
				}
				}else if(in_array('ketua prodi',$tanda['newinformasi'],TRUE ) || in_array('kaprodi',$tanda['newinformasi'],TRUE)){
					$data=end($tanda['newinformasi']);
					$jabatan="ketua prodi";
					$u=array(
							"jabatan"=>$jabatan,
							"prodi"=>$data
						);
						$tanda['jawab']=$this->M_cari->getjabatan('dosen',$u);
						$this->jawab2($tanda);
			//			if($tanda['jawab']==null){
			//		$this->session->set_flashdata("gagal","<div class='alert alert-success' role='alert'><h1>Pertanyaan yang anda tanyakan tidak ada jawaban  dikarenakan kesalahan penulisan atau data nya tidak ditemukan</h1></div>");
			//		redirect(base_url("welcome/error"));
			//	}else{
			//			$this->jawab2($tanda);
			//	}
				}else if(in_array('koordinator',$tanda['newinformasi'],TRUE ) && in_array('kerja praktik',$tanda['newinformasi'],TRUE) || in_array('kp',$tanda['newinformasi'],TRUE) ){
					$data=end($tanda['newinformasi']);
					$jabatan="koordinator kp";
					$u=array(
							"jabatan"=>$jabatan,
							"prodi"=>$data
						);
						$tanda['jawab']=$this->M_cari->getjabatan('dosen',$u);
						if($tanda['jawab']==null){
							$this->session->set_flashdata("gagal","<div class='alert alert-success' role='alert'><h1>Pertanyaan yang anda tanyakan tidak ada jawaban  dikarenakan kesalahan penulisan atau data nya tidak ditemukan</h1></div>");
							redirect(base_url("welcome/error"));
						}else{
						$this->jawab2($tanda);
						}
				}else if(in_array('koordinator',$tanda['newinformasi'],TRUE )&& in_array('skripsi',$tanda['newinformasi'],TRUE ) || in_array('seminar',$tanda['newinformasi'],TRUE ) ){
					$data=end($tanda['newinformasi']);
					$jabatan="ketua prodi";
					$u=array(
							"jabatan"=>$jabatan,
							"prodi"=>$data
						);
						$tanda['jawab']=$this->M_cari->getjabatan('dosen',$u);
						if($tanda['jawab']==null){
							$this->session->set_flashdata("gagal","<div class='alert alert-success' role='alert'><h1>Pertanyaan yang anda tanyakan tidak ada jawaban  dikarenakan kesalahan penulisan atau data nya tidak ditemukan</h1></div>");
							redirect(base_url("welcome/error"));
						}else{
						$this->jawab2($tanda);
						}
				}else{
					$u=end($tanda['newinformasi']);
					$tanda['jawab']=$this->M_cari->getnomor($u);
					if($tanda['jawab']==null){
					$this->session->set_flashdata("gagal","<div class='alert alert-success' role='alert'><h1>Pertanyaan yang anda tanyakan tidak ada jawaban  dikarenakan kesalahan penulisan atau data nya tidak ditemukan</h1></div>");
					redirect(base_url("welcome/error"));
				}else{
					$this->jawab2($tanda);
				}
				}
		
			}else if(in_array('nomor',$tanda['newinformasi'],TRUE ) && in_array('induk',$tanda['newinformasi'],TRUE )){
				if(in_array('nasional',$tanda['newinformasi'],TRUE )){
					$u=end($tanda['newinformasi']);
					$tanda['jawab']=$this->M_cari->getnomor($u);
					if($tanda['jawab']==null){
					$this->session->set_flashdata("gagal","<div class='alert alert-success' role='alert'><h1>Pertanyaan yang anda tanyakan tidak ada jawaban  dikarenakan kesalahan penulisan atau data nya tidak ditemukan</h1></div>");
					redirect(base_url("welcome/error"));
				}else{
					$this->jawab2($tanda);
				}
				}else{
					$u=end($tanda['newinformasi']);
					$tanda['jawab']=$this->M_cari->getnomor($u);
					if($tanda['jawab']==null){
					$this->session->set_flashdata("gagal","<div class='alert alert-success' role='alert'><h1>Pertanyaan yang anda tanyakan tidak ada jawaban  dikarenakan kesalahan penulisan atau data nya tidak ditemukan</h1></div>");
					redirect(base_url("welcome/error"));
				}else{
					$this->jawab2($tanda);
				}
				}
				
				
			}else if(in_array("syarat",$tanda['newinformasi'],TRUE)){
				if(in_array("mengambil",$tanda['newinformasi'],TRUE) || in_array("ambil",$tanda['newinformasi'],TRUE)){
					$u=end($tanda['newinformasi']);
					$tanda['jawab']=$this->M_cari->getsyarat($u);
					if($tanda['jawab']==null){
					$this->session->set_flashdata("gagal","<div class='alert alert-success' role='alert'><h1>Pertanyaan yang anda tanyakan tidak ada jawaban  dikarenakan kesalahan penulisan atau data nya tidak ditemukan</h1></div>");
					redirect(base_url("welcome/error"));
				}else{
					$this->jawabsyarat($tanda);
				}
				}else{
					$u=end($tanda['newinformasi']);
					$tanda['jawab']=$this->M_cari->getsyarat($u);
					if($tanda['jawab']==null){
					$this->session->set_flashdata("gagal","<div class='alert alert-success' role='alert'><h1>Pertanyaan yang anda tanyakan tidak ada jawaban  dikarenakan kesalahan penulisan atau data nya tidak ditemukan</h1></div>");
					redirect(base_url("welcome/error"));
				}else{
					$this->jawabsyarat($tanda);
				}
				}
			}else if(in_array("kuliah",$tanda['newinformasi'],TRUE) && in_array("prodi",$tanda['newinformasi'],TRUE)  && in_array("semester",$tanda['newinformasi'],TRUE) && in_array("krs",$tanda['newinformasi'],TRUE) || in_array("kartu ",$tanda['newinformasi'],TRUE) && in_array("rencana ",$tanda['newinformasi'],TRUE)  ){
					$data=end($tanda['newinformasi']);
					$potong=array_slice($tanda['newinformasi'],4,1);
					$data1=implode("",$potong);
					//echo $data1;
						$u=array(
							"prodi"=>$data1,
							"semester"=>$data
						);
						$tanda["jawab"]=$this->M_cari->get_tampilmatkul($u,"mata_kuliah");
						if($tanda['jawab']==null){
						$this->session->set_flashdata("gagal","<div class='alert alert-success' role='alert'><h1>Pertanyaan yang anda tanyakan tidak ada jawaban  dikarenakan kesalahan penulisan atau data nya tidak ditemukan</h1></div>");
						redirect(base_url("welcome/error"));
					}else{
						$this-> jawab_mata_kuliah($tanda);
					}
			}else if(in_array("kuliah",$tanda['newinformasi'],TRUE) && in_array("prodi",$tanda['newinformasi'],TRUE) && in_array("semester",$tanda['newinformasi'],TRUE) ){
				$data=end($tanda['newinformasi']);
					$potong=array_slice($tanda['newinformasi'],3,1);
					$data1=implode("",$potong);
					//echo $data1;
					$u=array(
						"prodi"=>$data1,
						"semester"=>$data
					);
					$tanda["jawab"]=$this->M_cari->get_tampilmatkul($u,"mata_kuliah");
					$this-> jawab_mata_kuliah($tanda);
			}else if(in_array("kuliah",$tanda['newinformasi'],TRUE) && in_array("semester",$tanda['newinformasi'],TRUE)  && in_array("genap",$tanda['newinformasi'],TRUE) || in_array("ganjil",$tanda['newinformasi'],TRUE) ){
				if(in_array("saja",$tanda['newinformasi'],True)){
					if(in_array("genap",$tanda['newinformasi'],TRUE)){
					 $tanda['jawab']=$this->M_cari->get_matkulgenap();
					 $this->jawab_mata_kuliah($tanda);
				 }else{
					$tanda['jawab']=$this->M_cari->get_matkulganjil();
					$this->jawab_mata_kuliah($tanda);
				 }
				}else{
					if(in_array("genap",$tanda['newinformasi'],TRUE)){
					 $tanda['jawab']=$this->M_cari->get_matkulgenap();
					 $this->jawab_mata_kuliah($tanda);
				 }else{
					$tanda['jawab']=$this->M_cari->get_matkulganjil();
					$this->jawab_mata_kuliah($tanda);
				 }
				}
				
			}else if(in_array("kuliah",$tanda['newinformasi'],True)&& in_array("diajar",$tanda['newinformasi'],True) || in_array("dosen",$tanda['newinformasi'],True)){
				$u=end($tanda['newinformasi']);
				$tanda["jawab"]=$this->M_cari->get_tampildosen($u);
				if($tanda['jawab']==null){
					$this->session->set_flashdata("gagal","<div class='alert alert-success' role='alert'><h1>Pertanyaan yang anda tanyakan tidak ada jawaban  dikarenakan kesalahan penulisan atau data nya tidak ditemukan</h1></div>");
					redirect(base_url("welcome/error"));
				}else{
				$this->jawab_mata_kuliah($tanda);
				}
			}else{
				$this->session->set_flashdata("gagal","<div class='alert alert-success' role='alert'><h1>Pertanyaan yang anda tanyakan tidak ada jawaban  dikarenakan kesalahan penulisan atau data nya tidak ditemukan</h1></div>");
				redirect(base_url("welcome/error"));
			}
			
		}else if($katadepan=="kapan" || $katadepan=="kapankah"){
			if(in_array("kuliah",$tanda['newinformasi'],True) && in_array("dimulai",$tanda['newinformasi'],TRUE) || in_array("mulai",$tanda['newinformasi'],True)){
					$potong=array_slice($tanda['newinformasi'],2,1);
					$u=implode("",$potong);
					$tanda['jawab']=$this->M_cari->get_waktu($u);
					if($tanda['jawab']==null){
					$this->session->set_flashdata("gagal","<div class='alert alert-success' role='alert'><h1>Pertanyaan yang anda tanyakan tidak ada jawaban  dikarenakan kesalahan penulisan atau data nya tidak ditemukan</h1></div>");
					redirect(base_url("welcome/error"));
				}else{
					$this->jawab_waktu($tanda);	
				}
				
				
			}else if(in_array("bayaran",$tanda['newinformasi'],TRUE)){
				if(in_array("terakhir",$tanda['newinformasi'],TRUE) || in_array("berakhirnya",$tanda['newinformasi'],TRUE)){
					$potong=array_slice($tanda['newinformasi'],2,1);
					$data1=implode("",$potong);
					//echo $data1;
					$data= end($tanda['newinformasi']);
					$u=array(
						"konten"=>$data1,
						"semester"=>$data
					);
					$tanda["jawab"]=$this->M_cari->get_bayaran($u,"setting");
					if($tanda['jawab']==null){
					$this->session->set_flashdata("gagal","<div class='alert alert-success' role='alert'><h1>Pertanyaan yang anda tanyakan tidak ada jawaban  dikarenakan kesalahan penulisan atau data nya tidak ditemukan</h1></div>");
					redirect(base_url("welcome/error"));
				}else{
					$this->jawab_bayaran_terakhir($tanda);
				}
				}else{
					$potong=array_slice($tanda['newinformasi'],1,1);
						$data1=implode("",$potong);
						$data= end($tanda['newinformasi']);
						$u=array(
							"konten"=>$data1,
							"semester"=>$data
						);
						$tanda["jawab"]=$this->M_cari->get_bayaran($u,"setting");
						if($tanda['jawab']==null){
					$this->session->set_flashdata("gagal","<div class='alert alert-success' role='alert'><h1>Pertanyaan yang anda tanyakan tidak ada jawaban  dikarenakan kesalahan penulisan atau data nya tidak ditemukan</h1></div>");
					redirect(base_url("welcome/error"));
				}else{						
						$this->jawab_bayaran($tanda);
				}
				}
						
			}else if(in_array("jadwal",$tanda['newinformasi'],TRUE) && in_array("bayaran",$tanda['newinformasi'],TRUE) && in_array("mulai",$tanda['newinformasi'],TRUE) || in_array("dimulainya",$tanda['newinformasi'],TRUE) ){
				$potong=array_slice($tanda['newinformasi'],2,1);
					$data1=implode("",$potong);
					//echo $data1;
					$data= end($tanda['newinformasi']);
					$u=array(
						"konten"=>$data1,
						"semester"=>$data
					);
					$tanda["jawab"]=$this->M_cari->get_bayaran($u,"setting");
					if($tanda['jawab']==null){
					$this->session->set_flashdata("gagal","<div class='alert alert-success' role='alert'><h1>Pertanyaan yang anda tanyakan tidak ada jawaban  dikarenakan kesalahan penulisan atau data nya tidak ditemukan</h1></div>");
					redirect(base_url("welcome/error"));
				}else{
					$this->jawab_bayaran_mulai($tanda);
				}
			}else if(in_array("jadwal",$tanda['newinformasi'],TRUE) && in_array("krs",$tanda['newinformasi'],TRUE) || in_array("kartu",$tanda['newinformasi'],TRUE) && in_array("rencana",$tanda['newinformasi'],TRUE) && in_array("studi",$tanda['newinformasi'],TRUE) ){
					if(in_array("mengisi",$tanda['newinformasi'],True)){
						$data= end($tanda['newinformasi']);
						$data1="kartu rencana studi";
							$u=array(
							"konten"=>$data1,
							"semester"=>$data
						);
					$tanda["jawab"]=$this->M_cari->get_krs($u,"setting");
						if($tanda['jawab']==null){
					$this->session->set_flashdata("gagal","<div class='alert alert-success' role='alert'><h1>Pertanyaan yang anda tanyakan tidak ada jawaban  dikarenakan kesalahan penulisan atau data nya tidak ditemukan</h1></div>");
					redirect(base_url("welcome/error"));
				}else{					
					$this->jawab_krs($tanda);
				}
					}else{
						$data= end($tanda['newinformasi']);
						$data1="kartu rencana studi";
						$u=array(
							"konten"=>$data1,
							"semester"=>$data
						);
						$tanda["jawab"]=$this->M_cari->get_krs($u,"setting");
					if($tanda['jawab']==null){
					$this->session->set_flashdata("gagal","<div class='alert alert-success' role='alert'><h1>Pertanyaan yang anda tanyakan tidak ada jawaban  dikarenakan kesalahan penulisan atau data nya tidak ditemukan</h1></div>");
					redirect(base_url("welcome/error"));
				}else{						
						$this->jawab_krs($tanda);
				}
					}
					
			}else if(in_array("mulai",$tanda['newinformasi'],TRUE) || in_array("dimulainya",$tanda['newinformasi'],TRUE) &&  in_array("krs",$tanda['newinformasi'],TRUE) || in_array("kartu",$tanda['newinformasi'],TRUE) && in_array("rencana",$tanda['newinformasi'],TRUE) && in_array("studi",$tanda['newinformasi'],TRUE)  ){
				$data= end($tanda['newinformasi']);
						$data1="kartu rencana studi";
							$u=array(
							"konten"=>$data1,
							"semester"=>$data
						);
					$tanda["jawab"]=$this->M_cari->get_krs($u,"setting");
					if($tanda['jawab']==null){
					$this->session->set_flashdata("gagal","<div class='alert alert-success' role='alert'><h1>Pertanyaan yang anda tanyakan tidak ada jawaban  dikarenakan kesalahan penulisan atau data nya tidak ditemukan</h1></div>");
					redirect(base_url("welcome/error"));
				}else{
					$this->jawab_krs_mulai($tanda);
				}
			}else if (in_array("terakhir",$tanda['newinformasi'],TRUE) &&  in_array("krs",$tanda['newinformasi'],TRUE) || in_array("kartu",$tanda['newinformasi'],TRUE) && in_array("rencana",$tanda['newinformasi'],TRUE) && in_array("studi",$tanda['newinformasi'],TRUE) ){
				$data= end($tanda['newinformasi']);
						$data1="kartu rencana studi";
							$u=array(
							"konten"=>$data1,
							"semester"=>$data
						);
					$tanda["jawab"]=$this->M_cari->get_krs($u,"setting");
					if($tanda['jawab']==null){
					$this->session->set_flashdata("gagal","<div class='alert alert-success' role='alert'><h1>Pertanyaan yang anda tanyakan tidak ada jawaban  dikarenakan kesalahan penulisan atau data nya tidak ditemukan</h1></div>");
					redirect(base_url("welcome/error"));
				}else{
					
					$this->jawab_krs_akhir($tanda);
				}
					}
				}else{
					$this->session->set_flashdata("gagal","<div class='alert alert-success' role='alert'><h1>Pertanyaan yang anda tanyakan tidak ada jawaban  dikarenakan kesalahan penulisan atau data nya tidak ditemukan</h1></div>");
					redirect(base_url("welcome/error"));
				}
			
				
		
	}else{
		$this->session->set_flashdata("gagal","<div class='alert alert-success' role='alert'><h1>Pertanyaan yang anda tanyakan tidak ada jawaban  dikarenakan kesalahan penulisan atau data nya tidak ditemukan </h1></div>");
		redirect(base_url("welcome/error"));
	}
	}else{
		$this->session->set_flashdata("gagal","<div class='alert alert-success' role='alert'><h1>Kata Tanya tidak ada di pertanyaan</h1> <h3>Kata tanya yang dapat digunakan hanya kata tanya siapa, apa, dan kapan</h3></div>");
		redirect(base_url("welcome/error"));
	}
		
	//if(in_array(array_shift($tanda['informasi']),$tanya,True)){
	//
	//		echo "kata tanya didepan kalimat";
	//			$kata_pos=implode(" ",$unik);
	//			if(in_array($kata_pos,$pos,TRUE)){
	//				echo "POS ditemukan";
	//			}else{
	//				echo "POS tidak ditemukan";
	//			}
	//
	//
	//}else{
	//if(in_array(end($tanda['informasi']),$tanya,TRUE)){
	//		echo "kata tanya diakhir kalimat";
	//	}else{
	//		echo "kata tanya tidak ditemukan";
	//	}
	//}





	//		foreach($tanda['listpos'] as $u){
	//	if($u=="WH"){
	//		foreach($tanda['informasi'] as $u){
	//			if($u=="siapa"){
	//				foreach($tanda['informasi'] as $u){
	//					if($u=="nidn"){
	//						foreach($tanda['informasi'] as $u){
	//							$tanda['jawab']=$this->M_cari->getnama($u);
	//						}
    //
	//							$this->jawab($tanda);
    //
    //
    //
	//					}else if($u=="prodi"){
	//						foreach($tanda['informasi'] as $u){
	//							$tanda['jawab']=$this->M_cari->getprodi($u);
	//						}
    //
    //
	//							$this->jawab($tanda);
    //
    //
    //
    //
	//					}
	//				}
	//					foreach($tanda['listpos'] as $u){
	//				if($u=="NNP"){
    //
	//					foreach($tanda['listpos'] as $u){
	//						if($u=="mata kuliah"){
	//							foreach($tanda['informasi'] as $u){
	//							$tanda['jawab']=$this->M_cari->getanswer($u);
    //
	//							}
    //
    //
	//								$this->jawab3($tanda);
    //
    //
    //
    //
	//					}else {
	//						echo "tidak ada";
	//					}
	//				}
    //
	//			}else if($u=="NN"){
	//						foreach($tanda['listpos'] as $u){
	//					if($u=="mata kuliah"){
	//						foreach($tanda['informasi'] as $u){
	//							$tanda['jawab']=$this->M_cari->getanswer($u);
    //
	//						}
    //
    //
    //
    //
    //
	//					}else {
	//						echo "data salah";
	//						//$this->session->set_flashdata("gagal","<div class='alert alert-success' role='alert'><h1>PERTANYAAN YANG ANDA AJUKAN SALAH</h1><h3>pertanyaan yang bisa di ajukan hanya meliputi seputar akademik yaitu <br/><ol><li>Nama dosen</li><li>NIDN dosen dosen</li></ol></h3></div>");
	//						//redirect(base_url("welcome/error"));
	//					}
	//					}
    //
	//			}else if($u=="VB"){
    //
	//						foreach($tanda['listpos'] as $u){
	//					if($u=="mata kuliah"){
	//						foreach($tanda['informasi'] as $u){
	//							$tanda['jawab']=$this->M_cari->getanswer($u);
	//						}
    //
    //
    //
	//							$this->jawab3($tanda);
    //
    //
    //
	//					}else {
	//						//echo "tidak ada";
	//					}
	//					}
	//			}
	//			else{
	//				 //echo "Tidak ada";
	//				}
	//			}
	//		}
	//			else if($u=="apa"){
	//				foreach($tanda['informasi'] as $u){
	//					if($u=="nidn"){
	//							foreach($tanda['listpos'] as $u){
    //
	//								if($u=="nama"):
	//									foreach($tanda['informasi'] as  $u){
	//										$tanda['jawab']=$this->M_cari->getnomor($u);
    //
	//									}
    //
	//								endif;
    //
	//								}
    //
    //
    //
	//							$this->jawab2($tanda);
    //
    //
	//					}
	//				}
    //
	//								foreach($tanda['listpos'] as $u){
	//									if($u=="NN"):
	//									foreach ($tanda['listpos'] as $u){
	//										if($u=="RB"){
	//											foreach($tanda['listpos'] as $u){
	//											if($u=="mata kuliah"){
	//												foreach($tanda['informasi'] as $u){
	//													$tanda['jawab']=$this->M_cari->getanswer2($u);
	//												 }
    //
	//											   }
	//
	//										    }
	//											$this->jawab_mata_kuliah($tanda);
	//
	//										}else{
	//											foreach($tanda['informasi'] as $u){
	//										if($u=="syarat" || $u=="syarat-syarat" || $u=="persyaratan"){
	//											foreach($tanda['listpos'] as $u){
	//										if($u=="mata kuliah"){
	//											foreach($tanda['informasi'] as $u){
	//												$tanda['jawab']=$this->M_cari->getsyarat($u);
    //
	//														}
    //
	//													}
    //
	//												}
	//											}
	//										}
	//											$this->jawabsyarat($tanda);
	//										}
	//									}
	//
    //
    //
	//								endif;
	//								}
	//
    //
    //
    //
    //
	//			}
    //
	//		}
    //
	//	}else{
	//		//echo "tidak ada";
	//	}
    //
    //
    //
    //
    //
    //
    //
    //
	//}


}

	public function jawab($tanda){
		$this->savequestion(); //catatan (saya tambahkan)
		$this->load->view("hasil/prodi",$tanda);
	}
	public function jawab2($tanda){
		$this->savequestion(); //catatan (saya tambahkan)
		$this->load->view("hasil/nidn",$tanda);
	}
	public function jawab3($tanda){
		$this->savequestion(); //catatan (saya tambahkan)
		$this->load->view("hasil/mata-kuliah",$tanda);
	}
	public function jawab_jabatan($tanda){
		$this->savequestion(); //catatan (saya tambahkan)
		$this->load->view("hasil/jabatan",$tanda);
	}
	public function jawabsyarat($tanda){
		$this->savequestion(); //catatan (saya tambahkan)
		$this->load->view("hasil/syarat-matkul",$tanda);
	}
	public function jawab_pembimbing($tanda){
		$this->savequestion(); //catatan (saya tambahkan)
		$this->load->view("hasil/pembimbing-akademik",$tanda);
	}
	public function jawab_mahasiswa($tanda){
		$this->savequestion(); //catatan (saya tambahkan)
		$this->load->view("hasil/pembimbing-mahasiswa",$tanda);
	}
	public function jawab_mata_kuliah($tanda){
		$this->savequestion(); //catatan (saya tambahkan)
		$this->load->view("hasil/mata-kuliah-2",$tanda);
	}
	public function jawab_waktu($tanda){
		$this->savequestion(); //catatan (saya tambahkan)
		$this->load->view("hasil/waktu",$tanda);
	}
	
	public function jawab_bayaran($tanda){
		$this->savequestion(); //catatan (saya tambahkan)
		$this->load->view("hasil/bayaran",$tanda);
	}
	public function jawab_bayaran_mulai($tanda){
		$this->savequestion(); //catatan (saya tambahkan)
		$this->load->view("hasil/bayaran-mulai",$tanda);
	}
	public function jawab_bayaran_terakhir($tanda){
		$this->savequestion(); //catatan (saya tambahkan)
		$this->load->view("hasil/bayaran-akhir",$tanda);
	}
	public function jawab_krs($tanda){
		$this->savequestion(); //catatan (saya tambahkan)
		$this->load->view("hasil/krs",$tanda);
	}
	public function jawab_krs_mulai($tanda){
		$this->savequestion(); //catatan (saya tambahkan)
		$this->load->view("hasil/krs-mulai",$tanda);
	}
		public function jawab_krs_akhir($tanda){
		$this->savequestion(); //catatan (saya tambahkan)
		$this->load->view("hasil/krs-akhir",$tanda);
	}
	
	
	

	public function savequestion(){ //catatan (saya tambahkan)
		if($this->M_cari->cekpertanyaan($this->input->get("search"))){
			//do nothing
		}
		else{
			$data = array(
   			'pertanyaan' => $this->input->get("search")
			);
			$this->M_cari->input_data($data,"pertanyaan");
		}
	}

}
