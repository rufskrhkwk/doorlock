$.urlParam = function(name){
  var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
  if (results==null) {
     return null;
  }
  return decodeURI(results[1]) || 0;
}

function iframeLoadFn(obj) {
  obj.style.height = obj.contentWindow.document.body.scrollHeight + 'px';
}

$(document).ready(function() {

	$('.comm2_wrap a:eq(0)').addClass('active');

	$(document).on("click",".tab",function(e) {

		$('.comm2_wrap a').removeClass('active');
		$(this).addClass('active');

		var board_id = $(this).attr('data-idx') ;
		var board_type = $(this).attr('data-type') ;

		var url = '/include/iframe/board/list.html?biz_code='+biz_code+'&board_id='+board_id+'&board_type='+board_type ;	

		if( board_type == 'FAQ') {
			url = '/include/iframe/board/faq.html?biz_code='+biz_code+'&board_id='+board_id+'&board_type='+board_type ;
		}
		
		$('#inner').attr('src',url) ;
	});

	if( $.urlParam('board_id') != undefined) {
		var board_id = $.urlParam('board_id') ;
		var board_type = $.urlParam('board_type') ;

		$('.comm2_wrap .tab').each(function() {
			if( $(this).attr('data-idx') == board_id) {
				$(this).trigger('click') ;
			}
		});
	}


	var scrollObj = $.parallax({
	});

});
