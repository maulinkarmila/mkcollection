<?php
session_start();
include 'db.php';
if($_SESSION['status_login'] != true){
    echo '<script>window.location="login.php"</script>';
}
?>
<!DOCTYPE html>
<html>
<head>
      <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <title>MKCollection</title>

</head>
<body >
    <!--header-->
    <header>
        <div class="container">
        <h1><a href="dashboard.php">MKCollection</a></h1>
        <ul>
            <li><a href="dashboard.php">Dashboard</a></li>
            <li><a href="profil.php">Profil</a></li>
            <li><a href="data-kategori.php">Data Kategori</a></li>
            <li><a href="data-produk.php">Data Produk</a></li>
            <li><a href="keluar.php">Keluar</a></li>
        </ul>
</div>
    </header>

    <!--content-->
    <div class="section">
    <div class="container">
    <h3>Tambah Data Kategori</h3>
    <div class="box">
        <form action="" method="POST">
        <input type="text" name="nama" placeholder="Nama Kategori" class="input-control" required>
        <input type="submit" name="submit" value="Submit" class="btn">
        </form>
        <?php 
        if(isset($_POST['submit'])){

            $nama = ucwords($_POST['nama']);

            $insert = mysqli_query($conn, "INSERT INTO tb_category VALUES (
                             null,
                             '".$nama."') ");

        if($insert){
            echo '<script>alert("Tambah data berhasil")</script>';
            echo '<script>window.location="data-kategori.php"</script>';
        }else{
            echo 'gagal' .mysqli_error($conn);
        }
        }
        ?>
    </div>
</div>
</div>

<!--footer-->

<footer>
    <div class="container">
    <small> @Copyright by 18111376_MaulinKarmila_TIFRP18CIDB_UASWEB1 </small>
    </div>
</footer>
</body>
</html>




