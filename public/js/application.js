$(document).ready(function() {
  $('#blank_tile_form').on('submit', function(event){
  	event.preventDefault()
  	$.ajax({
  		url: self.action,
  		type: self.method,
  		data: this['letters']
  	}).done(function() {
  		console.log("It worked!!!!!")
  	}).failure(function(){
  		console.log("Oh nooooooo")
  	})
});
});
