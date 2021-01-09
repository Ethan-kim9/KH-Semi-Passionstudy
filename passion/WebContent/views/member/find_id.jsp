<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8" />
    <title>Welcome Passion StudyCafe~!</title>
    <style>
	    html {
			overflow-y: scroll; 
		}
		
		body {
		  	background: #c1bdba;
		  	font-family: 'Titillium Web', sans-serif;
		}
    </style>
  </head>
  <body>
	<div class="form_tab">
      <ul class="tab-group">
        <li class="tab active"><a class="tab active" href="#findId">아이디 찾기</a></li>
        <li class="tab"><a class="tab active" href="#findPwd">비밀번호 찾기</a></li>
      </ul>
      
      <div class="tab-content">
        <div id="findId">   
          	<p>
           		본인인증을 통해 아이디(이메일) 확인 및
             	<br />
             	비밀번호를 변경하실 수 있습니다.
           	</p>
          
          <form action="/" method="post">
          <div class="top-row">
          <div class="field-wrap">
            <input
              type="text"
              id="username"
              name="username"
              placeholder="이름"
              autocorrect="off"
              autocapitalize="none"
              required
              autofocus
            />
          </div>
          
          <div class="field-wrap">
            <input
               type="text"
               id="userphnumber"
               name="userphnumber"
               placeholder="전화번호(-없이)"
               autocorrect="off"
               autocapitalize="none"
               required
             />
          </div>
          </div>
          <button type="submit" class="button button-block">본인인증 하기</button>
        </form>
        </div>
        
        
        
        <div id="login">   
          	<p>
           		본인인증을 통해 아이디(이메일) 확인 및
             	<br />
             	비밀번호를 변경하실 수 있습니다.
           	</p>
          
          <form action="/" method="post">
          
           <div class="field-wrap">

                <input
                 type="text"
                 id="userid"
                 name="userid"
                 placeholder="아이디"
                 autocorrect="off"
                 autocapitalize="none"
                 required
               />
          </div>
          <div class="field-wrap">

            	<input
                    type="text"
                    id="username"
                    name="username"
                    placeholder="이름"
                    autocorrect="off"
                    autocapitalize="none"
                    required
                    autofocus
                  />
          </div>
          <div class="field-wrap">
                <input
                 type="text"
                 id="userphnumber"
                 name="userphnumber"
                 placeholder="전화번호(-없이)"
                 autocorrect="off"
                 autocapitalize="none"
                 required
               />
          </div>          
          
          <button class="button button-block">본인인증 하기</button>
         </form>
        </div>
        
        
      </div><!-- tab-content -->
	</div> <!-- /form -->
  </body>
  <script>
  $('.form').find('input, textarea').on('keyup blur focus', function (e) {
	  
	  var $this = $(this),
	      label = $this.prev('label');

		  if (e.type === 'keyup') {
				if ($this.val() === '') {
	          label.removeClass('active highlight');
	        } else {
	          label.addClass('active highlight');
	        }
	    } else if (e.type === 'blur') {
	    	if( $this.val() === '' ) {
	    		label.removeClass('active highlight'); 
				} else {
			    label.removeClass('highlight');   
				}   
	    } else if (e.type === 'focus') {
	      
	      if( $this.val() === '' ) {
	    		label.removeClass('highlight'); 
				} 
	      else if( $this.val() !== '' ) {
			    label.addClass('highlight');
				}
	    }

	});

	$('.tab a').on('click', function (e) {
	  
	  e.preventDefault();
	  
	  $(this).parent().addClass('active');
	  $(this).parent().siblings().removeClass('active');
	  
	  target = $(this).attr('href');

	  $('.tab-content > div').not(target).hide();
	  
	  $(target).fadeIn(600);
	  
	});
  </script>
</html>