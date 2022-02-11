<%@page import="com.VO.ReservationVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.ReservationDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/MGR_Reservation_Inform.css">
</head>
<body>
<%
		ReservationDAO dao= new ReservationDAO();
		ArrayList<ReservationVO> al = new ArrayList<ReservationVO>();
		al = dao.Reservation_info("A1");
%>
	 <div class="l-navbar" id="navbar">
        <nav class="nav">
            <div>
                <div class="nav__brand">
                    <ion-icon name="menu-outline" class="nav__toggle" id="nav-toggle"></ion-icon>
                    <a href="#" class="nav__logo">관리자 모드</a>
                </div>
                <div class="nav__list">
                    <a href="#" class="nav__link active">
                        <ion-icon name="home-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">등록 관리</span>
                    </a>


                    <div href="#" class="nav__link collapse">
                        <ion-icon name="people-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">현황</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="#" class="collapse__sublink">Data</a>
                            <a href="#" class="collapse__sublink">Group</a>
                            <a href="#" class="collapse__sublink">Members</a>
                        </ul>
                    </div>

                    <a href="#" class="nav__link">
                        <ion-icon name="settings-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">설정</span>
                    </a>
                </div>
                <a href="#" class="nav__link">
                    <ion-icon name="log-out-outline" class="nav__icon"></ion-icon>
                    <span class="nav_name">로그아웃</span>
                </a>
            </div>
        </nav>
    </div>

    <div class="tablebg">
    <table align="center" width = 80%; class = "tablein">
        <div class="icon_img">
            <img src="image/cheak.png" width="100px" height="100px">
        </div>
        <caption><h2>저기 어때?  숙소 등록 관리</h2>
        </caption>
        <thead>
            <tr>
                <th>예약번호</th>
                <th>방 번호</th>
                <th>예약자 명</th>
                <th>연락처</th>
                <th>체크인 날짜</th>
                <th>체크아웃 날짜</th>
                <th>예약 상태</th>
                <th>성별/인원</th>
                <th>체크인여부</th>
            </tr>
        </thead>
        <tbody align="center">
        <% for(ReservationVO vo:al){ %>
            <tr>
                <td><%=vo.getReservation_num()%></td>
                <td><%=vo.getRoom_num()%></td>
                <td><%=vo.getCustomer_name()%></td>
                <td><%=vo.getCustomer_phone()%></td>
                <td><%=vo.getCheckin_date()%> 15:00</td>
                <td><%=vo.getCheckout_date()%> 14:00</td>
                <td><% if(vo.getStatus().equals("1")){
                	%> 확약 <%
                }else{%>
                	결제 확인 중
                <%}%>
                </td>
                <td><% if(vo.getCustomer_sex()){%>
                	남/
                <% }else{%>
					여 /
                <%} %> <%=vo.getNum_of_people()%>
                </td>
                <td><%if(vo.getIs_checkin()){%>
                		Y
                <%}else{%>
                		N
                <%} %>
                </td>
            </tr>
            <%} %>
        </tbody>
    </table>
    </div>
</div>
    <!-- IONICONS -->
    <script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>
    <!-- JS -->
    <script src="assets/js/main.js"></script>
</body>
</body>
</html>