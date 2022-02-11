<%@page import="com.VO.userVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>저기어때</title>
<link rel="stylesheet" href="assets/main.css">
</head>
<body>
    <%	
    userVO vo = (userVO)session.getAttribute("user");	
 %>
    <div class="intro_bg">
        <div class="header">
            <ul class="nav">
            
                <%if(vo==null){%>
                	<li><a href="#">HOME</a></li>
                	<li><a href="join.jsp">회원가입/로그인</a></li>
                	<li><a href="hostJoin.jsp">Manager SignIn</a></li>
			    <%}else{%>
                    <li><a href="#">HOME</a></li>
                    <li><a href="WebContent/homepage/include/booking.jsp">예약하기</a></li>
                    <li><a href="UserReservation.jsp">예약확인</a></li>
                    <li><a href="#">내정보</a></li>
                <%}%>
            </ul>

        </div>
        <div class="intro_text">
            <h2>네가 찾는 숙소? 여기 다있어!!</h2>
            <h1>저기 어때?</h1>
        </div>
    </div>

    <div class="section">
        <ul class="icons">
            <li>
                <div class="icon_img">
                    <img src="image/dok.png" width="125px" height="125px">
                </div>

                <div class="contents1_bold">
                    <button class="more "> <a href="#"> 독채 보기</a></button>
                </div>
            </li>
            <li>

                <div class="icon_img">
                    <img src="image/jib.png" width="125px" height="125px">
                </div>

                <div class="contents1_bold">
                    <button class="more"> <a href="#"> 호텔 보기</a></button>
                </div>

            </li>

            <li>
                <div class="icon_img">
                    <img src="image/house.png"  width="125px" height="125px">
                </div>
                <div class="contents1_bold">
                    <button class="more"> <a href="#"> 게스트하우스 보기</a></button>
                </div>

            </li>

            <li>
                <div class="icon_img">
                    <img src="image/full.png"  width="125px" height="125px">
                </div>
                <div class="contents1_bold">
                    <button class="more"> <a href="#"> 풀빌라 보기 </a></button>
                </div>
            </li>
        </ul>
    </div>

    <div class="searchArea">
        <form>
            <input type="search" placeholder="search">
          
        </form>
    </div>

    <div class="section2">
        <div class="main_text1">
            <h2>호텔 추천</h2>
            <div class="service">
                <div class="backpicture">
                    <img src="image/ho1.JPG" width="315px" height="200px"><br>
                    <a
                        href="Santorini.jsp">산토리니
                        300,000원 부터 ~ </a>
                </div>

                <div class="contents2">
                    <img src="image/ho2.jpg" width="315px" height="200px"><br>
                    <a href="#">하노이호텔 230,000원 부터 ~ </a>
                </div>

                <div class="contents2">
                    <img src="image/ho3.jpg" width="315px" height="200px"><br>
                    <a href="#">광주스테이 250,000원 부터 ~ </a>
                </div>

                <div class="contents2">
                    <img src="image/ho4.jpg" width="315px" height="200px"><br>
                    <a href="#">아누아호텔 170,000원 부터 ~ </a>
                </div>
            </div>

            <h2>게스트 하우스 추천</h2>
            <div class="service">
                <div class="backpicture">
                    <img src="image/ge1.jpg" width="315px" height="200px"><br>
                    <a href="WebContent/homepage/include/index.jsp">지리산 옹달셈펜션 15,000원 부터 ~ </a>
                </div>
                <div class="contents2">
                    <img src="image/ge2.jpg" width="315px" height="200px"><br>
                    <a href="#">풍남옥 게스트하우스 25,000원 부터 ~ </a>
                </div>

                <div class="contents2">
                    <img src="image/ge3.jpg" width="315px" height="200px"><br>
                    <a href="#">쉼터 게스트하우스 20,000원 부터 ~ </a>
                </div>

                <div class="contents2">
                    <img src="image/ge4.jpg" width="315px" height="200px"><br>
                    <a href="#">쉐어 게스트하우스 17,000원 부터 ~ </a>
                </div>
            </div>

            <h2>풀빌라 추천</h2>
            <div class="service">
                <div class="backpicture">
                    <img src="image/full1.jpg" width="315px" height="200px"><br>
                    <a href="#">아쿠아밸리 150,000원 부터 ~ </a>
                </div>
                <div class="contents2">
                    <img src="image/full2.jpg" width="315px" height="200px"><br>
                    <a href="#">풀빌라온펜션 110,000원 부터 ~ </a>
                </div>

                <div class="contents2">
                    <img src="image/full3.png" width="315px" height="200px"><br>
                    <a href="#">리버하임풀빌라 99,000원 부터 ~ </a>
                </div>

                <div class="contents2">
                    <img src="image/full4.png" width="315px" height="200px"><br>
                    <a href="#">힐앤폴 199,000원 부터 ~ </a>
                </div>
            </div>
        </div>
    </div>
    <div class="footer">
        <a href="#">위 로</a>
    </div>

</body>
</html>