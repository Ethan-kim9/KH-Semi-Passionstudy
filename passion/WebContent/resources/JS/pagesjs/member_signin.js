/*
 *
 */	 
	var requiredCheck = false;
	 
	 // 아이디(이메일) 유효성 검사
	 $('#userid').focusout(function () {
	        var id = $('#userid').val();
	        var idCheckRefExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}/i;
	        var idExists = 0;
	
	        var idCheck = function() {
	            if (id == "") {
	                $("#email_check").html("아이디는 필수 정보입니다.");
					$("#email_check").css('color', 'red');
					requiredCheck = false;
	            } else if (!idCheckRefExp.test(id)) {
	                $("#email_check").html("아이디가 형식에 맞지 않습니다.");
					$("#email_check").css('color', 'red');
					requiredCheck = false;
	            } else if (idCheckRefExp.text(id)) {
	                $("#email_check").html("사용 가능한 아이디입니다.");
					$("#email_check").css('color', 'blue');
					requiredCheck = true;
	            }
	        }
			console.log(id);
			
			$.ajax ({
				url : './IdDuplicateCheckController',
				type: 'GET',
				data: {memId:userid},
				success : function(result) {
					console.log("1=중복 0=사용가능");

					if (result == false) {
						$("#email_check").html("사용 중인 아이디입니다.");
						$("#email_check").css('color', 'red');
						$('#userid').focus();
					
						requiredCheck = false;
					}else if(result == true) {
						$("#email_check").html("사용 가능한 아이디입니다.");
						$('email_check').css("color", "blue");
						$('#userid').focus();
						requiredCheck = true;
					}
					idExists = result;
				}
			})
			console.log(idExcists);
			if(idExcists == 0) {
				idCheck();
			}
	})

	
	// 전화번호
	$('#userphnumber').focusout(function () {
	    var phonenumber = $('#userphnumber').val();
	    var phonenumberCheckRegExp = /^\d{3}\d{3,4}\d{4}$/;
	    var phonenumberExists;
	
	    var phonenumberCheck = function() {
	        if (phonenumber == "") {
	            $("#phone_check").html("전화번호는 필수 정보입니다.");
				$("#phone_check").css('color', 'red');
				requiredCheck = false;
	        } else if (phonenumberCheckRegExp.test(phonenumber) == true ){
	            $("#phone_check").html("올바르지 않은 입력입니다.");
				$("#phone_check").css('color', 'red');
				requiredCheck = false;
	        } else  {
	            $("#phone_check").html("사용 가능한 전화번호입니다.");
				$("#phone_check").css('color', 'blue');
				requiredCheck = true;
	        }
	        
	    }
	
	    $.ajax ({
	            type : 'POST',
	            url : './PhoneDuplicatedCheckController',
	            async : true,
	            data : { memPhone : userphnumber},
	            success : function(result) {
	                if(result == 1) {
	                    $("#phone_check").html("이미 등록된 전화번호입니다.");
						$("#phone_check").css('color', 'red');
						requiredCheck = false;
	                    phonenumberExists = result;
	                } else if (result == 0) {
						$("#phone_check").css("display", "none");
						requiredCheck = true;
	                    phonenumberExists = result;
	                }
	            }
	
	    })
	    console.log(phonenumberExists);
	
	    if (phonenumberExists == 0) {
	        phonenumberCheck();
	    }
	})
	
	// 비밀번호
	$("#userpwd").focusout(function () {
	    var password = $("#userpwd").val();
	    var numRegExp = password.search(/[0-9]/g);
	    var engRegExp = password.search(/[a-z]/ig);
	    var specialRegExp = password.search(/[~!?@#$%^&*();:_+=/-]/gi);
	
	    if (password == "") {
	        // 입력 여부 검사
	        $("#pw_check").html("비밀번호는 필수 정보입니다.");
	        $("#pw_check").css('color', 'blue');
			requiredCheck = false;
	    } else if (password.length < 8) {
	        // 길이 검사
	        $("#pw_check").html("8자리 이상 입력해주세요.");
			$("#pw_check").css("color", "red");
			requiredCheck = false;
	        return true;
	
	    } else if (password.search(/\s/) != -1) {
	        // 비밀번호 공백 검사
	        $("#pw_check").html("비밀번호에 공백을 포함할 수 없습니다.");
			$("#pw_check").css("color", "red");
			requiredCheck = false;
	        return true;
	
	    } else if (numRegExp < 0 || engRegExp < 0 || specialRegExp < 0) {
	        // 형식 유효성 검사
	        $("#pw_check").html("영문, 숫자, 특수문자를 혼합해 입력해주세요.");
			$("#pw_check").css("color", "red");
			requiredCheck = false;
	        return true;
	    } else {
	        console.log("true");
			$("#pw_check").css("display", "none");
			requiredCheck = true;
	        return true;
	    }
	})
	
	$("#confirm_password").focusout(function () {
	    var password = $("#userpwd").val();
	    var checkPassword = $("#confirm_password").val();
	
	    if (checkPassword == "") {
	        // 입력 여부 검사
	        $("#pw_confirm_check").html("비밀번호 확인은 필수입니다.");
			$("#pw_confirm_check").css("color", "red");
			requiredCheck = false;
	        return false;
	
    	} else if (checkPassword != password) {
	        // 비밀번호 일치 검사
	        $("#pw_confirm_check").html("비밀번호가 일치하지 않습니다.");
			$("#pw_confirm_check").css("color", "red");
			requiredCheck = false;
	        return false;
	
	    } else {
	        console.log("true");
			$("#pw_confirm_check").css("display", "none");
			requiredCheck = true;
	        return true;
	    }
	})

	// 이름
	$("#username").focusout(function() {
	    var name = $("#username").val();
	    var nameRegExp = /^[가-힣]{2,5}$/;
	
	    if(name == "") {
	        $("#name_check").html("이름을 입력해 주세요.");
			$("#name_check").css("color", "blue");
			requiredCheck = false;
	    } 
	
	    else if(!nameRegExp.test(name)) {
	        $("#name_check").html("이름을 확인해 주세요.");
			$("#name_check").css("color", "red"); 
			requiredCheck = false;   
	    }
	
	    else {
			$("#name_check").html("");
			requiredCheck = true;
	    }
	
	})
	


// 약관동의 체크
	function isAllChecked() {
	    const checkList = document.getElementsByName("admit");
	    const len = checkList.length;
	    for (var i = 0; i < len; i++) {
	        if(!checkList[i].checked) {
	            return false;
	        }
	    }
	    return true;
	}

	var allAdmit = document.getElementById("all_admit");
	allAdmit.addEventListener("click", function() {
    var chks = document.getElementsByName("admit");
    for (var i= 0; i < chks.length; i++) {
        // true 일때 모두 해제
        chks[i].checked = allAdmit.checked;
	    }
	});

	const checkList = document.getElementsByName("admit");
	const len = checkList.length;
    for (var i = 0; i < len; i++) {
        checkList[i].addEventListener('click', () => {
            // 개별체크 해제했을 때 전체동의 체크해제
            if (!isAllChecked()) {
                allAdmit.checked = false;
            }
            // 전체체크됐을 때 전체동의도 체크
            if (isAllChecked()) {
                allAdmit.checked = true;
            }
        })
	}
	
	function checkForm() {
		var form = document.getElementsByName("MemberSignin");
		if(requiredCheck == false) {
			alert("필수 항목을 입력해 주세요.");
			return false;
		}else if(!isAllChecked()){
			alert("필수 동의 약관에 동의해 주세요.");
		}else {
			form.submit();
		}
	}
