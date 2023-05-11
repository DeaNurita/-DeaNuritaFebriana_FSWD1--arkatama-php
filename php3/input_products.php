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

  <label for="category_id">category_id:</label>
  <select name="id">
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
    <option value="5">5</option>
    <option value="6">6</option>
    <option value="7">7</option>
    <option value="8">8</option>
    <option value="9">9</option>
    <option value="10">10</option>
  </select>

  <label for="name">name:</label>
  <input type="text" id="name" name="name" required>

  <label for="description">description:</label>
  <input type="text" id="description" name="description" required>

  <label for="price">price:</label>
  <input type="text" id="price" name="price" required>

  <label for="status">status:</label>
  <input type="text" id="status" name="status" required>

  <label for="created_at">created_at:</label>
  <input type="date" id="date" name="date" required>

  <label for="updated_at">updated_at:</label>
  <input type="date" id="date" name="date" required>

  <label for="verified_at">verified_at:</label>
  <input type="text" id="null" name="null" required>

  <label for="verified_by">verified_by:</label>
  <input type="text" id="null" name="null" required>


  <input type="submit" value="Submit">
</form>
</body>
</html>