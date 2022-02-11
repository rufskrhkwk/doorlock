function firstbooking(){
    var result = confirm("처음으로 돌아가시겠습니까?");

    if(result){
        location.href = "booking.html";
    }
}

function prevbooking(){
    var result = confirm("이전으로 돌아가시겠습니까?");

    if(result){
        history.back();
    }
}

function selectingaccount(){

}

window.onload = function(){
    var bookvalue = document.getElementById("bookingnum");
    var selectbox = document.getElementById("selecttype").options[0];
    document.getElementById("info").onsubmit = function(){
        if(selectbox.selected)
        {
            alert("계좌를 선택해주세요!");
            document.getElementById("selecttype").focus();
            return false;
        }
    }
}