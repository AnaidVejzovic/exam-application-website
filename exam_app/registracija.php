<?php 
    $title= "Registracija";
    include ('header.php');
?>
    <!-- dodati: onsubmit="return validateForm()" - Javascript validacija forme-->
    <?php
        require('database.php');
        if(isset($_REQUEST['username'])){
            $firstname = stripslashes($_REQUEST['firstname']);
            $firstname = mysqli_real_escape_string($con, $firstname);
            $lastname = stripslashes($_REQUEST['lastname']);
            $lastname = mysqli_real_escape_string($con,$lastname);
            $username = stripslashes($_REQUEST['username']);
            $username = mysqli_real_escape_string($con, $username);
            $password = stripslashes($_REQUEST['password']);
            $password = mysqli_real_escape_string($con, $password);
            $email = stripslashes($_REQUEST['email']);
            $email = mysqli_real_escape_string($con, $email);
            $qry = "INSERT INTO `users` (firstname, lastname, username, password, email) VALUES ('$firstname', '$lastname', '$username', '$password', '$email')";
            $result = mysqli_query($con, $qry);
            if($result){
                echo "<p>Uspješno ste registrovani.</p>";
            }
            else{
                echo "<p>Registracija neuspješna.</p>";
            }
        }
        else{
    ?>
    <form class="form" method="post" name="registracija" onsubmit="return validateRegistration()">
        <h1 class="title">Registracija</h1>
        <input type="text" class="login" name="firstname" placeholder="Ime" autofocus="true" /> <br>

        <input type="text" class="login" name="lastname" placeholder="Prezime"/> <br>

        <input type="text" class="login" name="username" placeholder="Korisničko ime" /> <br>

        <input type="password" class="login" name="password" placeholder="Password" /> <br>

        <input type="password" class="login" name="confirmpassword" placeholder="Potvrdite Password" /> <br>

        <input type="text" class="login" name="email" placeholder="Email" /> <br>

        <input type="submit" value="Registriraj se" name="submit" class="login-submit" /><br>
    </form>
    <?php
        }
    ?>
<?php 
    include ('footer.php');
?>