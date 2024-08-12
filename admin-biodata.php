<?php 
	require_once 'header-admin.php';
?>
<div class="container">
	<div class="page-header">
    	<h1>Biodata</h1>
	</div>
	<div class="row">
		<div class="col-sm-6">
			<form action="admin-biodata-proses.php" class="form-horizontal" method="POST">
				<div class="form-group">
				    <label>Nama Lengkap <span class="text-danger">*</span></label>
				    <input class="form-control" type="text" name="nama" value="<?php echo htmlspecialchars(getBiodataKolom($conn, $_SESSION['id'], 'nama')) ?>" autofocus required>
				</div>
				<div class="form-group">
				    <label>Nomor Tanda Anggota <span class="text-danger">*</span></label>
				    <input class="form-control" type="text" name="nta" value="<?php echo htmlspecialchars(getBiodataKolom($conn, $_SESSION['id'], 'nta')) ?>" autofocus required>
				</div>
				<div class="form-group">
				    <label>Tempat Tanggal Lahir <span class="text-danger">*</span></label>
				    <input class="form-control" type="text" name="tmpt_lahir" value="<?php echo htmlspecialchars(getBiodataKolom($conn, $_SESSION['id'], 'tmpt_lahir')) ?>" autofocus required>
				</div>
				<div class="form-group">
				    <label>Tanggal Lahir <span class="text-danger">*</span></label> 
				    <input type="text" class="form-control" name="tgl_lahir" id="datetimepicker2" placeholder="Input tanggal agenda Anda...." value="<?php echo htmlspecialchars(getBiodataKolom($conn, $_SESSION['id'], 'tgl_lahir')) ?>" required>
				</div>
				<div class="form-group">
				    <label>Alamat <span class="text-danger">*</span></label> 
				    <input type="text" class="form-control" name="alamat" value="<?php echo htmlspecialchars(getBiodataKolom($conn, $_SESSION['id'], 'alamat')) ?>" autofocus required>
				</div>
				<div class="form-group">
				    <label>Golongan Darah <span class="text-danger">*</span></label> 
				    <select class="form-control" name="gol_darah" required>
				    	<option value="A" <?php echo getBiodataKolom($conn, $_SESSION['id'], 'gol_darah') == 'A' ? 'selected' : ''; ?>>A</option>
				    	<option value="B" <?php echo getBiodataKolom($conn, $_SESSION['id'], 'gol_darah') == 'B' ? 'selected' : ''; ?>>B</option>
				    	<option value="AB" <?php echo getBiodataKolom($conn, $_SESSION['id'], 'gol_darah') == 'AB' ? 'selected' : ''; ?>>AB</option>
				    	<option value="O" <?php echo getBiodataKolom($conn, $_SESSION['id'], 'gol_darah') == 'O' ? 'selected' : ''; ?>>O</option>
				    	<option value="" <?php echo getBiodataKolom($conn, $_SESSION['id'], 'gol_darah') == '' ? 'selected' : ''; ?>>-- Pilih Golongan Darah --</option>
				    </select>
				</div>
				<div class="form-group">
				    <label>Agama <span class="text-danger">*</span></label> 
				    <select class="form-control" name="agama" required>
				    	<option value="Islam" <?php echo getBiodataKolom($conn, $_SESSION['id'], 'agama') == 'Islam' ? 'selected' : ''; ?>>Islam</option>
				    	<option value="Kristen" <?php echo getBiodataKolom($conn, $_SESSION['id'], 'agama') == 'Kristen' ? 'selected' : ''; ?>>Kristen</option>
				    	<option value="Katolik" <?php echo getBiodataKolom($conn, $_SESSION['id'], 'agama') == 'Katolik' ? 'selected' : ''; ?>>Katolik</option>
				    	<option value="Budha" <?php echo getBiodataKolom($conn, $_SESSION['id'], 'agama') == 'Budha' ? 'selected' : ''; ?>>Budha</option>
				    	<option value="Hindu" <?php echo getBiodataKolom($conn, $_SESSION['id'], 'agama') == 'Hindu' ? 'selected' : ''; ?>>Hindu</option>
				    	<option value="Khonghucu" <?php echo getBiodataKolom($conn, $_SESSION['id'], 'agama') == 'Khonghucu' ? 'selected' : ''; ?>>Khonghucu</option>
				    	<option value="" <?php echo getBiodataKolom($conn, $_SESSION['id'], 'agama') == '' ? 'selected' : ''; ?>>-- Pilih Agama --</option>
				    </select>
				</div>
				<div class="form-group">
				    <label>Jabatan <span class="text-danger">*</span></label> 
				    <select class="form-control" name="jabatan" required>
				    	<option value="Siaga" <?php echo getBiodataKolom($conn, $_SESSION['id'], 'jabatan') == 'Siaga' ? 'selected' : ''; ?>>Siaga</option>
				    	<option value="Penggalang" <?php echo getBiodataKolom($conn, $_SESSION['id'], 'jabatan') == 'Penggalang' ? 'selected' : ''; ?>>Penggalang</option>
				    	<option value="Penegak" <?php echo getBiodataKolom($conn, $_SESSION['id'], 'jabatan') == 'Penegak' ? 'selected' : ''; ?>>Penegak</option>
				    	<option value="Pembina" <?php echo getBiodataKolom($conn, $_SESSION['id'], 'jabatan') == 'Pembina' ? 'selected' : ''; ?>>Pembina</option>
				    	<option value="Pelatih" <?php echo getBiodataKolom($conn, $_SESSION['id'], 'jabatan') == 'Pelatih' ? 'selected' : ''; ?>>Pelatih</option>
				    	<option value="" <?php echo getBiodataKolom($conn, $_SESSION['id'], 'jabatan') == '' ? 'selected' : ''; ?>>-- Pilih Jabatan --</option>
				    </select>
				</div>
				<div class="form-group">
				    <label>Pangkalan <span class="text-danger">*</span></label> 
				    <input type="text" class="form-control" name="pangkalan" value="<?php echo htmlspecialchars(getBiodataKolom($conn, $_SESSION['id'], 'pangkalan')) ?>" autofocus required>
				</div>
				<div class="form-group">
				    <label>Kwarda <span class="text-danger">*</span></label>
					<select class="form-control" name="kwarda" id="getKota" required>
				        <option value="" selected="selected">-- Pilih Daerah --</option>
				        <?php
				        $stmt2 = $conn->prepare('SELECT * FROM propinsi');
				        $stmt2->execute();
				        while($row_prop = $stmt2->fetch(PDO::FETCH_ASSOC)) {
				            ?>
				            <option value="<?php echo $row_prop['id_prop']; ?>" <?php echo getBiodataKolom($conn, $_SESSION['id'], 'kwarda') == $row_prop['id_prop'] ? 'selected' : ''; ?>><?php echo htmlspecialchars($row_prop['nm_prop']); ?></option>
				            <?php
				        }
				        ?>
			        </select>
				</div>
				<div class="form-group" id="display">
       				<!-- Records will be displayed here -->
    			</div>
				<input type="submit" name="ubah_bio" class="btn btn-primary" value="Simpan">
				<a class="btn btn-danger" href="admin.php"><span class="glyphicon glyphicon-arrow-left"></span> Kembali</a>
			</form>
		</div>
	</div>    
</div>
<script src="js/jquery.datetimepicker.full.js"></script>
<script type="text/javascript" language="JavaScript">
	$('#datetimepicker2').datetimepicker({
		lang: 'ch',
		timepicker: false,
		format: 'Y-m-d',
		formatDate: 'Y-m-d',
		startDate: 1970
	});
</script>
