<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data categories</title>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.css" />
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.js"></script>
    <link rel="stylesheet" href="../php3/assets/css/style.css">
</head>

<body>

<h1>Data Categories</h1>
<br>
<button><a class="link" href="../php3/read_categories.php">read_categories</a></button>
<button><a class="link" href="../php3/read_products.php">read_products</a></button>
<hr>
<button><a class="link" href="../php3/input_categories.php">add_categories</a></button>
<hr>


<?php
// Koneksi ke database
require_once 'koneksi.php';
// include "koneksi.php";

// Query untuk menampilkan data
$query = "SELECT * FROM categories";

// Eksekusi query
$result = mysqli_query($conn, $query);
?>
 <!-- Tampilkan data -->


<table id="myTable">
<thead>
    <th>ID</th>
    <th>NAME</th>
    <th>CREATED AT</th>
    <th>UPDATED AT</th>
</thead>
<tbody>
    <?php  
while ($row = mysqli_fetch_assoc($result)) : //mysqli_fetch_assoc
    ?>
    <tr>
        <td><?= $row['id'] ?></td>
        <td><?= $row['name'] ?></td>
        <td><?= $row['created_at'] ?></td>
        <td><?= $row['updated_at'] ?></td>
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
</html>