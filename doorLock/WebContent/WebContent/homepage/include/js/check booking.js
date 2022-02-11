window.onload = function(){
    
    document.getElementById("checkform").onsubmit = function()
    {
        var username = document.getElementById("user_name");
        var userpnumber = new Array(document.getElementById("user_p1"),document.getElementById("user_p2"));
        var userbnumber = document.getElementById("user_booknum");

        var namevalue = document.getElementById("guestname");
        var bookingvalue = document.getElementById("bookingnumber");

        if(username.value == "")
        {
            alert("예약자명을 입력해주세요!");
            username.focus();
            return false;
        }
        else if(userpnumber[0].value == "" || userpnumber[1].value == "")
        {
            alert("연락처를 입력해주세요!");
            for(var i=0;i<userpnumber.length;i++)
            {
                if(userpnumber[i].value == "")
                {
                    userpnumber[i].focus();
                    break;
                }
            }
            return false;
        }
        else if(userbnumber.value == "")
        {
            alert("예약번호를 입력해주세요!");
            userbnumber.focus();
            return false;
        }
        else
        {
            bookingvalue.value = document.getElementById("user_booknum").value;
            namevalue.value = document.getElementById("user_name").value;
        }
    }
}

function reloading(){
    var result = confirm("입력한 내용은 저장되지 않습니다. 새로고침 하시겠습니까?");
    if(result){
        location.reload();
    }
};

function firstbooking(){
    var result = confirm("처음으로 돌아가시겠습니까?");

    if(result)
        location.href = "check booking.html";
}

