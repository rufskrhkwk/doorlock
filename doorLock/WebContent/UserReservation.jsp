<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.ReservationDAO"%>
<%@page import="com.VO.ReservationVO"%>
<%@page import="com.DAO.hostDAO"%>
<%@page import="com.VO.DoorLockVO"%>
<%@page import="com.DAO.DoorlockDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<link rel="stylesheet" href="assets/userReservation.css">
</head>

<body id="body-pd">
	<%
		ReservationDAO dao = new ReservationDAO();
		ArrayList<ReservationVO> al = new ArrayList<ReservationVO>();
		al = dao.Reservation_info();
	%>
    
    <div class="l-navbar" id="navbar">
        <nav class="nav">
            <div>
                <div class="nav__brand">
                    <ion-icon name="menu-outline" class="nav__toggle" id="nav-toggle"></ion-icon>
                    <a href="#" class="nav__logo">�� ���� ����</a>
                </div>
                <div class="nav__list">
                    <a href="#" class="nav__link active">
                        <ion-icon name="home-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">���� Ȯ��</span>
                    </a>


                    <a href="#" class="nav__link">
                        <ion-icon name="settings-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">�� ��������</span>
                    </a>
                </div>
                <a href="#" class="nav__link">
                    <ion-icon name="log-out-outline" class="nav__icon"></ion-icon>
                    <span class="nav_name">ȸ�� Ż��</span>
                </a>
            </div>
        </nav>
    </div>
    <div class="tablebg">
            <table align="center" width=80%;>
                <caption>
                    <div class="icon_img">
                        <img src="image/check.png" width="150px" height="100px">
                    </div>
                    <h2>���� Ȯ��</h2>
			</caption>
			<thead>
				<tr>
					<th>���� ��ȣ</th>
					<th>���� �̸�</th>
					<th>���� �ο�</th>
					<th>üũ�� ����</th>
					<th>üũ�ƿ� ����</th>
					<th>����� ��й�ȣ</th>
					<th>üũ�� ����</th>

				</tr>
			</thead>
			<tbody align="center">

				<%
					for (ReservationVO vo : al) {
				%>
				<tr>
					<td><%=vo.getReservation_num()%></td>
					<td><%=vo.getHotel_uid()%></td>
					<td><%=vo.getNum_of_people()%></td>
					<td><%=vo.getCheckin_date()%> 15:00</td>
					<td><%=vo.getCheckout_date()%> 14:00</td>
					<td><% if (vo.getStatus().equals("1")) {%>
						��й�ȣ ����: <input min="4" max="8" value="0" type="number" id="doorlockPW">
						<button type="button" class="btn btn-default">����</button><%
							} else {
						%> ���� Ȯ�� �� <%
							}
						%>
					</td>
					<td><% 
							if (vo.getIs_checkin()) {
						%> �ԽǿϷ� <%
							} else {
						%> -<%
							}
						%>
					</td>
				</tr>
				<%
					}
				%>

			</tbody>
		</table>
    </div>
    <!-- IONICONS -->
    <script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>
    <!-- JS -->
    <script>
     /* EXPANDER MENU */
    const showMenu = (toggleId, navbarId, bodyId) => {
        const toggle = document.getElementById(toggleId),
        navbar = document.getElementById(navbarId),
        bodypadding = document.getElementById(bodyId)

        if( toggle && navbar ) {
            toggle.addEventListener('click', ()=>{
                navbar.classList.toggle('expander');

                bodypadding.classList.toggle('body-pd')
            })
        }
    }

    showMenu('nav-toggle', 'navbar', 'body-pd')

    /* LINK ACTIVE */
    const linkColor = document.querySelectorAll('.nav__link')
    function colorLink() {
        linkColor.forEach(l=> l.classList.remove('active'))
        this.classList.add('active')
    }
    linkColor.forEach(l=> l.addEventListener('click', colorLink))

    /* COLLAPSE MENU */
    const linkCollapse = document.getElementsByClassName('collapse__link')
    var i

    for(i=0;i<linkCollapse.length;i++) {
        linkCollapse[i].addEventListener('click', function(){
            const collapseMenu = this.nextElementSibling
            collapseMenu.classList.toggle('showCollapse')

            const rotate = collapseMenu.previousElementSibling
            rotate.classList.toggle('rotate')
        });
    }
    </script>
	<script type="text/javascript">
	
		$(".btn").on('click',
				function() {
					var doorlockPW = $(this).parents().children('input').val();
					console.log(doorlockPW+ " : "+ $(this).parents().parents().children('td').html())
					$.ajax({
						url : "Input_doorlockPW", //�����͸� �����ϴ� (��û�ϴ�) ���������� url
						type : "post", // ������ ���� �޽�
						data : {// �����ϴ� ������
							"reservation_num" : $(this).parents().parents().children('td').html(),
							"doorlockPW" : doorlockPW,
							"is_checkin" : $(this).parents().next().html()
						},
						dataType : "text",//���䵥������ ����
						success : function(data) {
							if(data == "success"){
								alert("��й�ȣ ���� ����!")
							}else{
								alert("��й�ȣ ���� ����!")
							}
						},
						error : function() {
							alert('error');
						}
					});
				});
</script>
  
</body>
</html>