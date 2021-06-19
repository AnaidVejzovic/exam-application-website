<?php
$con = mysqli_connect("localhost","root","","wpbaza");
if(mysqli_connect_errno()){
    echo "Povezivanje na bazu podataka nije uspjelo. Error: " . mysqli_connect_error();
}