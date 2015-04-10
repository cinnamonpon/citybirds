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

$(document).ready(function(){
 document.getElementById("post").onchange = function () {
   var str = this.value;
     document.getElementById("uploadFile").value = str.substring(12, str.length);
 };
});
