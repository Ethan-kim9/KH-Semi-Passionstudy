$(".mypage_reservation").css("display", "none");
$(".mypage_reservation1").css("display", "block");

$(".reservation_btn1").click(function (event) {
  $(".reservation_btn2").attr("class", "reservation_btn2");
  $(".reservation_btn1").addClass("on");
  $(".mypage_reservation").css("display", "none");
  $(".mypage_reservation1").css("display", "block");
});

$(".reservation_btn2").click(function (event) {
  $(".reservation_btn1").attr("class", "reservation_btn1");
  $(".reservation_btn2").addClass("on");
  $(".mypage_reservation").css("display", "none");
  $(".mypage_reservation2").css("display", "block");
});
