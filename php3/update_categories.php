<?php
// Koneksi ke database
require_once 'koneksi.php';

// Ambil data dari form
$id ='id';
$name ='name';

// Query untuk mengubah data
$query = "UPDATE categories SET name='$name',  WHERE id=$id";

// Eksekusi query
if (mysqli_query($conn, $query)) {
    echo 'Data berhasil diubah';
} else {
    echo 'Error: ' . mysqli_error($conn);
}

// Tutup koneksi
mysqli_close($conn);
?>
