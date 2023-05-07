<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Categories</title>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.css" />
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.js"></script>
    <link rel="stylesheet" href="../php3/assets/css/style.css">
</head>
<body>

<h1>Add Categories</h1>
<button><a class="link" href="../php3/read_categories.php">read_categories</a></button>
<button><a class="link" href="../php3/read_products.php">read_products</a></button>

<form method="post" action="create.php">
  <label for="id">id:</label>
  <input type="text" id="id" name="id" required>

  <br>

  <label for="name">name:</label>
  <input type="text" id="name" name="name" required>

  <br>

  <label for="created_at">created_at:</label>
  <input type="date" id="date" name="date" required>

  <br>

  <label for="updated_at">updated_at:</label>
  <input type="date" id="date" name="date" required>

  <br>

  <input type="submit" value="Submit">
</form>
</body>
</html>