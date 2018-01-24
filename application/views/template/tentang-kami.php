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
			#icon-user{
				 display: inline-block;
				font-size: 10x;
				width: 30px;
				height: 30px;
				line-height: 30px;
				text-align: center;
				position: relative;
				z-index: 1;
				color: #ffffff;
				overflow: hidden;
				border: 2px solid #4183D7;
				border-radius: 50%;
				margin-left:20px;
				margin-top:20px;
				background:#4183D7;
				
			}
			#icon-user2{
				display: inline-block;
				font-size: 20px;
				width: 50px;
				height: 50px;
				line-height: 50px;
				text-align: center;
				position: relative;
				z-index: 1;
				color: #ffffff;
				overflow: hidden;
				border: 2px solid #4183D7;
				border-radius: 50%;
				margin-left:80px;
				background:#4183D7;
				margin-top:10px;
				
			}
			.footer {
			position: absolute;
			bottom: 0;
			width: 100%;
			height: 60px;  
			}
	#result
 {
  position:absolute;
  width:500px;
  display:none;
  margin-top:50px;
  border-top:0px;
  overflow:hidden;
  border:1px #CDCDCD solid;
  background-color: white;
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
		url: "http://localhost/qa/cari/prodi/",
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
	<script>
	   $(function(){
			  var $search= $('#search');
            $('.autocomplete').autocomplete({
                // serviceUrl berisi URL ke controller/fungsi yang menangani request kita
                serviceUrl:"http://localhost/question-answer/cari/auto",
                // fungsi ini akan dijalankan ketika user memilih salah satu hasil request
              // onSelect: function(suggestion) {
					//$('.data-cari').html(suggestion);
                //} 
            });
        });

</script>
	</head>
		<body>
			<div class="container-fluid" style="background:#eee;">
				<div class="container" >
					<div class="col-sm-6 col-md-6 col-lg-6 col-xs-12">
						<?php echo anchor("welcome","<h1>Akademik <i id='icon-user' class='fa fa-question' ></i></h1>") ?>
		
					</div>
					<div class="col-sm-6 col-md-6 col-lg-6 col-xs-12">
						<form name="form2" action="http://localhost/question-answer/welcome/token" method="get">
							<div class="input-group" style="margin-left:30px; margin-top:40px;">
							<input type="text" class=" autocomplete form-control col-xs-12" id="search" name="search"  placeholder="Apa yang ingin anda tanyakan ? "/>
							 <span class="input-group-btn" id="basic-addon2"><button class="btn btn-primary" type="submit" id="btn-jawab" type="button" ><i class="fa fa-search" style="font-size:20px;"></i></button>
							 </span>
							 </div>
							 </form>
					</div>
				</div>
			</div>
			
				<div class="col-sm-12 col-xs-12 " >
				<div class="container" style="margin-top:20px;">
				<h3 style="font-family:'Roboto', sans-serif;"><i class="fa fa-user"></i>&nbsp; Tentang Kami</h3>
				</div>
				<div class="col-sm-12 col-md-12 col-lg-12 col-xs-12" style="border-bottom:1px solid #e0e0e0 "></div>
				<div class="container">
						<div class="col-sm-12 col-xs-12">
						
						</div>
						<div class="col-sm-12 col-md-12 col-xs-12 col-sm-ofset-7" style="margin-top:10px;">
						
						<center><h3>Question Answering System dan penerapannya pada lingkup akademik</h3> <h3> Aplikasi ini dibuat untuk menyelesaikan studi Starta-1 </h3><br/><br/><h4>Dibuat Oleh: Wahyu / Informatika /1313015</h4> <br/><br/><h2>Universitas Katolik Musi Charitas Palembang</h2></center>
						
				
				
				
				</div>
				
				
				
				</div>
			
			
			</div>	
			 <div class="footer" style="background:#f5f5f5;">
 	<div class="container" style="background:#f5f5f5; padding-top:25px;">
			<?php echo anchor("cari/tentang-kami","Tentang Kami",array("style"=>"color:#757575;")) ?>
			<?php echo anchor("cari/bantuan","Bantuan",array("style"=>"color:#757575; margin-left:20px; ")) ?>
			<div class="pull-right" style="color:#757575  ; text-align:right;">
				Akademik &copy; 2017
			</div>
	</div>

</div>
			
			
		</body>
	
</html>