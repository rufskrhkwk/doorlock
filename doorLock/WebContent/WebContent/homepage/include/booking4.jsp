<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>웹프로젝트</title>
    <link rel="stylesheet" href="css/booking4.css">
    <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="js/booking4.js"></script>
</head>
<body>
    <div id="container">
    <header>
        <ul>
            <li><a href="reason.jsp">reason</a></li>
            <li><a href="notice.jsp">notice</a></li>
            <li><a href="rooms.jsp">rooms</a></li>
            <li><a href="booking.jsp">booking</a></li>
            <li><a href="check booking.jsp">check booking</a></li>
            <li><a href="q&a.jsp">q&a</a></li>
        </ul>
    </header>
    <section>
        <div id="firstarticle">
            <h2>예약하기</h2>
            <img src="images/booking4_picture.gif" style="margin-bottom:30px">
        </div>
        <div id="secondarticle">
            <table cellspacing="0">
                <tr>
                    <td style="font-size:50px">예약이 완료되었습니다.</td>
                </tr>
                <tr>
                    <td><input type="button" onclick= "location.href='../../../main.jsp' " value="확인" class="buttontype"></td>
                </tr>
            </table>
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