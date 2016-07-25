<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       
    <jsp:include page="../global/top.jsp"/>
    <jsp:include page="../global/header.jsp"/>
<div class ="box">
	  <form action="${context}/member.do" method = "post">
	  <span class = "meta">이름</span><input type="text" name ="name"/><br />
	  <span class = "meta">ID</span> <input type="text" name ="id"/><br />
	  <span class = "meta">비밀번호</span><input type="text" name ="pw"/><br />
	  <span class = "meta">SSN</span><input type="text" name ="ssn"/><br />
	  <span class = "meta">email</span><input type="text" name ="email"/><br />
	   <span class = "meta">phone</span><input type="text" name ="phone"/><br />
	  
	  
		<input type="hidden" name="action" value="regist">
		<input type="submit" value="회원가입" />
		<input type="reset" value="취소" />
	</form>

	</div>
    <jsp:include page="../global/footer.jsp"/>
    <jsp:include page="../global/end.jsp"/>


