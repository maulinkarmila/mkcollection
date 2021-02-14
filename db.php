<?php
$hostname = 'localhost';
$username = 'root';
$password = '';
$dbname = 'db_mkcollection';

$conn = mysqli_connect($hostname, $username, $password, $dbname) or die ('Gagal Terhubung ke Database');
?>