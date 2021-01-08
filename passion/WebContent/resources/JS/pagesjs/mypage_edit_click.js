/*
$(".member-edit-section").css("display", "none");
$(".member-edit-section1").css("display", "block");

$(".edit-button1").click(function (event) {
  $(".edit-button2").attr("class", "edit-button2");
  $(".edit-button1").addClass("on");
  $(".member-edit-section").css("display", "none");
  $(".member-edit-section1").css("display", "block");
});

$(".edit-button2").click(function (event) {
  $(".edit-button1").attr("class", "edit-button1");
  $(".edit-button2").addClass("on");
  $(".member-edit-section").css("display", "none");
  $(".member-edit-section2").css("display", "block");
});
*/

// 비밀번호 변경 효과
$('.mypage_pwd').focusout(function(){
	var pwd1 = $('#new_pwd1').val();
	var pwd2 = $('#new_pwd2').val();
	    	
	if(pwd1 !='' && pwd2 ==''){
	    null;
	} else if(pwd1 !="" || pwd2 !=""){
	    if(pwd1 == pwd2) {
	    	$('#pwd-success').css('display', 'inline-block');
	    	$('#pwd-fail').css('display', 'none');
	    }else{
	    	$('#pwd-success').css('display', 'none');
	    	$('#pwd-fail').css('display', 'inline-block');
	    }
	 }
});