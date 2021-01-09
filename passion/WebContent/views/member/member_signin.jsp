<%@ page language="java" contentType="text/html; charset=UTF-8" 
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8" />
    <title>Welcome Passion StudyCafe~!</title>
  </head>
  <body>
    

	<!-- 이용약관 동의 체크 부분 -->
	<form class="form_wrap_signup" id="signincheckform" name="MemberSignin" method="post" action="signin.do">
		<section class="signin_sction signin_sction1">
			<div class="signup_wrap">
						<h2 class="title_signup">간편가입</h2>
						<div class="step_wrap">
							<i class="step0_terms"></i>
							<ul class="signup_step">
								<!-- 체크박스 부분 -->
								<li class="signup_step0">
									<h3>
										열정스터디 카페 서비스 <br /> 이용약관에 동의해주세요.
									</h3>
										<div class="checkbox_group">
											<div class="ckjoinbox">
												<input type="checkbox" id="all_admit" value="Y"/>
												<label for="all_admit" title="모두 동의 (선택 정보 포함)"> 
													모두 동의 (선택 정보 포함) </label>
											</div>

											<div class="cklist">
												<span class="ckbox1"> 
													<input type="checkbox"
														   name="admit" 
														   id="upto_14_admit" 
														   value="Y"
														   class="checkbox_msg" />
													<label for="upto_14_admit" 
													 	   title="[필수] 만 14세 이상"> 
													 	   [필수] 만 14세 이상
													</label>
												</span> 
												
												<span class="ckbox1"> 
													<input type="checkbox" 
														   name="admit" 
														   id="study_admit" 
														   value="Y"
														   class="checkbox_msg" />
													<label for="study_admit" 
														   title="[필수] 이용약관 동의"> 
														   [필수] 이용약관 동의
														
														<button type="button" 
																class="btn_check"
																data-toggle="modal"
																data-target="#exampleModalScrollable">보기</button> 
													
													</label> 
												</span>
												
												 <span class="ckbox1"> 
												 	<input type="checkbox" 
												 		   name="admit" 
												 		   id="user_info_admit" 
												 		   value="Y"
														   class="checkbox_msg"  />
													<label for="user_info_admit" 
														   title="[필수] 개인정보 처리방침 동의">
															[필수] 개인정보 처리방침 동의
														<button type="button" class="btn_check2"
																data-toggle="modal"
																data-target="#exampleModalScrollable1">보기</button>
													</label>
												</span>
												
												
												<span class="ckbox1"> 
													<input type="checkbox" 
														   name="admit" 
														   id="ad_admit" 
														   value="Y"
														   class="checkbox_msg" />
													<label for="ad_admit" 
														   title="[선택] 광고성 정보 수신 및 마케팅 활용 동의">
															[선택] 광고성 정보 수신 및 마케팅 활용 동의
														<button type="button" class="btn_check3"
																data-toggle="modal"
																data-target="#exampleModalScrollable2">보기</button>
													</label>
												</span>
											</div>
										</div>
										
									<!-- 1번 약관 -->
									<div class="modal fade" id="exampleModalScrollable"
										tabindex="-1" role="dialog"
										aria-labelledby="exampleModalScrollableTitle"
										aria-hidden="true">
										<div class="modal-dialog modal-dialog-scrollable"
											role="document">
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title" id="exampleModalScrollableTitle">이용약관</h5>
													<button type="button" class="close" data-dismiss="modal"
														aria-label="Close">
														<span aria-hidden="true">&times;</span>
													</button>
												</div>
												<div class="modal-body">
													<p class="ls2 lh6 bs5 ts4">
														<em class="emphasis"><(주)열정스터디>('www.열정스터디.net'이하
															'열정스터디')</em>은(는) 개인정보보호법에 따라 이용자의 개인정보 보호 및 권익을 보호하고 개인정보와
														관련한 이용자의 고충을 원활하게 처리할 수 있도록 다음과 같은 처리방침을 두고 있습니다.
													</p>
													<p class="ls2 lh6 bs5 ts4">
														<em class="emphasis"><(주)열정스터디>('열정스터디')</em> 은(는) 회사는
														개인정보처리방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다.
													</p>
													<p class="ls2">
														○ 본 방침은부터 <em class="emphasis">2020</em>년 <em
															class="emphasis">1</em>월 <em class="emphasis">3</em>일부터
														시행됩니다.
													</p>
													</br>
													<p class='lh6 bs4'>
														<strong>1. 개인정보의 처리 목적 <em class="emphasis"><(주)열정스터디>('www.열정스터디.net'이하
																'열정스터디')</em>은(는) 개인정보를 다음의 목적을 위해 처리합니다. 처리한 개인정보는 다음의 목적이외의
															용도로는 사용되지 않으며 이용 목적이 변경될 시에는 사전동의를 구할 예정입니다.
														</strong>
													</p>
													<ul class="list_indent2 mgt10">
														<p class="ls2">가. 홈페이지 회원가입 및 관리</p>
														<p class="ls2">회원 가입의사 확인, 서비스 부정이용 방지, 각종 고지·통지 등을
															목적으로 개인정보를 처리합니다.</p>
														</br>
													</ul>


												</div>
											</div>
										</div>
									</div> 
									
									<!-- 2번약관 -->
									<div class="modal fade" id="exampleModalScrollable1"
										tabindex="-1" role="dialog"
										aria-labelledby="exampleModalScrollableTitle1"
										aria-hidden="true">
										<div class="modal-dialog modal-dialog-scrollable1"
											role="document">
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title" id="exampleModalScrollableTitle1">이용약관</h5>
													<button type="button" class="close" data-dismiss="modal"
														aria-label="Close">
														<span aria-hidden="true">&times;</span>
													</button>
												</div>
												<div class="modal-body">
													<p class="ls2 lh6 bs5 ts4">
														<em class="emphasis"><(주)열정스터디>('www.열정스터디.net'이하
															'열정스터디')</em>은(는) 개인정보보호법에 따라 이용자의 개인정보 보호 및 권익을 보호하고 개인정보와
														관련한 이용자의 고충을 원활하게 처리할 수 있도록 다음과 같은 처리방침을 두고 있습니다.
													</p>
													<p class="ls2 lh6 bs5 ts4">
														<em class="emphasis"><(주)열정스터디>('열정스터디')</em> 은(는) 회사는
														개인정보처리방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다.
													</p>
													<p class="ls2">
														○ 본 방침은부터 <em class="emphasis">2020</em>년 <em
															class="emphasis">1</em>월 <em class="emphasis">3</em>일부터
														시행됩니다.
													</p>
													</br>
													<p class='lh6 bs4'>
														<strong>1. 개인정보의 처리 목적 <em class="emphasis"><(주)열정스터디>('www.열정스터디.net'이하
																'열정스터디')</em>은(는) 개인정보를 다음의 목적을 위해 처리합니다. 처리한 개인정보는 다음의 목적이외의
															용도로는 사용되지 않으며 이용 목적이 변경될 시에는 사전동의를 구할 예정입니다.
														</strong>
													</p>
													<ul class="list_indent2 mgt10">
														<p class="ls2">가. 홈페이지 회원가입 및 관리</p>
														<p class="ls2">회원자격 유지·관리, 제한적 본인확인제 시행에 따른 본인확인, 서비스
															부정이용 방지, 각종 고지·통지 등을 목적으로 개인정보를 처리합니다.</p>
														</br>
													</ul>
												</div>
											</div>
										</div>
									</div> 
									
									<!-- 3번약관 -->
									<div class="modal fade" id="exampleModalScrollable2"
										tabindex="-1" role="dialog"
										aria-labelledby="exampleModalScrollableTitle2"
										aria-hidden="true">
										<div class="modal-dialog modal-dialog-scrollable2"
											role="document">
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title" id="exampleModalScrollableTitle2">이용약관</h5>
													<button type="button" class="close" data-dismiss="modal"
														aria-label="Close">
														<span aria-hidden="true">&times;</span>
													</button>
												</div>
												<div class="modal-body">
													<p class="ls2 lh6 bs5 ts4">
														<em class="emphasis"><(주)열정스터디>('www.열정스터디.net'이하
															'열정스터디')</em>은(는) 개인정보보호법에 따라 이용자의 개인정보 보호 및 권익을 보호하고 개인정보와
														관련한 이용자의 고충을 원활하게 처리할 수 있도록 다음과 같은 처리방침을 두고 있습니다.
													</p>
													<p class="ls2 lh6 bs5 ts4">
														<em class="emphasis"><(주)열정스터디>('열정스터디')</em> 은(는) 회사는
														개인정보처리방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다.
													</p>
													<p class="ls2">
														○ 본 방침은부터 <em class="emphasis">2020</em>년 <em
															class="emphasis">1</em>월 <em class="emphasis">3</em>일부터
														시행됩니다.
													</p>
													</br>
													<p class='lh6 bs4'>
														<strong>1. 개인정보의 처리 목적 <em class="emphasis"><(주)열정스터디>('www.열정스터디.net'이하
																'열정스터디')</em>은(는) 개인정보를 다음의 목적을 위해 처리합니다. 처리한 개인정보는 다음의 목적이외의
															용도로는 사용되지 않으며 이용 목적이 변경될 시에는 사전동의를 구할 예정입니다.
														</strong>
													</p>
													<ul class="list_indent2 mgt10">
														<p class="ls2">가. 마케팅 및 광고에의 활용</p>
														<p class="ls2">신규 서비스(제품) 개발 및 맞춤 서비스 제공, 이벤트 및 광고성 정보
															제공 및 참여기회 제공 , 인구통계학적 특성에 따른 서비스 제공 및 광고 게재 , 서비스의 유효성 확인
															등을 목적으로 개인정보를 처리합니다.</p>
														</br>
													</ul>
												</div>
											</div>
										</div>
									</div> 
									
							</ul>
						</div>
						<button type="submit" id="agreeBtn" class="btn_next_step sign_btn_1">
							동의하고 가입하기</button>

			</div>
		</section>
	<!-- form 태그로 다 감쌀건지 말건지 확인.. -->

	<!-- 아이디 입력 부분 -->
	<section class="signin_sction signin_sction2">
  	<div class="signup_wrap">
      <div class="form_wrap_signup">
          <h2 class="title_signup">간편가입</h2>
          <div class="step_wrap">
              <i class="step1_id"></i>
              <ul class="signup_step">
                  <li>
                      <h3>
                          로그인에 사용할
                          <br/>
                          아이디를 입력해주세요.
                      </h3>
                      <div class="field_signup_wrap_pwd">
                          <label for="userid" class="blind signup_step">아이디 (이메일) 입력</label>
                              <div class="inpbx">
                                  <input type="email" 
                                         id="userid"
                                         name="userid" 
                                         placeholder="아이디 (이메일) 입력" 
                                         autocorrect="off" 
                                         class="field_signupbox_id"
                                         required/>
                              <!---->
                            </div>
                          <p class="field_vali">
                            <span class="signup_wrap" id="email_check"><!--msg--></span>
                          </p>
                      </div>

                      <button type="submit" class="btn_next_step sign_btn_2">다음</button>

                  </li>
              </ul>
          </div>
        </div>
  </div>
  </section>

	<!-- 이름과 연락처 -->
	<section class="signin_sction signin_sction3">
  <div class="signup_wrap">
      <div class="form_wrap_signup">
          <h2 class="title_signup">간편가입</h2>
          <div class="step_wrap">
              <i class="step2_name"></i>
              <ul class="signup_step">
                  <li>
                      <h3>
                          이름과 연락처를
                          <br/>
                          입력해주세요.
                      </h3>
                      <div class="field_signup_wrap_pwd">
                          <label for="username" class="blind signup_step"></label>
                          <div class="inpbx">
	                             <input type="text" 
                                        id="username"
                                        name="username" 
                                        placeholder="이름" 
                                        required/>
                              <!---->
                          </div>
                          <p class="field_vali">
                            <span class="signup_wrap" id="name_check"><!--msg--></span>
                        </p>
                      </div>
                      <div class="field_signup_wrap_pwd">
                          <label for="userphnumber" class="blind signup_step"></label>
                          <div class="inpbx">
                              <input type="text" 
                                     id="userphnumber"
                                     name="userphnumber" 
                                     placeholder="연락처 (전화번호)" 
                                     required/>
                              <!---->
                          </div>

                          <p class="field_vali">
                            <span class="signup_wrap" id="phone_check"><!--msg--></span>
                        </p>
                      </div>

                          <button type="submit" class="btn_next_step sign_btn_3">다음</button>

                  </li>
              </ul>
          </div>
        </div>
  </div>


  </section>
  
	<!--비밀번호 입력 및 확인 -->
	<section class="signin_sction signin_sction4">
	  <div class="signup_wrap">
	      <div class="form_wrap_signup">
	          <h2 class="title_signup">간편가입</h2>
	          <div class="step_wrap">
	              <i class="step3_pwd"></i>
	              <ul class="signup_step">
	                  <li>
	                      <h3>
	                          로그인에 사용할
	                          <br/>
	                          비밀번호를 입력해주세요.
	                      </h3>
	                      <div>
	                          <label for="userpassword" class="blind signup_step"></label>
	                          <div class="field_signup_wrap_pwd">
	                              <div class="inpbx">
	                                  <input type="password" 
                                             id="userpwd"
                                             name="userpwd" 
                                             placeholder="비밀번호 입력"
                                             required /> 
	                                  <!---->
	                             </div>
	
	                             <p class="field_vali">
	                                 <span class="signup_wrap" id="pw_check"><!--영문포함--></span>
	                             </p>
	                         </div>
	                         <label for="confirm_password" class="blind signup_step"></label>
	                         <div class="field_signup_wrap_pwd">
	                             <div class="inpbx">
	                                 <input type="password" 
                                            id="confirm_password"
                                            name="confirm_password" 
                                            placeholder="비밀번호 확인" 
                                            required/>
	                                 <!---->
	                             </div>
	
	                             <p class="field_vali">
	                                 <span class="signup_wrap" id="pw_confirm_check"><!--비밀번호 일치--></span>
	                             </p>
	                         </div>
	                     </div>
	                         <button type="submit" class="btn_next_step sign_btn_4">다음</button>
	                 </li>
	             </ul>
	         </div>
	       </div>
	 </div>
	
	 </section>
	
	<!--추천인 입력 선택 -->
	<section class="signin_sction signin_sction5">
	  <div class="signup_wrap">
	      <div class="form_wrap_signup">
	          <h2 class="title_signup">간편가입</h2>
	          <div class="step_wrap">
	              <i class="step4_event"></i>
	              <ul class="signup_step">
	                  <li>
	                      <div class="verify_info">
	                          <h3>
	                              <span class="eventbox_title">추천인 입력하고</span>
	                              <br/>
	                              혜택을 받으세요
	                          </h3>
	                          <ul class="signup_event_info">
	                              <li>
	                                  신규 가입시 추천인 입력하면
	                                  <br/>
	                                  추천자, 추천인 모두에게 1000포인트 지급
	                              </li>
	                          </ul>
	                        <button type="submit" class="btn_next_step on verify_info btn_fix sign_btn_6" >
	                                  혜택 없이 계속 가입하기
	                        </button>
	                        <button type="submit" class="btn_next_step on verify_info sign_btn_5">
	                                  추천인 입력하고 혜택받기
	                        </button>
	                      </div>
	                  </li>
	              </ul>
	          </div>
	        </div>
	  </div>
	 </section>
	
	<!--추천인 아이디 입력 -->
	<section class="signin_sction signin_sction6">
	  	<div class="signup_wrap">
	          <h2 class="title_signup">간편가입</h2>
	          	<div class="step_wrap">
	              <i class="step5_event_info"></i>
	              	<ul class="signup_step">
	                  <li>
	                      <h3>추천인을 입력해주세요.</h3>
	                      <div class="signup_step_box">
	                          <label for="user_event_input" class="blind signup_step"></label>
	                          <div class="field signup_step_box">
	                              <div class="inpbx">
	                                  <input type="text" id="user_eventid" placeholder="추천인 아이디" />
	                              </div>
	                          </div>
	                      </div>

	                      <button type="submit" class="btn_next_step sign_btn_7">다음</button>
	                  </li>
	             	 </ul>
	          	</div>
	       </div>
	  </section>
	

	<!--입력 완료 시 쿠폰표시 화면 -->
	<section class="signin_sction signin_sction7">
	  <div class="signup_wrap">
          <h2 class="title_signup">간편가입</h2>
          <div class="step_wrap">
              <i class="step6_welcome"></i>
              <ul class="signup_step">
                  <li>
                      <div class="join_ly">
                          <h3>WELCOME
                              <br/>
                              COUPON
                          </h3>
                          <div class="coupon_dsc">
                              <img class="user_coupon_img" src="https://www.flaticon.com/svg/static/icons/svg/612/612844.svg">
                              <img class="user_coupon_img" src="https://www.flaticon.com/svg/static/icons/svg/612/612844.svg">

                              <p>
                                  + 쿠폰 상세 내용은
                                  <a href="./mypage/coupon">마이 > 쿠폰</a>
                                  <!-- 마이페이지 링크 연결 -->
                                  에서 확인하세요.
                              </p>
                          </div>
                          <div class="login_dsc">
                              <!-- 로그인 화면 링크 -->
                              <a href="index.jsp?inc=./views/member/member_login.jsp" class="member_go">
                                  <button type="button" class="btn_next_step" >로그인 하기</button>
                              </a>
                          </div>
                      </div>
                  </li>
              </ul>
          	</div>
      	</div>
  	</section>
  
 </form>
</body>
  <script src="resources/JS/pagesjs/member_signin_click.js"></script>
  <script src="resources/JS/pagesjs/member_signin.js"></script>
</html>