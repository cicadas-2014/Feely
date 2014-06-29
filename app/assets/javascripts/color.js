var loadColorFade = function() {
	var speed = 350;
	$('.color-selection').mouseenter(function() {
		var color = $(this).css("background-color");
		$('.container').css('background-color', color)
		$('#background').fadeTo(speed, 0.8);
	});

	$('.color-selection').mouseleave(function() {
		$('#background').fadeTo(speed, 1.0);
		$('.container').css('background-color', '#FFF')
	});
}