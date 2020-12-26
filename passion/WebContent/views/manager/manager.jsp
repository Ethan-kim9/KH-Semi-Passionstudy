<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8" />
    <title>Welcome Passion StudyCafe~!</title>
    <link rel="stylesheet" href="../../CSS/styles.css" />
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
    />

    <script
      src="https://code.jquery.com/jquery-3.5.1.js"
      integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
      crossorigin="anonymous"
    ></script>
  </head>

  <body>

    <div class="cont_header">
      <div class="cont_wrapper">
        <h1>관리메뉴</h1>
      </div>
    </div>


    <div class="tabtype btn_align_center tabtype_style_edit">
      <div class="tabtype_wrapper">
        <ul class="manager_ul_style">
          <li>
            <button class="btn1 on">회원 관리</button>
          </li>
          <li>
            <button class="btn2">매출 조회</button>
          </li>
          <li>
            <button class="btn3">상품 관리</button>
          </li>
        </ul>
      </div>
    </div>

    <!-- 회원 관리와 관련된 박스-->

    <section class="manager_member__section manager_section">
      <div class="membersearch-box">
        <form class="membersearch">
          <label for="membersearch--input" class="membersearch--label"
            >이름 또는 전화번호 4자리</label
          >
          <br />
          <input type="search" class="membersearch--input" />
          <input type="submit" value="검색" />
        </form>
      </div>

      <div class="membersearch__member_box">
        <!-- 검색이 완료되면 표시 되는 부분-->
        <div class="membersearch__member_detail_box">
          <div class="member-icon-box">🔥</div>
          <!-- 블랙리스트면 '💀'로 표시-->
          <h1 class="member_detail_name">이름 : 김떡만</h1>
          <hr />
          <h1 class="member_detail_point">Coupon: 2개</h1>
          <hr />
          <h1 class="member_detail_coupon">포인트 : 3000p</h1>
          <hr />
        </div>

        <!-- 관리자가 설정하기 위한 부분-->

        <div class="membersearch__member_edit_box">
          <!-- 비밀번호 변경 설정 -->

          <div class="input-group mb-3">
            <input
              type="text"
              class="form-control"
              placeholder="비밀번호 변경"
              aria-label="Recipient's username"
              aria-describedby="button-addon2"
            />

            <div class="input-group-append">
              <button
                class="btn btn-outline-secondary"
                type="button"
                id="button-addon2"
              >
                EDIT
              </button>
            </div>
          </div>

          <!-- 포인트 설정 -->

          <div class="input-group mb-3">
            <input
              type="text"
              class="form-control"
              placeholder="포인트 변경"
              aria-label="Recipient's username"
              aria-describedby="button-addon2"
            />
            <div class="input-group-append">
              <button
                class="btn btn-outline-secondary"
                type="button"
                id="button-addon2"
              >
                EDIT
              </button>
            </div>
          </div>

          <!-- 회원 쿠폰 설정 -->

          <div class="input-group mb-3">
            <input
              type="text"
              class="form-control"
              placeholder="회원 쿠폰 설정"
              aria-label="Recipient's username"
              aria-describedby="button-addon2"
            />
            <div class="input-group-append">
              <button
                class="btn btn-outline-secondary"
                type="button"
                id="button-addon2"
              >
                EDIT
              </button>
            </div>
          </div>

          <!-- 블랙리스트 설정 -->

          <div class="input-group mb-3">
            <input
              type="text"
              class="form-control"
              placeholder="블랙리스트 설정"
              aria-label="Recipient's username"
              aria-describedby="button-addon2"
            />
            <div class="input-group-append">
              <button
                class="btn btn-outline-secondary"
                type="button"
                id="button-addon2"
              >
                EDIT
              </button>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- 매출과 관련된 섹터 -->
    
    <section class="manager_sales__section manager_section">

      
    <div class="finance__manager">
      <!-- 매출 그래프를 표시해주는 박스-->
      
      <div class="finance__graph__box">
        <h1>2020년 매출현황</h1>
        <div class="finance__graph">
          
        </div>
      </div>

      <!-- 매출표를 표시해주는 박스-->
      <div class="finance__table">
        <table class="table">
          <thead class="thead-light">
            <tr>
              <th scope="col">월</th>
              <th scope="col">카드</th>
              <th scope="col">현금</th>
              <th scope="col">총합</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <th scope="row">1</th>
              <td>3000</td>
              <td>4000</td>
              <td>7000</td>
            </tr>
            <tr>
              <th scope="row">2</th>
              <td>9000</td>
              <td>10000</td>
              <td>19000</td>
            </tr>
            <tr>
              <th scope="row">3</th>
              <td>20000</td>
              <td>10000</td>
              <td>300000</td>
            </tr>
            <tr>
              <th scope="row">4</th>
              <td>20000</td>
              <td>10000</td>
              <td>300000</td>
            </tr>
            <tr>
              <th scope="row">5</th>
              <td>20000</td>
              <td>10000</td>
              <td>300000</td>
            </tr>
            <tr>
              <th scope="row">6</th>
              <td>20000</td>
              <td>10000</td>
              <td>300000</td>
              <tr>
                <th scope="row">7</th>
                <td>20000</td>
                <td>10000</td>
                <td>300000</td>
              </tr>
              <tr>
                <th scope="row">8</th>
                <td>20000</td>
                <td>10000</td>
                <td>300000</td>
              </tr>            <tr>
                <th scope="row">9</th>
                <td>20000</td>
                <td>10000</td>
                <td>300000</td>
              </tr>            <tr>
                <th scope="row">10</th>
                <td>20000</td>
                <td>10000</td>
                <td>300000</td>
              </tr>            <tr>
                <th scope="row">11</th>
                <td>20000</td>
                <td>10000</td>
                <td>300000</td>
              </tr>            <tr>
                <th scope="row">12</th>
                <td>20000</td>
                <td>10000</td>
                <td>300000</td>
              </tr>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
    </section>

    <!-- 상품관리와 관련된 섹터 -->

    <section class="manager_product__section manager_section">
      <!-- 상품관리관련 코드-->
      <div class="product_title_box">
        <h1>스터디룸 관리</h1>
      </div>
      <div class="product_table_Box">
        <table class="table">
          <thead class="thead-dark">
            <tr>
              <th scope="col">번호</th>
              <th scope="col">스터디룸 명</th>
              <th scope="col">스터디룸 타입</th>
              <th scope="col">가격</th>
              <th scope="col">상태</th>
              <th scope="col">시간설정</th>
              <th scope="col">수정</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <th scope="row">1</th>
              <td>타오르는 열정</td>
              <td>특실 12인실</td>
              <td>30,000원</td>
              <td>사용가능</td>
              <td>AM 10 - PM 12</td>
              <td>
                <button type="button" class="btn btn-dark btn_size_edit">
                  Edit
                </button>
              </td>
            </tr>
            <tr>
              <th scope="row">2</th>
              <td>열정 만수르 1</td>
              <td>단체실 8인실</td>
              <td>22,000원</td>
              <td>사용가능</td>
              <td>AM 10 - PM 12</td>
              <td>
                <button type="button" class="btn btn-dark btn_size_edit">
                  Edit
                </button>
              </td>
            </tr>
            <tr>
              <th scope="row">3</th>
              <td>열정 만수르 2</td>
              <td>단체실 8인실</td>
              <td>22,000원</td>
              <td>사용가능</td>
              <td>AM 10 - PM 12</td>
              <td>
                <button type="button" class="btn btn-dark btn_size_edit">
                  Edit
                </button>
              </td>
            </tr>
            <tr>
              <th scope="row">4</th>
              <td>열정과다 1</td>
              <td>일반실 6인실</td>
              <td>16,000원</td>
              <td>사용가능</td>
              <td>AM 10 - PM 12</td>
              <td>
                <button type="button" class="btn btn-dark btn_size_edit">
                  Edit
                </button>
              </td>
            </tr>
            <tr>
              <th scope="row">5</th>
              <td>열정과다 2</td>
              <td>일반실 6인실</td>
              <td>16,000원</td>
              <td>사용가능</td>
              <td>AM 10 - PM 12</td>
              <td>
                <button type="button" class="btn btn-dark btn_size_edit">
                  Edit
                </button>
              </td>
            </tr>
            <tr>
              <th scope="row">6</th>
              <td>열정과다 3</td>
              <td>일반실 6인실</td>
              <td>16,000원</td>
              <td>사용가능</td>
              <td>AM 10 - PM 12</td>
              <td>
                <button type="button" class="btn btn-dark btn_size_edit">
                  Edit
                </button>
              </td>
            </tr>
            <tr>
              <th scope="row">7</th>
              <td>개인실 1</td>
              <td>개인실 1인실</td>
              <td>10,000원</td>
              <td>사용가능</td>
              <td>AM 10 - PM 12</td>
              <td>
                <button type="button" class="btn btn-dark btn_size_edit">
                  Edit
                </button>
              </td>
            </tr>
            <tr>
              <th scope="row">8</th>
              <td>개인실 2</td>
              <td>개인실 1인실</td>
              <td>10,000원</td>
              <td>사용가능</td>
              <td>AM 10 - PM 12</td>
              <td>
                <button type="button" class="btn btn-dark btn_size_edit">
                  Edit
                </button>
              </td>
            </tr>
            <tr>
              <th scope="row">9</th>
              <td>개인실 3</td>
              <td>개인실 1인실</td>
              <td>10,000원</td>
              <td>사용가능</td>
              <td>AM 10 - PM 12</td>
              <td>
                <button type="button" class="btn btn-dark btn_size_edit">
                  Edit
                </button>
              </td>
            </tr>
            <tr>
              <th scope="row">10</th>
              <td>개인실 4</td>
              <td>개인실 1인실</td>
              <td>10,000원</td>
              <td>사용가능</td>
              <td>AM 10 - PM 12</td>
              <td>
                <button type="button" class="btn btn-dark btn_size_edit">
                  Edit
                </button>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </section>
    
  
  </body>

  <script src="resources/JS/pagesjs/manager_managing_click.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  </html>
