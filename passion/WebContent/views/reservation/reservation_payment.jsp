<%@ page import="com.passionStudy.passion.member.model.vo.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");
%>
<html>
  <head>
    <meta charset="utf-8" />
    <title>Welcome Passion StudyCafe~!</title>
	<script src="/passion/resources/JS/pagesjs/reservation_change_page.js"></script>
	<script src="resources/JS/pagesjs/reservation_point_check.js"></script>
  </head>
<%
	if (loginMember == null) {
%>
<script>
	alert('로그인 후 이용 가능한 컨텐츠입니다.');
	location.href = 'index.jsp';
</script>
<%
	}
%>
    <body>  
      <div class="cont_header">
        <div class="cont_wrapper">
          <h1>예약 / 결제</h1>
        </div>
      </div>
  
      <div class="tabtype btn_align_center">
        <div class="tabtype_wrapper">
          <ul>
            <li style="width: 33%;">
              <a href="index.jsp?inc=./views/reservation/reservation_roominfo.jsp">
                <button class="btn1">예약하기</button>
              </a>
            </li>
            <li style="width: 33%;">
              <a href="index.jsp?inc=./views/reservation/reservation_userinfo.jsp">
              <button class="btn2">예약자 정보입력</button>
            </a>
          </li>
            <li style="width: 33%;">
              <button class="btn3 on" disabled>결제하기</button>
            </li>
          </ul>
        </div>
      </div>

    <section class="section payment_section">
      <div class="container">
        <div class="refund_regulations">
          <h5 class="refund_regulations_title">환불규정 안내</h5>
          <hr class="line">
          <p class="refund_regulations_content">
            <em class="warn" style="color: #ff3a48;">
              이용당일(첫 날) 이후에 환불 관련 사항은 호스트에게 직접 문의하셔야 합니다.
            </em>
            <br>
            <p class="info">
              결제 후 2시간 이내에는 100%환불이 가능합니다.(단, 이용시간 전까지만 가능)
            </p>
          </p>
          <ul>
            <hr class="subline">
            <li class="info_list">
              <strong class="title">이용 7일전</strong>
              <span class="data">총 금액의 100% 환불</span>
            </li>
            <hr class="subline">
            <li class="info_list">
              <strong class="title">이용 6일전</strong>
              <span class="data">총 금액의 100% 환불</span>
            </li>
            <hr class="subline">
            <li class="info_list">
              <strong class="title">이용 5일전</strong>
              <span class="data">총 금액의 100% 환불</span>
            </li>
            <hr class="subline">
            <li class="info_list">
              <strong class="title">이용 4일전</strong>
              <span class="data">총 금액의 100% 환불</span>
            </li>
            <hr class="subline">
            <li class="info_list">
              <strong class="title">이용 3일전</strong>
              <span class="data">총 금액의 90% 환불</span>
            </li>
            <hr class="subline">
            <li class="info_list">
              <strong class="title">이용 2일전</strong>
              <span class="data">총 금액의 70% 환불</span>
            </li>
            <hr class="subline">
            <li class="info_list">
              <strong class="title">이용 전날</strong>
              <span class="data">총 금액의 50% 환불</span>
            </li>
            <hr class="subline">
            <li class="info_list">
              <strong class="title">이용 당일</strong>
              <span class="data">환불 불가</span>
            </li>
          </ul>
        </div>


        <div class="final_reservation_info">
          <h5 class="final_reservation_info_title">최종 예약 정보</h5>
          <hr class="line">
          <div class="final_reservation_info_content">
            <ul>
              <br>
              <li class="info_list">
                <strong class="title">예약날짜</strong>
                <span class="data">
                ${param.selectCalendarDate.substring(0, 4) }년 
                ${param.selectCalendarDate.substring(4, 6) }월
                ${param.selectCalendarDate.substring(6, 8) }일
                </span>
              </li>
              <hr class="subline">
              <li class="info_list">
                <strong class="title">예약시간</strong>
                <span class="data">총 ${param.total_time }시간</span>
                <span class="price_data">${param.total_time*param.roomPrice }원</span>
              </li>
              <hr class="subline">
              <li class="info_list">
                <strong class="title">예약인원</strong>
                <span class="data">${param.countUsers }명</span>
              </li>
              <hr class="subline">
              <li class="info_list">
                <strong class="title">추가옵션</strong>
                <span class="data">모니터 : ${param.monitor}시간 / 컴퓨터 : ${param.computer }시간 / 프로젝터 : ${param.projector }시간</span>
                <span class="price_data">총 ${(param.computer + param.projector) * 2000}원</span>
              </li>
              <hr class="subline">
            </ul>
          </div>
        </div>


        <div class="coupon_use">
          <h5 class="coupon_use_title">
            쿠폰 사용
            <span class="title_coupon_number">(0장)</span>
          </h5>
          <hr class="line">
          <div class="coupon_use_content">
            <ul>
              <br>
              <li class="info_list">
                <input type="radio" name="radio_coupon" value="code_coupon">
                <strong class="coupon_title"> 쿠폰코드</strong>
                <input type="text" name="insert_coupon_code" id="insert_coupon_code" class="data">
                <button type="button" class="submit_coupon_code">확인</button>
              </li>
              <hr class="subline">
              <li class="info_list">
                <input type="radio" name="radio_coupon" value="code_coupon">
                <strong class="coupon_title"> 사용 안함</strong>
              </li>
              <hr class="subline">
            </ul>
          </div>
        </div>

        <div class="point_use">
          <h5 class="point_use_title">포인트 사용</h5>
          <hr class="line">
          <div class="point_use_content">
            <ul>
              <br>
              <li class="info_list">
                <strong class="title">보유</strong>
                <span class="data"> ${param.memPoint }원 </span>
              </li>
              <hr class="subline">
              <li class="info_list">
                <strong class="title">사용</strong>
                <input type="text" id='usePointValue'class="data">
                <button type="button" id='usePointCheck' class="all_data_use">사용하기</button>
                <!-- <input type="button" value="전액사용" class="all_data_use"> -->
              </li>
              <hr class="subline">
            </ul>
          </div>
        </div>


        <div class="final_payment_amount">
          <h5 class="final_payment_amount_title">최종 결제 금액</h5>
          <hr class="line">
          <div class="final_payment_amount_content">
            <ul>
              <br>
              <li class="info_list">
                <strong class="title">총 금액</strong>
                <span class="data">${(param.roomPrice * param.total_time) + ((param.computer + param.projector) * 2000)}원 </span>
              </li>
              <hr class="subline">
              <li class="info_list">
                <strong class="title">쿠폰 할인</strong>
                <span class="data">(-) 0,000원</span>
              </li>
              <hr class="subline">
              <li class="info_list">
                <strong class="title">포인트 할인</strong>
                <span class="data">(-) <input type="text" id='use_point_show' name='use_point_show' style="width: 120px; background-color:transparent; border:0 solid black; text-align:right;" value='0' readonly disabled />원</span>
              </li>
              <hr class="subline">
            </ul>
            <ul class="all_payment_amount">
              <li">
                <strong class="all_payment_amount_title">총 결제 금액</strong>
                <stong class="all_payment_amount_data"><input type="text" id='total_price' name='total_price' style="color: white; width: 120px; background-color:transparent; border:0 solid black; text-align:right;" value='${(param.roomPrice * param.total_time) + ((param.computer + param.projector) * 2000)}' readonly disabled />원</strong>
              </li>
            </ul>
          </div> 
        </div>

        <div class="payment_method">
          <h5 class="payment_method_title">결제수단</h5>
          <hr class="line">
          <div class="payment_method_content">
              <ul class="payment_method_list">
                <li class="card">
                  <img src="resources/images/icon/credit-card.png" class="payment_method_img" >
                  <input type="radio" class="card_payment_method" name="payment" value="card" onclick="div_onoff(this.value,'con');"/>  카드결제
                </li>
                <li class="mobile">
                  <img src="resources/images/icon/mobile-payment.png" class="payment_method_img" >
                  <input type="radio" class="mobile_payment_method" name="payment" value="mobile" />  무통장입금
                </li>
                <li class="scene">
                  <img src="resources/images/icon/scene.png" class="payment_method_img" >
                  <input type="radio" class="scene_payment_method" name="payment" value="scene"/>  현장결제
                </li>
                <li class="point">
                  <img src="resources/images/icon/money.png" class="payment_method_img" >
                  <input type="radio" class="money_payment_method" name="payment" value="money"/>  현금결제
                </li>
              </ul>
              <div id="con" style="display: none;">
                <span>카드 번호</span> 
                <br>
                <input type="number" name="card_info_first" class="card_info_first" maxlength="4" oninput="maxLengthCheck(this)"> -
                <input type="password" name="card_info_second" class="card_info_second" maxlength="4"> -
                <input type="password" name="card_info_third" class="card_info_third" maxlength="4"> -
                <input type="number" name="card_info_fourth" class="card_info_fourth" maxlength="4" oninput="maxLengthCheck(this)">
                <br>
                <span>유효기간</span>
                <br>
                <select class="selected-month">
                  <option value="1" selected="selected">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                  <option value="6">6</option>
                  <option value="7">7</option>
                  <option value="8">8</option>
                  <option value="9">9</option>
                  <option value="10">10</option>
                  <option value="11">11</option>
                  <option value="12">12</option>
                </select>
                <label for="selected-month">월</label>
                <select class="selected-year">
                  <option value="2020" selected="selected">2020</option>
                  <option value="2021">2021</option>
                  <option value="2022">2022</option>
                  <option value="2023">2023</option>
                  <option value="2024">2024</option>
                </select>
                <label for="selected-year">년</label>
                <br>
                <span>생년월일</span>
                <br>
                <input type="text" name="card_user_birth" class="card_user_birth" placeholder="6자리 입력"/>
                <br>

              </div>

              <ul class="join_box">
                <li class="checkBox check01">
                  <ul class="clearfix">
                    <li>
                      이용자 약관 전체 동의
                      <input type="checkbox" name="chkAll" id="check_all" class="chkAll">
                    </li>
                  </ul>
                </li>
                <li class="checkBox check02">
                  <ul class="clearfix">
                    <li>
                      예약조건 확인 및 결제진행 동의
                      <span class="txt_required">(필수)</span>
                      <input type="checkbox" name="chk" class="checkBtn">
                    </li>
                  </ul>
                </li>
                <li class="checkBox check03">
                  <ul class="clearfix">
                    <li>
                      환불규정 안내에 대한 동의
                      <span class="txt_required">(필수)</span>
                      <input type="checkbox" name="chk" class="checkBtn">
                    </li>
                  </ul>
                </li>
              </ul>
          </div>
          <div class="next_button btn_payment">
            <div>
              <a href="index.jsp?inc=./views/reservation/reservation.jsp"><button class="cancel"> 취소하기 </button></a>
              <button class="payment"> 결제하기 </button>
            </div>
          </div>
        </div>


        
      </div>
    </section>
			<input type='text' id='selectCalendarDate' name='selectCalendarDate' value='${param.selectCalendarDate }'/>
			<input type='text' id='firstTimeData' name='firstTimeData' value='${param.firstTimeData }' />
			<input type='text' id='secondTimeData' name='secondTimeData' value='${param.secondTimeData }' />
			<input type='text' id='thirdTimeData' name='thirdTimeData' value='${param.thirdTimeData }' />
			<input type='text' id='fourthTimeData' name='fourthTimeData' value='${param.fourthTimeData }' />
			<input type='text' id='fifthTimeData' name='fifthTimeData' value='${param.fifthTimeData }' />
			<input type='text' id='lastTimeData' name='lastTimeData' value='${param.lastTimeData }' />
			<input type='text' id='member_no' name='member_no' value='${param.member_no }'/>
			<input type='text' id='reservationName' name='reservationName' value='${param.reservationName }'/>
			<input type='text' id='tel_first' name='tel_first' value='${param.tel_first }' />
			<input type='text' id='tel_second' name='tel_second' value='${param.tel_second }' />
			<input type='text' id='tel_third' name='tel_third' value='${param.tel_third }' />
			<input type='text' id='email_id' name='email_id' value='${param.email_id }' />
			<input type='text' id='email_dns' name='email_dns' value='${param.email_dns }' />
			<input type='text' id='room_no' name='room_no' value='${param.room_no }' />
			<input type='text' id='roomName' name='roomName' value='${param.roomName }' />
			<input type='text' id='roomMin' name='roomMin' value='${param.roomMin }' />
			<input type='text' id='roomMax' name='roomMax' value='${param.roomMax }' />
			<input type='text' id='totalPrice' name='totalPrice' value='${(param.roomPrice * param.total_time) + ((param.computer + param.projector) * 2000)}' />
			<input type='text' id='memPoint' name='memPoint' value='${param.memPoint }' />
			<input type='text' id='usePoint' name='usePoint' value='${param.usePoint }' />
  </body>
<script>
reservation_change_page()
</script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <script src="resources/JS/pagesjs/reservation_payment.js"></script>
</html>

