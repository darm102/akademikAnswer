<html>
	<head>
		<title>Question Answering</title>
		<meta charset= "utf-8" >
		<meta name="viewport" content="width=device-width, initial-scale=1" >
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<?php
			$this->load->view('common/css');
		?>
		<style>
			body{
				
			}
			#btn-login{
				background:#F22613;
				color:#ffffff;
				border:2px solid #ffffff;
				border-radius:10px 10px 10px 10px;
				font-family: 'Poppins', sans-serif;
				
				
			}
			#btn-login:hover{
				background:#ffffff;
				color:#000000;
			}
			#nama{
				border:2px solid #000000;
				border-radius:10px 10px 10px 10px;
			}
			#btn-daftar{
				background:#ffffff;
				color:#000000;
				border-radius:10px 10px 10px 10px;
				font-size:20px;
				border:2px solid #000000;
				font-family: 'Poppins', sans-serif;
			}
			#btn-daftar:hover{
					background:#F22613;
					color:#ffffff;
					border:2px solid #ffffff;
			}
			#icon-user2{
				 display: inline-block;
				font-size: 30px;
				width: 40px;
				height: 40px;
				line-height: 40px;
				text-align: center;
				position: relative;
				z-index: 1;
				color: #ffffff;
				overflow: hidden;
				border: 2px solid #4183D7;
				border-radius: 50%;
				margin-left:80px;
				background:#4183D7;
				
			}
			.footer {
			position: absolute;
			bottom: 0;
			width: 100%;
			  
			}
		
		</style>
		<?php
		$this->load->view('common/js');
	?>

	</head>
		<body>
			<div class="container-fluid" >
				<?php $this->load->view("template/header3"); ?>
			</div>
			
				<div class="col-sm-12 col-xs-12 " >
				<div class="container" style="margin-top:60px;">
				<h3 style="font-family:'Roboto', sans-serif;"><i class="fa fa-search"></i>&nbsp;  Informasi Selengkapnya</h3>
				</div>
				<div class="col-sm-12 col-md-12 col-lg-12 col-xs-12" style="border-bottom:1px solid #e0e0e0 "></div>
				<div class="container">
						
						<div class="col-sm-12 col-md-12 col-xs-12" style="margin-top:20px;">
						
							<?php foreach($matkul as $b){ ?>
								<div class="col-sm-6 col-md-6 col-xs-12">
								<img src="http://localhost/question-answer/gambar/facebook.png" class=" col-sm-12 col-xs-12 col-md-12 col-lg-12 img-responsive"/>
								</div>
								<div class="col-sm-6 col-md-6 col-xs-12">
								<h1>Data Lengkap Mata Kuliah</h1><hr/>
									<table class="table table-striped">
										<tr>
											<td>Kode matkul</td>
											<td>:</td>
											<td><?php echo $b->kode_matkul ?></td>
										</tr>
										<tr>
											<td> Mata Kuliah</td>
											<td>:</td>
											<td><?php echo $b->nama_matkul ?></td>
										</tr>
										<tr>
											<td>SKS</td>
											<td>:</td>
											<td><?php echo $b->sks?></td>
										</tr>
										<tr>
											<td>Semester</td>
											<td>:</td>
											<td><?php echo $b->semester ?></td>
										</tr>
										<tr>
											<td>Syarat</td>
											<td>:</td>
											<td><?php echo $b->syarat ?></td>
										</tr>
										<tr>
											<td>Keterangan </td>
											<td>:</td>
											<td><?php echo $b->keterangan ?></td>
										</tr>
										<tr>
											<td>Prodi</td>
											<td>:</td>
											<td><?php echo $b->prodi ?></td>
										</tr>
										<tr>
											<td>Deskripsi </td>
											<td>:</td>
											<td><?php echo $b->deskripsi ?></td>
										</tr>
										
										
											
										
										
											
										
									</table>
									
								</div>
						<?php }?>
						
					
						
							
						
				
				
				
				</div>
				
				
				<!--<div class="col-sm-6" id="lengkap">
				
				</div>-->
				
				
				</div>
			 
			
			</div>	
			
			
			
		</body>
	
</html>