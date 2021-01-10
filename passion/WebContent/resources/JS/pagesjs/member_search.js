/**
 * 
 */

 function searchId() {
     var username = document.getElementsById("username").value;
     var userphnumber = document.getElementsById("userphnumber").value;
     if(username == "" && userphnumber == "") {
         alert("모든 정보를 입력해 주세요.");
         return;
     }

     /*
     var url = "/findId";
     var title = "find_id_complete";
     var status = "left = 500px, top=100px, width=300px, height=200px, menubar=no, status=no, scrollbar=yes";

     var popup = window.open("", title, status);    // 빈창 오픈

     searchFrm.username.value = username;
     searchFrm.userphnumber.value = userphnumber;

     searchFrm.target = title; //popup - form 태그 연결
     // action, method 설정 후 form 태그 submit
     searchFrm.action = url;
     searchFrm.method = "POST";

     searchFrm.submit();
     */

 }