<%@page import="com.VO.userVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����</title>
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
                	<li><a href="join.jsp">ȸ������/�α���</a></li>
                	<li><a href="hostJoin.jsp">Manager SignIn</a></li>
			    <%}else{%>
                    <li><a href="#">HOME</a></li>
                    <li><a href="WebContent/homepage/include/booking.jsp">�����ϱ�</a></li>
                    <li><a href="UserReservation.jsp">����Ȯ��</a></li>
                    <li><a href="#">������</a></li>
                <%}%>
            </ul>

        </div>
        <div class="intro_text">
            <h2>�װ� ã�� ����? ���� ���־�!!</h2>
            <h1>���� �?</h1>
        </div>
    </div>

    <div class="section">
        <ul class="icons">
            <li>
                <div class="icon_img">
                    <img src="image/dok.png" width="125px" height="125px">
                </div>

                <div class="contents1_bold">
                    <button class="more "> <a href="#"> ��ä ����</a></button>
                </div>
            </li>
            <li>

                <div class="icon_img">
                    <img src="image/jib.png" width="125px" height="125px">
                </div>

                <div class="contents1_bold">
                    <button class="more"> <a href="#"> ȣ�� ����</a></button>
                </div>

            </li>

            <li>
                <div class="icon_img">
                    <img src="image/house.png"  width="125px" height="125px">
                </div>
                <div class="contents1_bold">
                    <button class="more"> <a href="#"> �Խ�Ʈ�Ͽ콺 ����</a></button>
                </div>

            </li>

            <li>
                <div class="icon_img">
                    <img src="image/full.png"  width="125px" height="125px">
                </div>
                <div class="contents1_bold">
                    <button class="more"> <a href="#"> Ǯ���� ���� </a></button>
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
            <h2>ȣ�� ��õ</h2>
            <div class="service">
                <div class="backpicture">
                    <img src="image/ho1.JPG" width="315px" height="200px"><br>
                    <a
                        href="Santorini.jsp">���丮��
                        300,000�� ���� ~ </a>
                </div>

                <div class="contents2">
                    <img src="image/ho2.jpg" width="315px" height="200px"><br>
                    <a href="#">�ϳ���ȣ�� 230,000�� ���� ~ </a>
                </div>

                <div class="contents2">
                    <img src="image/ho3.jpg" width="315px" height="200px"><br>
                    <a href="#">���ֽ����� 250,000�� ���� ~ </a>
                </div>

                <div class="contents2">
                    <img src="image/ho4.jpg" width="315px" height="200px"><br>
                    <a href="#">�ƴ���ȣ�� 170,000�� ���� ~ </a>
                </div>
            </div>

            <h2>�Խ�Ʈ �Ͽ콺 ��õ</h2>
            <div class="service">
                <div class="backpicture">
                    <img src="image/ge1.jpg" width="315px" height="200px"><br>
                    <a href="WebContent/homepage/include/index.jsp">������ �˴޼���� 15,000�� ���� ~ </a>
                </div>
                <div class="contents2">
                    <img src="image/ge2.jpg" width="315px" height="200px"><br>
                    <a href="#">ǳ���� �Խ�Ʈ�Ͽ콺 25,000�� ���� ~ </a>
                </div>

                <div class="contents2">
                    <img src="image/ge3.jpg" width="315px" height="200px"><br>
                    <a href="#">���� �Խ�Ʈ�Ͽ콺 20,000�� ���� ~ </a>
                </div>

                <div class="contents2">
                    <img src="image/ge4.jpg" width="315px" height="200px"><br>
                    <a href="#">���� �Խ�Ʈ�Ͽ콺 17,000�� ���� ~ </a>
                </div>
            </div>

            <h2>Ǯ���� ��õ</h2>
            <div class="service">
                <div class="backpicture">
                    <img src="image/full1.jpg" width="315px" height="200px"><br>
                    <a href="#">����ƹ븮 150,000�� ���� ~ </a>
                </div>
                <div class="contents2">
                    <img src="image/full2.jpg" width="315px" height="200px"><br>
                    <a href="#">Ǯ�������� 110,000�� ���� ~ </a>
                </div>

                <div class="contents2">
                    <img src="image/full3.png" width="315px" height="200px"><br>
                    <a href="#">��������Ǯ���� 99,000�� ���� ~ </a>
                </div>

                <div class="contents2">
                    <img src="image/full4.png" width="315px" height="200px"><br>
                    <a href="#">������ 199,000�� ���� ~ </a>
                </div>
            </div>
        </div>
    </div>
    <div class="footer">
        <a href="#">�� ��</a>
    </div>

</body>
</html>