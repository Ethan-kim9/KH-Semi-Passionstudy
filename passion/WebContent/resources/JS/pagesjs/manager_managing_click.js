$(".manager_section").css("display", "none");
$(".manager_member__section").css("display", "block");

$(".tabtype_wrapper .btn1").click(function (event) {
  $(".manager_section").css("display", "none");
  $(".tabtype_wrapper .btn1").addClass("on");
  $(".tabtype_wrapper .btn2").attr("class", "btn2");
  $(".tabtype_wrapper .btn3").attr("class", "btn3");
  $(".manager_member__section").css("display", "block");
});

$(".tabtype_wrapper .btn2").click(function (event) {
  $(".manager_section").css("display", "none");
  $(".tabtype_wrapper .btn2").addClass("on");
  $(".tabtype_wrapper .btn1").attr("class", "btn1");
  $(".tabtype_wrapper .btn3").attr("class", "btn3");
  $(".manager_sales__section").css("display", "block");
});
$(".tabtype_wrapper .btn3").click(function (event) {
  $(".manager_section").css("display", "none");
  $(".tabtype_wrapper .btn3").addClass("on");
  $(".tabtype_wrapper .btn1").attr("class", "btn1");
  $(".tabtype_wrapper .btn2").attr("class", "btn2");
  $(".manager_product__section").css("display", "block");
});
