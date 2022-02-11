function iframeLoadFn(obj) {
  obj.style.height = obj.contentWindow.document.body.scrollHeight + 'px';
}

$(document).ready(function() {

	if( deviceType == 'mobile') {
		if( data_enterprise['booking_comp'] == 'ddnayo') {
			$('#inner-calendar').remove() ;
			var booking_url = "https://www.ddnayo.com/RsvSys/Calendar.aspx?id_hotel=" + data_enterprise['booking_id'] ;	
			$('.tab1').append('<a href="'+booking_url+'" target="_blank" style="display:block; width:200px; height:40px; margin:30px auto 0px auto; color:#222; font-size:14px; text-align:center; border:1px solid #333; padding:10px 20px; border-radius:5px;">실시간예약 달력보기</a>');
            //$('.tab1').append('<iframe id="ifrm_inet" src="'+booking_url+'" width="100%" height="500px" border="0"></iframe>');
            //$(".reserve3_wrap.tab1").css("padding-left","0").css("padding-right","0");
            //$(document).ready(function(){
            //    $('a#openbooking').click();
            //});
            //$("input[name=id_hotel]").val(data_enterprise['booking_id']);
            //$("form[name='frmbooking']").attr("action",booking_url).submit();
		}
		else if( data_enterprise['booking_comp'] == 'onda') {
			$('#inner-calendar').remove() ;
			var booking_url = data_enterprise['realtime_url'] ;
            //$(".reserve3_wrap.tab1").css("padding-left","20px");
            //$(".reserve3_wrap.tab1").css("padding-right","20px");
			$('.tab1').append('<a href="'+booking_url+'" target="_blank" style="display:block; width:200px; height:40px; margin:30px auto 0px auto; color:#222; font-size:14px; text-align:center; border:1px solid #333; padding:10px 20px; border-radius:5px;">실시간예약 달력보기</a>') ;
		}
	}
	
	var scrollObj = $.parallax({
	});

});
