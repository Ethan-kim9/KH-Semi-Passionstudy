/****헤더 마우스따라 움직이는 바****/
function headerBar() {
  var onMenu = $(
    ".PassionStudy_header #PassionStudy_header_menu li.on"
  ).offset().left;

  $(".floting_bar").offset({ left: onMenu });

  $(".PassionStudy_header #PassionStudy_header_menu li").on(
    "mouseenter",
    function () {
      var a = $(this).offset().left;
      $(".floting_bar").offset({ left: a });
    }
  );
  $(".PassionStudy_header #PassionStudy_header_menu li").on(
    "mouseleave",
    function () {
      $(".floting_bar").offset({ left: onMenu });
    }
  );
}

function checkWindowWidth() {
  var windowWidth = $(window).width();
  if (windowWidth < 1000) {
    //창 가로 크기가 1000 미만일 경우
    $(".PassionStudy_header #PassionStudy_header_menu li.pc").removeClass("on");
    if ($("header #menu li.job.mo").length == 0) {
      $("#menu-main .job.mo").addClass("on");
    }
  } else {
    //창 가로 크기가 1000보다 클 경우
    $(".PassionStudy_header #PassionStudy_header_menu li.mo").removeClass("on");
    if ($(".PassionStudy_header #PassionStudy_header_menu li.pc").length == 0) {
      $(".PassionStudy_header #PassionStudy_header_menu li.pc").addClass("on");
    }
  }
}

/****웹 로드시 작동****/
$(function () {
  //checkWindowWidth();
  headerBar();

  /****헤더클릭 페이지 바로가기+중앙배치****/
  $(".PassionStudy_header #PassionStudy_header_menu li a.pagemove").click(
    function () {
      var makeCenter = ($(window).height() - $(this.hash).outerHeight()) / 2;
      $("html,body").animate(
        {
          scrollTop: $(this.hash).offset().top - makeCenter,
        },
        400
      );
    }
  );
});

/****창크기 변화 감지 후 작동****/
$(window).resize(function () {
  //checkWindowWidth();
  headerBar();
});
