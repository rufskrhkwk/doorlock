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
                    <a href="#" class="nav__logo">������ ���</a>
                </div>
                <div class="nav__list">
                    <a href="#" class="nav__link active">
                        <ion-icon name="home-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">��� ����</span>
                    </a>


                    <div href="#" class="nav__link collapse">
                        <ion-icon name="people-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">��Ȳ</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="#" class="collapse__sublink">Data</a>
                            <a href="#" class="collapse__sublink">Group</a>
                            <a href="#" class="collapse__sublink">Members</a>
                        </ul>
                    </div>

                    <a href="#" class="nav__link">
                        <ion-icon name="settings-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">����</span>
                    </a>
                </div>
                <a href="#" class="nav__link">
                    <ion-icon name="log-out-outline" class="nav__icon"></ion-icon>
                    <span class="nav_name">�α׾ƿ�</span>
                </a>
            </div>
        </nav>
    </div>

    <div class="tablebg">
    <table align="center" width = 80%; class = "tablein">
        <div class="icon_img">
            <img src="image/cheak.png" width="100px" height="100px">
        </div>
        <caption><h2>���� �?  ���� ��� ����</h2>
        </caption>
        <thead>
            <tr>
                <th>�����ȣ</th>
                <th>�� ��ȣ</th>
                <th>������ ��</th>
                <th>����ó</th>
                <th>üũ�� ��¥</th>
                <th>üũ�ƿ� ��¥</th>
                <th>���� ����</th>
                <th>����/�ο�</th>
                <th>üũ�ο���</th>
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
                	%> Ȯ�� <%
                }else{%>
                	���� Ȯ�� ��
                <%}%>
                </td>
                <td><% if(vo.getCustomer_sex()){%>
                	��/
                <% }else{%>
					�� /
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