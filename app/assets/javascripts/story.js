var StoryIndexEvents = {
	displayColorStories: function() {
		$('.story').click(function() {
			event.preventDefault();
			var colorSelection = $(this).attr('id');
			console.log(colorSelection);
			var storiesReq = $.get("/colors/show", {
				"name": colorSelection
			});
			storiesReq.success(function(html) {
				$('.colors-container').hide();
				$('.single-color-container').html(html).fadeTo(200, 0.8);
			})
		})
	}
}