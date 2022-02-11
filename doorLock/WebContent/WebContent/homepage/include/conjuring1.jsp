<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>웹프로젝트</title>
    <link rel="stylesheet" href="css/conjuring1.css">
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
        <div id="article">
            <h2>rooms</h2>
            <hr>
            <img src="images/rooms_picture2.JPG" alt="컨저링1">
            <ul>
                <li id="liststyle1">컨저링 1</li>
                <li id="liststyle2">(the conjuring 1)</li>
                <li id="liststyle3">난이도</li>
                <li id="liststyle4">★★★★☆ <small>(최소 인원 : 2명, 최대 인원 : 5명)</small></li>
                <li id="liststyle5">
                    <p><span id="describetitle">집에 깃들어 있는 악령을 퇴치하여 페론 가족을 구할 것인가.</span><br><br>
                         당신은 유명한 귀신연구자이며 동시에 초자연적인것의 전문가. 어느 날, 페론가족에게서 방문 요청을 받게 되어
                         집으로 찾아갔는데, 당신은 불길한 기운을 감지하게 되고 본격적인 조사에 들어가기 시작했다. 조사에 들어가면서
                         시작된 원혼들의 움직임. 당신은 원혼으로부터 페론 가족을 지킬 수 있을 것인가.
                    </p>
                </li>
                <li id="liststyle6"><a href="booking.jsp">예약하기</a><a href="rooms.jsp">목록으로</a></li>
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