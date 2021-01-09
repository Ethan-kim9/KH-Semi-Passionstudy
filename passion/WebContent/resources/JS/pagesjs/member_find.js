//아이디찾기
function id_search() { 
    var frm = document.idfindscreen;

    if (frm.memName.value.length < 1) {
     alert("이름을 입력해주세요");
     return;
    }

    if (frm.memPhone.value.length != 13) {
         alert("번호를 정확하게 입력해주세요");
         return;
    }

frm.method = "post";
frm.action = "findIdResult.jsp"; //넘어간화면
frm.submit();  
}


//비밀번호찾기
function pw_search(){

var frm=document.pwfindscreen;

if(frm.member_mid.value.length<3){
alert("아이디를 올바르게 입력해주세요");
return;
}

if (frm.member_phone.value.length != 13) {
         alert("핸드폰번호를 정확하게 입력해주세요");
         return;
    }

frm.method="post";
frm.action="findPwResult.jsp"; //넘어간화면
frm.submit(); //등록이 될수 있는 조건이면, 정보를 보내겠다.
}