<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/join.css">
</head>
<body>
	<div class="wrap">
        <div class="form-wrap">
            <div class="button-wrap">
                <div id="btn"></div>
                <button type="button" class="togglebtn" onclick="login()">로그인</button>
                <button type="button" class="togglebtn" onclick="register()">회원가입</button>
            </div>
            <div class="social-icons">
                <img src="image/fb.png" alt="facebook">
                <img src="image/tw.png" alt="twitter">
                <img src="image/gl.png" alt="google">
            </div>
            <form id="login" action="hostLogin" class="input-group">
                    <input type="text" name = "host_id" class="input-field" placeholder="User name or Email" required>
                    <input type="password" name = "host_pw" class="input-field" placeholder="Enter Password" required>
                    <input type="checkbox" class="checkbox"><span>Remember Password</span>
                    <button class="submit" onclick="location.href='hostMain.jsp'">로그인</button>
                </form>
            <form id="register" action="hostJoin" class="input-group">
                <input type="text" name = "host_id" class="input-field" placeholder="User id" required>
                <input type="password" name = "host_pw" class="input-field" placeholder="Enter Password" required>
                <input type="email" name = "host_email"class="input-field" placeholder="Your Email" required>
                <input type="text" name ="host_name" class="input-field" placeholder="name" required>
                <input type="text" name ="host_phone" class="input-field" placeholder="phone_number" required><br><br>
                
               <br>
                <input type="checkbox" class="checkbox"><span>약관 확인</span>
                <button class="submit" onclick="location.href='hostMain.jsp'">가입하기</button>
                
            </form>
        </div>
    </div>
    <script>
        
    		
    	var x = document.getElementById("login");
        var y = document.getElementById("register");
        var z = document.getElementById("btn");
        
        
        function login(){
            x.style.left = "50px";
            y.style.left = "450px";
            z.style.left = "0";
        }

        function register(){
            x.style.left = "-400px";
            y.style.left = "50px";
            z.style.left = "110px";
        }
    </script>
</body>
</html>