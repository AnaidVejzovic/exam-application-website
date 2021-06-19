<?php
    function createUser(){
            require('database.php');  
            $tabela = $_REQUEST['tabela'];
            if($tabela == "users"){
                $firstname = $_REQUEST['firstname'];
                $lastname = $_REQUEST['lastname'];
                $username = $_REQUEST['username'];
                $password = $_REQUEST['password'];
                $email = $_REQUEST['email'];
                $qry = "INSERT INTO `$tabela` (firstname, lastname, username, password, email) VALUES ('$firstname', '$lastname', '$username', '$password', '$email')";
            }
            else{
                $username = $_REQUEST['username'];
                $firstname = $_REQUEST['firstname'];
                $lastname = $_REQUEST['lastname'];
                $qry = "INSERT INTO `$tabela` (username, firstname, lastname) VALUES ('$username', '$firstname', '$lastname')";
            }
            $result = mysqli_query($con, $qry);
            header("Location: admin-page.php");
    }
    function deleteUser(){
        require('database.php');
        $id = $_REQUEST['id'];
        $tabela = $_REQUEST['tabela'];
        if($id == 1 && $tabela == "users"){
            header("Location: admin-page.php");
        }
        else{
            $qry = "DELETE FROM `$tabela` WHERE id = '$id'";
            $result = mysqli_query($con, $qry);
            header("Location: admin-page.php");
        }
        
        
    }
    function editFirstName(){
        require('database.php');
        $id = $_REQUEST['id'];
        $firstname = $_REQUEST['firstname'];
        $tabela = $_REQUEST['tabela'];
        $qry = "UPDATE `$tabela` SET firstname = '$firstname' WHERE id = '$id'";
        $result = mysqli_query($con, $qry);
        header("Location: admin-page.php");
    }
    function editLastName(){
        require('database.php');
        $id = $_REQUEST['id'];
        $lastname = $_REQUEST['lastname'];
        $tabela = $_REQUEST['tabela'];
        $qry = "UPDATE `$tabela` SET lastname = '$lastname' WHERE id = '$id'";
        $result = mysqli_query($con, $qry);
        header("Location: admin-page.php");
    }
    if(isset($_POST['createuser'])){
        createUser();
    }
    if(isset($_POST['deleteuser'])){
        deleteUser();
    }
    if(isset($_POST['editfirstname'])){
        editFirstName();
    }
    if(isset($_POST['editlastname'])){
        editLastName();
    }
?>