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
				<div class="col-sm-6 col-md-6 col-xs-12 col-sm-ofset-7" style="margin-top:100px;">
						<?php
						$i=0;
						foreach($informasi as $b){?>
							<?php echo $b ?>=<?php echo $listpos[$i]; ?>   <br/>
					
							
							
						<?php $i++; }
                      
						 
						?>
					
						Hasil semua:
						<?php foreach($jawab as $b){ ?>
							<li><?php echo $b->nama_dosen; ?> </li>
						<?php }?>
				
				
				
				</div>
			
			</div>	
			
		</body>
	
</html>