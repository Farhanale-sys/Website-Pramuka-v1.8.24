<?php
	include "header-admin.php";

	$id = @$_GET['id'];
	$stmt = $conn->prepare('SELECT *, date_format(tgl_lahir, "%d-%m-%Y") as tanggal_lahir FROM biodata INNER JOIN propinsi ON biodata.id_prop=propinsi.id_prop INNER JOIN kota ON biodata.id_kota=kota.id_kota WHERE biodata.id = :id');
	$stmt->execute([
		':id' => $id
	]);

	$data = $stmt->fetch(PDO::FETCH_LAZY);

	if (!$data) {
		// Jika data tidak ditemukan, arahkan pengguna kembali atau tampilkan pesan kesalahan.
		echo "<div class='container-fluid'><h3>Data tidak ditemukan!</h3></div>";
		exit;
	}
?>
<div class="container-fluid">
	<h2>Biodata</h2>
	<table class="table table-striped table-bordered table-hover table-condensed">
		<tr>
			<td>Nama Lengkap</td>
			<td><?php echo htmlspecialchars($data['nama']); ?></td>
		</tr>
		<tr>
			<td>Nomor Tanda Anggota</td>
			<td><?php echo htmlspecialchars($data['nta']); ?></td>
		</tr>
		<tr>
			<td>Tempat, Tanggal Lahir</td>
			<td><?php echo htmlspecialchars($data['tmpt_lahir']); ?>, <?php echo htmlspecialchars($data['tanggal_lahir']); ?></td>
		</tr>
		<tr>
			<td>Alamat</td>
			<td><?php echo htmlspecialchars($data['alamat']); ?></td>
		</tr>
		<tr>
			<td>Golongan Darah</td>
			<td><?php echo htmlspecialchars($data['gol_darah']); ?></td>
		</tr>
		<tr>
			<td>Agama</td>
			<td><?php echo htmlspecialchars($data['agama']); ?></td>
		</tr>
		<tr>
			<td>Jabatan</td>
			<td><?php echo htmlspecialchars($data['jabatan']); ?></td>
		</tr>
		<tr>
			<td>Pangkalan</td>
			<td><?php echo htmlspecialchars($data['Pangkalan']); ?></td>
		</tr>
		<tr>
			<td>Kwarcab</td>
			<td><?php echo htmlspecialchars($data['nm_prop']); ?></td>
		</tr>
		<tr>
			<td>Kwarda</td>
			<td><?php echo htmlspecialchars($data['nm_kota']); ?></td>
		</tr>
	</table>
	<br>
	<a class="btn btn-danger" href="admin-info-akun.php"><span class="glyphicon glyphicon-arrow-left"></span> Kembali</a>
</div>
