$(document).ready(function() {

	$.ajax({
		 	type: "GET",
		 	url: "projects/9/lab9jsontemplate.json",
		 	dataType: "json",
		 	success: function(responseData, status){ 
		 	output="";
		 	//<a href="../Lab02/Resume.html">Resume HTML/CSS</a>
		 	$.each(responseData.menuItem, function(i, menuItem) {
		 	output += '<a href='+menuItem.menuURL+'>'+menuItem.menuName+'</a>';
	  	});
	  	$('.dropdown-content').append(output);
		}, error: function(msg) {
	  				// there was a problem
	  	alert("There was a problem: " + msg.status + " " + msg.statusText);
		}
	});
});