var ColorIndexEvents = {

	loadColorFade: function() {
		var speed = 350;
		$('.color-selection').mouseenter(function() {
			var color = $(this).css("background-color");
			$('body').css('background-color', color)
			$('#background').fadeTo(speed, 0.8);
		});

		$('.color-selection').mouseleave(function() {
			$('body').css('background-color', '#FFF')
			$('#background').fadeTo(speed, 1.0);
		});
	},

	loadColorClick: function() {
		var speed = 350;
		$('.color-selection').click(function(event) {
			var color = $(this).css("background-color");
			$('body').css('background-color', color)
			$('#background').fadeTo(speed, 0.8);
			$('body').css('background-color', '#FFF');
			$('.colors-container').fadeToggle();
		});
	},

	loadForm: function() {
		$('.color-selection').click(function(event) {
			event.preventDefault();
			var colorId = $(this).text();
			var formRequest = $.get("/colors/" + colorId + "/stories/new")
			formRequest.success(function(html) {
				$('.story-form').html(html).fadeTo(speed, 0.8);
			})
		})
	}
}