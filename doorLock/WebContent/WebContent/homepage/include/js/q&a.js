function checkpw(){
    var checkingpw = prompt("비밀번호를 입력해주세요.", "");

    if(checkingpw != PW)
    {
        alert("비밀번호가 틀렸습니다.");
        return false;
    }
}