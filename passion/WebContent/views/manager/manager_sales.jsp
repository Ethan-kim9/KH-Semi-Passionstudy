<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8" />
    <title>Welcome Passion StudyCafe~!</title>
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
            <a href="menu.Manager"><button class="btn1">회원 관리</button></a>
          </li>
          <li>
            <a href="manager.SalesSearch"><button class="btn2 on">매출 조회</button></a>
          </li>
          <li>
            <a href="manager.ProductSearch"><button class="btn3">상품 관리</button></a>
          </li>
        </ul>
      </div>
    </div>
  
  
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
          </tbody>
        </table>
      </div>
    </div>
  </body>

  <script src="resources/JS/pagesjs/manager_managing_click.js"></script>
  </html>
