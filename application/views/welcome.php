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
				font-size: 100px;
				width: 120px;
				height: 120px;
				line-height: 120px;
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
				font-size: 40px;
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
		//$(document).ready(function(){
		//	$(".cari").click(function(e){
		//	//	$('.logo').css("color","white");
		//	//	$('#cari').css("margin-top","-405px");
		//	//	$('#search').css("height","35px");
		//	//	$('.group-cari').css("margin-left","170px");
		//	//	
		//	//	$('#search').addClass("col-sm-5");
		//	//	$('#cari').removeClass("col-sm-offset-3");
		//	//	$('#header').css("background","#f5f5f5");
		//	//	$('#judul').html("<h2>Akademik</h2>");
		//	//	$('#judul').css("font-family","Roboto");
		//	//	$('#judul').css("Margin-top","20px");
		//	//	$('#judul').css("color","#446CB3");
		//	//	$('#judul').css("font-weight","bold");
		//	//	$('#judul').addClass("col-md-2");
		//	//	$('#header').addClass("container-fluid");
		//		
		//	$.ajax({
		//		url:"http://localhost/qa/welcome/atas/",
		//		type:"GET",
		//		//data:'id='+ String.fromCharCode(e.keyCode|e.charCode),
		//		success: function(data)
		//		{
		//			$('#header').html(data);
		//			$('#tanya').hide();	
		//			$('.footer').hide();	
		//		},
		//	
		//	});
		//	
		//	});
		//});
	</script>

<script>
		//$(document).ready(function(){
		//	
		//	$("#btn-jawab").click(function(e){
		//		var x= $("#search").val();
		//	$.ajax({
		//		url:"http://localhost/qa/welcome/token/",
		//		type:"GET",
		//		data:'id='+ x,
		//		success: function(data)
		//		{
		//			$('#jawab').html(data);
        //
		//		},
		//	error: function (jqXHR, textStatus, errorThrown)
		//	{
		//		alert('Error get data from ajax');
		//	}
		//	});
		//	
		//	});
		//});
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
	<script>
	window.onload = function() {
	document.getElementById("search").focus();
	};
</script>

<!--<script>
	$(document).ready(function() {
		$('#search').keyup(function(){
			var search_value=$(this).val();
			var  data1= 'search='+search_value;
			
			if(search_value != ''){
				$.ajax({
					url:"http://localhost/qa/cari/auto/",
					type:'GET',
					data:data1,
					success: function(data){
						$("#result").html(data).show();
					}
					
				});
			}
			return false;
		});
	});

</script>-->


	</head>
		<body >
					
					<div id="header">
					<div id="jawab"></div>
					<div id="tanya">
		<div class="col-sm-6 col-md-6 col-xs-12 col-sm-offset-3" id="logo" style="border:0px solid #000000; margin-top:100px;">
					
					<center><h1 style="font-family:'Roboto', sans-serif; color:#446CB3; font-size:50px; margin-left:50px;"><b>AKADEMIK</b><i id="icon-user" class="fa fa-question " ></i><h1/></center>
					<!--<center><h4 style="color:#000000;">Silahkan tanyakan pertanyaan anda mengenai  academic di universitas</h4></center>-->
				</div>
				<div class="col-sm-6 col-md-6 col-xs-12 col-sm-offset-3" id="cari" style="border:0px solid #000000; margin-top:10px;">
					<form name="form1" class="form-horizontal" action="http://localhost/question-answer/welcome/token" method="get" style="margin-top:10px;">
						<div class="input-form group-cari">
							<input type="text" class="autocomplete col-sm-12 form-control cari" id="search" name="search" style="height:40px; border-radius:0px;" placeholder="Apa yang ingin anda tanyakan?"/>
							<div id="result"></div>
							 <!--<span class=" btn btn-primry input-group-addon" id="basic-addon2"><a href="#"><i class="fa fa-search"></i></a></span>-->
							</div>
							<!--<center><button id="btn-answer"  class="col-sm-4 col-sm-offset-2 btn btn-default"  style="margin-top:30px;">ALGORITMA</button></center>-->
							<center><button id="btn-answer" type="submit" class="col-sm-4 btn btn-default col-sm-offset-4" style="margin-top:30px;"> <i class="fa fa-search"></i> &nbsp; JAWAB</button></center>
					</form>
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