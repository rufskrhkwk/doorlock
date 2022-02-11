window.onload = function()
{
    document.getElementById("cbook").onsubmit = function()
    {
        var result = confirm("정말로 예약을 취소하시겠습니까?");

        if(result == false)
            return false;
    }
}

function firstbooking(){
    var result = confirm("처음으로 돌아가시겠습니까?");

    if(result)
        location.href = "check booking.html";
}