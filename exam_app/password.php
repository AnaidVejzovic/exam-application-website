<?php
 session_start();
?>
<!DOCTYPE html>
<html>
<head>
    <title>Promjena lozinke</title>
    <script src="js/script.js"></script>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<?php 
    print_r($_SESSION['username']);
?>
<?php
    require ('database.php');
    
    if(isset($_POST['username'])){
        $username = stripslashes($_REQUEST['username']);
        $username = mysqli_real_escape_string($con, $username);
        $password = stripslashes($_REQUEST['password']);
        $password = mysqli_real_escape_string($con, $password);
        $newpassword = stripslashes($_REQUEST['newpassword']);
        $newpassword = mysqli_real_escape_string($con, $newpassword);

        $qry = "SELECT * FROM `users` WHERE username = '$username' AND password = '$password'";
        $result = mysqli_query($con, $qry) or die (mysql_error());
        $rows = mysqli_num_rows($result);
        if($rows == 1){
            $_SESSION['username'] = $username;
            $change = "UPDATE `users` set password='" . $_POST["newpassword"] . "' WHERE username='" . $_SESSION["username"] . "'";
            mysqli_query($con, $change);
            echo "<p align=center><br><br><br>Lozinka uspješno promijenjena<br><br><a href=ispiti.php>Povratak</a></p>";
        }
        else{
            echo "<p>Netačno korisničko ime ili šifra. <a href='login.php'>Pokušajte ponovno</a>";
        }
    }
    else{
?>


    <form class="form" method="post" name="login" onsubmit="return validatePasswordChange()">
            <h1 class="title">Promjena lozinke</h1>
            <input type="text" class="login" name="username" placeholder="Username" autofocus="true" /> <br>
            <input type="password" class="login" name="password" placeholder="Lozinka" /> <br>
            <input type="password" class="login" name="newpassword" placeholder="Nova lozinka" /> <br>
            <input type="submit" value="Promijeni lozinku" name="submit" class="login-submit" /><br>
        </form>
<?php
    }
?>
</body>
</html>