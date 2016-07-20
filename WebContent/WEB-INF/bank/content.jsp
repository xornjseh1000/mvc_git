<%@ page language="java" contentType="text/html; charset=UTF-8"pageEncoding="UTF-8"%>

<link rel="stylesheet" href="../css/global.css" />
    <jsp:include page="${context}/global/top.jsp"/>
    <jsp:include page="${context}/global/header.jsp"/>
    <jsp:include page="${context}/global/navi.jsp"/>
<body>
  <div id="box" class="memberClass box">
  <h1>계좌관리</h1><br/>
            <div style="width:300px;margin:0 auto;text-align: left;">
			<ol>
				<li><a href="service/regist.jsp">개설</a></li>
				<li><a href="service/deposit.jsp">입금</a></li>
				<li><a href="service/withdraw.jsp">출금</a></li>
				<li><a href="result/update.jsp">비번수정</a></li>
				<li><a href="service/delete.jsp">해지</a></li>
				<li><a href="service/list.jsp">목록</a></li>
				<li><a href="service/search.jsp">조회</a></li>
				<li><a href="service/count.jsp">통장수</a></li>
			    
			</ol>	
			</div>	
    <a href="${context}/index.jsp">
    <img alt="home" src="${img}/home.png"style="width:10%">
    </a>
</div>
</body>
</html>


