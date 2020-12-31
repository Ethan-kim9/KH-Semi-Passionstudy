/**
 * 
 */

/*약관동의 전체 선택*/
$(".reseller_join_box").on("click","#check_all", function() {
    var checked = $(this).is(":checked");

    if(checked){
      $(this).parents(".reseller_join_box").find('input').prop("checked",true);
    } else {
      $(this).parents(".reseller_join_box").find('input').prop("checked",false);
    }
});
/*이메일 select 시 자동입력*/
function selectEmail(ele){ 
  	var $ele = $(ele); 
  	var $email_dns = $('input[name=email_dns]'); 
  	// '1'인 경우 직접입력 
  	if($ele.val() == "1"){ 
  	  	$email_dns.attr('readonly', false); 
  	  	$email_dns.val(''); 
  	} else { 
  	  	$email_dns.attr('readonly', true); 
  	  	$email_dns.val($ele.val()); 
  	} 
}
/*연락처 숫자만 입력*/
$(function(){
	$(".tel_second,.tel_third").keyup(function() {
		$(this).val($(this).val().replace(/[^0-9]/g,""));
	});
});