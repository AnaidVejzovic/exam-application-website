<?php 
    $title= "Početna strana";
    include ('header.php');
?>
<br><br>
<div class="pocetna-naslov">
    <h1>Projekat iz Web Programiranja</h1>
    <h2 style="color: #e0180a;">Sistem za prijavu ispita</h2>
    <h4 style="color: #575757;">Student: Anaid Vejzović</h4>
    <h4 style="color: #575757;">Mentor: mr. sc. Benjamin Suljić, dipl.ing.el.</h4>
</div>
<br>
<p class=" pocetna">Projekat se sastoji iz jednostavnog prijavljivanja studenta na ispite iz predmeta 5. semestra,
    smjera
    IT na IPI
    Akademiji. Student ima samo mogućnost prijave na ispit i mogućnost promjene lozinke. Registracija studenta
    vodi računa da su svi podaci unešeni i da su ispravni. Primjer toga je provjera da li se potvrđena šifra
    poklapa. Login također vodi računa o ispravnosti unešenih podataka <br><br>
    Druga vrsta korisnika koja postoji je Admin. Admin ima drugačije privilegije od studenta. Ima mogućnost pregleda
    svih tabela u bazi podatakau koje spadaju tabela korisnika kao i sve tabele prijavljenih studenata na
    ispite. Kod svake tabele Admin ima mogućnost pretrage tabele po korisničkom imenu, kao i mogućnost da kreira
    nove unose u tabelu, da briše i obrađuje imena i prezimena korisnika.
    Obrada, kao i brisanje Admin korisnika kroz CRUD je onemogućeno.
    <br><br>
    Pristup stranicama za prijavu ispita, kao i Admin stranici je onemogućen ukoliko korisnik nije prijavljen.
    Također,
    obični korisnik ne može pristupiti Admin
    stranici.
    Ukoliko se pokuša neovlašten pristup stranicama putem URL-a, automatski ćete biti poslati na Login stranicu.
    <br><br>
	Tabela korisnika u bazi podataka je ispunjena sa studentima IT smjera. Tabele prijavljenih studenata na ispite su prazne, pa ih možete sami popunjavati putem prijave na ispit.
    Aplikacija je uniformno dizajnirana, sa posebnim header i footer fajlovima koje koriste sve stranice projekta.
    Također se vodi računa o korisničkim sesijama, što se može vidjeti po korisničkom imenu prikazanom u headeru.
</p>
<br><br>
<?php 
    include ('footer.php');
?>