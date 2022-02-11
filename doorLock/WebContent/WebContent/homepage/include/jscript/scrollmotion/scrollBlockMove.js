/* made by KimEunJi in INET*/
(function($){
	$.scrollBlockMove = function() {
		try{
			var containOj = arguments[1].containment == undefined ? ".all_wrap" : arguments[1].containment//스크롤할 페이지를 담아둘 셀렉트(쭈욱 .all_wrap로 써와서 기본값 주었음)
			var getAjaxUrl = arguments[1].ajax;//아작스로 가져올때 주소
			var beforeFn = arguments[1].before;//페이지 넘기기 전 실행할 함수
			var afterFn = arguments[1].after;//페이지 넘긴후 실행할 함수
			containOj += arguments[1].scroll == undefined ?'': ' , '+arguments[1].scroll;//스크롤이 있는 요소 셀렉트
			var scrollBlock = arguments[1].scrollBlock || false;//스크롤하면 그냥 내리고 싶을대 true
			var speed = arguments[1].speed || 700;//넘어가는 모션 속도
			var completeFn = arguments[1].complete;//설정 다 한후에 실행할 함수
		}catch(e){}
		//***** 동적로딩 설정부분 시작 *****//
		if(getAjaxUrl!=undefined){
			var HTMLOBJ = get_ajax(getAjaxUrl)
			HTMLOBJ = HTMLOBJ.replace(/ src=/gi,' tmpsrc=').replace(/ style=/gi,' tmpstyle=')
			$(containOj).append(HTMLOBJ)
		}
		//***** 동적로딩 설정부분 끝 *****//
		var now = 0;
		var sObj = $(arguments[0]);
		var pageState=true;//.is(":animated")가 트윈맥스랑 충돌남
		//레이어의 마지막 스크롤 잡기
		if(scrollBlock != true){
			$(containOj).unbind("mousewheel DOMMouseScroll").bind("mousewheel DOMMouseScroll", function(e){
				if(!pageState)return false;
				var elem = $(this);
				var delta  = e.originalEvent.wheelDelta || e.originalEvent.detail*-1 || e.originalEvent.deltaY*-1;
				var endCK = (
					!(delta<0 && elem[0].scrollHeight - elem.scrollTop() <= elem.innerHeight())
					&& !(delta>0 && elem.scrollTop()<=0)
				)
				if(endCK==true && elem.css("overflow")!='hidden'){
					e.stopPropagation()
					return true;
				}
				var go = delta>0?now-1:now+1;
				if(go<0 || sObj.eq(go).length<1)return;
				scrollMotion(go,delta)
				return false;
			});	
		}
		/*/방향키 감지
		$(document).focus().keydown(function(e) {
			if(!pageState)return;
			var go = now;
			if(e.which==40)go++
			else if(e.which==38) go--;
			if(go<0 || sObj.eq(go).length<1)return;
			scrollMotion(go)
		});
		*/
		//애니메이션 함수
		var scrollMotion = function(){
			var go = arguments[0];
			var delta = arguments[1];
			if(go==now)return;
			var dir = go<now?'Up':'Down';
			if($.type(beforeFn)=='function'){
				var beforeFnState = beforeFn(go,dir)
				if(beforeFnState==true)return;//true값을 받으면 애니 실행 안한다
				else if(beforeFnState!=undefined)dir = beforeFnState;
			}
			pageState = false;
			if(!sObj.eq(go).attr('tmpChange') && getAjaxUrl!=undefined){//동적로딩 관련처리
				sObj.eq(go).attr('tmpChange','true')
				sObj.eq(go).find('*[tmpsrc]').each(function(){
					$(this).attr('src',$(this).attr('tmpsrc')).removeAttr('tmpsrc')
				})
				sObj.eq(go).find('*[tmpstyle]').each(function(){
					$(this).attr('style',$(this).attr('tmpstyle')).removeAttr('tmpstyle')
				})
			}
			sObj.eq(go).attr('style',sObj.eq(go).attr('tmpstyle')).removeAttr('tmpstyle').css({"display":"block"}).addClass("scrollMove"+dir).stop().animate({count:1},speed);
			sObj.eq(now).addClass("scrollRemove"+dir).stop().animate({count:1},speed,function(){
				$(this).css({"display":"none"}).removeClass("scrollRemove"+dir)
				sObj.eq(go).removeClass("scrollMove"+dir)
				now = go;//now는 여기에서만 선언
				pageState = true;
				if($.type(afterFn)=='function')afterFn(go);
			});
		}
		var returnval={
			'btnScroll':function(param){//해당 페이지로 스크롤함
				if(!pageState)return;
				var go = param;
				if(param=='U')go = now-1
				else if(param=='D')go = now+1;
				if(param=='D' && go>=sObj.length)go=0;//아래무한
				if(param=='U' && go<0)go=sObj.length-1;//위무한
				if(go<0 || sObj.eq(go).length<1)return;
				scrollMotion(go)
			},'setObj':function(param){//페이지를 다시설정
				sObj = $(param);
				now = sObj.index(sObj.filter(":visible"));
			},'isAni':function(){//애니메이션 체크
				return pageState;
			}
		};
		//***** 첫페이지 보이기 시작 *****//
		now = [now];//참조로 전달하기 위해서
		if($.type(completeFn)=='function')completeFn(sObj.length,now);
		now = now[0];
		if(getAjaxUrl!=undefined){//동적로딩 관련처리
			$(arguments[0]).eq(now).each(function(){
				$(this).attr('style',$(this).attr('tmpstyle')).removeAttr('tmpstyle')
				.html($(this).html().replace(/ tmpsrc=/gi,' src=').replace(/ tmpstyle=/gi,' style='))
				.attr('tmpChange','true')
			})	
		}
		sObj.css("display","none").eq(now).css("display","block");
		//***** 첫페이지 보이기 끝 *****//
		if($.type(beforeFn)=='function')beforeFn(now);
		if($.type(afterFn)=='function')afterFn(now);
		return returnval;
	}
})(jQuery);