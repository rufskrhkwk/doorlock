window.onload = function(){

    document.getElementById("writeform").onsubmit = function()
    {
        var named = document.getElementById("name");
        var titled = document.getElementById("title");
        var pwd = document.getElementById("pw");
        var themad = document.getElementById("themas");
        
        if(titled.value == "")
        {
            alert("제목을 입력해주세요!");
            titled.focus();
            return false;
        }
        else if(named.value == "")
        {
            alert("이름을 입력해주세요!");
            named.focus();
            return false;
        }
        else if(pwd.value == "")
        {
            alert("비밀번호를 입력해주세요!");
            pwd.focus();
            return false;
        }
        else if(themad.value == "0")
        {
            alert("테마를 선택해주세요!");
            themad.focus();
            return false;
        }
    }
}

function backpage(){
    var result = confirm("작성했던 글은 저장되지 않습니다. 목록으로 돌아가시겠습니까?");

    if(result){
        location.href = "q&a.php";
    }
}


function updatesql(){
    var result = confirm("수정하시겠습니까?");
    var n = "<?=$bn?>";
    var tidata = document.getElementById("title").value;
    var nadata = document.getElementById("name").value;
    var pwdata = document.getElementById("pw").value;
    var thdata = document.getElementById("themas").value;
    var tadata = document.getElementById("areatype").value;
    
    if(result){
        $.post("update.php", {num : n, titled : tidata, named : nadata, pwd : pwdata, themad : thdata, textad : tadata}, function(result1){
            alert(result1);
            location.href = "q&a.php";
        });
    }
}