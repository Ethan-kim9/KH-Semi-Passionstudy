$(".passion_notice_2").css("display", "none");

$(".tabtype_wrapper .btn1").click(function (event) {
  $(".tabtype_wrapper .btn2").attr("class", "btn2");
  $(".tabtype_wrapper .btn1").addClass("on");
  $(".passion_notice_1").css("display", "block");
  $(".passion_notice_2").css("display", "none");
});

$(".tabtype_wrapper .btn2").click(function (event) {
  $(".tabtype_wrapper .btn1").attr("class", "btn1");
  $(".tabtype_wrapper .btn2").addClass("on");
  $(".passion_notice_1").css("display", "none");
  $(".passion_notice_2").css("display", "block");
});


