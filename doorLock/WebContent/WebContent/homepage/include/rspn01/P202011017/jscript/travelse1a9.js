var serviceSlide = null ;

$.urlParam = function(name){
  var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
  if (results==null) {
     return null;
  }
  return decodeURI(results[1]) || 0;
}

$(document).ready(function() {

	serviceSlide = new Swiper('.serviceSlide', {
		initialSlide: 0,
		dynamicBullets: true,
		slidesPerView: 1,
		loop: false,
		observer: true,
		navigation: {
			nextEl: '.travel1_wrap .swiper-button-next',
			prevEl: '.travel1_wrap .swiper-button-prev',
		},
		pagination: {
			el: '.swiper-pagination',
			clickable: true
		},
		watchOverflow: true
	});

	var set_order = 0 ;

	if( $.urlParam('menutree_idx') != undefined && deviceType == 'mobile') {
		for(var i=0;i<data_travel.length;i++) {
			if( data_travel[i]['idx'] == $.urlParam('menutree_idx') ) {
				set_order = i ;
				break;
			}
		}
	}

	var serviceList = new Swiper('.serviceList', {
		initialSlide: set_order,
		spaceBetween: 15,
		slidesPerView: 8,
		centerInsufficientSlides:true,
		loop:false,
		navigation: {
			nextEl: '.travel2_wrap .swiper-button-next',
			prevEl: '.travel2_wrap .swiper-button-prev',
		},
		breakpoints: {
			1400: {
				slidesPerView: 6
			},
			820: {
				observer: true,
				freeMode:true,
				slidesPerView: 'auto'
			}
		},
		watchOverflow: true,
		on: {
			click: function() {
				var sel_slide = $(serviceList.clickedSlide);
				$('.serviceList .swiper-slide').removeClass('active');
				sel_slide.addClass('active');

				var idx = sel_slide.data('idx');
				$.ajax({
					url:'/include/xhr/client_ajax.php',
					data: {
						'mode':'GET_INFO',
						'idx':idx,
						'page_code':'travels',
						'biz_code':biz_code,
						'theme':'theme01'
					},
					method:'POST',
					success:function(response) {
						var data = JSON.parse(response);
						$('.service_slogan h3, .name h3').html(data.eng_label);
						$('.service_slogan h5, .name h5').html(data.title);
						$('.service_slogan p.distance').html(data.distance);
						$('.travel_info p.distance').html(data.distance);
						
						$('.contents').html(data.content);

						var slide = '';
						var tmp = data.slides.split(';') ;

						//console.log(data.slides) ;

						for(i=0; i<=tmp.length; i++) {
							if( tmp[i] != '' && tmp[i] != undefined) {
								slide += '<div class="swiper-slide">';
								slide += '<div class="loader" style="background-image: url('+tmp[i]+');"></div>';
								slide += '</div>';
							}
						}

						$('.travel1_wrap .swiper-wrapper').html(slide);

						serviceSlide.destroy();

						serviceSlide = new Swiper('.serviceSlide', {
							initialSlide: 0,
							slidesPerView: 1,
							loop: false,
							observer: true,
							navigation: {
								nextEl: '.travel1_wrap .swiper-button-next',
								prevEl: '.travel1_wrap .swiper-button-prev',
							},
							pagination: {
								el: '.swiper-pagination',
								clickable: true
							},
							watchOverflow: true
						});

					},
					error:function() {
					}
				});
			}
		}
	});


	$(document).on('click','.viewInfo',function(e) {
		$('.travel3_wrap').addClass('OPEN');
	});

	$(document).on('click','.travel3_close',function(e) {
		e.preventDefault();
			$('.travel3_wrap').removeClass('OPEN');
	});

	var scrollObj = $.parallax({
	});

});