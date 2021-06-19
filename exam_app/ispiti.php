<?php 
    $title= "Ispiti";
    include ('header.php');
    error_reporting(0);
?>
<?php
require ('database.php');
foreach($_POST as $key => $value) {
    $predmet = $key;
}
if(isset($_POST[$predmet])){
    $username = $_SESSION['username'];
    $firstname = $_SESSION['firstname'];
    $lastname = $_SESSION['lastname'];
    $qry = "INSERT INTO $predmet (username, firstname, lastname)VALUES ('$username', '$firstname', '$lastname')";
    /*echo $qry;*/
    $result = mysqli_query($con, $qry);
    if($result){
        echo "<p align=center><br><br><br>Prijavljeni ste na ispit<br><br><a href=ispiti.php>Povratak</a><br><br><br></p>";
    }
    else{
        echo "<p align=center><br><br><br>Prijava neuspješna<br><br>";
    }
}
else{
?>
<div class="prijava">
    <div class="ispit">
        <h3>Elektronska trgovina</h3>
        <form method="post">
            <input type="submit" class="ispit-submit" name="etrg" value="Prijavi se na ispit">
        </form>
    </div>
    <br>
    <div class="ispit">
        <h3>Elektronsko bankarstvo i Platni promet</h3>
        <form method="post">
            <input type="submit" class="ispit-submit" name="ebpp" value="Prijavi se na ispit">
        </form>
    </div>
    <br>
    <div class="ispit">
        <h3>Projektni menadžment</h3>
        <form method="post">
            <input type="submit" class="ispit-submit" name="pm" value="Prijavi se na ispit">
        </form>
    </div>
    <br>
    <div class="ispit">
        <h3>Publicitet i sponzorstvo</h3>
        <form method="post">
            <input type="submit" class="ispit-submit" name="pis" value="Prijavi se na ispit">
        </form>
    </div>
    <br>
    <div class="ispit">
        <h3>Web Programiranje</h3>
        <form method="post">
            <input type="submit" class="ispit-submit" name="wp" value="Prijavi se na ispit">
        </form>
    </div>
    <br>
</div>
<?php
    }
?>
<?php 
    include ('footer.php');
?>