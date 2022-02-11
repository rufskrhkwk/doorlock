<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>웹프로젝트</title>
    <link rel="stylesheet" href="css/booking.css">
    <script type="text/javascript" src="js/jquery-3.2.1.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="js/booking.js" charset="utf-8"></script>
	
</head>
<body>
    <div id="container">
       <!-- <header>
            <a href="main_display.jsp"><img id="logotype" src="images/P202011017/logo/log.png" alt="메인로고"></a>
        </header>-->


        <section>
            <div id="firstarticle">
                <h2>예약하기</h2>
                <img src="images/booking_picture.gif">
            </div>
            <div id="secondarticle">
                <form action="../../../User_Reservation" method="post" id="bookform">
                    <table cellspacing="0">
                        <colgroup>
                            <col width="25%">
                            <col width="20%">
                            <col width="25%">
                        </colgroup>
                        <tr>
                            <th class="borderright">날짜</th>
                            <th class="borderright">룸</th>
                            <th>시간</th>
                        </tr>
                        <tr>
                            <td class="borderright">
                            <input type="date" name="inputDate"  id="bookdate">입실일
                            <input type="date" name="outputDate"  id="bookdate">퇴실일
                            </td>
                            <td class="borderright">
                                <ul id="themalist">
                                    <li>
                                        
                          
                                        
                                                                    <!--초기-->
                                     <p id="imglist"><img src="images/P202011017/service/41607/017696.jpg" width="300px"></p>
                                    </li>
                                    <li>
                                        <a class='myImage' href="images/P202011017/room/41595/00.jpg" id="0">101 옹달샘</a>
                                    </li>
                                    <li>
                                        <a class='myImage'  href="images/P202011017/room/41596/00.jpg" id="1">102 꿀단지</a>
                                    </li>
                                    <li>
                                        <a class='myImage'  href="images/P202011017/room/41597/00.jpg" id="2">201 꿀금고</a>
                                    </li>     
                                         
                                </ul>
                            </td>
                            <td>
                                <ul id="timelist">
                                    <li><a href="#" id="0">9:00</a></li>
                                    <li><a href="#" id="1">12:00</a></li>
                                    <li><a href="#" id="2">15:00</a></li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                          
                            <td>
                                
                                <input type="hidden" id="thematext" name="thema" value="">
                                <input type="hidden" id="timetext" name="time" value="">
                                <input type="submit"  class="buttontype" value="다음으로" >
                            </td>
                            
                        </tr>
                    </table>
                </form>
            </div>
        </section>
        <script type="text/javascript">
        	//$('.myImage').click(function(){
        		//var value = $(this).attr('id');
        		//$('#thematext').attr('value',value);
        	//});
        
        
        
        </script>
        
        
        
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