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
	<script>
		$(document).ready(function() {
		$(".cari").click(function(e){
			var x = $(this).attr("id");
			$.ajax({
		url: "http://localhost/question-answer/cari/prodi/",
		type: "GET",
		data: 'id='+ x,
		beforeSend: function() {
				$("#loading").show(1000).html("<img src='http://localhost/sekolah/gambar/ajax-loader.gif' height='50'>");
		},
		success: function(data)
		{
			$('#lengkap').html(data);
		},
		error: function (jqXHR, textStatus, errorThrown)
        {
            alert('Error get data from ajax');
        }
		
	});
		});
	});
	</script>
	</head>
		<body>
			<div class="container-fluid" >
				<?php $this->load->view("template/header3"); ?>
			</div>
			
				<div class="col-sm-12 col-xs-12 " >
				<div class="container" style="margin-top:60px;">
				<h3 style="font-family:'Roboto', sans-serif;"><i class="fa fa-search"></i>&nbsp; Hasil Pencarian</h3>
				</div>
				<div class="col-sm-12 col-md-12 col-lg-12 col-xs-12" style="border-bottom:1px solid #e0e0e0 "></div>
				<div class="container">
						<div class="col-sm-12 col-xs-12">
						<p style="color:#446CB3; font-size:20px; font-style:Italic;">Pertanyaan: <?php echo $_GET['search']; ?></p>
						</div>
						<div class="col-sm-6 col-md-6 col-xs-12 col-sm-ofset-7" style="margin-top:20px;">
						
							<?php foreach($jawab as $b){ ?>
						<div class="panel panel-default">
							<div class="panel-body">
									<div class="col-sm-4">
										<img src="http://localhost/question-answer/gambar/facebook.png" class="img-responsive"/>
									</div>
									<div class="col-sm-8">
										<h4 style="border-bottom:1px solid #eee">Hasil Jawaban:</h4>
										<ol class="breadcrumb" style="background:#ffffff;">
											<li class="active">mata-kuliah</li>
											<li>Akademik</li>
											
										</ol>
										<h2 style="margin-top:5px;"><?php echo $b->nama_matkul; ?> </h2>
											<?php echo anchor("cari/informasi-matkul/".$b->id_matkul,"Lihat Selengkapnya &nbsp; <i class='fa fa-chevron-right'></i>",array("class"=>"btn btn-default col-sm-12 ")) ?>	
									</div>
									
										
							</div>
						</div>
						<?php }?>
						
					
						
							
						
				
				
				
				</div>
				<div class="col-sm-6" id="lengkap">
				
				</div>
				
				
				</div>
			
			
			</div>	
			
			
			
		</body>
	
</html>