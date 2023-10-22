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

const regex = /^(?!.*([A-Za-z])\1\1)(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*()])[A-Za-z\d!@#$%^&*()]{6,12}$/;
const regexUsername = /^[A-Za-z][A-Za-z\d!@#$%^&*()]{1,}$/;
const testPasswords = ["Abc123!", "abcdefg", "ABC123!", "AbcAbcAbc123!", "Abc 123!,", "ניסיון", "ניסיון 123", "PePass123!"];
document.getElementById("check").style.visibility = "hidden"; 

function func1() {
    var passwordValue = document.getElementById("pass").value;
    var isReady = false;
    var usernameValue = document.getElementById("uName").value;
    if (regex.test(passwordValue) && regexUsername.test(usernameValue)) {
        console.log(`password: ${passwordValue} is valid`);
        document.getElementById("new").innerHTML = `${passwordValue} is valid`;
        console.log(`username: ${usernameValue} is valid`);
        document.getElementById("newUser").innerHTML = ` ${usernameValue} is valid`;
        var changeValue = document.getElementById("check").setAttribute('value', 'yes');


    } else if (regex.test(passwordValue)) {
        console.log(`password: ${passwordValue} is valid`);
        document.getElementById("new").innerHTML = `${passwordValue} is valid`;

        console.log(`username: ${usernameValue} is invalid`);
        document.getElementById("newUser").innerHTML = ` ${usernameValue} is invalid`;
        var changeValue = document.getElementById("check").setAttribute('value', 'no');
        console.log(`${changeValue} is invalid`);


    } else if (regexUsername.test(usernameValue)) {
        console.log(`username: ${usernameValue} is valid`);
        document.getElementById("newUser").innerHTML = ` ${usernameValue} is valid`;

        console.log(`password: ${passwordValue} is invalid`);
        document.getElementById("new").innerHTML = ` ${passwordValue} is invalid`;
        var changeValue = document.getElementById("check").setAttribute('value', 'no');
        console.log(`${changeValue} is invalid`);
    }


}


//ImageArray = new Array();
//ImageArray[0] = '<img src="../Pictures/pfps/davidpfp1.png" />';
//ImageArray[1] = '<img src="../Pictures/pfps/davidpfp2.png" />';;
//ImageArray[2] = '<img src="../Pictures/pfps/faradaypfp.png" />';;
//ImageArray[3] = '<img src="../Pictures/pfps/mainepfp.png" />';;
//ImageArray[4] = '<img src="../Pictures/pfps/rebpfp.png" />';;
//ImageArray[5] = '<img src="../Pictures/profilepicguest.png" />';;

//function getRandomImage1() {
//    var num = Math.floor(Math.random() * 6);
//    var img = ImageArray[num];
//    if (document.getElementById("tester").innerHTML == "sd") {
//        document.getElementById("randImage").innerHTML = (img);
//        console.log("mewwwwwwwwwww");
//    }

//}