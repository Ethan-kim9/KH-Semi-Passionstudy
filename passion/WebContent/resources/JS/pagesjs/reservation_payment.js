// 약관동의 전체 선택
$(".join_box").on("click","#check_all", function() {
    var checked = $(this).is(":checked");

    if(checked){
      $(this).parents(".join_box").find('input').prop("checked",true);
    } else {
      $(this).parents(".join_box").find('input').prop("checked",false);
    }
});
// 카드결제 선택 시
function div_onoff(v,id){
	if(v == "card"){
	    document.getElementById(id).style.display="";
	} else{
	    document.getElementById(id).style.display="none";
	}
}
// 카드번호 길이 제한
function maxLengthCheck(object){
    if (object.value.length > object.maxLength){
      object.value = object.value.slice(0, object.maxLength);
    }    
}
// 무통장 입금 선택 시
$(document).ready(function() {
	$('.mobile_payment_method').click(function(){
	    if(!$('#mobile_payment').is(':checked')){
	    alert(" 대표자명 : *** \n" + 
	            " 은행 : **은행 \n" + 
	            " 계좌번호 : 110-111-111111 \n" + 
	            " \n" +
	            " 위 계좌로 2시간내로 입금부탁드립니다. \n" + 
	            " 2시간내로 미결제시 자동 예약취소! ")
	    } 
	});
	return false;
});
// 현장결제 선택 시
$(document).ready(function() {
	$('.scene_payment_method').click(function(){
	    if(!$('#scene_payment').is(':checked')){
	    alert("메일로 보내주기 준비 중...")
	    } 
	});
	return false;
});
// 현금결제 선택 시
$(document).ready(function() {
	$('.money_payment_method').click(function(){
	    if(!$('#money_payment').is(':checked')){
	    alert("메일로 보내주기 준비 중...")
	    } 
	});
	return false;
});

// 결제하기 클릭 시
$(document).ready(function() {
    $('.payment').click(function(){
        alert("결제가 완료되었습니다.")
    });
});