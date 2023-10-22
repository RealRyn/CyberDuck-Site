
function funcClick() {
    var value = document.getElementById("text").innerHTML;

    if (value == "test") {
        document.getElementById("text").innerHTML = "new";
        var changeValue = document.getElementById("check").setAttribute('value', 'yes');

    }
    else {
        var changeValue = document.getElementById("check").setAttribute('value', 'no');

    }
}



