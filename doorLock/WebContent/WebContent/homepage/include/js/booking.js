window.onload = function(){
    
    var themazone = document.getElementById("themalist");
    var themalist = themazone.getElementsByTagName("a");
    var timezone = document.getElementById("timelist");
    var timelist = timezone.getElementsByTagName("a");
    var bookvalue = document.getElementById("datetext");
    var themavalue = document.getElementById("thematext");
    var timevalue = document.getElementById("timetext");
    var date = document.getElementById("bookdate");
    var bool = [false, false];
    
    document.getElementById("bookform").onsubmit = function()
    {
        
        if(date.value == "")
        {
            alert("날짜를 선택해주세요!");
            return false;
        }
        else if(bool[0] == false)
        {
            alert("테마를 선택해주세요!");
            return false;
        }
        else if(bool[1] == false)
        {
            alert("시간을 선택해주세요!");
            return false;
        }
        else
            bookvalue.value = date.value;

    }

    for(var i=0;i<themalist.length;i++)
    {
        themalist[i].onclick = function()
        {
            var imgzone = document.getElementById("imglist").children[0];
            var k = this.id;
            for(var j=0;j<themalist.length;j++)
                themalist[j].style.backgroundColor = "white";

            switch(k)
            {
            case "0":
                themavalue.value = "101 옹달샘";
                break;
            case "1":
                themavalue.value = "102 꿀단지";
                break;
            case "2":
                themavalue.value = "201 꿀금고";
                break;
           
            }

            timezone.style.visibility = "visible";
            this.style.backgroundColor = "gray";
            imgzone.src = this.href;
            bool[0] = true;

            return false;
        }

        timelist[i].onclick=function()
        {
            var t = this.id;

            for(var j=0;j<timelist.length;j++)
                timelist[j].style.backgroundColor = "white";

            switch(t)
            {
            case "0":
                timevalue.value = "9:00";
                break;
            case "1":
                timevalue.value = "12:00";
                break;
            case "2":
                timevalue.value = "15:00";
                break;
           
            }

            bool[1] = true;
            
            this.style.backgroundColor = "gray";

            return false;
        }
    }
}