<?php 
    $title= "Log in";
    include ('header.php');
?>
<?php
    require ('database.php');
    if(isset($_POST['username'])){
        $username = stripslashes($_REQUEST['username']);
        $username = mysqli_real_escape_string($con, $username);
        $password = stripslashes($_REQUEST['password']);
        $password = mysqli_real_escape_string($con, $password);
        $qry = "SELECT * FROM `users` WHERE username = '$username' AND password = '$password'";
        $result = mysqli_query($con, $qry) or die (mysql_error());
        $rows = mysqli_num_rows($result);
        if($rows == 1){
            $qry = "SELECT firstname FROM `users` WHERE username = '$username'";
            $result = mysqli_query($con, $qry) or die (mysql_error());
            $firstnamearr = mysqli_fetch_row($result);
            $firstname = $firstnamearr[0];
            $qry = "SELECT lastname FROM `users` WHERE username = '$username'";
            $result = mysqli_query($con, $qry) or die (mysql_error());
            $lastnamearr = mysqli_fetch_row($result);
            $lastname = $lastnamearr[0];
            $_SESSION['username'] = $username;
            $_SESSION['firstname'] = $firstname;
            $_SESSION['lastname'] = $lastname;
            if($username!=="admin"){
                header("Location: ispiti.php");
            }
            else{
                header("Location: admin-page.php");
            }
        }
        else{
            echo "<p>Netačno korisničko ime ili šifra. <a href='login.php'>Pokušajte ponovno</a>";
        }
    }
    else{
?>
    <!-- dodati: onsubmit="return validateForm()" - Javascript validacija forme-->
    <form class="form" method="post" name="login" onsubmit="return validateLogin()">
        <h1 class="title">Login</h1>
        <input type="text" class="login" name="username" placeholder="Username" autofocus="true" /> <br>
        <input type="password" class="login" name="password" placeholder="Password" /> <br>
        <input type="submit" value="Login" name="submit" class="login-submit" /><br>
    </form>
<?php
    }
?>
<?php 
    include ('footer.php');
?>