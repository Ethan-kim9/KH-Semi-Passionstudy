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
