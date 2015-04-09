$(document).ready(function(){
    $("#post").change(function () {
        var str = this.value;
        $("#uploadFile").attr("placeholder", str.substring(12, str.length));

    });

    $("#sub").click(function(event){
        event.preventDefault();
        if($("#desc").val() == "" && $("#post").val() == ""){
            $("#error").html("Please enter a title and choose a file");
        }
        else if($("#desc").val() == ""){
            $("#error").html("Enter a title");
        }
        else if($("#post").val() == ""){
            $("#error").html("No file chosen");
        }

    });

    $("#log").click(function(event){
        event.preventDefault();
        if($("#lusername").val() == "" && $("#lpassword").val() == ""){
            $("#lusername").css("border-color", "red");
            $("#lpassword").css("border-color", "red");
            $("#error").html("Please fill out the required fields.");
        }
        if($("#lusername").val() == ""){
            $("#lusername").css("border-color", "red");
            $("#error").html("Please fill out the required fields.");            
        }
        if($("#lpassword").val() == ""){
            $("#password").css("border-color", "red");
            $("#lpassword").html("Please fill out the required fields.");
        }

    });

});


var nameElement = document.forms.myForm.Name;

function nameFocus( e ) {
  var element = e.target || window.event.srcElement;
  if ( element.value == "Username" )
    element.value = "";
}

function nameBlur(e) {
  var element = e.target || window.event.srcElement;
  if ( element.value === "" )
    element.value = "Username";
}

if ( nameElement.addEventListener ) {
  nameElement.addEventListener("focus", nameFocus, false);
  nameElement.addEventListener("blur", nameBlur, false);
} else if ( nameElement.attachEvent ) {
  nameElement.attachEvent("onfocus", nameFocus);
  nameElement.attachEvent("onblur", nameBlur);
}
