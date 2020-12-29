$(".btn_password_push").css("display", "none");
$(".tabtype_wrapper .btn1").click(function (event) {
  $(".tabtype_wrapper .btn2").attr("class", "btn2");
  $(".tabtype_wrapper .btn1").addClass("on");
  $(".btn_id_push").css("display", "block");
  $(".btn_password_push").css("display", "none");

});

$(".tabtype_wrapper .btn2").click(function (event) {
  $(".tabtype_wrapper .btn1").attr("class", "btn1");
  $(".tabtype_wrapper .btn2").addClass("on");
  $(".btn_password_push").css("display", "block");
});