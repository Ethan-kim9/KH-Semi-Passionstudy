
// 체크박스 전체 선택, 해제
$(".checkbox_group").on("click", "#allckbox", function () {
    var checked = $(this).is(":checked");
  
    if(checked){
        $(this).parents(".checkbox_group").find('input').prop("checked", true);
    } else {
        $(this).parents(".checkbox_group").find('input').prop("checked", false);
    }
  });

// 전체선택 후 하나만 해제했을 때, 전체선택도 해제해주기
// 체크박스 개별 선택
$(".checkbox_group").on("click", ".checkbox_msg", function() {
    var checked = $(this).is(":checked");

    if (!checked) {
        $("#allckbox").prop("checked", false);
    }
});
