<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>이용 후기</title>
    <link rel="stylesheet" href="css/css.css">
</head>
<body>
    <div class="board_wrap">
        <div class="board_title">
            <strong>이용 후기</strong>
            <p>이용 후기를 남겨주세요.</p>
        </div>
        <div class="board_list_wrap">
            <div class="board_list">
            </div>
            <div class="board_page">
                
            </div>
            <div class="bt_wrap">
                <a href="write2.jsp" class="on">등록</a>
                <!--<a href="#">수정</a>-->
            </div>
        </div>
    </div>
    <script src="jquery-3.6.0.min.js"></script>
    <script>
        // 임시 데이터
        let data = [];
        

        for(let i = 0; i <= 100 ; i++){
            data.push({
                num:i + 1,
                title:'test' + i,
                writer:'testWriter' + i,
                date:'21/10/25'
            });
        }

        //------------------------------------------------------
        // ArrayList<VO> -> <%= %> 
        //
        for(let i = 1; i < data.length/10+1; i++){ 
            if(i == 1){
                // .jsp("작성할 코드")
                $('.board_page').jsp('<a href="#" class="num on">' + i + '</a>');
            }else{
                // .append("작성할 코드") 선택한 객체 뒤에 더하는거
                $('.board_page').append('<a href="#" class="num">' + i + '</a>');
            }
        }
        $('.board_page>a.on').before('<a href="#" class="bt first"><<</a><a href="#" class="bt prev"><</a>');
        $('.board_page').append('<a href="#" class="bt next">></a><a href="#" class="bt last">>></a>');

        let makeList = function(j, listNum){
            console.log(listNum);
            $('.board_list').jsp( 
                '<div class="top">' +
                    '<div class="num">번호</div>'+
                    '<div class="title">제목</div>'+
                    '<div class="writer">글쓴이</div>'+
                    '<div class="date">작성일</div>'+
                '</div>');
            for(;j < listNum; j++){
            $('.top').after(
                '<div>'+
                    '<div class="num">'+data[j].num+'</div>'+
                    '<div class="title">'+data[j].title+'</div>'+
                    // 쿼리스트링 이용해서 href 값 설정하기
                    '<div class="writer">'+data[j].writer+'</div>'+
                    '<div class="date">'+data[j].date+'</div>'+
                '</div>'
            )
        }
        }

    </script>

    <script>
        let j = 0;
        listNum = 10;
        let cnt = 1;
        makeList(j , listNum)

        let numbers =  $('a.num');
        for(let k = 0; k < numbers.length; k++){
            $(numbers[k]).on('click', function(){

                // removeClass -> 클래스 제거
                // addClass -> 클래스 추가
                $('.board_page>a.on').removeClass('on');
                $(numbers[k]).addClass('on');
                // 별점 같은데서 CSS조절

                cnt = Number($(numbers[k]).jsp());
                j = (cnt-1)*10;
                listNum = (cnt-1)*10 + 10;
                makeList(j,listNum);
            });
        }
        // 가급적이면, js파일
       
    </script>
</body>
</html> 