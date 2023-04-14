<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="asset/css/style.css">
    <title>Resume PHP</title>
</head>
<body>
    <div class="container">
        <div class="profil">
            <h1>Biodata Diri</h1>
            <center><img src="asset/pict/pict.jpeg" alt="pict" width="250" height="250"></center>
        </div>
        
        <br>

        <?php
        echo "<table width='560'>";
        echo "<tr>";
            echo "<td width='50'>";
            echo "    ";
            echo "</td>";
                echo "<td width='60'>";
                echo "NAMA";
                echo "</td>";
            echo "<td width='8'>";
            echo ":";
            echo "</td>";
                echo "<td width='254'>";
                echo "DEA NURITA FEBRIANA";
                echo "</td>";
        echo "</tr>";
        echo "</table>";
        ?>

    </div>
</body>
</html>