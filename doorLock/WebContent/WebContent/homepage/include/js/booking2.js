window.onload = function(){
    var th = document.getElementById("th");
    var thvalue = document.getElementById("thematext");
    var da = document.getElementById("da");
    var davalue = document.getElementById("datetext");
    var ti = document.getElementById("ti");
    var tivalue = document.getElementById("timetext");
    var pe = document.getElementById("price");
    var pevalue = document.getElementById("persontext");
    var de = document.getElementById("da");
    var devalue = document.getElementById("depositdatetext");

    thvalue.value = $("#th").text();
    davalue.value = $("#da").text();
    tivalue.value = $("#ti").text();
    devalue.value = $("#da").text();

    document.getElementById("info").onsubmit = function(){
        var selbox = document.getElementById("price").options[0];
        var usermember = document.getElementById("price");
        var chkbox = document.getElementById("agreeing");
        var username = document.getElementById("user_name");
        var userpnumber = new Array(document.getElementById("user_p1"),document.getElementById("user_p2"));
        var useremail1 = document.getElementById("user_prevemail");
        var useremail2 = document.getElementById("user_nextemail").options[0];
        var userpay = new Array(document.getElementById("d1"),document.getElementById("d2"),document.getElementById("d3"),document.getElementById("d4"));
        
        var personvalue = document.getElementById("persontext");
        var pricevalue = document.getElementById("pricetext");
        var depositvalue = document.getElementById("deposittext");
        var namevalue = document.getElementById("nametext");
        var pnumbervalue1 = document.getElementById("phonenumbertext1");
        var pnumbervalue2 = document.getElementById("phonenumbertext2");
        

        if(selbox.selected)
        {
            alert("인원을 선택해주세요!");
            document.getElementById("price").focus();
            return false;
        }
        else if(username.value == "")
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
        else if(useremail2.selected || useremail1.value == "")
        {
            alert("이메일 주소를 입력해주세요!");
            if(useremail1.value == "")
                useremail1.focus();
            else if(useremail2.selected)
                document.getElementById("user_nextemail").focus();
            return false;
        }
        else if(!userpay[0].checked && !userpay[1].checked && !userpay[2].checked && !userpay[3].checked)
        {
            alert("결제방식을 선택해주세요!");
            userpay[0].focus();
            return false;
        }
        else if(chkbox.checked == false)
        {
            alert("약관에 동의해주세요!");
            chkbox.focus();
            return false;
        }
        else
        {
            pnumbervalue1.value = document.getElementById("user_p0").value;
            pnumbervalue2.value = userpnumber[0].value + userpnumber[1].value;
            pricevalue.value = $("#txt").text();
            namevalue.value = username.value;
            for(var i=0;i<userpay.length;i++)
            {
                if(userpay[i].checked)
                    depositvalue.value = userpay[i].value;
            }
            for(var i=1;i<usermember.length;i++)
            {
                if(usermember[i].selected)
                    personvalue.value = usermember[i].id;
            }
        }
    }
}

$(function(){
    $("#price").change(function(){
        $("#txt").text($(this).val());
        $("#txt").val($(this).val());
    })
});

function firstbooking(){
    var result = confirm("처음으로 돌아가시겠습니까?","");

    if(result){
        location.href = "booking.html";
    }
}

function prevbookingpage(){
    var result = confirm("이전페이지로 돌아가시겠습니까?","");

    if(result)
        history.back();
}

function nextbookingpage(){
    var result = confirm("다음페이지로 가시겠습니까?","");

    if(result)
        history.back();
}