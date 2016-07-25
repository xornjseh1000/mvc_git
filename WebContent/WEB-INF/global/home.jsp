<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <jsp:include page="top.jsp"/>
    <jsp:include page="header.jsp"/>
      <div class ="box">
        <h2>서비스를 이용하시려면 회원가입을 하셔야 합니다</h2>
      	<a href="${context}/member.do?cmd=regist">회원가입하러가기</a>
        <a href="${context}/member.do?page=login">로그인 하러가기</a>
        <a href="${context}/global.do?page=main">메인화면 바로가기</a>
	</div>  

   <jsp:include page="footer.jsp"/>
   <jsp:include page="end.jsp"/> 