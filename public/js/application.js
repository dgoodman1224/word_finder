$(document).ready(function() {
	returnHome = function() {window.location.href='/'}

	$('#home_button_results').on('click',returnHome)
	$('#home_button_none').on('click',returnHome)

});
