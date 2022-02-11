<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>웹프로젝트</title>
    <link rel="stylesheet" href="css/main_display.css">
    <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="js/main_display.js"></script>
</head>
<body>
    <div id="container">
    <header>
        <a href="main_display.jsp"><img id="logotype" src="images/main_logo.JPG" alt="메인로고"></a>
        <ul>
            <li><a href="reason.jsp">reason</a></li>
            <li><a href="notice.jsp">notice</a></li>
            <li><a href="rooms.jsp">rooms</a></li>
            <li><a href="booking.jsp">booking</a></li>
            <li><a href="check booking.jsp">check booking</a></li>
            <li><a href="q&a.php">q&a</a></li>
        </ul>
    </header>
    <section>
        <div id="wrap">
            <img src="images/main_picture1.jpg" id="img1">
            <img src="images/main_picture2.jpg" id="img2">
            <img src="images/main_picture3.jpg" id="img3">
            <img src="images/main_picture0.JPG" id="img4">
        </div>
        <div id="banner">
            <ul>
                <li><a href="images/main_picture1.jpg" id="b1">○</a></li>
                <li><a href="images/main_picture2.jpg" id="b2">○</a></li>
                <li><a href="images/main_picture3.jpg" id="b3">○</a></li>
            </ul>
        </div>
    </section>
    <footer>
        <ul>
            <li>주소 : 지리산</li>
            <li>대표 : 반달곰</li>
            <li>전화번호 : 000-0000-0000</li>
            <li>이메일 : goodnight@naver.com</li>
            
        </ul>
    </footer>
    </div>
</body>
</html>