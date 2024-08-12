<?php
session_start();

function redirectLogin(){
	if(!isset($_SESSION['id']) && !isset($_SESSION['level'])){
		header('location: masuk.php');
		exit(); // Tambahkan exit untuk menghentikan eksekusi setelah redirect
	}
}

function showMessage(){
	// Menampilkan pesan dengan alert-info
	if(isset($_SESSION['message']) && is_array($_SESSION['message'])){
		foreach($_SESSION['message'] as $k=>$msg){
			echo '<div class="alert alert-info"><center>'.$msg.'</center></div>';
			unset($_SESSION['message'][$k]);
		}
		// Hapus seluruh pesan jika array kosong
		if(empty($_SESSION['message'])){
			unset($_SESSION['message']);
		}
	}

	// Menampilkan pesan error dengan alert-danger
	if(isset($_SESSION['error']) && is_array($_SESSION['error'])){
		foreach($_SESSION['error'] as $k=>$err){
			echo '<div class="alert alert-danger">'.$err.'</div>';
			unset($_SESSION['error'][$k]);
		}
		// Hapus seluruh pesan error jika array kosong
		if(empty($_SESSION['error'])){
			unset($_SESSION['error']);
		}
	}

	// Jika `$_SESSION['error']` bukan array, tampilkan langsung
	if(isset($_SESSION['error']) && !is_array($_SESSION['error'])){
		echo '<div class="alert alert-danger">'.$_SESSION['error'].'</div>';
		unset($_SESSION['error']);
	}
}

?>
