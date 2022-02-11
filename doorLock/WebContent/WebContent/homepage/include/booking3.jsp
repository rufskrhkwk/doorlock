<%@page import="com.VO.userVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
<html lang="ko">
<head>





    <meta charset="utf-8">
    <title>웹프로젝트</title>
    <link rel="stylesheet" href="css/booking3.css">
    <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="js/booking3.js"></script>
</head>
<body>
   <%
    userVO vo = (userVO)session.getAttribute("user");  
    String a = (String)session.getAttribute("room_num");
    String b = (String)session.getAttribute("inTime");
	String c = (String)session.getAttribute("in_date");
	String d = (String)session.getAttribute("out_date");
	String e = (String)session.getAttribute("customer_name");
	String f = (String)session.getAttribute("customer_phone");
	String g = (String)session.getAttribute("guestnumber");
	String h = (String)session.getAttribute("customer_email");
    
    %>
    
   
   
   
    <div id="container">
   <!-- <header>
        <a href="main_display.jsp"><img id="logotype" src="images/main_logo.JPG" alt="메인로고"></a>
        <ul>
            <li><a href="reason.jsp">reason</a></li>
            <li><a href="notice.jsp">notice</a></li>
            <li><a href="rooms.jsp">rooms</a></li>
            <li><a href="booking.jsp">booking</a></li>
            <li><a href="check booking.jsp">check booking</a></li>
            <li><a href="q&a.jsp">q&a</a></li>
        </ul>
    </header>
    -->
    <section>
        <div id="firstarticle">
            <h2>예약하기</h2>
            <img src="images/booking3_picture.gif">
        </div>
        <div id="secondarticle">
            <form action="" method="post" name="info">
                <table cellspacing="0">
                    <colgroup>
                        <col width="20%">
                        <col width="80%">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>방(ROOM)</th>
                            <td><%=a %></td>
                        </tr>
                        <tr>
                            <th>예약일시(date)</th>
                            <td>입실&emsp;<%=c %>&emsp;&emsp;&emsp;퇴실&emsp;<%=d %></td>
                        </tr>
                        <tr>
                            <th>시간</th>
                            <td><%=b %></td>
                        </tr>
                        <tr>
                            <th>인원</th>
                            <td><%=g %></td>
                        </tr> 
                        <tr>
                            <th>룸가격</th>
                            <td>150,000원</td>
                        </tr>
                        <tr>
                            <th>예약금 결제</th>
                            <td id="deposittext">10,000원</td>
                        </tr>
                        
                        <tr>
                            <th>입금계좌</th>
                            <td>
                                <select >
                                    <option value="notselect">=== 입금 계좌를 선택해주세요 ===</option>
                                    <option value="account">반달곰 000-000-000000</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th>입금자명</th>
                            <td><%=e %>
                            <!--  <input type="text" class="inputtype">-->
                            </td>
                        </tr>
                        
                    </tbody>
                    <tfoot>
                        <tr>
                            <td class="finaletype" colspan="2">
                                <input type="button" onclick="firstbooking();" value="처음으로" class="buttontype"></button>
                                <input type="button" onclick="prevbooking();" value="이전으로" class="buttontype"></button>
                                <button type="button" onclick="location='booking4.jsp';"  class="buttontype">결제하기</button>
                               <!-- <input type="button" onclick="selectingaccount();" value="결제하기" class="buttontype"></button>-->
                            </td>
                        </tr>
                    </tfoot>
                </table>    
            </form>
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