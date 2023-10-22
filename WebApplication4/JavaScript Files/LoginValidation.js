function openForm() {
    document.getElementById("myForm").style.display = "block";

}

function closeForm() {
    document.getElementById("myForm").style.display = "none";
}

function openSignUp() {
    document.getElementById("mySignUp").style.display = "block";
    document.getElementById("myForm").style.display = "none";

}

function closeSignUp() {
    document.getElementById("mySignUp").style.display = "none";
}

//const testPasswords = ["Abc123!", "abcdefg", "ABC123!", "AbcAbcAbc123!", "Abc 123!,", "ניסיון", "ניסיון 123", "PePass123!"];


const regexUsername = /^[A-Za-z][A-Za-z\d!@#$%^&*()]{1,}$/;
const regexPassword = /^(?!.*([A-Za-z])\1\1)(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*()])[A-Za-z\d!@#$%^&*()]{6,12}$/;
const regexLastName = /^([A-Za-z\s]+|[\u0590-\u05FF\s]+)$/;
const regexFirstName = /^([A-Za-z\s]+|[\u0590-\u05FF\s]+)$/;
const regexPhone = /^(01|02|03|04|06|08|09|051|052|053|054|056|057|058|059|071|072|073|074|075|076|077|078|079)-\d{7}$/;
const regexEmail = /^[A-Za-z][A-Za-z\d!#$%&'*+\-\/=?^_`{|}~.]{0,}@([A-Za-z]+\.)+[A-Za-z]{2,3}$/;

document.getElementById("check").style.visibility = "hidden";


function func1() {
    var isReady = false;

    var usernameValue = document.getElementById("uName").value;
    var lastNameValue = document.getElementById("lName").value;
    var firstNameValue = document.getElementById("fName").value;
    var yearValue = document.getElementById("Yborn").value;
    var phoneValue = document.getElementById("phone").value;
    var passwordValue = document.getElementById("passwd").value;
    var emailValue = document.getElementById("email").value;

    //   alert(passwordValue);
    if (regexUsername.test(usernameValue)) {
        document.getElementById("userCheck").innerHTML = ` ${usernameValue} is valid`;
        //       var changeValue = document.getElementById("check").setAttribute('value', 'yes');
        isReady = true;
    }
    else {
        document.getElementById("userCheck").innerHTML = ` ${usernameValue} is invalid`;
        isReady = false;
        var changeValue = document.getElementById("check").setAttribute('value', 'no');

    }

    if (regexPassword.test(passwordValue)) {
        document.getElementById("passwordCheck").innerHTML = ` ${passwordValue} is valid`;
        //       var changeValue = document.getElementById("check").setAttribute('value', 'yes');
        isReady = true;
    }
    else {
        document.getElementById("passwordCheck").innerHTML = ` ${passwordValue} is invalid`;
        isReady = false;
        var changeValue = document.getElementById("check").setAttribute('value', 'no');

    }


    if (regexLastName.test(lastNameValue)) {
        document.getElementById("lastNameCheck").innerHTML = ` ${lastNameValue} is valid`;
        //       var changeValue = document.getElementById("check").setAttribute('value', 'yes');
        isReady = true;
    }
    else {
        document.getElementById("lastNameCheck").innerHTML = ` ${lastNameValue} is invalid`;
        isReady = false;
        var changeValue = document.getElementById("check").setAttribute('value', 'no');

    }


    if (regexFirstName.test(firstNameValue)) {
        document.getElementById("firstNameCheck").innerHTML = ` ${firstNameValue} is valid`;
        //       var changeValue = document.getElementById("check").setAttribute('value', 'yes');
        isReady = true;
    }
    else {
        document.getElementById("firstNameCheck").innerHTML = ` ${firstNameValue} is invalid`;
        isReady = false;
        var changeValue = document.getElementById("check").setAttribute('value', 'no');

    }


    if (regexPhone.test(phoneValue)) {
        document.getElementById("phoneCheck").innerHTML = ` ${phoneValue} is valid`;
        //       var changeValue = document.getElementById("check").setAttribute('value', 'yes');
        isReady = true;
    }
    else {
        document.getElementById("phoneCheck").innerHTML = ` ${phoneValue} is invalid`;
        isReady = false;
        var changeValue = document.getElementById("check").setAttribute('value', 'no');

    }


    if (regexEmail.test(emailValue)) {
        document.getElementById("emailCheck").innerHTML = ` ${emailValue} is valid`;
        //       
        isReady = true;
    }
    else {
        document.getElementById("emailCheck").innerHTML = ` ${emailValue} is invalid`;
        isReady = false;
        var changeValue = document.getElementById("check").setAttribute('value', 'no');

    }


    if (isReady == true) {
        console.log(`all true`);
        var changeValue = document.getElementById("check").setAttribute('value', 'yes');
    }
    else {
        console.log(`something ain't right`);
        var changeValue = document.getElementById("check").setAttribute('value', 'no');

    }

}