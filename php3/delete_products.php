<?php
// Koneksi ke database
require_once 'koneksi.php';

// Ambil data dari form
// $id = $_POST['id'];

// Query untuk menghapus data
$query = "DELETE FROM products WHERE id=$id";

// Eksekusi query
if (mysqli_query($conn, $query)) {
    echo 'Data berhasil dihapus';
} else {
    echo 'Error: ' . mysqli_error($conn);
}

// Tutup koneksi
mysqli_close($conn);



function hapus($id){
    // Koneksi ke database
require_once 'koneksi.php';



    $query = "delete from product where id=$id";
    // Eksekusi query
if (mysqli_query($conn, $query)) {
    echo 'Data berhasil dihapus';
} else {
    echo 'Error: ' . mysqli_error($conn);
}

// Tutup koneksi
mysqli_close($conn);

}
?>
