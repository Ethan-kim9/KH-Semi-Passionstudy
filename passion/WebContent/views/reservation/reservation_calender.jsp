<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>:: JavaScript 캘린더 ::</title>
    <link
      rel="stylesheet"
      href="../../CSS/PageStyles/reservation/calender.css"
    />
  </head>
  <body>
    <table class="scriptCalendar">
      <thead>
        <tr>
          <td
            onClick="prevCalendar();"
            style="cursor: pointer; font-size: 20px"
          >
            &#60;&#60;
          </td>
          <td colspan="5" style="font-size: 28px">
            <span id="calYear">YYYY</span>년 <span id="calMonth">MM</span>월
          </td>
          <td onClick="nextCalendar();" style="cursor: pointer">&#62;&#62;</td>
        </tr>
        <tr>
          <td>일</td>
          <td>월</td>
          <td>화</td>
          <td>수</td>
          <td>목</td>
          <td>금</td>
          <td>토</td>
        </tr>
      </thead>
      <tbody></tbody>
    </table>
  </body>
  <script src="../../JS/calender.js"></script>
</html>
