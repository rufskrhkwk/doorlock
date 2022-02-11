// 0507 글로벌 room_swiper 추가
var g_room_swiper = null;
// 0507 글로벌 room_swiper 추가

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


$(document).ready(function(){

	var is_autoplay = 0;
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

	$(document).on('click','#m-btn-prev',function(e) {
		e.preventDefault();
		e.stopPropagation();
		owl.trigger('prev.owl.carousel');
	});

	$(document).on('click','#m-btn-next',function(e) {
		owl.trigger('next.owl.carousel');
	});

	$(document).on('click','#icon-play',function(e) {
		owl.trigger('play.owl.autoplay',[4000]) ;
		playIconSet('play') ;
	});

	$(document).on('click','#icon-pause',function(e) {
		owl.trigger('stop.owl.autoplay',[4000]) ;
		playIconSet('pause') ;
	});


	$(document).on('click','#btn-go1',function(e) {
		e.preventDefault() ;
		alert( data_enterprise['realtime_url']) ;
	});


var window_w;
var how_w1;
var how_w2;

$(window).on("resize",function(){
    slide_arrow();
});
$(document).ready(function() {
    slide_arrow();
});

$(".swiper-button-next, .swiper-button-prev ").css("display","none");
function slide_arrow() {
    if(room_length == 2 && $(window).innerWidth() <= 820) $(".swiper-button-next, .swiper-button-prev ").css("display","block");
    else if(room_length >= 3 && $(window).innerWidth() <= 1100) $(".swiper-button-next, .swiper-button-prev ").css("display","block");
    else $(".swiper-button-next, .swiper-button-prev ").css("display","none");
}

window_w = $(window).innerWidth();
    if(window_w <= 820){
        how_w1 = "100%", how_2 = "100%";
    }else{
        how_w1 = "33.3333%";
        how_w2 = "66.6666%";
    }

    var room_length = $(".room-swiper .swiper-slide").length;

    switch (room_length){
        case 1 :
            var num_arr = [1,1,1];
            $(".room-swiper").css("width",how_w1);
            break;
        case 2 :
            var num_arr = [2,2,1];
            $(".room-swiper").css("width",how_w2);
            break;
        case 3 :
            var num_arr = [3,2,1];
            break;
        default :
            var num_arr = [3,2,1];
            break;
    }

    $(".room-swiper").each(function(index, element) {
        var $this = $(this);
        $this.addClass('instance-' + index);
        
        // 0507 지역 변수 swiper를 g_room_swiper 로 글로벌변수고 교체
        g_room_swiper = new Swiper('.instance-' + index, {
           
            slidesPerView: num_arr[0],
            spaceBetween: 25,
            loop: false,
            observer: true,
            pagination: {
                el: '.instance-'+index+' .swiper-pagination',
                clickable: true
            },
            navigation: {
                nextEl: '.instance-'+index+' .swiper-button-next',
                prevEl: '.instance-'+index+' .swiper-button-prev',
            },
            breakpoints: {
                1100: {
                    slidesPerView: num_arr[1],
                    spaceBetween: 20
                },
                820: {
                    slidesPerView: num_arr[2],
                    spaceBetween: 10
                },
                600: {
                    slidesPerView: 1,
                    spaceBetween: 0
                }
            }
        });
    });
//}



$('.dongList_wrap a').click(function() {
		var index = $(this).index();
		var idx = $(this).attr('data-idx');
		$('.dongList_wrap a').removeClass('on').eq(index).addClass('on');

		getRoomByDong(idx) ;

		//$('.itemList_wrap .swiper-container').removeClass('on').eq(idx).addClass('on');
	});

	var scrollObj = $.parallax({
	});
});



function getRoomByDong(pid) {
	$.ajax({
		type: 'POST',
		url: '/include/xhr/ajax.php',
		dataType:'JSON',
		data:{
			'mode':'DONG_ROOMS',
			'biz_code':biz_code,
			'pid':pid
		},
		error:function(xhr, ajaxOptions, thrownError) {
		  alert(ajaxOptions+","+thrownError) ;
		},
		success:function(data, textStatus) {
			makeSlider(data) ;
            // 0507 슬라이더생성후 첫번째 슬라이더로 강제 이동
            setTimeout(function(){
            g_room_swiper.slideTo(0,100,false);
            },0)
            // 0507 슬라이더생성후 첫번째 슬라이더로 강제 이동
		}
	});
}

function makeSlider(db_room) {

	var h = '' ;

	for(var i=0;i<db_room.length;i++) {
		if( db_room[i]['use_yn'] == 'Y') {
			var no = i + 1 ;

			h += "<a class='swiper-slide' href='/include/room.php?biz_code="+biz_code+"&menutree_idx="+db_room[i]['idx']+"'>\n" ;
			h += "<div class='imgWrap'>\n" ;
			h += "<div class='loader' style='background-image:url("+db_room[i]['thumb']+")'></div>\n" ;
			h += "</div>\n" ;
			h += "<div class='eng'>"+db_room[i]['room_name']+"</div>\n" ;
			//h += "<div class='txt'>"+db_room[i]['limit_man']+"/"+db_room[i]['max_man']+"인<span>"+db_room[i]['room_type']+"</span>"+db_room[i]['pyeong_m2']+"m²</div>\n" ;
			h += "<div class='txt'>"+db_room[i]['limit_man']+"/"+db_room[i]['max_man']+"인<span>"+db_room[i]['room_type']+"</span></div>\n" ;
			h += "<span class='detailview'>DETAIL VIEW<i class='fal fa-chevron-right'></i></span>\n" ;
			h += "</a>\n" ;

		}
	}

	$('.swiper-wrapper').html(h) ;

    // 0507 아래 주석 처리
	//roomList = new Swiper('#room5 .swiper-container', {
	//	slidesPerView: 3,
	//	spaceBetween: 25,
	//	loop: true,
	//	pagination: {
	//		el: '.swiper-pagination',
	//		clickable: true
	//	},
	//	observer: true,
	//	breakpoints: {
	//		1100: {
	//			slidesPerView: 2,
	//			spaceBetween: 20
	//		},
	//		820: {
	//			loop:false,
	//			freeMode:true,
	//			slidesPerView: 'auto',
	//			spaceBetween: 10
	//		},
	//		600: {
	//			loop:false,
	//			freeMode:true,
	//			slidesPerView: 'auto',
	//			spaceBetween: 10
	//		}
	//	}
	//});
    // 0507 아래 주석 처리

}

