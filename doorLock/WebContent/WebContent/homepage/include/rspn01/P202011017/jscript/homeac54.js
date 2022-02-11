
$.urlParam = function(name){
	var results = new RegExp('[\?&amp;]' + name + '=([^&amp;#]*)').exec(window.location.href);
	if (results==null){
		return null;
	}
	else{
		return results[1] || 0;
	}
}

var scMCobj = {
	ca1bottom:new Array({
		sel:"#lImg"
		,sCss:{transform:"translateX(-34px)"}
		,eCss:{transform:"translateX(0)"}
	},{
		sel:"#rImg"
		,sCss:{transform:"translateX(34px)"}
		,eCss:{transform:"translateX(0)"}
	})
};

var scrollObjANI = {};
var scrollObj;

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
		is_auto_play = true ;
	}
	else if(k == 'pause') {
		$('#icon-play').removeClass('active');
		$('#icon-pause').addClass('active');
		is_auto_play = false ;
	}
}

//vimeo
var revapi = null ;
var sliderAuto = null ;
var is_play = true ;



$(document).ready(function() {

	$('#section6 > p').each(function(){
    if($(this).html()=="") $(this).hide();
});

	$('.service_list li').each(function(e) {
		var idx = $(this).attr('data-idx') ;
		for(var j=0; j<data_service.length;j++) {
			if( data_service[j]['idx'] == idx && data_service[j]['use_yn'] == 'N') {
				$(this).remove() ;
			}
		}
	});

    console.log(data_service.length);
/*
    $(window).resize(function(){
        if($(window).width()<820){
            var arrCnt = new Array();
            arrCnt[1] = '33.3%';
            arrCnt[2] = '33.3%';
            arrCnt[3] = '33.3%';
            arrCnt[4] = '25%';
            arrCnt[5] = '33.3%';
            arrCnt[6] = '33.3%';
            arrCnt[7] = '25%';
            arrCnt[8] = '25%';
            arrCnt[9] = '33.3%';
            arrCnt[10] = '25%';
            arrCnt[11] = '25%';
            arrCnt[12] = '25%';

            $(".service_list li").css("width",arrCnt[data_service.length]);
        }
        else {
            $(".service_list li").css("width","16.7%");
        }
    });


    $(document).ready(function(){
        if($(window).width()<820){
            var arrCnt = new Array();
            arrCnt[1] = '33.3%';
            arrCnt[2] = '33.3%';
            arrCnt[3] = '33.3%';
            arrCnt[4] = '25%';
            arrCnt[5] = '33.3%';
            arrCnt[6] = '33.3%';
            arrCnt[7] = '25%';
            arrCnt[8] = '25%';
            arrCnt[9] = '33.3%';
            arrCnt[10] = '25%';
            arrCnt[11] = '25%';
            arrCnt[12] = '25%';

            $(".service_list li").css("width",arrCnt[data_service.length]);
        }
        else {
            $(".service_list li").css("width","16.7%");
        }
    });
*/
$('#section6 > p').each(function(){
    if($(this).html()=="") $(this).hide();
});
	var is_auto_play = true ;

	is_autoplay = 0;

	if(is_autoplay == 1) {
		is_auto_play = true ;
		$('#icon-play').addClass('active');
		$('#icon-pause').removeClass('active');
	}
	else {
		is_auto_play = false ;
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
		autoplay:is_auto_play,
		lazyLoad: true,
		autoplayTimeout:4000,
		autoplayHoverPause:false,
		nav:true,
		dots:true,
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

	$('.owl-prev').hover(
	  function() {
			owl.trigger('stop.owl.autoplay',[4000]) ;
	  }, function() {
	  	if( is_auto_play) {
	  		owl.trigger('play.owl.autoplay',[4000]) ;
	  	}
	  }
	);


	$('.owl-next').hover(
	  function() {
			owl.trigger('stop.owl.autoplay',[4000]) ;
	  }, function() {
			if( is_auto_play) {
	  		owl.trigger('play.owl.autoplay',[4000]) ;
	  	}
	  }
	);

$('#section6 > p').each(function(){
    if($(this).html()=="") $(this).hide();
});
//200731 수정
var window_w;
var how_w;
var how_dp2;

// $(document).ready(function(){
    slide_w_room();//최초호출
// });

//$(window).on("resize",function(){
//    slide_w_room();
//});

function slide_w_room(){//슬라이드 넓이 지정
    window_w = $(window).innerWidth();

    if(window_w <= 820) { how_w = "100%"; }
    else { how_w = "50%"; }

    var room_length = $(".room-swiper .swiper-slide").length;

    switch (room_length){
        case 1 :
            var num_arr = [1,1,1];
            $(".roomList_wrap .swiper-button-next,.roomList_wrap .swiper-button-prev ").css("display","none");
            $(".roomList_wrap").css("width",how_w);
            $(".roomList_wrap").css("margin","0 auto");
            break;
        case 2 :
            var num_arr = [2,2,1];
            if(window_w <= 820) {how_dp2 = "block";} else {how_dp2 = "none";}
            $(".roomList_wrap .swiper-button-next,.roomList_wrap .swiper-button-prev ").css("display",how_dp2);
            break;
        case 3 :
            var num_arr = [3,2,1];
            if(window_w <= 1100) {how_dp2 = "block";} else {how_dp2 = "none";}
            $(".roomList_wrap .swiper-button-next,.roomList_wrap .swiper-button-prev ").css("display",how_dp2);
            break;
        default :
            var num_arr = [3,2,1];
            how_dp2 = "block";
            $(".roomList_wrap .swiper-button-next,.roomList_wrap .swiper-button-prev ").css("display",how_dp2);
            break;
    }
    
    var swiper2 = new Swiper('.room-swiper', {
        slidesPerView: num_arr[0],
        spaceBetween: 25,
        loop: false,
        pagination: {
        el: '.roomList_wrap .swiper-pagination',
        clickable: true
    },
    navigation: {
        nextEl: '.roomList_wrap .swiper-button-next',
        prevEl: '.roomList_wrap .swiper-button-prev',
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
            slidesPerView: 1,   /*'auto'*/
            spaceBetween: 0     /*10*/
            }
        }
    });
}$('#section6 > p').each(function(){
    if($(this).html()=="") $(this).hide();
});
//200731 수정
//var fac_length = $(".fac-swiper .swiper-slide").length;

//switch (fac_length){
//    case 1 :
//        var num_arr_f = [1,1,1]
//        $(".facList_wrap .swiper-button-next,.facList_wrap .swiper-button-prev ").css("display","none");
//        //        $(".fac-swiper").css("width","33.3333%");
//        break;
//    case 2 :
//        var num_arr_f = [2,2,1]
//        $(".facList_wrap .swiper-button-next,.facList_wrap .swiper-button-prev ").css("display","none");
//        //        $(".fac-swiper").css("width","66.6666%");
//        break;
//    case 3 :
//        var num_arr_f = [3,2,1]
//        $(".facList_wrap .swiper-button-next,.facList_wrap .swiper-button-prev ").css("display","none");
//        break;
//    default :
//        var num_arr_f = [3,2,1]
//}

//facList_wrap
//var swiper1 = new Swiper('.fac-swiper', {
//    slidesPerView: num_arr_f[0],
//    spaceBetween: 25,
//    loop: false,
//    pagination: {
//        el: '.swiper-pagination',
//        clickable: true
//    },
//    navigation: {
//        nextEl: '.facList_wrap .swiper-button-next',
//        prevEl: '.facList_wrap .swiper-button-prev',
//    },
//    breakpoints: {
//        1100: {
//            slidesPerView: num_arr_f[1],
//            spaceBetween: 20
//        },
//        820: {
//            slidesPerView: num_arr_f[2],
//            spaceBetween: 10
//        },
//        600: {
//            slidesPerView: 1,   /*'auto'*/
//            spaceBetween: 0     /*10*/
//        }
//    }
//});
//$('.facList_wrap .swiper-button-next').show();
//$('.facList_wrap .swiper-button-prev').show();



var window_w;
var how_w;
var how_dp;

//$(document).ready(function(){
    slide_w_fac();//최초호출
//});

//$(window).on("resize",function(){
//    slide_w_fac();
//});

function slide_w_fac(){//슬라이드 넓이 지정
    window_w = $(window).innerWidth();
    if(window_w <= 820) how_w = "100%";
    else how_w = "50%";

    //200731 수정
    var fac_length = $(".fac-swiper .swiper-slide").length;
    switch (fac_length){
        case 1 :
            var num_arr_f = [1,1,1];
            $(".facList_wrap .swiper-button-next,.facList_wrap .swiper-button-prev ").css("display","none");
            $(".roomList_wrap").css("width",how_w);
            $(".roomList_wrap").css("margin","0 auto");
            //        $(".fac-swiper").css("width","33.3333%");
            break;
        case 2 :
            var num_arr_f = [2,2,1];
            if(window_w <= 820){ how_dp = "block";} else {how_dp = "none";}
            $(".facList_wrap .swiper-button-next,.facList_wrap .swiper-button-prev ").css("display",how_dp);
            break;
        case 3 :
            var num_arr_f = [3,2,1];
            if(window_w <= 1100){ how_dp = "block";} else {how_dp = "none";}
            $(".facList_wrap .swiper-button-next,.facList_wrap .swiper-button-prev ").css("display",how_dp);
            break;
        default :
            var num_arr_f = [3,2,1];
            how_dp = "block";
            $(".facList_wrap .swiper-container .swiper-button-next,.facList_wrap .swiper-container .swiper-button-prev ").css("display",how_dp);
            break;
    }

    //facList_wrap
    var swiper1 = new Swiper('.fac-swiper', {
        slidesPerView: num_arr_f[0],
        spaceBetween: 25,
        loop: false,
        pagination: {
        el: '.facList_wrap .swiper-pagination',
        clickable: true
    },
    navigation: {
        nextEl: '.facList_wrap .swiper-button-next',
        prevEl: '.facList_wrap .swiper-button-prev',
    },
        breakpoints: {
            1100: {
            slidesPerView: num_arr_f[1],
            spaceBetween: 20
            },
            820: {
            slidesPerView: num_arr_f[2],
            spaceBetween: 10
            },
            600: {
            slidesPerView: 1,   /*'auto'*/
            spaceBetween: 0     /*10*/
            }
        }
    });
}

	// scrollObj = $.parallax({
	// 	 setWrap: window
	// 	,setSel	: "#section1,#section2,#section5,#section7"
	// 	,getMc	: scMCobj
	// 	,step : function(obj){
	// 		for(var k in obj){
	// 			if(scrollObjANI[obj[k].name]!=true && (obj[k].oP>=0 && obj[k].oP<=1)){
	// 				scrollObjANI[obj[k].name] = true;
	// 				obj[k].obj.addClass("ANI")
	// 			}else if(scrollObjANI[obj[k].name]!=false && (obj[k].oP<0 || obj[k].oP>1)){
	// 				scrollObjANI[obj[k].name] = false;
	// 				obj[k].obj.removeClass("ANI")
	// 			}
	// 		}
	// 	}
	// });
	
	// scrollObj.setMCall(0);
});
