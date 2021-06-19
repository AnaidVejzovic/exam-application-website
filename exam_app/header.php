<?php
 session_start();
?>
<!DOCTYPE html>
<html>
<head>
    <title>
        <?php echo $title ?>
    </title>
    <script src="js/script.js"></script>
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
    <div class="header">
        
        <?php
            if($title=="Ispiti"){
                if(empty($_SESSION['username'])){
                    header("Location: login.php");
                }
                else{
                    echo "<a>";
                    echo $_SESSION['username'];
                    echo "</a>";
                    /*echo "<a>";
                    echo $_SESSION['firstname'];
                    echo "</a>";*/
                    echo "<a class=right href=logout.php>Log Out</a>";
                    echo "<a class=right href=password.php>Promijenite Lozinku</a>";
                }
            }
            else if($title=="Admin Page" || $title=="CRUD"){
                if($_SESSION['username']!=="admin"){
                    header("Location: login.php");
                }
                else{
                    echo "<a>";
                    echo $_SESSION['username'];
                    echo "</a>";
                    echo "<a class=right href=logout.php>Log Out</a>";
                    echo "<a class=right href=password.php>Promijenite Lozinku</a>";
                }
            }
            else{
                echo "<a href=index.php>Početna stranica</a>";
                echo "<a class=right href=login.php>Login</a>";
                echo "<a class=right href=registracija.php>Registracija</a>";
            }
        ?>
    </div>