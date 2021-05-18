<?php
//panggil file koneksi.php yang sudah anda buat
include "../koneksi.php";

$ID_Mhs=$_GET['ID_Mhs'];   //ambil parameter GET id  dan buat variabel
//gunakan parameter get untuk menghapus data berdasarkan id produk
$hapus = mysqli_query($koneksi, "DELETE FROM mahasiswa where kode='$ID_Mhs'");
if($hapus){ //jika berhasil
    echo "<script>alert('Data Berhasil Di Hapus');document.location='data_mahasiswa.php'</script>";
}else{  //jika gagal
    echo "<script>alert('Data Gagal Di Hapus, Coba ulangi lagi');document.location='data_mahasiswa.php'</script>";
}
?>