//Quiz 2
//  Put your javascript here in a document.ready function

$(document).ready(function() {

	$('h3').css('color', 'blue');
	alert("The page has loaded");

	$("#clickMe").click(function(){
		$("p").fadeOut(1500);
	});
})
