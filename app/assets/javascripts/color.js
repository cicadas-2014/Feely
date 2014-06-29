var PageEvents = {

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
			$.ajax({
				url: "/colors/" + colorId + "/stories/new",
				type: "GET",
				success: function(html) {
					$('.story-form').html(html);
					$('.story-form').showToggle();
				}
			})
		})
	}
}