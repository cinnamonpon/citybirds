$(document).ready(function(){
    $(".upload").each(function () {

        $('[id="post"]').change(function () {
            console.log("test");
            var str = this.value;
            $("#filename").html(str.substring(12, str.length));
            $(".hidden-input").css("visibility", "visible");

        });

    });

    $("#sub").click(function(event){
        if($("#title").val() == ""){
            event.preventDefault();
            $("#error").html("Please enter a title."); 
        }
        else{
            $(".submit").css("visibility", "visible");
        }
        

    });

    $("#log").click(function(event){
        
        $("#loginform input").each(function() {
            if(!isNaN(this.value)) {
                event.preventDefault();
                this.style.border = "1px solid red";
                $("#error1").html("Please fill out the required fields."); 
            }
        });

    });

    $("#register").click(function(event){
        $("#registerform input").each(function() {
            if(!isNaN(this.value)) {
                event.preventDefault();
                this.style.border = "1px solid red";
                $("#error2").html("Please fill out the required fields."); 
            }
        });
    });

});


//var nameElement = document.forms.myForm.Name;

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

/*if ( nameElement.addEventListener ) {
  nameElement.addEventListener("focus", nameFocus, false);
  nameElement.addEventListener("blur", nameBlur, false);
} else if ( nameElement.attachEvent ) {
  nameElement.attachEvent("onfocus", nameFocus);
  nameElement.attachEvent("onblur", nameBlur);
}*/
    function do_form(id)
    {
      document.getElementById(id).submit();
    }

function newPopup(url) {
    popupWindow = window.open(
        url,'popUpWindow','height=500,width=500,left=10,top=10,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
}