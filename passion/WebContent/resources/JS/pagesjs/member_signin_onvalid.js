/**
 * 
 * 
 */

//비밀번호 정규식
var pwJ = /^[a-z0-9]{6,16}$/;

//이름 정규식
var nameJ = /^[가-힣]{2,6}$/;

//이메일(아이디) 정규식
var idJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}/i;

//전화번호 정규식
var phoneJ = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;


//1.비밀번호 유효성 검사
//1-1.정규식 체크
$("#userpassword").blur(function() {
    if(pwJ.test($("#userpassword"))) {
        console.log('true');
        $("#pw_check").text('');
    }else {
        console.log('false');
        $("#pw_check").text('영문포함 숫자포함 8~20자 이내');
        $("#pw_check").css('color','red');
    }
});

//1-2.password 일치 확인
$("#confirm_password").blur(function() {
    if($("#userpassword").val() != $(this).val()) {
        $("#pw2_check").text('비밀번호가 일치하지 않아요 :(');
        $("#pw2_check").css('color', 'red');
    }else {
        $("#pw2_check").text('');
    }
});

//아이디 유효성 검사
$("#userid").blur(function() {
    if(idJ.test($("#userid"))) {
        console.log('true');
        $("#email_check").text('');
    }else {
        console.log('false');
        $("#email_check").text('이메일 형식을 확인해 주세요 :)');
        $("#email_check").css('color', 'red');
    }

});


//이름 정규식 체크
$("#username").blur(function() {
    if(nameJ.test($("#username"))) {
        console.log('true');
        $("#name_check").text('');
    }else {
        console.log('false');
        $("#name_check").text('이름을 확인해 주세요 :)');
        $("#name_check").css('color','red');
    }
});

//전화번호 정규식 체크
$("#userphnumber").blur(function() {
    if(phoneJ.test($("#userphnumber"))) {
        console.log('true');
        $("#phone_check").text('');
    }else {
        console.log('false');
        $("#phone_check").text('전화번호를 확인해 주세요 :)');
        $("#phone_check").css('color','red');
    }
});
