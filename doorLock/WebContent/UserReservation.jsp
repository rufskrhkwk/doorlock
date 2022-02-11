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
                    <a href="#" class="nav__logo">내 정보 관리</a>
                </div>
                <div class="nav__list">
                    <a href="#" class="nav__link active">
                        <ion-icon name="home-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">예약 확인</span>
                    </a>


                    <a href="#" class="nav__link">
                        <ion-icon name="settings-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">내 정보수정</span>
                    </a>
                </div>
                <a href="#" class="nav__link">
                    <ion-icon name="log-out-outline" class="nav__icon"></ion-icon>
                    <span class="nav_name">회원 탈퇴</span>
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
                    <h2>예약 확인</h2>
			</caption>
			<thead>
				<tr>
					<th>예약 번호</th>
					<th>숙소 이름</th>
					<th>예약 인원</th>
					<th>체크인 일자</th>
					<th>체크아웃 일자</th>
					<th>도어락 비밀번호</th>
					<th>체크인 여부</th>

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
						비밀번호 설정: <input min="4" max="8" value="0" type="number" id="doorlockPW">
						<button type="button" class="btn btn-default">저장</button><%
							} else {
						%> 결제 확인 중 <%
							}
						%>
					</td>
					<td><% 
							if (vo.getIs_checkin()) {
						%> 입실완료 <%
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
						url : "Input_doorlockPW", //데이터를 전송하는 (요청하는) 서버페이지 url
						type : "post", // 데이터 전송 받식
						data : {// 전송하는 데이터
							"reservation_num" : $(this).parents().parents().children('td').html(),
							"doorlockPW" : doorlockPW,
							"is_checkin" : $(this).parents().next().html()
						},
						dataType : "text",//응답데이터의 형식
						success : function(data) {
							if(data == "success"){
								alert("비밀번호 변경 성공!")
							}else{
								alert("비밀번호 변경 실패!")
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