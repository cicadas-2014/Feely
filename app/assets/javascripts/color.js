var PageEvents = {

	loadColorFade: function() {
		var speed = 350;
		$('.color-selection').mouseenter(function() {
			var color = $(this).css("background-color");
			$('body').css('background-color', color)
			$('#background').fadeTo(speed, 0.8);
		});

		$('.color-selection').mouseleave(function() {
			$('#background').fadeTo(speed, 1.0);
			$('body').css('background-color', '#FFF')
		});
	},

	loadColorClick: function() {
		var speed = 350;
		$('.color-selection').click(function(event) {
			event.preventDefault();
			var color = $(this).css("background-color");
			$('body').css('background-color', color)
			$('#background').fadeTo(speed, 0.8);
			$('body').css('background-color', '#FFF');
			$('.colors-container').fadeToggle();
		});
	},

	hideColorSelection: function() {
		
	}
}

// var elementEvents = {
// 	hideColorSelection: function(event) {
// 		$('.color-selection').click(function() {
// 			event.preventDefault();
// 			$('.colors-container').slideDown();
// 		)}
// 	}
// }