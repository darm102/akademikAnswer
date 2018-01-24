<?php foreach($prodi as $u): ?>
	<div class="col-sm-12 col-md-12 col-xs-3" style="position:fixed; height:auto; width:auto;">
		<div class="panel panel-default">
			<div class="panel-body">
			<div class="col-sm-12">
				<img src="http://localhost/question-answer/gambar/facebook.png" height="150" width="150"/>
			<h1><?php echo $u->nama_dosen ?></h1>
			<div class="garis" style="border:2px solid #e0e0e0"></div>
			<h5 style="color:#bdbdbd;">Informasi selengkapnya:</h5>
			<table class="table" border="0" >
			<tr>
				<td>No Induk</td>
				<td>:</td>
				<td><?php echo $u->no_induk ?></td>
			</tr>
			<tr>
				<td>Prodi</td>
				<td>:</td>
				<td><?php echo $u->prodi ?></td>
			</tr>
			<tr>
				<td>Fakultas</td>
				<td>:</td>
				<td><?php echo $u->fakultas ?></td>
			</tr>
			<tr>
				<td>Jabatan</td>
				<td>:</td>
				<td><?php echo $u->jabatan ?></td>
			</tr>
			<tr>
				<td>Mata Kuliah</td>
				<td>:</td>
				<td><?php echo $u->nama_matkul ?></td>
			</tr>
			</table>
			</div>
			
			
			</div>
		
		</div>
	
	</div>
<?php endforeach; ?>