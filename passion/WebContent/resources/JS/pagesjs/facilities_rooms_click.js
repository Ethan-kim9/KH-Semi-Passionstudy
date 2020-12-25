$(".passion_facility").css("display", "none");
$(".passion_facility_1").css("display", "block");
$(".tabtype_wrapper .btn1").attr("class", "btn1 on");

$(".tabtype_wrapper .btn1").click(function (event) {
  for (let i = 1; i <= 5; i++) {
    $(`.tabtype_wrapper .btn${i}`).attr("class", `btn${i}`);
  }
  $(".passion_facility").css("display", "none");
  $(".passion_facility_1").css("display", "block");
  $(".tabtype_wrapper .btn1").addClass("on");
});

$(".tabtype_wrapper .btn2").click(function (event) {
  for (let i = 1; i <= 5; i++) {
    $(`.tabtype_wrapper .btn${i}`).attr("class", `btn${i}`);
  }
  $(".passion_facility").css("display", "none");
  $(".passion_facility_2").css("display", "block");
  $(".tabtype_wrapper .btn2").addClass("on");
});

$(".tabtype_wrapper .btn3").click(function (event) {
  for (let i = 1; i <= 5; i++) {
    $(`.tabtype_wrapper .btn${i}`).attr("class", `btn${i}`);
  }
  $(".passion_facility").css("display", "none");
  $(".passion_facility_3").css("display", "block");
  $(".tabtype_wrapper .btn3").addClass("on");
});

$(".tabtype_wrapper .btn4").click(function (event) {
  for (let i = 1; i <= 5; i++) {
    $(`.tabtype_wrapper .btn${i}`).attr("class", `btn${i}`);
  }
  $(".passion_facility").css("display", "none");
  $(".passion_facility_4").css("display", "block");
  $(".tabtype_wrapper .btn4").addClass("on");
});

$(".tabtype_wrapper .btn5").click(function (event) {
  for (let i = 1; i <= 5; i++) {
    $(`.tabtype_wrapper .btn${i}`).attr("class", `btn${i}`);
  }
  $(".passion_facility").css("display", "none");
  $(".passion_facility_5").css("display", "block");
  $(".tabtype_wrapper .btn5").addClass("on");
});
