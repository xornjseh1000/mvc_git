<%@ page language="java" contentType="text/html; charset=UTF-8"pageEncoding="UTF-8"%>

<link rel="stylesheet" href="../css/global.css" />
    <jsp:include page="${context}/global/top.jsp"/>
    <jsp:include page="${context}/global/header.jsp"/>
<style type=text/css">
div.memberClass{font-size:20px}
</style>
<body>
  <div id="box" class="memberClass box">
  <h1>회원관리</h1><br/>
            <div style="width:300px;margin:0 auto;text-align: left;">
			<ol>
				<li><a href="service/regist.jsp">회원가입</a></li>
				<li><a href="service/login.jsp">로그인</a></li>
				<li><a href="service/logout.jsp">로그아웃</a></li>
				<li><a href="result/detail_result.jsp">내정보보기</a></li>
				<li><a href="service/update.jsp">내정보수정(비번)</a></li>
				<li><a href="service/delete.jsp">탈퇴</a></li>
				<li><a href="service/list.jsp">회원검색</a></li>
				<li><a href="service/findBy.jsp">검색</a></li>
			    <li><a href="service/count.jsp">회원수</a></li>
			</ol>	
			</div>	
    <a href="${context}/index.jsp">
    <img alt="home" src="${img}/home.png"style="width:10%">
    </a>
</div>
</body>
</html>