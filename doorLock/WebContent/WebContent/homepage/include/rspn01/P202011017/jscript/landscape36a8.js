$.urlParam = function(name){
  var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
  if (results==null) {
     return null;
  }
  return decodeURI(results[1]) || 0;
}

var leadingZeros = function (date, num) {
	var zero = '';
 	date = date.toString();

 	if (date.length < num) {
  	for (i = 0; i < num - date.length; i++)
   		zero += '0';
 	}
 	return zero + date;
}

function playIconSet(k) {
	if( k == 'play') {
		$('#icon-play').addClass('active');
		$('#icon-pause').removeClass('active');
	}
	else if(k == 'pause') {
		$('#icon-play').removeClass('active');
		$('#icon-pause').addClass('active');
	}
}

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

	if( $.urlParam('tab') != undefined) {
		$(window).load(function() {
			var lan = parseInt($('#' + $.urlParam('tab')).offset().top) ;
			$('html, body').animate({ scrollTop: lan }, { duration:800 });
			//TweenMax.to(window, 1, {scrollTo:'#about4'});
		});
	}


	var is_autoplay = 1;
	if(is_autoplay == 1) {
		autoplay = true ;
		$('#icon-play').addClass('active');
		$('#icon-pause').removeClass('active');
	}
	else {
		autoplay = false ;
		$('#icon-play').removeClass('active');
		$('#icon-pause').addClass('active');
	}

	// 메인 슬라이드
	var owl = $('.main-slides');
	owl.trigger('destroy.owl.carousel'); 

	owl.owlCarousel({
		items:1,
		loop:true,
		animateIn: 'fadeIn',
		animateOut: 'fadeOut',
		pagination: true,
		autoplay:autoplay,
		lazyLoad: true,
		autoplayTimeout:4000,
		autoplayHoverPause:false,
		nav:true,
		dots:true,
		lazyLoad:true,
		navText:["<img src='http://img.einet.kr/responsive/home/carousel/theme01/arrow-left.png' />", "<img src='http://img.einet.kr/responsive/home/carousel/theme01/arrow-right.png' />"],
		onInitialized : function(e) {
			var cur = (e.item.index - e.relatedTarget._clones.length / 2) + 1;
			var idx =  leadingZeros(cur, 2);
			var cnt = leadingZeros(e.item.count, 2);

			$('.pageObj .now').text(idx);
			$('.pageObj .all').text(cnt);
		},
		onChanged : function(e) {
			var curr = 1;
			var no = 1;

			$('#firstSlider button.owl-dot').each(function() {
				if($(this).hasClass('active')) {
					curr = no;
					return false;
				}
				no++;
			}) ;

			var idx =  leadingZeros(no, 2);
			$('.pageObj .now').text(idx);
		}
	});

	$(document).on('click','#icon-play',function(e) {
		owl.trigger('play.owl.autoplay',[4000]) ;
		playIconSet('play') ;
	});

	$(document).on('click','#icon-pause',function(e) {
		owl.trigger('stop.owl.autoplay',[4000]) ;
		playIconSet('pause') ;
	});

	
	

	var scrollObj = $.parallax({
	});
	
	//scrollObj.setMCall(0);
});
