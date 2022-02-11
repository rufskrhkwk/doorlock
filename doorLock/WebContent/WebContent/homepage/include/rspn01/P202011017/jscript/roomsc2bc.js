$(function() {


	$(window).resize(function() {
		var height1 = $(window).width() * 0.5625;
		var height2 = height1 / 2;

		$('.about3_img1').css('height', height1+'px');
		$('.about3_img5').css('height', height1+'px');
		$('.about3_img2').css('height', height2+'px');
		$('.about3_img3').css('height', height2+'px');

		if($(window).width() > 820) {
			$('.about3_img4').css('height', height2+'px');
			$('.about3_logo').css('height', height2+'px');
		}else {
			$('.about3_img4').css('height', height1+'px');
			$('.about3_logo').css('height', '150px');
		}
	});

	var scrollObj = $.parallax({
	});

});
