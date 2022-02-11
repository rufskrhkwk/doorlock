<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>

	
	<!--방문자 카운터-->
	<SCRIPT LANGUAGE=JAVASCRIPT TYPE="TEXT/JAVASCRIPT">
		
		expireDate = new Date
		expireDate.setMonth(expireDate.getMonth()+6)
		hitCt = eval(cookieVal("pageHit"))
		hitCt++
		document.cookie = "pageHit="+hitCt+";expires=" + expireDate.toGMTString()
		
		function cookieVal(cookieName) {
		thisCookie = document.cookie.split("; ")
		for (i=0; i<thisCookie.length; i++) {
		if (cookieName == thisCookie[i].split("=")[0]) {
		return thisCookie[i].split("=")[1]
		}
		}
		return 0
		}
		
		// --방문자 카운터 >
		</SCRIPT>

<SCRIPT LANGUAGE=JAVASCRIPT TYPE="TEXT/JAVASCRIPT">
	
	document.write("제 홈페이지에 <font color=red>" + hitCt + "</font> 번째로 방문해주셨네요.")
	//-->
	</SCRIPT>

	
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">


<title>지리산 옹달샘펜션</title>



<link type="text/css" rel="stylesheet" href="css/builder/resetbc21.css" />
<link type="text/css" rel="stylesheet" href="rspn01/P202011017/css/commonbc21.css" />
<link type="text/css" rel="stylesheet" href="css/builder/animate.css" />
<link type="text/css" rel="stylesheet" href="css/builder/awesome.css" />
<link type="text/css" rel="stylesheet" href="css/builder/swiper.min.css" />
<link type="text/css" rel="stylesheet" href="css/owl/owl.carousel.min.css"/>
<link type="text/css" rel="stylesheet" href="css/owl/owl.theme.default.min.css" />
<link type="text/css" rel="stylesheet" href="css/scrollmotion/scrollBlockMove.css" />

<script>
var deviceType = 'computer' ;
var g_biz_name = '계룡산 힐링펜션' ;
var g_owner_name = '힐링펜션' ;
var g_biz_no = '000-000-0000' ;
var g_road_addr = '충청남도 계룡시 계룡면' ;
var g_jibun_addr = '충청남도 계룡시 계룡면' ;
var g_mailorder_no = '계룡산 111' ;
var g_user_hp = '010-0000-0000' ;
var g_user_tel = '--' ;
var g_admin_hp = '010-0000-0000' ;
var g_bank_info = [{"dong":"","bank_name":"계룡산금고","bank_no":"1111-1111-111-111","bank_owner":"계룡","bank_use_yn":"Y"},{"dong":"","bank_name":"지리산은행","bank_no":"000-000-0000","bank_owner":"지리산주인","bank_use_yn":"Y"}] ;
</script>

<script src="jscript/jquery-2.2.4.min.js"></script>
<script src="rspn01/P202011017/jscript/commonbc21.js"></script>
<script src="jscript/owl/owl.carousel.min.js"></script>
<script src="jscript/swiper.min.js"></script>
<script src="jscript/ScrollMagic.min.js"></script>
<script src="jscript/TweenMax.min.js"></script>
<script src="jscript/ScrollToPlugin.min.js"></script>
<script src="jscript/animation.gsap.min.js"></script>
<script src="jscript/webfontloader.js"></script>
<script src="jscript/scrollmotion/scrollBlockMove.js"></script> 
<script src="jscript/scrollmotion/scrollParallax.js"></script>

<script>
var data_room = [{"idx":"41595","dong_idx":"41594","dong_title":"ROOMS","dong_copy":"","dong_color":"#4d8b89","room_name":"101\uac00\ub78c","eng_title":"","room_class":"\uac1d\uc2e4 + \uac70\uc2e4, \uc628\ub3cc, \uce68\ub300, \ubcc4\ucc44, \ud14c\ub77c\uc2a4","room_class_etc":"","room_type":"\ucee4\ud50c, \uac00\uc871","room_type_etc":"","pyeong":"20","pyeong_m2":"66","limit_man":"2","max_man":"2","adult_excess":"20000","child_excess":"10000","baby_excess":"0","facilities":"\ub300\ud615\uc2a4\ud30c, Qook TV, Wifi, \uce68\ub300[\ud638\ud154\uce68\uad6c], \uc5d0\uc5b4\ucee8, \uc18c\ud30c, \uc8fc\ubc29\uc9d1\uae30(2\uc778), \ud654\uc7a5\uc2e4 1\uac1c, \uace0\ub300\uae30, \uc804\uc790\ub80c\uc9c0, \uc804\uae30\uc555\ub825\ubc2d\uc1a5, \ud0c0\uc62c, \ud734\uc9c0, \uc0f4\ud478\/\ubc14\ub514\uc6cc\uc2dc, \uc804\uae30\uadf8\ub9b4, \ub4dc\ub77c\uc774\uae30, \uc804\uae30\ud3ec\ud2b8, \ub0c4\ube44, \ud6c4\ub77c\uc774\ud32c, \uce6b\uc194, \uce58\uc57d","room_remark":"\ube14\ub8e8\uc640 \ud654\uc774\ud2b8\uc758 \uc2dc\uc6d0\ud55c \uac1d\uc2e4<br>\ucee4\ud50c \uac00\uc871 \ub8f8 \uc544\uc77c\ub79c\ub4dc \ud648\ubc14\uc640 \uc2e4\ub0b4 \uc2a4\ud30c, \ud14c\ub77c\uc2a4 \ube44\ube44\ud050","room_info":"","add_ddnayo_id":"","checkin1":"15","checkin2":"21","checkout":"11","checkin_etc1":"","checkin_etc2":"","checkout_etc":"","excess_info":"","ddnayo_no":"17015","room_no":"0","use_yn":"Y","price_open_yn":"Y"},{"idx":"41596","dong_idx":"41594","dong_title":"ROOMS","dong_copy":"","dong_color":"#4d8b89","room_name":"102\ub098\ub798","eng_title":"","room_class":"\uac1d\uc2e4 + \uac70\uc2e4, \uc628\ub3cc, \uce68\ub300, \ubcc4\ucc44, \ud14c\ub77c\uc2a4","room_class_etc":"","room_type":"\ucee4\ud50c, \uac00\uc871","room_type_etc":"","pyeong":"20","pyeong_m2":"66","limit_man":"2","max_man":"2","adult_excess":"20000","child_excess":"10000","baby_excess":"0","facilities":"\ub300\ud615\uc2a4\ud30c, Qook TV, Wifi, \uce68\ub300[\ud638\ud154\uce68\uad6c], \uc5d0\uc5b4\ucee8, \uc18c\ud30c, \uc8fc\ubc29\uc9d1\uae30(2\uc778), \ud654\uc7a5\uc2e4 1\uac1c, \uace0\ub300\uae30, \uc804\uc790\ub80c\uc9c0, \uc804\uae30\uc555\ub825\ubc2d\uc1a5, \ud0c0\uc62c, \ud734\uc9c0, \uc0f4\ud478\/\ubc14\ub514\uc6cc\uc2dc, \uc804\uae30\uadf8\ub9b4, \ub4dc\ub77c\uc774\uae30, \uc804\uae30\ud3ec\ud2b8, \ub0c4\ube44, \ud6c4\ub77c\uc774\ud32c,\uce58\uc57d, \uce6b\uc194","room_remark":"\ube14\ub8e8\uc640 \ud654\uc774\ud2b8\uc758 \uc2dc\uc6d0\ud55c \uac1d\uc2e4<br>\ucee4\ud50c \uac00\uc871 \ub8f8 \uc544\uc77c\ub79c\ub4dc \ud648\ubc14\uc640 \uc2e4\ub0b4 \uc2a4\ud30c, \ud14c\ub77c\uc2a4 \ube44\ube44\ud050","room_info":"","add_ddnayo_id":"","checkin1":"15","checkin2":"21","checkout":"11","checkin_etc1":"","checkin_etc2":"","checkout_etc":"","excess_info":"","ddnayo_no":"17016","room_no":"0","use_yn":"Y","price_open_yn":"Y"},{"idx":"41597","dong_idx":"41594","dong_title":"ROOMS","dong_copy":"","dong_color":"#4d8b89","room_name":"201\ub2e4\uc19c","eng_title":"","room_class":"\uc6d0\ub8f8, \uc628\ub3cc, \uce68\ub300, \uc2e4\ub0b4\ud14c\ub77c\uc2a4, \uc2e4\uc678 \ubca0\ub780\ub2e4","room_class_etc":"","room_type":"\ucee4\ud50c","room_type_etc":"","pyeong":"14","pyeong_m2":"46","limit_man":"2","max_man":"2","adult_excess":"0","child_excess":"0","baby_excess":"0","facilities":"\ub300\ud615\uc2a4\ud30c, Qook TV, Wifi, \uce68\ub300[\ud638\ud154\uce68\uad6c], \uc5d0\uc5b4\ucee8, \uc18c\ud30c, \uc8fc\ubc29\uc9d1\uae30(2\uc778), \ud654\uc7a5\uc2e4 1\uac1c, \uace0\ub300\uae30, \uc804\uc790\ub80c\uc9c0, \uc804\uae30\uc555\ub825\ubc2d\uc1a5, \ud0c0\uc62c, \ud734\uc9c0, \uc0f4\ud478\/\ubc14\ub514\uc6cc\uc2dc, \uc804\uae30\uadf8\ub9b4, \ub4dc\ub77c\uc774\uae30, \uc804\uae30\ud3ec\ud2b8, \ub0c4\ube44, \ud6c4\ub77c\uc774\ud32c, \uce58\uc57d, \uce6b\uc194","room_remark":"\ube14\ub8e8\uc640 \ud654\uc774\ud2b8\uc758 \uc2dc\uc6d0\ud55c \uac1d\uc2e4<br>\ucee4\ud50c\uc804\uc6a9 \ub8f8 \uc544\uc77c\ub79c\ub4dc \ud648\ubc14\uc640 \uc2e4\ub0b4 \uc2a4\ud30c, \ud14c\ub77c\uc2a4 \ube44\ube44\ud050, \ubc1c\ucf54\ub2c8","room_info":"","add_ddnayo_id":"","checkin1":"15","checkin2":"21","checkout":"11","checkin_etc1":"","checkin_etc2":"","checkout_etc":"","excess_info":"\uc131\uc778 2\uc778\ub9cc \uc774\uc6a9 \uac00\ub2a5\ud569\ub2c8\ub2e4. \uc790\ub140 \ucd94\uac00 \uc548\ub429\ub2c8\ub2e4.","ddnayo_no":"17017","room_no":"0","use_yn":"Y","price_open_yn":"Y"},{"idx":"41598","dong_idx":"41594","dong_title":"ROOMS","dong_copy":"","dong_color":"#4d8b89","room_name":"202\ub77c\uc628","eng_title":"","room_class":"\uc6d0\ub8f8, \uc628\ub3cc, \uce68\ub300 , \ud14c\ub77c\uc2a4","room_class_etc":"","room_type":"\ucee4\ud50c","room_type_etc":"","pyeong":"14","pyeong_m2":"46","limit_man":"2","max_man":"2","adult_excess":"0","child_excess":"0","baby_excess":"0","facilities":"\ub300\ud615\uc2a4\ud30c, Qook TV, Wifi, \uce68\ub300[\ud638\ud154\uce68\uad6c], \uc5d0\uc5b4\ucee8, \uc18c\ud30c, \uc8fc\ubc29\uc9d1\uae30(2\uc778), \ud654\uc7a5\uc2e4 1\uac1c, \uace0\ub300\uae30, \uc804\uc790\ub80c\uc9c0, \uc804\uae30\uc555\ub825\ubc2d\uc1a5, \ud0c0\uc62c, \ud734\uc9c0, \uc0f4\ud478\/\ubc14\ub514\uc6cc\uc2dc, \ud14c\ud314\uc804\uae30\uadf8\ub9b4, \ub4dc\ub77c\uc774\uae30, \uc804\uae30\ud3ec\ud2b8, \ub0c4\ube44, \ud6c4\ub77c\uc774\ud32c, \uce58\uc57d, \uce6b\uc194","room_remark":"\ube14\ub8e8\uc640 \ud654\uc774\ud2b8\uc758 \uc2dc\uc6d0\ud55c \uac1d\uc2e4<br>\ucee4\ud50c\uc804\uc6a9 \ub8f8 \uc2e4\ub0b4 \uc2a4\ud30c, \ud14c\ub77c\uc2a4 \ube44\ube44\ud050, \ubc1c\ucf54\ub2c8","room_info":"","add_ddnayo_id":"","checkin1":"15","checkin2":"21","checkout":"11","checkin_etc1":"","checkin_etc2":"","checkout_etc":"","excess_info":"\uc131\uc778 2\uc778\ub9cc \uc774\uc6a9 \uac00\ub2a5\ud569\ub2c8\ub2e4. \uc790\ub140 \ucd94\uac00 \uc548\ub429\ub2c8\ub2e4.","ddnayo_no":"17018","room_no":"0","use_yn":"Y","price_open_yn":"Y"},{"idx":"41599","dong_idx":"41594","dong_title":"ROOMS","dong_copy":"","dong_color":"#4d8b89","room_name":"203\ub9c8\ub8e8","eng_title":"","room_class":"\uc6d0\ub8f8, \uc628\ub3cc, \uce68\ub300, \uc2e4\ub0b4\ud14c\ub77c\uc2a4, \uc2e4\uc678 \ubca0\ub780\ub2e4","room_class_etc":"","room_type":"\ucee4\ud50c","room_type_etc":"","pyeong":"14","pyeong_m2":"46","limit_man":"2","max_man":"2","adult_excess":"0","child_excess":"0","baby_excess":"0","facilities":"\ub300\ud615\uc2a4\ud30c, Qook TV, Wifi, \uce68\ub300[\ud638\ud154\uce68\uad6c], \uc5d0\uc5b4\ucee8, \uc18c\ud30c, \uc8fc\ubc29\uc9d1\uae30(2\uc778), \ud654\uc7a5\uc2e4 1\uac1c, \uace0\ub300\uae30, \uc804\uc790\ub80c\uc9c0, \uc804\uae30\uc555\ub825\ubc2d\uc1a5, \ud0c0\uc62c, \ud734\uc9c0, \uc0f4\ud478\/\ubc14\ub514\uc6cc\uc2dc, \ud14c\ud314\uc804\uae30\uadf8\ub9b4, \ub4dc\ub77c\uc774\uae30, \uc804\uae30\ud3ec\ud2b8, \ub0c4\ube44, \ud6c4\ub77c\uc774\ud32c, \uce58\uc57d, \uce6b\uc194","room_remark":"\ube14\ub8e8\uc640 \ud654\uc774\ud2b8\uc758 \uc2dc\uc6d0\ud55c \uac1d\uc2e4<br>\ucee4\ud50c\uc804\uc6a9 \ub8f8 \uc2e4\ub0b4 \uc2a4\ud30c, \ud14c\ub77c\uc2a4 \ube44\ube44\ud050, \ubc1c\ucf54\ub2c8","room_info":"","add_ddnayo_id":"","checkin1":"15","checkin2":"21","checkout":"11","checkin_etc1":"","checkin_etc2":"","checkout_etc":"","excess_info":"\uc131\uc778 2\uc778\ub9cc \uc774\uc6a9 \uac00\ub2a5\ud569\ub2c8\ub2e4. \uc790\ub140 \ucd94\uac00 \uc548\ub429\ub2c8\ub2e4.","ddnayo_no":"17019","room_no":"0","use_yn":"Y","price_open_yn":"Y"},{"idx":"41600","dong_idx":"41594","dong_title":"ROOMS","dong_copy":"","dong_color":"#4d8b89","room_name":"301\ubcf4\ub78c","eng_title":"","room_class":"\uac1d\uc2e4 + \uac70\uc2e4, \uc628\ub3cc, \uce68\ub300, \uc2e4\ub0b4\ud14c\ub77c\uc2a4, \uc2e4\uc678\ubca0\ub780\ub2e4","room_class_etc":"","room_type":"\ucee4\ud50c, \uac00\uc871","room_type_etc":"","pyeong":"18","pyeong_m2":"60","limit_man":"2","max_man":"2","adult_excess":"20000","child_excess":"10000","baby_excess":"0","facilities":"\ub300\ud615\uc2a4\ud30c, Qook TV, Wifi, \uce68\ub300[\ud638\ud154\uce68\uad6c], \uc5d0\uc5b4\ucee8, \uc18c\ud30c, \uc8fc\ubc29\uc9d1\uae30(2\uc778), \ud654\uc7a5\uc2e4 1\uac1c, \uace0\ub300\uae30, \uc804\uc790\ub80c\uc9c0, \uc804\uae30\uc555\ub825\ubc2d\uc1a5, \ud0c0\uc62c, \ud734\uc9c0, \uc0f4\ud478\/\ubc14\ub514\uc6cc\uc2dc, \ud14c\ud314\uc804\uae30\uadf8\ub9b4, \ub4dc\ub77c\uc774\uae30, \uc804\uae30\ud3ec\ud2b8, \ub0c4\ube44, \ud6c4\ub77c\uc774\ud32c, \uce58\uc57d, \uce6b\uc194","room_remark":"\ube14\ub8e8\uc640 \ud654\uc774\ud2b8\uc758 \uc2dc\uc6d0\ud55c \uac1d\uc2e4<br>\ucee4\ud50c \uac00\uc871 \ub8f8 \uc544\uc77c\ub79c\ub4dc \ud648\ubc14\uc640 \uc2e4\ub0b4 \uc2a4\ud30c, \ud14c\ub77c\uc2a4 \ube44\ube44\ud050, \ubc1c\ucf54\ub2c8","room_info":"","add_ddnayo_id":"","checkin1":"15","checkin2":"21","checkout":"11","checkin_etc1":"","checkin_etc2":"","checkout_etc":"","excess_info":"","ddnayo_no":"17020","room_no":"0","use_yn":"Y","price_open_yn":"Y"},{"idx":"41601","dong_idx":"41594","dong_title":"ROOMS","dong_copy":"","dong_color":"#4d8b89","room_name":"302\uc18c\uc6d0","eng_title":"","room_class":"\uac1d\uc2e4 + \uac70\uc2e4, \uc628\ub3cc, \uce68\ub300, \uc2e4\ub0b4\ud14c\ub77c\uc2a4, \ubca0\ub780\ub2e4","room_class_etc":"","room_type":"\ucee4\ud50c, \uac00\uc871","room_type_etc":"","pyeong":"18","pyeong_m2":"60","limit_man":"2","max_man":"2","adult_excess":"20000","child_excess":"10000","baby_excess":"0","facilities":"\ub300\ud615\uc2a4\ud30c, Qook TV, Wifi, \uce68\ub300[\ud638\ud154\uce68\uad6c], \uc5d0\uc5b4\ucee8, \uc18c\ud30c, \uc8fc\ubc29\uc9d1\uae30(2\uc778), \ud654\uc7a5\uc2e4 1\uac1c, \uace0\ub300\uae30, \uc804\uc790\ub80c\uc9c0, \uc804\uae30\uc555\ub825\ubc2d\uc1a5, \ud0c0\uc62c, \ud734\uc9c0, \uc0f4\ud478\/\ubc14\ub514\uc6cc\uc2dc, \ud14c\ud314\uc804\uae30\uadf8\ub9b4, \ub4dc\ub77c\uc774\uae30, \uc804\uae30\ud3ec\ud2b8, \ub0c4\ube44, \ud6c4\ub77c\uc774\ud32c, \uce58\uc57d, \uce6b\uc194","room_remark":"\ube14\ub8e8\uc640 \ud654\uc774\ud2b8\uc758 \uc2dc\uc6d0\ud55c \uac1d\uc2e4<br>\ucee4\ud50c \uac00\uc871 \ub8f8 \uc544\uc77c\ub79c\ub4dc \ud648\ubc14\uc640 \uc2e4\ub0b4 \uc2a4\ud30c, \ud14c\ub77c\uc2a4 \ube44\ube44\ud050, \ubc1c\ucf54\ub2c8","room_info":"","add_ddnayo_id":"","checkin1":"15","checkin2":"21","checkout":"11","checkin_etc1":"","checkin_etc2":"","checkout_etc":"","excess_info":"","ddnayo_no":"17021","room_no":"0","use_yn":"Y","price_open_yn":"Y"}] ;

var data_fac = [{"idx":"41603","title":"\uc804\uac1d\uc2e4 \ub178\ucc9c\ud0d5","eng_title":"Open-air Bath in all Rooms","copy":"","use_yn":"Y","content":"<p>\uc785\uc695\uc81c\ub294 \uac1c\uc778\uc774 \uc0ac \uc624\uc154\uc11c \uc0ac\uc6a9\ud574\ub3c4 \ub429\ub2c8\ub2e4.\u00a0<\/p><p>\ub2e4\ub9cc \ud384(\ubc18\uc9dd\uc774)\uc774 \ub4e4\uc5b4\uac04 \uc785\uc695\uc81c\ub098. \uc9c4\ud751\uc774\ub098 \uc22f\uc774 \ud568\uc720\ub41c \uc785\uc695\uc81c\ub294 \uc0ac\uc6a9 \uc790\uc81c\ub97c \ubd80\ud0c1\ub4dc\ub9bd\ub2c8\ub2e4.<\/p><p>\uc0dd\ud654\ub97c \ub123\uc73c\uc2e4 \uacbd\uc6b0\ub294 \uc2dc\uc124 \uc218\ub9ac \ube44\uc6a9\uc744 \uccad\uad6c\ud558\uc624\ub2c8 \uc8fc\uc758\ud574 \uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4.<\/p>"},{"idx":"41604","title":"\uc804\uac1d\uc2e4 \uac1c\ubcc4\ubc14\ube44\ud050\uc7a5","eng_title":"All rooms Individual Barbecue","copy":"","use_yn":"Y","content":"<p>\ubaa8\ub4e0 \uac1d\uc2e4\uc5d4 \uc2e4\ub0b4 \ubc14\ube44\ud050\uc7a5\uacfc\u00a0\uc804\uae30\uadf8\ub9b4\uc774\u00a0\ub9c8\ub828\ub418\uc5b4\u00a0\uc788\uc2b5\ub2c8\ub2e4.<\/p><p>\uc5ec\ub984\uc5d4\u00a0\ubc8c\ub808\uc640 \ub354\uc704\ub97c \ud53c\ud574\uc11c \uaca8\uc6b8\uc5d4\u00a0\ucd94\uc704\ub97c \ud53c\ud574\uc11c \ucf8c\uc801\ud55c \uc2e4\ub0b4 \ubc14\ube44\ud050\uc7a5\uc744 \uc774\uc6a9\ud558\uc138\uc694.<\/p>"},{"idx":"41605","title":"\uc218\uc601\uc7a5","eng_title":"Swimming Pool","copy":"","use_yn":"Y","content":"<p>\ud39c\uc158 \ub9c8\ub9b0\ube14\ub8e8\ub294 \uc790\uccb4\uc801\uc73c\ub85c \uc57c\uc678\uc218\uc601\uc7a5\uc744 \ubcf4\uc720\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.<\/p>  <p>\uc218\uc601\uc7a5\uc5d0 \ub9c8\ub828\ub41c \uc36c\ubca0\ub4dc\uc5d0\uc11c \uc990\uae30\ub294 \uce75\ud14c\uc77c \ud55c\uc794\uacfc \ud568\uaed8&nbsp;\uc0b6\uc758 \uc5ec\uc720\ub97c \ub290\uaef4\ubcf4\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4.<\/p>  <p>&nbsp;<\/p>  <p>[\uc218\uc601\uc7a5&nbsp;\uc774\uc6a9 \uc2dc\uac04\uc740&nbsp;20\uc2dc\uae4c\uc9c0\uc785\ub2c8\ub2e4.]<\/p>  <p>&nbsp;<\/p>  <p>\uc218\uc601\uc7a5 \uac1c\uc7a5\uc740 \uc7a5\ub9c8 \uc774\ud6c4\ub85c \uc624\ud508\ud558\uba70, \ud3d0\uc7a5\uc740 9\uc6d4\uc5d0 \ud569\ub2c8\ub2e4.<\/p>  <p>\ud06c\uae30 : \uac00\ub85c 8m \uc138\ub85c 4m \uae4a\uc774 90cm<\/p> "}] ;

var data_service = [{"idx":"41607","title":"\uc640\uc778(\uae30\uac04\ud55c\uc815)","eng_title":"Wine","copy":"","use_yn":"Y","content":"<p>\uacb0\uc7ac \uc2dc\uc5d0 \uc120\ud0dd\ud574 \uc8fc\uc2dc\uba74 \uc640\uc778\uc744 \uc900\ube44\ud574 \ub4dc\ub9bd\ub2c8\ub2e4.<\/p><p>\uac00\ubccd\uac8c \uc990\uae38 \uc218 \uc788\ub294 \ud654\uc774\ud2b8 \uc2a4\ud30c\ud074\ub9c1 \uc640\uc778\uacfc \uc721\ub958\uc640 \uc798 \uc5b4\uc6b8\ub9ac\ub294 \ub808\ub4dc\uc640\uc778\uc774 \uc788\uc2b5\ub2c8\ub2e4.<\/p><p><\/p><p>\uc608\uc57d \uc2dc \uba54\ubaa8\ub780\uc5d0 \uc640\uc778 \uc885\ub958\ub97c \uae30\uc785\ud574 \uc8fc\uc138\uc694.<\/p><p>20,000\uc6d0<\/p>"},{"idx":"41608","title":"\uc804\uae30\uadf8\ub9b4","eng_title":"Electric Grill","copy":"","use_yn":"Y","content":"<p>\ub9c8\ub9b0\ube14\ub8e8\uc5d0\uc11c\ub294 \uc804\uae30\uadf8\ub9b4\uc744\u00a0\uc81c\uacf5\ud574\u00a0\ub4dc\ub9ac\uace0\u00a0\uc788\uc2b5\ub2c8\ub2e4.<\/p><p>\uc790\ub3d9\u00a0\uc628\ub3c4\uc870\uc808 \uae30\ub2a5\uc73c\ub85c\u00a0\uace0\uae30\ub97c\u00a0\uc798\u00a0\uad7d\uc9c0\u00a0\ubabb\ud558\ub354\ub77c\ub3c4\u00a0 \ucd5c\uace0\uc758\u00a0\ub9db\uc744\u00a0\ub0bc\u00a0\uc218\u00a0\uc788\ub3c4\ub85d\u00a0\ud574\uc90d\ub2c8\ub2e4.<\/p>"},{"idx":"41609","title":"\uc218\uc81c\uc785\uc695\uc81c","eng_title":"Handmade Bath Products","copy":"","use_yn":"Y","content":"<p>\ud39c\uc158\uc9c0\uae30\uac00 \uc9c1\uc811 \ucc9c\uc5f0 \uc7ac\ub8cc\ub85c \ub9cc\ub4e0\u00a0\uc785\uc695\uc81c\ub97c \ud310\ub9e4\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.\u00a0<\/p><p>\uc544\ub85c\ub9c8 \/ \uac00\uaca9 5,000\uc6d0<\/p><p>\uac70\ud488\uc785\uc695\uc81c\u00a0\/ \uac00\uaca9 10,000\uc6d0<\/p>"},{"idx":"41610","title":"\uce68\uad6c\ub958","eng_title":"Bedding","copy":"","use_yn":"Y","content":"<p>\ud3b8\uc548\ud55c \uc7a0\uc790\ub9ac\ub97c \uc704\ud574 \uc804 \uac1d\uc2e4 \uccad\uacb0\ud55c \uce68\uad6c\ub958\ub85c \uc81c\uacf5\ub418\uace0 \uc788\uc2b5\ub2c8\ub2e4.<\/p><p>\ud3b8\uc548\ud55c \uc7a0\uc790\ub9ac\uc5d0\uc11c \ud589\ubcf5\ud55c \uc5ec\ud589\uc744 \ubcf4\ub0b4\uc138\uc694.1\uc77c 1\uce68\uad6c \uad50\uccb4\ub97c \uae30\ubcf8 \uc6d0\uce59\uc73c\ub85c \ud558\uc5ec \ucf8c\uc801\ud55c \uc7a0\uc790\ub9ac\ub97c \uc81c\uacf5\ud558\uae30 \uc704\ud574 \ucd5c\uc120\uc744 \ub2e4\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.<\/p>"},{"idx":"41611","title":"TV&Wi-Fi","eng_title":"TV&Wi-Fi","copy":"","use_yn":"Y","content":"<p>\ub9c8\ub9b0\ube14\ub8e8\uc5d0\uc120&nbsp;\uc5b4\ub514\uc11c\ub098&nbsp;\ubb34\uc120\uc778\ud130\ub137\uc774&nbsp;\uac00\ub2a5\ud569\ub2c8\ub2e4.<\/p>  <p>[SK \ube0c\ub85c\ub4dc\ubc34\ub4dc\ub97c&nbsp;\uc81c\uacf5\ud558\uace0&nbsp;\uc788\uc2b5\ub2c8\ub2e4.]&nbsp;<\/p>  <p>\ucf58\ud150\uce20 \uacb0\uc7ac \uc11c\ube44\uc2a4\ub294 \uac1c\uc778\uce74\ub4dc\ub85c \uac00\ub2a5\ud569\ub2c8\ub2e4.<\/p>  <p>Wi-Fi \ube44\ubc00\ubc88\ud638\ub294 \uac1d\uc2e4 \ub0b4 \uacf5\uc720\uae30\uc5d0 \uc788\uc2b5\ub2c8\ub2e4.<\/p> "}] ;

var data_travel = [{"idx":"41613","title":"\ud654\uc591\uad6c\uace1\/\uc120\uc720\uad6c\uace1","eng_title":"Hwayanggugok Valley \/ Seonyugugok Valley","copy":"","use_yn":"Y","distance":"\uc790\ub3d9\ucc28\ub85c 20\ubd84","homepage":"","content":"<p>\ud654\uc591\uad6c\uace1 \uc18d\ub9ac\uc0b0\uad6d\ub9bd\uacf5\uc6d0&nbsp;\ub0b4&nbsp;\ud654\uc591\ucc9c\uc744&nbsp;3km\uc5d0&nbsp;\uac78\uccd0&nbsp;\ud558\ub958\uc5d0\uc11c&nbsp;\uc0c1\ub958\ub85c&nbsp;\uc62c\ub77c\uac00\uba70&nbsp;\uc81c1\uace1&nbsp;\uacbd\ucc9c \ubcbd\ubd80\ud130&nbsp;\uc81c9\uace1&nbsp;\ud30c\uacf6\uae4c\uc9c0&nbsp;\uad6c\uace1\uc758&nbsp;\uacbd\uad00\uc774&nbsp;\uc798&nbsp;\ubcf4\uc874\ub418\uc5b4&nbsp;\uc788\uc73c\uba70,&nbsp;\uad6c\uace1\uc758&nbsp;\uacbd\uad00<\/p>  <p>\ud558\ub098\ud558\ub098\uac00&nbsp;\ubaa8\ub450 \uc544\ub984\ub2e4\uc6b4&nbsp;\uacbd\uc2b9\uc73c\ub85c\uc11c\uc758&nbsp;\uac00\uce58\ub97c&nbsp;\uc9c0\ub2c8\uace0 \uc788\uc2b5\ub2c8\ub2e4.<\/p>  <p>\uad6c\uace1\uc758&nbsp;\uc124\uc815\uc740&nbsp;\uc6b0\uc554&nbsp;\uc1a1\uc2dc\uc5f4\uc774&nbsp;\uba38\ubb3c\ub800\ub358&nbsp;\ud654\uc591\uacc4\uace1\uc5d0&nbsp;\uc6b0\uc554&nbsp;\uc0ac\ud6c4&nbsp;\uc81c\uc790\uc778&nbsp;\uc218\uc554<\/p>  <p>\uad8c\uc0c1\ud558\uac00&nbsp;\uc124\uc815\ud558\uace0 \uc774\ud6c4&nbsp;\ub2e8\uc554&nbsp;\ubbfc\uc9c4\uc6d0\uc774&nbsp;\uac01\uc790\ud55c&nbsp;\uac83\uc73c\ub85c&nbsp;\uc804\ud558\uc5ec\uc838&nbsp;\uc624\uace0 \uc788\uc2b5\ub2c8\ub2e4. \uc81c1\uace1&nbsp;\uacbd\ucc9c\ubcbd(\u64ce\u5929\u58c1),&nbsp;\uc81c2\uace1&nbsp;\uc6b4\uc601\ub2f4(\u96f2\u5f71\u6f6d),&nbsp;\uc81c3\uace1&nbsp;\uc74d\uad81\uc554(\u6ce3\u5f13\u5dd6), \uc81c4\uace1&nbsp;\uae08\uc0ac\ub2f4(\u91d1\u6c99\u6f6d),&nbsp;\uc81c5\uace1&nbsp;\ucca8\uc131\ub300(\u77bb\u661f\u81fa),&nbsp;\uc81c6\uace1&nbsp;\ub2a5\uc6b4\ub300(\uf955\u96f2\u81fa), \uc81c7\uace1&nbsp;\uc640\ub8e1\uc554(\u81e5\u9f8d\u5dd6),&nbsp;\uc81c8\uace1&nbsp;\ud559\uc18c\ub300(\u9db4\u5de2\u81fa),&nbsp;\uc81c9\uace1&nbsp;\ud30c\uacf6(\u5df4\uf905)&nbsp;<\/p>  <p> \uc120\uc720\uad6c\uace1<\/p>  <p> \uad34\uc0b0\uad70&nbsp;\uc1a1\uba74\uc5d0\uc11c&nbsp;\ub3d9\ubd81\ucabd\uc73c\ub85c&nbsp;1&sim;2\u339e\uc5d0&nbsp;\uac78\uccd0&nbsp;\uc788\ub294&nbsp;\uacc4\uace1\uc774\ub2e4.&nbsp;\uc870\uc120\uc2dc\ub300&nbsp;\ud1f4\uacc4&nbsp;<\/p>  <p>\uc774\ud669\uc774&nbsp;7\uc1a1\uc815(\ud604&nbsp;\uc1a1\uba74\ub9ac&nbsp;\uc1a1\uc815\ubd80\ub77d)\uc5d0&nbsp;\uc788\ub294&nbsp;\ud568\ud3c9&nbsp;\uc774\uc528\ub301\uc744&nbsp;\ucc3e\uc544\uac14\ub2e4\uac00&nbsp;\uc0b0\uacfc<\/p>  <p>\ubb3c,&nbsp;\ubc14\uc704,&nbsp;\ub178\uc1a1&nbsp;\ub4f1\uc774&nbsp;\uc798&nbsp;\uc5b4\uc6b0\ub7ec\uc9c4&nbsp;\uc808\ubb18\ud55c&nbsp;\uacbd\uce58\uc5d0&nbsp;\ubc18\ud558\uc5ec,&nbsp;9\ub2ec\uc744&nbsp;\ub3cc\uc544\ub2e4\ub2c8\uba70<\/p>  <p>9\uace1\uc758&nbsp;\uc774\ub984\uc744&nbsp;\uc9c0\uc5b4&nbsp;\uc0c8\uacbc\ub2e4&nbsp;\ud55c\ub2e4.&nbsp;\uae34&nbsp;\uc138\uc6d4\uc774&nbsp;\uc9c0\ub098\ub294&nbsp;\ub3d9\uc548&nbsp;\uae00\uc790\ub294&nbsp;\uc5c6\uc5b4\uc84c\uc9c0\ub9cc<\/p>  <p>\uc808\uacbd\uc740&nbsp;\uc5ec\uc804\ud558\ub2e4. \uc2e0\uc120\uc774&nbsp;\ub0b4\ub824\uc640&nbsp;\ub178\ub2d0\ub358&nbsp;\uacf3\uc774\ub77c\ub294&nbsp;\uc120\uc720\ub3d9\ubb38\uc744&nbsp;\ube44\ub86f\ud574&nbsp;\uacbd\ucc9c\ubcbd,<\/p>  <p>\ud559\uc18c\uc554,&nbsp;\uc5f0\ub2e8\ub85c,&nbsp;\uc640\ub8e1\ud3ed,&nbsp;\ub09c\uac00\ub300, \uae30\uad6d\uc554,&nbsp;\uad6c\uc554,&nbsp;\uc740\uc120\uc554\uc774&nbsp;9\uace1\uc744&nbsp;\ud615\uc131\ud558\uace0&nbsp;\uc788\ub2e4.<\/p>  <p>\uc81c1\uace1&nbsp;\uc120\uc720\ub3d9\ubb38,&nbsp;\uc81c2\uace1&nbsp;\uacbd\ucc9c\ubcbd,&nbsp;&nbsp;\uc81c3\uace1&nbsp;\ud559\uc18c\uc554, \uc81c4\uace1&nbsp;\uc5f0\ub2e8\ub85c,&nbsp;&nbsp;&nbsp;\uc81c5\uace1&nbsp;\uc640\ub8e1\ud3ed,&nbsp;&nbsp;\uc81c6\uace1&nbsp;\ub09c\uac00\ub300 \uc81c7\uace1&nbsp;\uae30\uad6d\uc554,&nbsp;&nbsp;&nbsp;\uc81c8\uace1&nbsp;\uad6c\uc554,&nbsp;&nbsp;&nbsp;&nbsp;\uc81c9\uace1&nbsp;\uc740\uc120\uc554<\/p> "},{"idx":"41614","title":"\ucd08\uc815\uad11\ucc9c\uc218","eng_title":"Super-light Mineral Water","copy":"","use_yn":"Y","distance":"\uc790\ub3d9\ucc28\ub85c 15\ubd84","homepage":"","content":"<p>\ucd08\uc815\ub9ac \uad11\ucc9c\uc218\ub294 \uc138\uacc4 \uad11\ucc9c\ud559\ud68c\uc5d0\uc11c \ubbf8\uad6d\uc758 \uc0e4\uc2a4\ud130, \uc601\uad6d\uc758 \ub098\ud3ec\ub9ac\ub098\uc2a4\uc640<\/p>  <p>\ud568\uaed8 \uc138\uacc4 3\ub300 \uad11\ucc9c\uc218(\u945b\u6cc9\u6c34)\ub85c \uaf3d\uace0 \uc788\uc2b5\ub2c8\ub2e4. \ub610 \ucd08\uc815\ub9ac \uad11\ucc9c\uc218\ub294<\/p>  <p>600\ub144 \uc774\uc0c1\uc758 \uc5ed\uc0ac\ub97c \uc9c0\ub2cc \uc138\uacc4\uc801\uc778 \uad11\ucc9c\uc218(F.D.A. \uc778\uc815)\ub85c<\/p>  <p>\uc870\uc120 \uc138\uc885\ub300\uc655(\u4e16\u5b97\u5927\u738b) 26\ub144(\uc11c\uae30 1444\ub144) 3\uc6d4 2\uc77c\uc5d0\ub294 \uc655\uc774 \uce5c\ud788 \uc774\uacf3\uc5d0<\/p>  <p>\ud589\ucc28\ud558\uc5ec 60\uc77c\uac04 \uba38\ubb3c\uba74\uc11c \uc548\uc9c8(\u773c\u75be)\uc744 \uce58\ub8cc\ud558\uc600\uc73c\uba70,<\/p>  <p>\uc138\uc870\ub300\uc655(\u4e16\u7956\u5927\u738b)\uaed8\uc11c\ub3c4 \uc774\uacf3\uc5d0\uc11c \uc9c8\ubcd1\uc744 \uce58\ub8cc\ud558\uc600\uc2b5\ub2c8\ub2e4.<\/p>  <p>\u6771\u570b\u8207\u5730\u52dd\u89bd \u6df8\u5dde\u7267 \u5c71\u5ddd \uc5d0\uc11c\ub294 [\u6df8\u5dde\uc5d0\uc11c \u6771\ucabd\uc73c\ub85c 39\u91cc\uc5d0<\/p>  <p>\ub9e4\uc6b4\ub9db\uc774 \ub098\ub294 \ubb3c(\u6912\u6c34)\uc774 \uc788\ub294\ub370, \uc774 \ubb3c\uc5d0 \ubaa9\uc695\uc744 \ud558\uba74 \ud53c\ubd80\ubcd1\uc774 \ub0ab\ub294\ub2e4.]<\/p>  <p>\uace0 \ud558\uc600\uc73c\uba70, \uc774\uc218\uad11\uc758 \uc9c0\ubd09\uc720\uc124(\u829d\u8702\u985e\u8a2d)\uc5d0\ub294 [\uc6b0\ub9ac\ub098\ub77c\uc5d0 \ub9ce\uc740 \ucd08\uc218\uac00 \uc788\uc9c0\ub9cc<\/p>  <p>\uadf8 \uc911\uc5d0\ub3c4 \u5ee3\u5dde\uc640 \u6df8\u5dde\uc758 \ucd08\uc218\uac00 \uac00\uc7a5 \uc720\uba85\ud558\ub2e4.] \uace0 \uae30\ub85d\ub418\uc5b4 \uc788\uc2b5\ub2c8\ub2e4.<\/p>  <p>\uc608\ub85c\ubd80\ud130 7,8\uc6d4 \ud55c\uc5ec\ub984\uc5d0 \ucd08\uc218\uc758 \uc57d\ud6a8\uac00 \uc81c\uc77c \uc88b\ub2e4\uace0 \ud558\uc5ec \ubcf5\ub0a0\uacfc \ubc31\uc911\ub0a0\uc5d0<\/p>  <p>\ub9ce\uc740 \uc0ac\ub78c\ub4e4\uc774 \uc774\uacf3\uc5d0 \ucc3e\uc544\uc640 \ubaa9\uc695\uc744 \ud558\uba70 \ub354\uc704\ub97c \uc2dd\ud614\uc2b5\ub2c8\ub2e4.<\/p> "},{"idx":"41615","title":"\uc18d\ub9ac\uc0b0 \uad6d\ub9bd\uacf5\uc6d0","eng_title":"Songnisan National Park","copy":"","use_yn":"Y","distance":"\uc790\ub3d9\ucc28\ub85c 60\ubd84","homepage":"","content":"<p>\ud0dc\ubc31\uc0b0\ub9e5\uc5d0\uc11c \ub0a8\uc11c\ucabd\uc73c\ub85c \ubed7\uc5b4\ub098\uc624\ub294 \uc18c\ubc31\uc0b0\ub9e5 \uc904\uae30 \uac00\uc6b4\ub370 \uc19f\uc544\uc788\ub2e4.<\/p>  <p>784\ub144(\uc2e0\ub77c&nbsp;\uc120\ub355\uc5ec\uc655&nbsp;5)\uc5d0&nbsp;\uc9c4\ud45c(\u771e\u8868)\uac00&nbsp;\uc774\uacf3\uc5d0&nbsp;\uc774\ub974\uc790,&nbsp;\ubc2d&nbsp;\uac08\ub358&nbsp;\uc18c\ub4e4\uc774<\/p>  <p>\ubaa8\ub450 \ubb34\ub98e\uc744 \uafc7\uc5c8\uc2b5\ub2c8\ub2e4. \uc774\ub97c \ubcf8 \ub18d\ubd80\ub4e4\uc774 \uc9d0\uc2b9\ub3c4 \uc800\ub7ec\ud55c\ub370 \ud558\ubb3c\uba70<\/p>  <p>\uc0ac\ub78c\ub4e4\uc774\uc57c \uc624\uc8fd\ud558\uaca0\ub290\ub0d0\uba70 \uc18d\uc138\ub97c \ubc84\ub9ac\uace0 \uc9c4\ud45c\ub97c \ub530\ub77c \uc785\uc0b0 \uc218\ub3c4\ud558\uc600\ub294\ub370,<\/p>  <p>\uc5ec\uae30\uc5d0\uc11c \uc18d\ub9ac\ub77c\ub294 \uc774\ub984\uc774 \uc720\ub798\ub418\uc5c8\ub2e4\uace0 \ud569\ub2c8\ub2e4. \uc774\uc804\uc5d0\ub294 9\uac1c\uc758 \ubd09\uc6b0\ub9ac\ub85c<\/p>  <p>\uc774\ub8e8\uc5b4\uc838 \uc788\uc5b4 \uad6c\ubd09\uc0b0(\u4e5d\u5cf0\u5c71)\uc774\ub77c \ud558\uc600\uace0,<\/p>  <p>\uad11\uba85\uc0b0(\u5149\u660e\u5c71)&middot;\ubbf8\uc9c0\uc0b0(\u5f4c\u667a\u5c71)&middot;\ud615\uc81c\uc0b0(\u5144\u5f1f\u5c71)&middot;\uc18c\uae08\uac15\uc0b0(\u5c0f\uf90a\u525b\u5c71) \ub4f1\uc758 \ubcc4\uce6d\uc744 \uac00\uc9c0\uace0 \uc788\uc2b5\ub2c8\ub2e4.<\/p> "},{"idx":"41616","title":"\uc88c\uad6c\uc0b0 \ud734\uc591\ub9bc","eng_title":"Jugusan Recreation Forest","copy":"","use_yn":"Y","distance":"\uc790\ub3d9\ucc28\ub85c 15\ubd84","homepage":"","content":"<p>\ucda9\uccad\ubd81\ub3c4&nbsp;\uc99d\ud3c9\uad70\uc758&nbsp;\uccad\uc815\ud55c&nbsp;\uc790\uc5f0\ud658\uacbd\uc744&nbsp;\uae30\ubc18\uc73c\ub85c&nbsp;\uc0c8\ub86d\uac8c&nbsp;\uc870\uc131\ub41c&nbsp;\ud734\uc591\ub9bc&nbsp;\uc785\ub2c8\ub2e4.<\/p>  <p>\ud2b9\ud788&nbsp;\uc790\uc5f0\uce5c\ud654\uc801&nbsp;\uac1c\ubc1c\uacf5\ubc95\uc744&nbsp;\uc801\uc6a9\ud558\uc5ec&nbsp;\ud734\uc591\ub9bc\ub0b4&nbsp;\uc790\uc5f0\uc774&nbsp;\uc798&nbsp;\ubcf4\uc874\ub418\uc5b4&nbsp;\uc788\uc2b5\ub2c8\ub2e4.<\/p>  <p>4\uc778\uc2e4\ubd80\ud130&nbsp;15\uc778\uc2e4\uae4c\uc9c0&nbsp;\uc900\ube44&nbsp;\ub418\uc5b4&nbsp;\uc788\uc73c\uba70,&nbsp;15\uc778\uc2e4\uc740&nbsp;\ud669\ud1a0\ubc29\uc73c\ub85c&nbsp;\ub9cc\ub4e4\uc5b4\uc838&nbsp;\uc788\uc2b5\ub2c8\ub2e4.<\/p> "},{"idx":"41617","title":"\uc625\ud6549\uacbd","eng_title":"Nine Scenic Views of Okhwa","copy":"","use_yn":"Y","distance":"\uc790\ub3d9\ucc28\ub85c 30\ubd84","homepage":"","content":"<p>*\uccad\uc6d0\uc758&nbsp;\uc544\ud649&nbsp;\uac00\uc9c0&nbsp;\uba85\uacbd,&nbsp;\uc625\ud6549\uacbd*<\/p>  <p>\uccad\uc8fc\uc5d0\uc11c&nbsp;\uadf8\ub2e4\uc9c0&nbsp;\uba40\ub9ac&nbsp;\ub5a8\uc5b4\uc838&nbsp;\uc788\uc9c0&nbsp;\uc54a\uc740&nbsp;\uc774\uacf3\uc740&nbsp;\uc57d&nbsp;12\u339e\uc758&nbsp;\ub3c4\ub85c\ub97c&nbsp;\ub530\ub77c&nbsp;9\uac1c\uc758<\/p>  <p>\uacbd\uc2b9\uc744&nbsp;\uc990\uae38&nbsp;\uc218&nbsp;\uc788\ub294&nbsp;\uc7a5\uc18c\uc774\ub2e4.&nbsp;\ub2ec\ucc9c\ucc9c\uc744&nbsp;\ub530\ub77c&nbsp;\ud3bc\uccd0\uc9c0\ub294&nbsp;\ud478\ub978\uacc4\uace1\uacfc&nbsp;\uc2e0\ube44\ud55c&nbsp;\uc804\uc124\uc774<\/p>  <p>\uc5ec\ud589\uc758&nbsp;\uc990\uac70\uc6c0\uc744&nbsp;\ub354\ud574\uc90d\ub2c8\ub2e4.&nbsp;<\/p>  <p>*&nbsp;\uc81c1\uacbd&nbsp;\uccad\uc11d\uad74&nbsp;\/&nbsp;*&nbsp;\uc81c2\uacbd&nbsp;\uc6a9\uc18c&nbsp;&nbsp;\/&nbsp;*&nbsp;\uc81c3\uacbd&nbsp;\ucc9c\uacbd\ub300&nbsp;\/&nbsp;*&nbsp;\uc81c4\uacbd&nbsp;\uc625\ud654\ub300&nbsp;\/&nbsp;*&nbsp;\uc81c5\uacbd&nbsp;\uae08\ubd09&nbsp;<\/p>  <p>*&nbsp;\uc81c6\uad00\uacbd&nbsp;\uae08\uad00\uc232&nbsp;\/&nbsp;*&nbsp;\uc81c7\uacbd&nbsp;\uac00\ub9c8\uc18c\ubfd4&nbsp;\/&nbsp;*&nbsp;\uc81c8\uacbd&nbsp;\uc2e0\uc120\ubd09&nbsp;\/&nbsp;*&nbsp;\uc81c9\uacbd&nbsp;\ubc15\ub300\uc18c<\/p> "},{"idx":"41618","title":"\uc774\ube10\ub370\uc77c\uace8\ud504\uc7a5","eng_title":"Evendale Golf Club","copy":"","use_yn":"Y","distance":"\uc790\ub3d9\ucc28\ub85c 5\ubd84","homepage":"","content":"<p>\uc774\ube10\ub370\uc77c\uc740&nbsp;\uc138\uacc4&nbsp;\ucd5c\uace0\uc758&nbsp;\uace8\ud504\ucf54\uc2a4\ud68c\uc0ac\uc774\uc790&nbsp;\ud0c0\uac9f&nbsp;\uace8\ud504&nbsp;\ub514\uc790\uc778\uc758&nbsp;\ub300\uba85\uc0ac\uc778<\/p>  <p>\ubbf8\uad6d&nbsp;Dye&nbsp;Designs&nbsp;Group\uc744&nbsp;\ucd08\uccad\ud558\uc5ec&nbsp;\uc6b0\ub9ac\ub098\ub77c&nbsp;\uc9c0\ud615\uc5d0&nbsp;\ub9de\ub294&nbsp;\uc804\ub7b5\uc801&nbsp;\uc124\uacc4\ub97c<\/p>  <p>\uacfc\uac10\ud788&nbsp;\ub3c4\uc785\ud558\uc600\uace0,&nbsp;\uadf8\ub9b0,&nbsp;\ud2f0\uc789\uadf8\ub77c\uc6b4\ub4dc&nbsp;,\ud398\uc5b4\uc6e8\uc774\ub294&nbsp;\ubb3c\ub860\uc774\uace0&nbsp;\ub7ec\ud504\uae4c\uc9c0&nbsp;\uc591\uc794\ub514\ub85c<\/p>  <p>\uc2dd\uc7ac\ud558\uc5ec&nbsp;\uace8\ud504\uc758&nbsp;\ubb18\ubbf8\uc640&nbsp;\uc9c4\uba74\ubaa9\uc744&nbsp;\ub290\ub07c\uc2e4&nbsp;\uc218&nbsp;\uc788\ub3c4\ub85d&nbsp;\ucf54\uc2a4\ub97c&nbsp;\uc870\uc131\ud558\uc600\uc2b5\ub2c8\ub2e4.<\/p>  <p>\uc790\uc5f0\uc801&nbsp;\uacbd\uad00\uacfc&nbsp;\uc9c0\ud615\uc744&nbsp;\ucd5c\ub300\ub85c&nbsp;\uc0b4\ub9ac\ub294\ub370&nbsp;\uc911\uc810\uc744&nbsp;\ub450\uc5c8\uc73c\uba70,&nbsp;\uc5ec\uc131\uc801\uc778&nbsp;\uac10\uac01\uc744&nbsp;\ubc14\ud0d5\uc73c\ub85c<\/p>  <p>\ub9cc\ub4e4\uc5b4\uc9c4&nbsp;\ud640\uc740&nbsp;\uc608\uc220\uc801&nbsp;\ubbf8\uc640&nbsp;\uc790\uc5f0\uc758&nbsp;\uc6b4\uce58\ub97c&nbsp;\ub290\ub084&nbsp;\uc218&nbsp;\uc788\ub294&nbsp;\uace8\ud504\uc7a5\uc785\ub2c8\ub2e4.<\/p>  <p>\ub77c\uc6b4\ub529\uc73c\ub85c&nbsp;\uc9c0\uce5c\ubab8\uc744&nbsp;\ub530\ub73b\ud55c&nbsp;\uc2a4\ud30c\uc5d0\uc11c&nbsp;\ub2ec\ub798\uc8fc\uc138\uc694.<\/p> "},{"idx":"41619","title":"\ubbf8\ub3d9\uc0b0\uc218\ubaa9\uc6d0","eng_title":"Midongsan Arboretum","copy":"","use_yn":"Y","distance":"\uc790\ub3d9\ucc28\ub85c 15\ubd84","homepage":"","content":"<p>\ubbf8\ub3d9\uc0b0\uc218\ubaa9\uc6d0\uc740&nbsp;\ucda9\uccad\ubd81\ub3c4\uc5d0\uc11c&nbsp;\uad00\ub9ac&nbsp;&middot;&nbsp;\uc6b4\uc601\ud558\ub294&nbsp;\uacf5\ub9bd\uc218\ubaa9\uc6d0\uc73c\ub85c&nbsp;250ha&nbsp;\uba74\uc801\uc5d0<\/p>  <p>\ub2e4\uc591\ud55c&nbsp;\uc0dd\ubb3c&nbsp;\uc885\uc744&nbsp;\ud655\ubcf4&nbsp;&middot;&nbsp;\uc99d\uc2dd\ud558\ub294&nbsp;\uac83\uc740&nbsp;\ubb3c\ub860&nbsp;\uc720\uc544,&nbsp;\ud559\uc0dd&nbsp;\ub4f1\uc744&nbsp;\ub300\uc0c1\uc73c\ub85c&nbsp;\ub2e4\uc591\ud55c<\/p>  <p>\uc0b0\ub9bc\uad50\uc721&nbsp;\ud504\ub85c\uadf8\ub7a8\uc744&nbsp;\uc9c4\ud589\ud558\uace0&nbsp;\uc788\uc2b5\ub2c8\ub2e4.&nbsp;<\/p>  <p>\ub610\ud55c,&nbsp;\uc218\ubaa9\uc6d0&nbsp;\ub0b4\uc5d0\ub294&nbsp;\ucda9\uccad\ubd81\ub3c4&nbsp;\uc0b0\ub9bc\ud658\uacbd\uc5f0\uad6c\uc18c\uac00&nbsp;\uc704\uce58\ud558\uc5ec&nbsp;\uc5f0\uad6c\ub9bc&nbsp;\uc131\uaca9\uc744<\/p>  <p>\uac00\uc9c0\uba74\uc11c\ub3c4&nbsp;\ud0d0\ubc29,&nbsp;\ud559\uc2b5,&nbsp;\uad00\ub78c\uc2dc\uc124&nbsp;\ub4f1\uc744&nbsp;\ub450\ub8e8&nbsp;\uac16\ucd94\uace0&nbsp;\uc788\uc2b5\ub2c8\ub2e4.<\/p>  <p>\uc0b0\ucc45\ub85c\ub97c&nbsp;\uac78\uc73c\uba70&nbsp;\uc990\uae30\ub294&nbsp;\uc0bc\ub9bc\uc695\uacfc&nbsp;&nbsp;\uc911\uac04&nbsp;\uc911\uac04&nbsp;\uc704\uce58\ud55c&nbsp;\uc2dd\ubb3c\ub4e4\uc744&nbsp;\uad6c\uacbd\ud558\uba70<\/p>  <p>\ud589\ubcf5\ud55c&nbsp;\uae30\ubd84\uc744&nbsp;\ub9cc\ub07d\ud558\uc2dc\uae30&nbsp;\ubc14\ub78d\ub2c8\ub2e4.<\/p> "},{"idx":"41620","title":"\uc8fc\ubcc0\ub9db\uc9d1","eng_title":"Nearby restaurants","copy":"","use_yn":"Y","distance":"\uc790\ub3d9\ucc28\ub85c 15\ubd84","homepage":"","content":"<p>\uc5b4\ubbf8\uc0dd\uc120\uad6c\uc774<\/p>  <p>&nbsp;<\/p>  <p>\uc2dc\uc7a5 \uc606 \uace8\ubaa9\uc5d0 \uc704\uce58\ud55c \uc5b4\ubbf8 \uc0dd\uc120\uad6c\uc774 1\uc778 8000\uc6d0~9000\uc6d0 [\uace0\ub4f1\uc5b4 \uac08\uce58 \uc0bc\uce58 \uc774\uba74\uc218]<\/p>  <p>\uae30\ubcf8\uc801\uc73c\ub85c \uc815\uac08\ud55c \ubc18\ucc2c\ub4e4\uacfc \ubbf8\uc5ed\uad6d\uacfc \uacc4\ub780\ucc1c \uc81c\uacf5 \/ \ub3cc\uc1a5\ubc25\uc774 \ub098\uc624\uba70 \ucee4\ub2e4\ub780 \uc0dd\uc120\uc744 \uc5f0\ud0c4\ubd88\uc5d0 \uad6c\uc5b4\uc90c<\/p>  <p>\uac00\uc131\ube44 \ucd5c\uace0\uc758 \ub9db\uc9d1<\/p>  <p>&nbsp;<\/p>  <p>\ubbf8\uac00\uc77c\uc2dd<\/p>  <p>&nbsp;<\/p>  <p>\uc810\uc2ec\ud2b9\uc120 1\uc778 15,000\uc6d0 or 25,000\uc6d0 2\uac00\uc9c0\ub97c \uc81c\uacf5<\/p>  <p>&nbsp;<\/p>  <p>1.5\ud2b9\uc120\uc758 \uacbd\uc6b0\ub294 \uc870\uae08 \ubd80\uc871\ud568 \uac10\uc774 \uc5c6\uc9c0 \uc54a\uc73c\ub098 \/ 2.5\ud2b9\uc120\uc758 \uacbd\uc6b0\ub294 \ub098\uc624\ub294 \uc74c\uc2dd\uc758 \uc885\ub958\ub098 \ud004\ub9ac\ud2f0\uac00 \ub9e4\uc6b0 \ub192\ub2e4<\/p>  <p>\ud574\uc0b0\ubb3c\uacfc \ud68c \uadf8\ub9ac\uace0 \uc2dd\uc0ac\uae4c\uc9c0 \uc2a4\ud0a4\ub2e4\uc2dc\ub3c4 10\uc885\ub958 \uc774\uc0c1 \ub098\uc628\ub2e4<\/p>  <p>\ub9c8\ubb34\ub9ac\ub85c \uc8fc\ub294 \uc54c\ubc25\uacfc \ucd94\uac00\ub85c \uc54c\ud0d5\uc744 \uc2dc\ucf1c \ub9c8\ubb34\ub9ac\ub97c \ud55c\ub2e4\uba74 \uc815\ub9d0 \ub9db\uc788\uac8c \uba39\uc744 \uc218 \uc788\ub2e4.<\/p>  <p>&nbsp;<\/p>  <p>&nbsp;<\/p>  <p>\uc120\ub140\uc640&nbsp;\ub098\ubb34\uafbc<\/p>  <p>\uadf8&nbsp;\uc2dc\uc808,&nbsp;\uadf8&nbsp;\ucd94\uc5b5!&nbsp;\uc790\uc5f0\uc18d\uc5d0\uc11c&nbsp;\uc990\uae30\ub294&nbsp;\uc2dc\uac04<\/p>  <p>\uc61b&nbsp;\uadf8&nbsp;\ub9db\uc744&nbsp;\ub290\ub084&nbsp;\uc218&nbsp;\uc788\ub294&nbsp;\uc778\uae30\uc74c\uc2dd\uc810\uc785\ub2c8\ub2e4.<\/p>  <p>&nbsp;<\/p>  <p>\uc624\uc988\uc758&nbsp;\uc6c0\uc9c1\uc774\ub294&nbsp;\ubc84\uac70<\/p>  <p>\ubbf8\uc6d0\uc2dc\ub0b4\uc5d0&nbsp;\uc704\uce58\ud55c&nbsp;\uc218\uc81c\ud584\ubc84\uac70&nbsp;\uc9d1<\/p>  <p>\uc800\ub834\ud55c&nbsp;\uac00\uaca9\uacfc&nbsp;\ud6cc\ub96d\ud55c&nbsp;Quality\ub97c&nbsp;\uc790\ub791\ud569\ub2c8\ub2e4.<\/p>  <p>&nbsp;<\/p>  <p>\ubbf8\uc6d0&nbsp;\uc62c\uac31\uc774\uad6d<\/p>  <p>\uccad\ucc9c\uacfc&nbsp;\ud654\uc591\ub3d9\uc5d0\uc11c&nbsp;\ucc44\ucde8\ud55c&nbsp;\ub2e4\uc2ac\uae30\ub97c&nbsp;\uc0ac\uc6a9\ud569\ub2c8\ub2e4.<\/p>  <p>\ubbf8\uc6d0&nbsp;\ub0b4\uc5d0&nbsp;\ub2e4\uc218&nbsp;\uc785\uc810\ud574&nbsp;\uc788\uc2b5\ub2c8\ub2e4.<\/p> "}] ;

var data_board = [{"board_idx":"25444","board_name":"\uacf5\uc9c0\uc0ac\ud56d","board_type":"NOTICE","board_copy":"\ud39c\uc158\ub0b4 \uc18c\uc2dd\ubc0f \uac01\uc885 \uc774\ubca4\ud2b8\uc5d0 \ub300\ud55c \ub0b4\uc6a9\uc744 \uc548\ub0b4\ud574 \ub4dc\ub9bd\ub2c8\ub2e4.","use_yn":"Y","page_limit":"10"},{"board_idx":"25445","board_name":"FAQ","board_type":"FAQ","board_copy":"\uc6b0\ub9ac \ud39c\uc158\uc5d0 \ub300\ud574 \uc790\uc8fc\ubb3b\ub294 \uc9c8\ubb38\ub4e4\uc744 \uc548\ub0b4\ud574 \ub4dc\ub9bd\ub2c8\ub2e4.","use_yn":"Y","page_limit":"10"},{"board_idx":"25446","board_name":"\uc608\uc57d\ubb38\uc758","board_type":"NORMAL","board_copy":"\ud39c\uc158\uc608\uc57d\uc5d0 \ub300\ud55c \ubb38\uc758\ub0b4\uc6a9\uc744 \uc62c\ub824 \uc8fc\uc138\uc694~","use_yn":"Y","page_limit":"10"},{"board_idx":"25447","board_name":"\uc5ec\ud589\ud6c4\uae30","board_type":"NORMAL","board_copy":"\ud39c\uc158\uc744 \uc774\uc6a9\ud558\uc2e0 \ud6c4\uc5d0 \uacaa\uc73c\uc168\ub358 \ub530\ub048\ub530\ub048\ud55c \ud6c4\uae30\ub97c \uc62c\ub824\uc8fc\uc138\uc694~","use_yn":"Y","page_limit":"10"}] ;

var data_enterprise = {"biz_name":"\uccad\uc8fc \ub9c8\ub9b0\ube14\ub8e8\ud39c\uc158","user_hp":"000-0000-0000","add_user_hp":"--","admin_hp":"000-0000-0000","user_tel":"--","user_email":"mblue2161@gmail.com","owner_name":"\uc815\ubbf8\uc601,\uac15\ud6a8\uc2dd","road_addr":"\ucda9\uccad\ubd81\ub3c4 \uccad\uc8fc\uc2dc \uc0c1\ub2f9\uad6c \ubbf8\uc6d0\uba74 \uc885\uc554\uae38 30-26","jibun_addr":"\ucda9\uccad\ubd81\ub3c4 \uccad\uc8fc\uc2dc \uc0c1\ub2f9\uad6c \ubbf8\uc6d0\uba74 \uc885\uc554\ub9ac 511-1","bank_info":"[{\"dong\":\"\",\"bank_name\":\"\uc0c8\ub9c8\uc744\uae08\uace0\",\"bank_no\":\"000-00-000000\",\"bank_owner\":\"\uc815\ubbf8\uc601(\ub9c8\ub9b0\ube14\ub8e8s)\",\"bank_use_yn\":\"Y\"},{\"dong\":\"\",\"bank_name\":\"\uc2e0\ud55c\uc740\ud589\",\"bank_no\":\"000-00-000000\",\"bank_owner\":\"\uac15\ud6a8\uc2dd(\ub9c8\ub9b0\ube14\ub8e8)\",\"bank_use_yn\":\"Y\"}]","biz_no":" 000-00-00000","mailorder_no":"2016-\ucda9\ubd81\uccad\uc8fc-1019\ud638","mailorder_gb":"1","lat":"36.6905191","lng":"127.6342864","season_price_yn":"N","room_print_type":"N","realtime_yn":"Y","realtime_url":"https:\/\/www.ddnayo.com\/RsvSys\/Calendar.aspx?id_hotel=2161","ddnayo_id":"2161","start_weekday":"\uc77c\uc694\uc77c","end_weekday":"\ubaa9\uc694\uc77c","booking_comp":"ddnayo","booking_id":"2161","booking_sys":"ddnayo","add_ddnayo_id":"","dong_cnt":"0"} ;


$(document).ready(function() {
	var ua = window.navigator.userAgent;
  var msie = ua.indexOf("MSIE ");

    if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./)) {
			$('#icon-full').hide() ;
    }

	WebFont.load({
    google: {
    families: ['Scheherazade','Abril Fatface','Rozha One','Titillium Web','Poppins','Lato','Lora','Great Vibes','Playball','Lobster Two','Peddana','Bitter','DM Serif Display','Sarabun','Imprima','Mada','Fredoka One','Shrikhand','Varela Round','Marck Script','Open Sans','Roboto Condensed','Playfair Display','Meie Script','Cinzel','Raleway','Roboto','Montserrat','Charm','Oswald','Libre Baskerville','Noto Serif SC','Quicksand','Fjalla One','Pacifico','Dancing Script','Old Standard TT','Poiret One']
    }
  });

  WebFont.load({ custom: {
    families: ['Nanum Gothic','Nanum Gothic Coding','Nanum Myeongjo','Noto Sans KR','Nanum Pen Script','Nanum Brush Script','Song Myung','Gothic A1','Sunflower','Gaegu','Stylish','Cute Font','Gugi','Do Hyeon','Hi Melody','Gamja Flower'],
    urls: [
     'https://fonts.googleapis.com/earlyaccess/nanumgothic.css',
     '../../fonts.googleapis.com/earlyaccess/nanumgothiccoding.css',
     '../../fonts.googleapis.com/earlyaccess/nanummyeongjo.css',
     '../../fonts.googleapis.com/earlyaccess/notosanskr.css',
     '../../fonts.googleapis.com/earlyaccess/nanumpenscript.css',
     '../../fonts.googleapis.com/earlyaccess/nanumbrushscript.css',
     'https://fonts.googleapis.com/css?family=Song+Myung',
     'https://fonts.googleapis.com/css?family=Gothic+A1',
     'https://fonts.googleapis.com/css?family=Sunflower:300',
     'https://fonts.googleapis.com/css?family=Gaegu',
     'https://fonts.googleapis.com/css?family=Stylish',
     'https://fonts.googleapis.com/css?family=Cute+Font',
     'https://fonts.googleapis.com/css?family=Gugi',
     'https://fonts.googleapis.com/css?family=Do+Hyeon',
     'https://fonts.googleapis.com/css?family=Hi+Melody',
     'https://fonts.googleapis.com/css?family=Gamja+Flower',
    ]
  }});
});

</script>

<script>
var biz_code = 'P202011017';
</script>

<link type="text/css" rel="stylesheet" href="rspn01/P202011017/css/landscape36a8.css"/>
<script src="rspn01/P202011017/jscript/landscape36a8.js"></script>

</head>

<body>
<div class="all_wrap">


<link type="text/css" rel="stylesheet" href="rspn01/P202011017/css/gnbc000.css">
<div class="navigation">
	<div class="header_wrap animated fadeInDown slow" id="haeder_wrap">
		<div class="header">
			<div class="logo">
				<a href="index.jsp">
					<img src="../../img.einet.kr/P202011017/logo/logo.png" id="web-logo" alt="logo">
					<img src="../../img.einet.kr/P202011017/logo/logo_img.png" height="50" id="mobile-logo" alt="logo">
				</a>
			</div>

			<ul class="gnb_menu">
				<li>
					<a class="bigMenu" href="landscapemain.jsp">ABOUT</a>
					<dl class="sub">
						<dt>
							<a class="page" href="landscapemain.jsp">펜션전경</a>
<a class="page" href="landscape2.jsp?biz_code=P202011017&amp;tab=about4">오시는 길</a>
						</dt>
					</dl>
				</li>
				<li class="room-big-menu">
					<a class="bigMenu" href="roommain.jsp">ROOM</a>
					<dl class="sub">
						<dt>
						<a class='page' href='roommain.jsp'>룸 미리보기</a>

<a class="page" data-idx="41595" href="room1.jsp">101옹달샘</a>
						<a class="page" data-idx="41596" href="room2.jsp">102꿀단지</a>
						<a class="page" data-idx="41596" href="room3.jsp">201꿀금고</a></dt>					</dl>
				</li>
				<li class="fac-big-menu">
					<a class="bigMenu" href="facmain.jsp">FACILITIES</a>
					<dl class="sub">
						<dt>
						
													<a class="page" data-idx="41605" href="fac1.jsp">수영장</a>
												</dt>
					</dl>
				</li>
								<li class="service-big-menu">
					<a class="bigMenu" href="servicemain.jsp">SERVICE</a>
					<dl class="sub">
						<dt>

							
															<a class="page" data-idx="41607" href="service1.jsp">와인</a>
															<a class="page" data-idx="41608" href="service2.jsp">전기그릴</a>
															<a class="page" data-idx="41609" href="service3.jsp">디저트</a>
															
													</dt>
					</dl>
				</li>
								<li class="travel-big-menu">
					<a class="bigMenu" href="travelmain.jsp">TRAVEL</a>
					<dl class="sub">
						<dt>

						
													<a class="page" data-idx="41613" href="travel1.jsp">수목원</a>
													<a class="page" data-idx="41614" href="travel2.jsp">관광지2</a>
													<a class="page" data-idx="41615" href="travel3.jsp">관광지3</a>
												</dt>
					</dl>
				</li>
				<li class="reser-big-menu">
					<a class="bigMenu" href="booking.jsp">booking</a>
					<dl class="sub">
						<dt>
							<a class="page" href="booking.jsp">실시간예약</a>
							<a class="page" href="booking2.jsp">요금가이드</a>
						</dt>
					</dl>
				</li>
				<li class="comm-big-menu">
					<a class="bigMenu" href="communitymain.jsp">COMMUNITY</a>
					<dl class="sub">
						<dt>
													<a class="page" data-idx="25444" href="communitymain.jsp">공지사항</a>
													<a class="page" data-idx="25445" href="community1.jsp">FAQ</a>
													<a class="page" data-idx="25446" href="community3.jsp">이용후기</a>
													<a class="page" data-idx="25447" href="community2.jsp">스케줄</a>
												</dt>
					</dl>
				</li>
			</ul>

			<div class="quick_menu">
				<div class="social_icon">
					<ul>

					</ul>
				</div>

				<div class="other_icon">
					<ul>
						<li>
							<a class="icon_reserve" href="booking.jsp" title="실시간예약">
								<span class="fal fa-calendar-check" id="icon-booking"></span>
							</a>
						</li>
						<li>
							<a class="icon_marker" href="landscape2.jsp&amp;tab=about4" title="오시는길">
								<span class="fal fa-map-marker-alt" id="icon-marker"></span>
							</a>
						</li>

						<a class="icon_fullscreen">
							<span class="far fa-expand-arrows" id="icon-full" title="전체화면보기"></span>
							<span class="far fa-window-alt" id="icon-normal" style="display:none"></span>
						</a>
					</ul>
				</div>
			</div>

			<!-- 모바일 -->
			<div class="menu_open" id="menu_open">
				<div class="menu_icon">
					<span class="line"></span>
					<span class="line"></span>
					<span class="line"></span>
				</div>
			</div>

            <div style="position:fixed; background-color:#000; opacity:0.6; top:0; bottom:0; left:0; right:0; display:none; " id="backClose"></div>
			<div class="gnb_menu_mobile_inner">
                <!----------------------------------------------------------------------------------------------------->
                <!-- Modified By Jubh 2020_04_09 -->
                <style>
                .infoPension { display:none; }
                ul.menuList { display:none; }
                @media screen and (max-width: 820px) {
                    .infoPension { position:relative; width:100%; height:225px; background-color:#666; margin:0 auto; text-align:center; display:block; }
                    .infoPension .closeSidebar { position:absolute; right:20px; top:20px; }
                    .infoPension .closeSidebar i { font-size:30px; color:#fff; }
                    .infoPension .imgPension { position:relative; width:90px; height:90px; background-size:contain; background-repeat:no-repeat; background-color:#fff; background-position:center; color:#fff; display:inline-block; border-radius:50%; text-align:center; line-height:100px; margin-top:25px; }
                    .infoPension .namePension { position:relative; font-family:'Noto Sans KR'; font-size:17px; color:#fff; text-align:center; margin-top:10px; }
                    .infoPension ul.quickIcon { position:relative; margin:23px 26px 20px; list-style:none; overflow:hidden; }
                    .infoPension ul.quickIcon li { float:left; width:33.3%; text-align:center; }
                    .infoPension ul.quickIcon li i { font-size:20px; color:#fff; }
                    .infoPension ul.quickIcon li span { font-family:'Noto Sans KR'; font-size:13px; font-weight:normal; color:#fff; display:block; margin-top:10px; }
                    ul.menuList { position: relative; display: inline-block; width: 100%; vertical-align: top; overflow-y: auto; background-color: rgba(255,255,255,1); height:100%; }
                    ul.menuList li.menuTitle { position: relative; display: block; text-align: left; font-size: 14px; margin:0 15px; border-bottom:1px solid #ddd; overflow:hidden; }
                    ul.menuList li.menuTitle>i { display:inline-block; position:absolute; top:25px; right:5px; font-size:14px; color:#666; }
                    ul.menuList li.menuTitle span { font-family:'roboto'; font-size:19px; height:60px; line-height:60px; font-weight:bold; color:#333; display:block; }
                    ul.menuList li.menuTitle ul.subMenuList { margin:0 20px; display:none; }
                    ul.menuList li.menuTitle ul.subMenuList li { float:left; width:50%; font-family:'Noto Sans KR'; font-size:15px; font-weight:300; color:#333; margin-top:20px; letter-spacing:-0.1em; }
                    ul.menuList li.menuTitle ul.subMenuList li.dong { margin-left:25px; }
                    ul.menuList li.menuTitle ul.subMenuList li:first-child { margin-top:7px; }
                    ul.menuList li.menuTitle ul.subMenuList li:first-child.prev_room { margin-top:7px;margin-bottom:15px; width:100%; font-weight:700;margin-left:0; }
                    ul.menuList li.menuTitle ul.subMenuList li:nth-child(2) { margin-top:7px; }
                    ul.menuList li.menuTitle ul.subMenuList li:last-child { margin-bottom:32px; }
                    ul.menuList li.menuTitle ul.subMenuList li a>i{display:inline-block;margin-right:5px;}
                }
                </style>
                <div class="infoPension" style="background-image:url('../../img.einet.kr/P202011017/navi_bg.jpg'); ">
                    <p class="closeSidebar"><i class="fal fa-times" id="sideClose"></i></p>
                    <p class="imgPension" style="background-image:url('../../img.einet.kr/P202011017/logo/logo_img.png'); "></p>
                    <p class="namePension">지리산 옹달샘펜션</p>
                    <ul class="quickIcon">
                        <li><a href="booking.jsp"><i class="fal fa-calendar-alt"></i><span>예약하기</span></a></li>
                        <li><a href="tel:000-0000-0000"><i class="fal fa-phone"></i><span>전화하기</span></a></li>
                        <li><a href="landscape2.jsp&amp;tab=about4"><i class="fal fa-map-marker-alt" style="font-weight:300; "></i><span>오시는길</span></a></li>
                    </ul>
                </div>
                <script>
                    function menuToggle(obj) {
                        if(!$(obj).hasClass("fa-minus")) {
                            $("ul.menuList li.menuTitle i.fal.fa-minus").removeClass("fa-minus").addClass("fa-plus").parent().find("ul.subMenuList").slideUp();
                            $(obj).addClass("fa-minus").removeClass("fa-plus").parent().find("ul.subMenuList").slideDown();
                        }
                        else {
                            $(obj).removeClass("fa-minus").addClass("fa-plus").parent().find("ul.subMenuList").slideUp();
                        }
                    }
                    $(document).ready(function(){
                        $("#sideClose").click(function(){
                            $("div.gnb_menu_mobile_inner").removeClass("OPEN");
                            $("div#menu_open").click();
                            $("div#backClose").hide();
                        });
                    });
                    $('div.menu_open').click(function(){
                        $("div#backClose").show();
                    });
                    $(function(){
                        $("li.menuTitle span").click(function(){
                            $(this).prev().click();
                        });
                    });
                </script>
                <ul class="menuList">
                    <li class="menuTitle">
                        <i class="fal fa-plus" onclick="menuToggle(this)"></i><span>ABOUT</span>
                        <ul class="subMenuList" style="display:block; ">
                            <li><a href='landscape29f6.jsp&amp;tab=about2'>펜션전경</a></li>
                            <li><a href='landscape2.jsp&amp;tab=about4'>오시는길</a></li>
                        </ul>
                    </li>
                    <li class="menuTitle">
                        <i class="fal fa-minus" onclick="menuToggle(this)"></i><span>ROOM</span>
                        <ul class="subMenuList" style="display:block; ">
                        <li class='prev_room'><a href='roommain.jsp'>룸 미리보기</a></li>
                        
						<li data-idx="41595"><a href="room1.jsp">101옹달샘</a></li>
						<li data-idx="41596" style="margin-top:7px;"><a href="room2.jsp">102꿀단지</a></li>
						<li data-idx="41597" style="margin-top:7px;"><a href="room3.jsp">201꿀금고</a></li>
						                  
						</ul>
                    </li>
                    <li class="menuTitle">
                        <i class="fal fa-plus" onclick="menuToggle(this)"></i><span>FACILITIES</span>
                        <ul class="subMenuList">
                                                    <li data-idx="41605"><a href="fac1.jsp">수영장</a></li>
                                                </ul>
                    </li>
                    <!-- 서비스 -->
                                        <li class="menuTitle">
                        <i class="fal fa-plus" onclick="menuToggle(this)"></i><span>SERVICE</span>
                        <ul class="subMenuList">
                                                                            <li class="page" data-idx="41607"><a href="service1.jsp">와인</a></li>
                                                    <li class="page" data-idx="41608"><a href="service2.jsp">전기그릴</a></li>
                                                    <li class="page" data-idx="41609"><a href="service3.jsp">디저트</a></li>
                                                    
                                                </ul>
                    </li>
                                        <li class="menuTitle">
                        <i class="fal fa-plus" onclick="menuToggle(this)"></i><span>TRAVEL</span>
                        <ul class="subMenuList">
                                                                            <li class="page" data-idx="41613"><a href="travel1.jsp">수목원</a></li>
                                                    <li class="page" data-idx="41614"><a href="travel2.jsp">관광지2</a></li>
                                                    <li class="page" data-idx="41615"><a href="travel3.jsp">관광지3</a></li>
                                                </ul>
                    </li>
                    <li class="menuTitle">
                        <i class="fal fa-plus" onclick="menuToggle(this)"></i><span>booking</span>
                        <ul class="subMenuList">
                            <li><a href="booking.jsp">실시간예약</a></li>
                            <li><a href="booking2.jsp">요금가이드</a></li>
                        </ul>
                    </li>
                    <li class="menuTitle">
                        <i class="fal fa-plus" onclick="menuToggle(this)"></i><span>COMMUNITY</span>
                        <ul class="subMenuList">
                                                    <li class="page" data-idx="25444"> <a href="communitymain.jsp">공지사항</a> </li>
                                                    <li class="page" data-idx="25445"> <a href="community1.jsp">FAQ</a> </li>
                                                    <li class="page" data-idx="25446"> <a href="community3.jsp">이용후기</a> </li>
                                                    <li class="page" data-idx="25447"> <a href="community2.jsp">스케줄</a> </li>
                                                </ul>
                    </li>
                </ul>
                <!----------------------------------------------------------------------------------------------------->
                <!--
				<div class="gnb_menu_mobile_info">
					<div class="gnb_info">
						<ul>
							<li><a href="/include/landscape.php&tab=about4"><i class="fal fa-map-marker-alt"></i> 오시는길</a></li>
							<li><a id="m-rep-phone" href="tel:000-0000-0000"><i class="fal fa-phone"></i> 전화</a></li>
						</ul>
					</div>

					<div class="social_icon">
						<ul>
						
						</ul>
					</div>
				</div>

				<ul class="mobile_menu_sub" id="pos-container">
					<li>
						<a href="/include/landscape.php&tab=about2">펜션소개<i class="fal fa-chevron-down"></i></a>
						<ul>
							<li><a href="/include/landscape.php">펜션전경</a></li>
							<li><a href="/include/landscape.php&tab=about4">오시는 길</a></li>
						</ul>
					</li>
					<li class="room-small-menu">
						<a href="/include/rooms.php">객실보기<i class="fal fa-chevron-down"></i></a>
						<ul>

							<li><a href='/include/rooms.php'>룸 미리보기</a></li>

							<li class="page" data-idx="41595"><a href="/include/room.php&menutree_idx=41595">101옹달샘</a></li><li class="page" data-idx="41596"><a href="/include/room.php&menutree_idx=41596">102꿀단지</a></li><li class="page" data-idx="41597"><a href="/include/room.php&menutree_idx=41597">201꿀금고</a></li><li class="page" data-idx="41598"><a href="/include/room.php&menutree_idx=41598">202라온</a></li><li class="page" data-idx="41599"><a href="/include/room.php&menutree_idx=41599">203마루</a></li><li class="page" data-idx="41600"><a href="/include/room.php&menutree_idx=41600">301보람</a></li><li class="page" data-idx="41601"><a href="/include/room.php&menutree_idx=41601">302소원</a></li>
						</ul>
					</li>
					<li class="fac-small-menu">
						<a href="/include/facs.php">부대시설<i class="fal fa-chevron-down"></i></a>
						<ul>

						
													<li class="page" data-idx="41603"><a href="/include/fac.php&menutree_idx=41603">전객실 노천탕</a></li>
													<li class="page" data-idx="41604"><a href="/include/fac.php&menutree_idx=41604">전객실 개별바비큐장</a></li>
													<li class="page" data-idx="41605"><a href="/include/fac.php&menutree_idx=41605">수영장</a></li>
						
						</ul>
					</li>
										<li class="service-small-menu">
						<a href="/include/services.php">서비스<i class="fal fa-chevron-down"></i></a>
						<ul>

						

													<li class="page" data-idx="41607"><a href="/include/service.php&menutree_idx=41607">와인</a></li>
													<li class="page" data-idx="41608"><a href="/include/service.php&menutree_idx=41608">전기그릴</a></li>
													<li class="page" data-idx="41609"><a href="/include/service.php&menutree_idx=41609">디저트</a></li>
													<li class="page" data-idx="41610"><a href="/include/service.php&menutree_idx=41610">침구류</a></li>
													<li class="page" data-idx="41611"><a href="/include/service.php&menutree_idx=41611">TV&Wi-Fi</a></li>
												</ul>
					</li>
										<li class="travel-small-menu">
						<a href="/include/travels.php">여행지<i class="fal fa-chevron-down"></i></a>
						<ul>

						
													<li class="page" data-idx="41613"><a href="/include/travel.php&menutree_idx=41613">수목원</a></li>
													<li class="page" data-idx="41614"><a href="/include/travel.php&menutree_idx=41614">관광지2</a></li>
													<li class="page" data-idx="41615"><a href="/include/travel.php&menutree_idx=41615">관광지3</a></li>
													<li class="page" data-idx="41616"><a href="/include/travel.php&menutree_idx=41616">좌구산 휴양림</a></li>
													<li class="page" data-idx="41617"><a href="/include/travel.php&menutree_idx=41617">옥화9경</a></li>
													<li class="page" data-idx="41618"><a href="/include/travel.php&menutree_idx=41618">이븐데일골프장</a></li>
													<li class="page" data-idx="41619"><a href="/include/travel.php&menutree_idx=41619">미동산수목원</a></li>
													<li class="page" data-idx="41620"><a href="/include/travel.php&menutree_idx=41620">주변맛집</a></li>
						
						</ul>
					</li>
					<li class="reser-small-menu">
						<a href="#">예약<i class="fal fa-chevron-down"></i></a>
						<ul>
							<li><a href="/include/booking.php&tab=1">실시간예약</a></li>
							<li><a href="/include/booking.php&tab=2">요금가이드</a></li>
						</ul>
					</li>
					<li class="comm-small-menu">
						<a href="#">커뮤니티<i class="fal fa-chevron-down"></i></a>
						<ul>
													<li class="page" data-idx="25444"> <a href="/include/community.php&board_id=25444">공지사항</a> </li>
													<li class="page" data-idx="25445"> <a href="/include/community.php&board_id=25445">FAQ</a> </li>
													<li class="page" data-idx="25446"> <a href="/include/community.php&board_id=25446">스케줄</a> </li>
													<li class="page" data-idx="25447"> <a href="/include/community.php&board_id=25447">이용후기</a> </li>
												</ul>
					</li>
				</ul>
                -->
			</div>
		</div>
	</div> <!-- header//-->
</div>		

	<div class="cpage about1" id="about1">
		<div class="firstSlider" id="firstSlider">
			<div class="main-slides owl-carousel component slides" data-path="landscape/slide">	
				<img src='../../img.einet.kr/P202011017/landscape/slides/0136a8.jpg' width='100%' />
<img src='../../img.einet.kr/P202011017/landscape/slides/0236a8.jpg' width='100%' />
<img src='../../img.einet.kr/P202011017/landscape/slides/0336a8.jpg' width='100%' />
<img src='../../img.einet.kr/P202011017/landscape/slides/0436a8.jpg' width='100%' />
<img src='../../img.einet.kr/P202011017/landscape/slides/0536a8.jpg' width='100%' />
<img src='../../img.einet.kr/P202011017/landscape/slides/0636a8.jpg' width='100%' />
<img src='../../img.einet.kr/P202011017/landscape/slides/0736a8.jpg' width='100%' />
<img src='../../img.einet.kr/P202011017/landscape/slides/0836a8.jpg' width='100%' />
			</div>
			<div class="viewObj">
				<span class="play-puase">
					<i class="fas fa-play" id="icon-play"></i>
					<i class="fas fa-pause" id="icon-pause"></i>
				</span>
			</div>
			<div class="pageObj">
				<span class="now">01</span>
				<span class="all">00</span>
			</div>
		</div>
	</div>

	<div class="cpage about2" id="about2">
		<div class="about2_wrap">
			<div class="about2_slogan">
				<h5>Jirisan Mountain</h5>
				<h6>보고싶다...귀여운 아기반달곰</h6>
				<div class="txt">
					<p><span style="font-size:12.0pt"><span style="font-family:나눔스퀘어라운드 Regular"><span style="color:#595959">지금의 당신이 좋은 것처럼. 지금&nbsp;</span></span></span><span style="font-size:12.0pt"><span style="font-family:나눔스퀘어라운드 Regular"><span style="color:#595959">달콤한 휴식을 주는 이곳이 좋다</span></span></span><span style="font-size:12.0pt"><span style="font-family:나눔스퀘어라운드 Regular"><span style="color:#595959">.</span></span></span></p>

<p><span style="font-size:12.0pt"><span style="font-family:나눔스퀘어라운드 Regular"><span style="color:#595959">눈부신 햇살 한 조각</span></span></span><span style="font-size:12.0pt"><span style="font-family:나눔스퀘어라운드 Regular"><span style="color:#595959">, </span></span></span><span style="font-size:12.0pt"><span style="font-family:나눔스퀘어라운드 Regular"><span style="color:#595959">따뜻한 구름 한아름</span></span></span><span style="font-size:12.0pt"><span style="font-family:나눔스퀘어라운드 Regular"><span style="color:#595959">. </span></span></span><span style="font-size:12.0pt"><span style="font-family:나눔스퀘어라운드 Regular"><span style="color:#595959">소중한 마음이 맞닿는 곳.</span></span></span></p>

<p><span style="font-size:12.0pt"><span style="font-family:나눔스퀘어라운드 Regular"><span style="color:#595959">시원한 옹달샘으로 당신을 초대합니다</span></span></span><span style="font-size:12.0pt"><span style="font-family:나눔스퀘어라운드 Regular"><span style="color:#595959">.</span></span></span></p>
				</div>
			</div>
		</div>
	</div>


	<div class="cpage about3" id="about3">
		<div class="about3_wrap">
			<div class="about3_top">
				<div class="loader lImg" style="background-image:url('../../img.einet.kr/P202011017/landscape/slides/02.jpg');"></div>
				<div class="about3_imgWrap">
					<div class="loader tImg" style="background-image:url('../../img.einet.kr/P202011017/landscape/slides/05.jpg');"></div>
					<div class="loader bImg" style="background-image:url('../../img.einet.kr/P202011017/landscape/slides/06.jpg');"></div>
				</div>
			</div>
			<div class="about3_bottom">
				<div class="loader lImg" style="background-image:url('../../img.einet.kr/P202011017/landscape/slides/04.jpg');"></div>
				<div class="about3_logo">
					<!--밑에 로고-->
					<img src="../../img.einet.kr/P202011017/logo/logo_img.png" id="landscape-logo" width="250px">
				</div>
			</div>
			<div class="loader bImg" style="background-image:url('../../img.einet.kr/P202011017/landscape/slides/01.jpg');"></div>
		</div>
	</div>


	<div class="cpage about4" id="about4">
		<div class="about4_wrap clearfix">
			<div class="about4_slogan">
				<h5>Map & Location</h5>
				<p class="txt">행복 가득한 지리산 옹달샘펜션 오시는 길</p>
			</div>

						<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1628.0564349207286!2d127.74886877213456!3d35.30317683720851!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMzXCsDE4JzExLjQiTiAxMjfCsDQ0JzU5LjIiRQ!5e0!3m2!1sko!2skr!4v1635439258116!5m2!1sko!2skr" width="1400" height="650" style="border:0;" allowfullscreen="" loading="lazy"></iframe>


			<div class="about4_info">
				<dl>
					<dt><i class="fal fa-map-marked-alt"></i> 주소</dt>
					<dd><p>지리산</p></dd>
				</dl>
				<dl>
					<dt><i class="fal fa-phone"></i> 전화</dt>
					<dd><p><span style='margin-right:10px'><a href='tel:000-0000-0000'>000-0000-0000</a></span></p></dd>
				</dl>

				<dl>
					<dt><i class="fal fa-car"></i> 자가용으로 오시는 방법</dt>
					<dd class="traffic-auto-conts"><p><strong>네비 검색 주소 [지리산 옹달샘 검색]</strong></p>
<p>위치</p>
</dd>
				</dl>
				<dl>
					<dt><i class="fal fa-bus"></i> 대중교통으로 오시는 방법</dt>
					<dd>
						<p>지리산 반달곰에게</p>

<p>꿀단지 하나 건네주시면</p>

<p>편하게 오실 수 있습니다. 소요시간 (10분정도)</p>
					</dd>
				</dl>

			</div>
		</div>
	</div>
<script>
    $(document).ready(function(){
        $(".about4_info").find("dd").each(function(){
            var txt =  $(this).text();
            txt = txt.trim();
            txt = txt.replace(/\s/, "");

            if(txt.length <= 2){//'삭제' 글자수때문에 2로 설정해놓음
                $(this).closest("dl").hide();
            }
        });

    });
</script>
	


<link type="text/css" rel="stylesheet" href="rspn01/P202011017/css/footer7c28.css">


<div class="footer">
	<a href="tel:000-0000-0000" class="phone"><i class="fal fa-phone"></i> 000-0000-0000</a>
	<ul class="footer_menu">
		<!--li><a href="about.jsp?tab=4">오시는길</a></li-->
		<li>개인정보처리방침</li>
		<li>
		</li>
	</ul>

	<div class="footer_info clearfix">
		<div class="info_left">
			<ul>
				<li><span>상호</span>지리산 옹달샘</li>
				<li><span>예약전화</span>000-0000-0000</li>
				<li><span>주소</span>경상남도 전라북도 전라남도</li>
				<li><span>계좌</span>신한은행 000-000-00000</li>
				<li id="db-bank_info"><span></span>
					<div id="bank-info" style="display:inline-block; line-height:1.3em;">
						<br /> <br />
					</div>
				</li>
				
			</ul>
		</div>

		<div class="info_right">
			<ul>
									<li><span>사업자등록번호</span><caption id="db-biz_no">000-00-00000</caption></li>
									<li><span>대표자</span><caption id="db-owner_name">반달곰</caption></li>
					

			</ul>
		</div>
	</div>

	<div class="footer_copyright">
		<p>&copy; honey bear 2021</p>

		<div class="footer_social">
		</div>
	</div>




</div> <!-- all_wrap //-->
</body>

</html>
