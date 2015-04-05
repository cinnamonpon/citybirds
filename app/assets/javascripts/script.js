$(document).ready(function(){
	document.getElementById("post").onchange = function () {
		var str = this.value;
	    document.getElementById("uploadFile").value = str.substring(12, str.length);
	};
});