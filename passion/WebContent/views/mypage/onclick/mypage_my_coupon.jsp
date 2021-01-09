<%@page import="com.passionStudy.passion.member.model.vo.CouponVo"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
  <head>
      <link rel = "stylesheet" href="../../../resources/CSS/styles.css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
      <title>내쿠폰</title>
      <script src="https://code.jquery.com/jquery-3.5.1.js" 
      integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" 
      crossorigin="anonymous"></script>
  </head>

  <body>
    <section class="mypage-section">
      <div class="mypage-container">
        <div class="container_mypage-management">
          <ul>
            <li class="mypage-single-menu">
              <button class="first-teb-button on" style="cursor:not-allowed; pointer-events:none;">내 쿠폰</button>
            </li>
          </ul>
        </div>
        <div class="coupon-feed">
          <div class="coupon-feed-container">
            <div class="coupon-feed-register">
              <h3 class="coupon-feed-register-title">쿠폰등록</h3>
              <input
                class="coupon-feed-register-input"
                type="text"
                placeholder="쿠폰 코드를 입력해주세요."
              />
              <button class="coupon-feed-register-button" type="submit">
                등록
              </button>
            </div>
            
            <c:forEach var="coupon" items="${myCoupon }">
            <div class="coupon-wrap">
              <div class="coupon-mold coupon-done">
                <div class="coupon-item">
                  <div class="coupon-item_title">${coupon.couponName }</div>
                  <div class="coupon-item_price">
                    <span class="coupon-item_price-number">${coupon.couponPrice }</span>
                    <span class="coupon-item_price-won">원</span>
                  </div>
                  <div class="coupon-item_due-date">
                    <span>·${coupon.couponDate }</span>
                  </div>
                  <a class="coupon-item_studyroom-list" href="#">적용상품 보기 ></a>
                  <div class="coupon-item_status-done">받았음</div>	<!-- 여기부터 할 차례 -->
                </div>
              </div>
             </div>
            </c:forEach>

              <div class="coupon-mold">
                <div class="coupon-item">
                  <div class="coupon-item_title">[스터디룸명] 할인쿠폰</div>
                  <div class="coupon-item_price">
                    <span class="coupon-item_price-number">5,000</span>
                    <span class="coupon-item_price-won">원</span>
                  </div>
                  <div class="coupon-item_due-date">
                    <span>·2020년 12월 19일까지</span>
                  </div>
                  <a class="coupon-item_studyroom-list" href="#">적용상품 보기 ></a>
                  <div class="coupon-item_status-get" onclick="location.href='#'">받기</div>
                </div>

                <!-- <div class="coupon-item">
                  <div class="coupon-item_title">[스터디룸명] 할인쿠폰</div>
                  <div class="coupon-item_price">
                    <span class="coupon-item_price-number">5,000</span>
                    <span class="coupon-item_price-won">원</span>
                  </div>
                  <div class="coupon-item_due-date">
                    <span>·2020년 12월 19일까지</span>
                  </div>
                  <a class="coupon-item_studyroom-list" href="#">적용상품 보기 ></a>
                  <div class="coupon-item_status-get">받기</div>
                </div>

                <div class="coupon-item">
                  <div class="coupon-item_title">[스터디룸명] 할인쿠폰</div>
                  <div class="coupon-item_price">
                    <span class="coupon-item_price-number">5,000</span>
                    <span class="coupon-item_price-won">원</span>
                  </div>
                  <div class="coupon-item_due-date">
                    <span>·2020년 12월 19일까지</span>
                  </div>
                  <a class="coupon-item_studyroom-list" href="#">적용상품 보기 ></a>
                  <div class="coupon-item_status-get">받기</div>
                </div>

                <div class="coupon-item">
                  <div class="coupon-item_title">[스터디룸명] 할인쿠폰</div>
                  <div class="coupon-item_price">
                    <span class="coupon-item_price-number">5,000</span>
                    <span class="coupon-item_price-won">원</span>
                  </div>
                  <div class="coupon-item_due-date">
                    <span>·2020년 12월 19일까지</span>
                  </div>
                  <a class="coupon-item_studyroom-list" href="#">적용상품 보기 ></a>
                  <div class="coupon-item_status-get">받기</div>
                </div>

                <div class="coupon-item">
                  <div class="coupon-item_title">[스터디룸명] 할인쿠폰</div>
                  <div class="coupon-item_price">
                    <span class="coupon-item_price-number">5,000</span>
                    <span class="coupon-item_price-won">원</span>
                  </div>
                  <div class="coupon-item_due-date">
                    <span>·2020년 12월 19일까지</span>
                  </div>
                  <a class="coupon-item_studyroom-list" href="#">적용상품 보기 ></a>
                  <div class="coupon-item_status-get">받기</div>
                </div>

                <div class="coupon-item">
                  <div class="coupon-item_title">[스터디룸명] 할인쿠폰</div>
                  <div class="coupon-item_price">
                    <span class="coupon-item_price-number">5,000</span>
                    <span class="coupon-item_price-won">원</span>
                  </div>
                  <div class="coupon-item_due-date">
                    <span>·2020년 12월 19일까지</span>
                  </div>
                  <a class="coupon-item_studyroom-list" href="#">적용상품 보기 ></a>
                  <div class="coupon-item_status-get">받기</div>
                </div> -->

                </div>
              </div>


            </div>
          </div>
        </div>
      </div>
    </section>

  </body>
  <script src="../../../resources/JS/menubar.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</html>