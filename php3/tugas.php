<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tugas 18</title>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.css" />
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.js"></script>
    <link rel="stylesheet" href="../php3/assets/css/style.css">
</head>
<body>

<h1>Data Categories dan Products</h1>
<hr>

<?php
//koneksi ke database
require_once 'koneksi.php';
//include "koneksi.php"

//query untuk menampilkan data
$query = "select a.id, b.name as nama_category, a.name as nama_product, a.description,
        a.price, a.status, a.created_at, a.updated_at, a.verified_at, a.verified_by
        from products a inner join categories b on a.category_id = b.id order by a.id";

//eksekusi query
$result = mysqli_query($conn, $query);
?>


<table id="myTable">
<thead>
    <th>id</th>
    <th>nama_category</th>
    <th>nama_product</th>
    <th>description</th>
    <th>price</th>
    <th>status</th>
    <th>created_at</th>
    <th>updated_at</th>
    <th>verified_at</th>
    <th>verified_by</th>
</thead>
<tbody>
    <?php  
while ($row = mysqli_fetch_assoc($result)) : //mysqli_fetch_assoc
    ?>
    <tr>
        <td><?= $row['id'] ?></td>
        <td><?= $row['nama_category'] ?></td>
        <td><?= $row['nama_product'] ?></td>
        <td><?= $row['description'] ?></td>
        <td><?= $row['price'] ?></td>
        <td><?= $row['status'] ?></td>
        <td><?= $row['created_at'] ?></td>
        <td><?= $row['updated_at'] ?></td>
        <td><?= $row['verified_at'] ?></td>
        <td><?= $row['verified_by'] ?></td>
    </tr>
    
<?php endwhile; ?>

</tbody>

</table>




 <!-- Tutup koneksi -->
 <?php
mysqli_close($conn);
?>


</body>

<script>
    $(document).ready( function () {
    $('#myTable').DataTable();
} );
</script>

</body>
</html>
