function validateRegistration() {
    //Dodati provjeru jedinstvenosti korisnickog imena
    const firstname = document.forms["registracija"]["firstname"].value;
    const lastname = document.forms["registracija"]["lastname"].value;
    const username = document.forms["registracija"]["username"].value;
    let password = document.forms["registracija"]["password"].value;
    let confirmpassword = document.forms["registracija"]["confirmpassword"].value;
    let email = document.forms["registracija"]["email"].value;

    if (firstname == "") {
        alert("Unesite svoje ime");
        return false;
    }
    else if (lastname == "") {
        alert("Unesite svoje prezime");
        return false;
    }
    else if (username == "") {
        alert("Unesite svoje korisničko ime");
        return false;
    }
    else if (password == "") {
        alert("Unesite svoju lozinku");
        return false;
    }
    else if (confirmpassword == "") {
        alert("Potvrdite svoju lozinku");
        return false;
    }
    else if (confirmpassword !== password) {
        alert("Lozinke se ne poklapaju. Potvrdite svoju lozinku");
        return false;
    }
    else if (email == "") {
        alert("Unesite validan email");
        return false;
    }
}

function validateLogin() {
    //Dodati provjeru ispravnosti korisničkog imena i passworda
    const username = document.forms["login"]["username"].value;
    const password = document.forms["login"]["password"].value;
    if (username == "") {
        alert("Unesite svoje korisničko ime");
        return false;
    }
    else if (password == "") {
        alert("Unesite svoju lozinku");
        return false;
    }
}

function validatePasswordChange() {
    //Dodati provjeru ispravnosti korisničkog imena i passworda
    const username = document.forms["login"]["username"].value;
    const password = document.forms["login"]["password"].value;
    const newpassword = document.forms["login"]["newpassword"].value;
    if (username == "") {
        alert("Unesite svoje korisničko ime");
        return false;
    }
    else if (password == "") {
        alert("Unesite svoju lozinku");
        return false;
    }
    else if (newpassword == "") {
        alert("Unesite novu lozinku");
        return false;
    }
    else if (newpassword === password) {
        alert("Ista lozinka. Molimo promijenite lozinku.");
        return false;
    }
}
function search() {
    var input, filter, table, tr, td, i, txtValue;
    input = document.getElementById("argument");
    filter = input.value.toUpperCase();
    table = document.getElementById("tabela");
    tr = table.getElementsByTagName("tr");
    for (i = 1; i < tr.length; i++) {
        td = tr[i].getElementsByTagName("td")[3];
        if (td) {
            txtValue = td.textContent || td.innerText;
            if (txtValue.toUpperCase().indexOf(filter) > -1) {
                tr[i].style.display = "";
            } else {
                tr[i].style.display = "none";
            }
        }
    }
}
function searchZaIspite() {
    var input, filter, table, tr, td, i, txtValue;
    input = document.getElementById("argument");
    filter = input.value.toUpperCase();
    table = document.getElementById("tabela");
    tr = table.getElementsByTagName("tr");
    for (i = 1; i < tr.length; i++) {
        td = tr[i].getElementsByTagName("td")[1];
        if (td) {
            txtValue = td.textContent || td.innerText;
            if (txtValue.toUpperCase().indexOf(filter) > -1) {
                tr[i].style.display = "";
            } else {
                tr[i].style.display = "none";
            }
        }
    }
}