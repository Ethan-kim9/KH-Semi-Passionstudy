 function InputCheckReq() {
  var doc = document; 
  var signincheckform = doc.getElementById('signincheckform'); 
  var admits = signincheckform.getElementsByName('admit'); 
  var signincheckform_data = {
   "upto_14_admit": false, 
   "study_admit": false,  
   "user_info_admit": false   
  }; 
 
  var upto_14_admit = doc.getElementById('upto_14_admit'); 
  var study_admit = doc.getElementById('study_admit'); 
  var user_info_admit = doc.getElementById('user_info_admit'); 
 
  function checkboxListener() {
   signincheckform_data[this.name] = this.checked; //각각 자신의 checkBox를 Checked 상태로 바꿈 
  }
 
   upto_14_admit.onclick = study_admit.onclick = user_info_admit.onclick = checkboxListener;   //upto_14_admit, study_admit, user_info_admit를 checkBoxListenner를 호출하여
                                                                   //Checked로 바꿈
   var all_admit = doc.getElementById('all_admit');  //전체 체크를 위한 체크박스 선언
 
   all_admit.onclick = function() {  //전체 체크를 누를 시
    if (this.checked) {
     setCheckbox(signincheckform_data, true);   //signincheckform_data(upto_14_admit,study_admit,user_info_admit)의 값을 모두 Checked로 바꿈
    } else {
     setCheckbox(signincheckform_data, false);  ////signincheckform_data(upto_14_admit,study_admit,user_info_admit)의 값을 모두 no checked로 바꿈
    }
   }; 
 
   function setCheckbox(obj, state) { //checkbox상태 변경하는 함수
    for (var x in obj) {
     obj[x] = state; 
 
     for(var i = 0; i < admits.length; i++) {
      if(admits[i].type == "checkbox") {
       admits[i].checked = state; 
      }
     }
 
    }
   }
 
   signincheckform.onsubmit = function(e) {
      e.preventDefault();
    
      if ( !signincheckform_data['upto_14_admit'] ) {
       alert('필수 약관에 대한 동의를 하지 않았습니다.');  
       return false; 
      }
    
      if ( !signincheckform_data['study_admit'] ) {
       alert('필수 이용약관에 대한 동의를 하지 않았습니다.'); 
       return false; 
      }
      if(!signincheckform_data['user_info_admit']){
          alert('필수 개인 정보 동의에 대한 동의를 하지 않았습니다.');
          return false;
      }
 
   this.submit(); 
  }; 
 }