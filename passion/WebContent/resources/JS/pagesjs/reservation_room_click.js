$(".room_section").css("display", "none");
$(".room_section1").css("display", "block");

$(".container_room .room_1").click(function (event) {
  $(".room_section").css("display", "none");
  $(".container_room .room_1").addClass("on");
  $(".container_room .room_2").attr("class", "room_2");
  $(".container_room .room_3").attr("class", "room_3");
  $(".container_room .room_4").attr("class", "room_4");
  $(".room_section1").css("display", "block");
});
$(".container_room .room_2").click(function (event) {
  $(".room_section").css("display", "none");
  $(".container_room .room_2").addClass("on");
  $(".container_room .room_1").attr("class", "room_1");
  $(".container_room .room_3").attr("class", "room_3");
  $(".container_room .room_4").attr("class", "room_4");
  $(".room_section2").css("display", "block");
});
$(".container_room .room_3").click(function (event) {
  $(".room_section").css("display", "none");
  $(".container_room .room_3").addClass("on");
  $(".container_room .room_2").attr("class", "room_2");
  $(".container_room .room_1").attr("class", "room_1");
  $(".container_room .room_4").attr("class", "room_4");
  $(".room_section3").css("display", "block");
});
$(".container_room .room_4").click(function (event) {
  $(".room_section").css("display", "none");
  $(".container_room .room_4").addClass("on");
  $(".container_room .room_2").attr("class", "room_2");
  $(".container_room .room_3").attr("class", "room_3");
  $(".container_room .room_1").attr("class", "room_1");
  $(".room_section4").css("display", "block");
});
