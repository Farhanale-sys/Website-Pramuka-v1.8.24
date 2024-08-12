<?php
    include 'header-member.php';
?>
<div>
    <br>
    <div class="container">
        <?php 
        // Cek apakah biodata kosong
        if(isDataBiodataNull($conn, $_SESSION['id'])){
            echo '<div class="alert alert-warning"><center>Anda Belum Mengisi Biodata</center></div>';
        } 
        
        $id = $_SESSION['id'];
        $stmt = $conn->prepare('SELECT *, date_format(tgl_lahir, "%d-%m-%Y") as tanggal_lahir FROM biodata INNER JOIN propinsi ON biodata.id_prop=propinsi.id_prop INNER JOIN kota ON biodata.id_kota=kota.id_kota WHERE id = :id');
        $stmt->execute([':id' => $id]);

        $data = $stmt->fetch(PDO::FETCH_ASSOC);

        // Cek apakah data ditemukan
        if ($data) {
        ?>
            <div class="container-fluid">
                <h2>Biodata</h2>
                <table class="table table-striped table-bordered table-hover table-condensed">
                    <tr>
                        <td>Nama Lengkap</td>
                        <td><?php echo $data['nama']; ?></td>
                    </tr>
                    <tr>
                        <td>Nomer Tanda Anggota</td>
                        <td><?php echo $data['nta']; ?></td>
                    </tr>
                    <tr>
                        <td>Tempat, Tanggal Lahir</td>
                        <td><?php echo $data['tmpt_lahir']; ?>, <?php echo $data['tanggal_lahir']; ?></td>
                    </tr>
                    <tr>
                        <td>Alamat</td>
                        <td><?php echo $data['alamat']; ?></td>
                    </tr>
                    <tr>
                        <td>Golongan Darah</td>
                        <td><?php echo $data['gol_darah']; ?></td>
                    </tr>
                    <tr>
                        <td>Agama</td>
                        <td><?php echo $data['agama']; ?></td>
                    </tr>
                    <tr>
                        <td>Jabatan</td>
                        <td><?php echo $data['jabatan']; ?></td>
                    </tr>
                    <tr>
                        <td>Pangkalan</td>
                        <td><?php echo $data['Pangkalan']; ?></td>
                    </tr>
                    <tr>
                        <td>Kwarcab</td>
                        <td><?php echo $data['nm_prop']; ?></td>
                    </tr>
                    <tr>
                        <td>Kwarda</td>
                        <td><?php echo $data['nm_kota']; ?></td>
                    </tr>
                </table>
            </div>
        <?php 
        } else {
            // Tampilkan pesan jika data tidak ditemukan
            echo '<div class="alert alert-danger"><center>Data biodata tidak ditemukan</center></div>';
        }
        ?>
    </div>
</div>
</body>
</html>
