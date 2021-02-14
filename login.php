<!DOCTYPE html>
<html>
<head>
      <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <title>Log In | MKCollection</title>

</head>
<body id="bg-login">
<div class="box-login">
    <h2>Log In</h2>
    <form action="" method="POST">
        <input type="text" name="user" placeholder="Username" class="input-control">
        <input type="password" name="pass" placeholder="Password" class="input-control">
        <input type="submit" name="submit" value="Log In" class="btn">
</form>
<?php
if(isset($_POST['submit'])){
  session_start();
  include 'db.php';

  $user = mysqli_real_escape_string($conn, $_POST['user']);
  $pass = mysqli_real_escape_string($conn, $_POST['pass']);

  $cek = mysqli_query($conn, "SELECT * FROM tb_admin WHERE username = '" .$user. "' AND password = '".MD5($pass)."'");
  if(mysqli_num_rows($cek) > 0){
    $d = mysqli_fetch_object($cek);
    $_SESSION['status_login'] = true;
    $_SESSION['a_global'] = $d;
    $_SESSION['id'] = $d->admin_id;
    echo '<script>window.location="dashboard.php"</script>';
  }else{
    echo '<script>alert("Username atau Password Anda salah!")</script>';
  }

}
?>
</div>


    


</body>
</html>




