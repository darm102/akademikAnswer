<script>
	 $(document).ready(function () {
        $("#search").focus();
    });
</script>
<script>
	//	$(document).ready(function(){
	//		
	//		$("#search").click(function(e){
	//		$.ajax({
	//			url:"http://localhost/qa/welcome/token/",
	//			type:"GET",
	//			data:'id='+ String.fromCharCode(e.keyCode|e.charCode),
	//			success: function(data)
	//			{
	//				$('#jawab').html(data);
    //
	//			},
	//		error: function (jqXHR, textStatus, errorThrown)
	//		{
	//			alert('Error get data from ajax');
	//		}
	//		});
	//		
	//		});
	//	});
</script>
<nav  class="navbar navbar-default navbar-fixed-top" >

<div class="container-fluid" id="nav" style="border:0px solid #000000; background:#f5f5f5; ">
				<div class="row">
					<div class="col-md-2" style="font-family:'Roboto', sans-serif; Margin-top:20px; font-size:20px; color:#446CB3; font-weight:bold;"><?php echo anchor("welcome","AKADEMIK"); ?></div>
	
					<div class="col-lg-6 col-xs-12" style="margin-top:20px; margin-left:-120px;">
						
							<form name="form2" action="http://localhost/qa/welcome/token" method="get">
							<div class="input-group" style="margin-left:30px">
							<input type="text" class="form-control" id="search" name="search" value="<?php //echo $_GET['id']; ?>"  placeholder="Apa yang ingin anda tanyakan ? "/>
							 <span class="input-group-btn" id="basic-addon2"><button class="btn btn-primary" type="submit" id="btn-jawab" type="button" ><i class="fa fa-search" style="font-size:20px;"></i></button>
							 </span>
							 </div>
							 </form>
					
					</div>
				</div>
					
							
					
				</div>
</nav>
