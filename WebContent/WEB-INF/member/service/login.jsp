<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     
  <jsp:include page="../../global/top.jsp"/>
    <jsp:include page="../../global/header.jsp"/>
 <div class ="box">
        <h1>로그인</h1><br />
  		<form action="${context}/member/result/login_result.jsp" method = "post">
	  	   <span class = "meta">ID</span> <input type="text" name ="id"/><br />
	       <span class = "meta">비번</span><input type="password" name ="pw"/><br />
	   		           <input type="submit" value="로그인" />
	           <input type="submit" value="취소" />
	           		   	 	</form>
		</div>
    <jsp:include page="../../global/footer.jsp"/>
    <jsp:include page="../../global/end.jsp"/>
  >
