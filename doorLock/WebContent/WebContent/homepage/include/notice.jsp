<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>웹프로젝트</title>
    <link rel="stylesheet" href="css/notice.css">
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
        <article class="firstarticle">
            <h1>booking</h1>
            <ul>
                <li>
                    <img src="images/notice_picture1.JPG" alt="예약 하기">
                    <h3>예약 하기</h3>
                    <p>
                        예약은 홈페이지 상단의 “Booking”메뉴에서 진행 가능하며,<br>
                        테마, 날짜, 시간, 인원을 지정 후 
                        예약 정보 입력 및 예약비(게임비의 50%)를 결제하시면 예약이 완료됩니다.
                    </p>
                </li>
                <li>
                    <img src="images/notice_picture2.JPG" alt="예약 수정">
                    <h3>예약 수정</h3>
                    <p>
                        예약 수정은 전화(000-0000-0000) 혹은 Q&A 게시판으로 문의하시면 가능하며,<br>
                        기존 예약시간 24시간 이전에만 가능합니다.<br>
                        (단, 인원수 변동은 언제나 가능하오니 내방 시 말씀해 주십시오.)
                    </p>
                </li>
                <li>
                    <img src="images/notice_picture3.JPG" alt="예약 취소">
                    <h3>예약 취소</h3>
                    <p>
                        예약 취소는 “Booking”메뉴에서 진행 가능하며, 
                        24시간 이전에만 취소 및 환불 가능합니다.<br>
                        (**당일 예약은 취소 및 환불 불가)
                    </p>
                </li>
            </ul>
        </article>
        <article class="secondarticle">
            <h1>price</h1>
            <table cellspacing="0">
                <tr>
                    <th>인원수</th>
                    <th colspan="2">인당</th>
                    <th>합계</th>
                </tr>
                <tr>
                    <td>1</td>
                    <td colspan="2">24,000</td>
                    <td>24,000</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td colspan="2">22,000</td>
                    <td>44,000</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td colspan="2">20,000</td>
                    <td>60,000</td>
                </tr>
                <tr>
                    <td>4</td>
                    <td colspan="2">18,000</td>
                    <td>72,000</td>
                </tr>
                <tr>
                    <td>5</td>
                    <td colspan="2">16,000</td>
                    <td>80,000</td>
                </tr>
                <tr>
                    <td>6</td>
                    <td colspan="2">14,000</td>
                    <td>84,000</td>
                </tr>
            </table>
        </article>
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