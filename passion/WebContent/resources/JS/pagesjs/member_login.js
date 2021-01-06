/**
 * 
 */

function login(){ 

	var getIdCheck= /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}/i;

	//아이디 공백 확인 
	if($("#userid").val() == ""){ 
		alert("아이디를 입력해 주세요"); $("#userid").focus(); 
		return false; 
	}

	//아이디 유효성 검사 
	else if(!getIdCheck.test( $("#userid").val() ) ){ 
		alert("아이디를 형식에 맞게 입력해주세요"); 
		$("#userid").val(""); $("#userid").focus(); 
		return false; 
	}
	
	//비밀번호 공백 확인 
	else if($("#userpassword").val() == ""){ 
		alert("비밀번호를 입력해 주세요"); 
		$("#userpassword").focus(); 
		return false; 
	}

	else {	
	return true;
	}
}