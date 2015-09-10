tada = {
	start: function () {
		$('h1.heading').hover(function () {
		$('h1.heading').addClass('tada')
		});
		setTimeout(tada.stop, 20002);
	},

	stop: function () {
		$('h1.heading').removeClass('tada');
	},

	init: function () {
		tada.start();
	}
}



$(document).ready(function () {
	tada.init();
});