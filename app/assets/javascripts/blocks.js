var colCount = 0;
var colWidth = 0;
var margin = 20;
var windowWidth = 0;
var blocks = [];

function setupBlocks() {
    windowWidth = $(window).width();
    colWidth = $('.block').outerWidth();
    colCount = Math.floor(windowWidth/(colWidth+margin));
    for(var i=0; i < colCount; i++) {
        blocks.push(margin);
    }
    $(window).resize(setupBlocks);
}
function positionBlocks() {
    $('.block').each(function(){
        var min = Array.min(blocks);
        var index = $.inArray(min, blocks);
        var leftPos = margin+(index*(colWidth+margin));
        $(this).css({
            'left':leftPos+'px',
            'top':min+'px'
        });
        blocks[index] = min+block.outerHeight()+margin;
    });
}

// Function to get the Min value in Array
Array.min = function(array) {
    return Math.min.apply(Math, array);
};


$(document).ready(function(){

   /* document.getElementById("post").onchange = function () {
        var str = this.value;
        document.getElementById("uploadFile").value = str.substring(12, str.length);
    };*/

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

/*
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
*/
});
