<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="assets/Santorini.css">
</head>

<body>
    <div class="wrap">
        <div class="intro_bg">
            <div class="header">
                <div class="searchArea">
                    <form>
                        <input type="search" placeholder="search">
                        <span>검색</span>
                    </form>
                </div>
                <ul class="nav">
                    <li><a href="#">돌아가기</a></li>
                    <li><a href="#">HOME</a></li>
                    <li><a href="#">내 예약 관리</a></li>
                    <li><a href="#">예약문의</a></li>
                </ul>
            </div>
            <div class="intro_text">
                <h1>Santorini Pension</h1>
            </div>
        </div>
    </div>
    <!-- intro end-->

    <div class="main_text1">
        <h2>숙소전경</h2>
        <div class="service">
            <div class="backpicture">
                <img src="image/santoria.JPG" width="630px" height="400px">
                <p>정면사진</p>
            </div>
            <div class="contents2">
                <img src="image/shdmf.jpg" width="630px" height="400px">
                <p>노을사진</p>
            </div>            
        </div>
    </div>

    <!-- --------게시판 구간------------->
    <div class="main_text1">
        <h2>방문 후기</h2>
        <div class="service">
            <table class = "table">
                <thead>
                    <tr>
                        <th>번호</th>
                        <th>제목</th>
                        <th>작성자</th>
                        <th>날짜</th>
                        <th>조회수</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>100</td>
                        <td>깨끗하고 뷰가 좋아서 다시 오고 싶어요!</td>
                        <td>곽두팔</td>
                        <td>2021.09.25</td>
                        <td>268</td>
                    </tr>
                    <tr>
                        <td>101</td>
                        <td>노을질때 정말 예뻐요 ㅠㅠ</td>
                        <td>이솔업</td>
                        <td>2021.10.01</td>
                        <td>213</td>
                    </tr>
                    <tr>
                        <td>102</td>
                        <td>숙소 주인이 친절해서 좋았어요!</td>
                        <td>한승진</td>
                        <td>2021.10.05</td>
                        <td>199</td>
                    </tr>
                    <tr>
                        <td>104</td>
                        <td>조식이 정말 맛있어요 꼭 챙겨 드세요ㅎㅎ</td>
                        <td>강형구</td>
                        <td>2021.10.10</td>
                        <td>173</td>
                    </tr>
                    <tr>
                        <td>105</td>
                        <td>수영장에서 노을 보면 인생샷 찍을수 있어요~</td>
                        <td>현수지</td>
                        <td>2021.10.12</td>
                        <td>133</td>
                    </tr>
                    <tr>
                        <td>106</td>
                        <td>숙소가 너무 좋아서 꼭 다시 방문하고 싶어요!</td>
                        <td>정진후</td>
                        <td>2021.10.20</td>
                        <td>97</td>
                    </tr>
                    <tr>
                        <td colspan="5"><a href = "#">글쓰기</a></td>
                    </tr>
                </tbody>
            </table>
            <!-- --------게시판 구간------------->
                 
        </div>
    </div>




    <div class="main_text0">
        <h2>빠른 서비스</h2>
        <ul class="icons">
            <li>

                <div class="icon_img">
                    <img src="image/ghome.png" width="200px" height="200px">
                </div>

                <div class="contents1_bold">
                    <button class="more"> <a href="#"> 방 보러가기</a></button>
                </div>

            </li>

            <li>
                <div class="icon_img">
                    <img src="image/call.png" width="200px" height="200px">
                </div>
                <div class="contents1_bold">
                    <button class="more"> <a href="#"> 전화 문의</a></button>
                </div>

            </li>

            <li>
                <div class="icon_img">
                    <img src="image/calendar.png" width="200px" height="200px">
                </div>
                <div class="contents1_bold">
                    <button class="more"> <a href="#"> 예약 하기 </a></button>
                </div>
            </li>
        </ul>
    </div>
    <div class="footer">
        <div>광주시 동구 장동 123-4567</div>
    </div>
    </div>

</body>
</html>