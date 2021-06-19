<?php 
    $title= "Admin Page";
    include ('header.php');
    include ('crud.php');
    error_reporting(0);
?>
<?php
    require ('database.php');
    foreach($_POST as $key => $value) {
        $tabela = $key;
    }
    if(isset($_POST[$tabela])){
        $qry = "SELECT * FROM $tabela";
        $result = mysqli_query($con, $qry) or die (mysql_error()); 
        if($tabela == "users"){
            echo "<br><br><input type='text' class='pretraga' id='argument' onkeyup='search()' placeholder='Username pretraga'>";
            echo "<table id='tabela'>";
            echo "<tr>
                    <td class=head>ID</td>
                    <td class=head>Ime</td>
                    <td class=head>Prezime</td>
                    <td class=head>Username</td>
                    <td class=head>Lozinka</td>
                    <td class=head>Email</td>
                </tr>"; 
            while($row = mysqli_fetch_array($result)){
            echo "<tr>
                    <td>" . $row['id'] . "</td>
                    <td>" . $row['firstname'] . "</td>
                    <td>" . $row['lastname'] . "</td>
                    <td>" . $row['username'] . "</td>
                    <td>" . $row['password'] . "</td>
                    <td>" . $row['email'] . "</td>
                </tr>"; 
            }
            echo "</table>";
            //Ovdje dodati formu za CREATE
            echo "<form class=form method=post name=registracija action='crud.php'>";
            echo "<input type=text class=login name=firstname placeholder=Ime /> <br>
                <input type=text class=login name=lastname placeholder=Prezime /> <br>
                <input type=text class=login name=username placeholder='Korisničko ime' /> <br>
                <input type=text class=login name=password placeholder=Password /> <br>
                <input type=text class=login name=email placeholder=Email /> <br>
                <input type=hidden name=tabela value=". $tabela ." />
                <input type=submit value=Create name=createuser class=login-submit /><br>";
            echo "</form>";

            echo "<form class=form method=post name=registracija action='crud.php'>";
            echo "<input type=text class=login name=id placeholder=ID /> <br>
                <input type=hidden name=tabela value=". $tabela ." />
                <input type=submit value=Delete name=deleteuser class=login-submit /><br>";
            echo "</form>";

            echo "<form class=form method=post name=registracija action='crud.php'>";
            echo "<input type=text class=login name=id placeholder=ID /> <br>
                <input type=text class=login name=firstname placeholder=Ime /> <br>
                <input type=hidden name=tabela value=". $tabela ." />
                <input type=submit value='Edit Ime' name=editfirstname class=login-submit /><br>";
            echo "</form>";

            echo "<form class=form method=post name=registracija action='crud.php'>";
            echo "<input type=text class=login name=id placeholder=ID /> <br>
                <input type=text class=login name=lastname placeholder=Prezime /> <br>
                <input type=hidden name=tabela value=". $tabela ." />
                <input type=submit value='Edit Prezime' name=editlastname class=login-submit /><br>";
            echo "</form>";

            echo "<p align=center><br><br><a href=admin-page.php>Povratak</a></p><br><br>";
        }

        else{
            echo "<br><br><input type='text' class='pretraga' id='argument' onkeyup='searchZaIspite()' placeholder='Username pretraga'>";
            echo "<table id='tabela'>";
            echo "<tr>
                    <td class=head>ID</td>
                    <td class=head>Username</td>
                    <td class=head>Ime</td>
                    <td class=head>Prezime</td>
                </tr>"; 
            while($row = mysqli_fetch_array($result)){
            echo "<tr>
                    <td>" . $row['id'] . "</td>
                    <td>" . $row['username'] . "</td>
                    <td>" . $row['firstname'] . "</td>
                    <td>" . $row['lastname'] . "</td>
                </tr>"; 
            }
            echo "</table>";

            echo "<form class=form method=post name=registracija action='crud.php'>";
            echo "<input type=text class=login name=username placeholder='Korisničko ime' /> <br>
                <input type=text class=login name=firstname placeholder='Ime' /> <br>
                <input type=text class=login name=lastname placeholder='Prezime' /> <br>
                <input type=hidden name=tabela value=". $tabela ." />
                <input type=submit value=Create name=createuser class=login-submit /><br>";
            echo "</form>";

            echo "<form class=form method=post name=registracija action='crud.php'>";
            echo "<input type=text class=login name=id placeholder=ID /> <br>
                <input type=hidden name=tabela value=". $tabela ." />
                <input type=submit value=Delete name=deleteuser class=login-submit /><br>";
            echo "</form>";

            echo "<form class=form method=post name=registracija action='crud.php'>";
            echo "<input type=text class=login name=id placeholder=ID /> <br>
                <input type=text class=login name=firstname placeholder=Ime /> <br>
                <input type=hidden name=tabela value=". $tabela ." />
                <input type=submit value='Edit Ime' name=editfirstname class=login-submit /><br>";
            echo "</form>";

            echo "<form class=form method=post name=registracija action='crud.php'>";
            echo "<input type=text class=login name=id placeholder=ID /> <br>
                <input type=text class=login name=lastname placeholder=Prezime /> <br>
                <input type=hidden name=tabela value=". $tabela ." />
                <input type=submit value='Edit Prezime' name=editlastname class=login-submit /><br>";
            echo "</form>";

            echo "<p align=center><br><br><a href=admin-page.php>Povratak</a></p><br><br>";



        }
    }
    else{
    
?>
<div class="content">
    <!--<a style="text-decoration: none; color: white;" href=crud.php><button class="table-submit">CRUD</button></a>-->

    <form method="post">
        <input type="submit" class="table-submit" name="users" value="Tabela korisnika">
        <input type="submit" class="table-submit" name="etrg" value="Tabela za ispit iz Elektronske Trgovine">
        <input type="submit" class="table-submit" name="ebpp" value="Tabela za ispit iz Elektronskog Bankarstva">
        <input type="submit" class="table-submit" name="pm" value="Tabela za ispit iz Projektnog Menadžmenta">
        <input type="submit" class="table-submit" name="pis" value="Tabela za ispit iz Publicitet i Sponzorstva">
        <input type="submit" class="table-submit" name="wp" value="Tabela za ispit iz Web Programiranja">

    </form>

</div>
<?php
    }
?>
<?php 
    include ('footer.php');
?>