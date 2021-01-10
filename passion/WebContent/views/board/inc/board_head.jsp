<%@page import="com.passionStudy.passion.member.model.vo.MemberVo"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<div class="tabtype">
      <div class="tabtype_wrapper" style="text-align: center;">
        <ul class="tabul">
          <li class="tabli">
            <a href="./board_notice"><button class="btn1 ">공지사항</button></a>
          </li>
          <li>
          <%-- <%
          MemberVo loginMember 	= (MemberVo)session.getAttribute("loginMember");
          if(loginMember==null || !"A".equals(loginMember.getAdminCheck())  ){%>
<<<<<<< HEAD
 
          	<%-- 일반 사용자 faq 화면 --%>
=======
          %>
          	알번 사용자 faq 화면
>>>>>>> 89b8874697cbc21a5b9ce6685b76581187afc70d
            <a href="./faq.FAQUserList"><button class="btn2">자주하는 질문</button></a>
          <%
          }else{
          %>
          	관리자  사용자 faq 화면
          	<a href="./faq.FAQManagerList"><button class="btn2">자주하는 질문</button></a>
          <%
          }
          %> --%>
          	<a href="./faq.ManagerOrUser"><button class="btn2">자주하는 질문</button></a>
          </li>
          <li>
            <a href="./member.manager.check.do"><button class="btn3">1:1문의</button></a>
          </li>
        </ul>
      </div>
    </div>
