<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  <div id="box" class="memberClass box">
  <h1>성적관리</h1><br/>
            <div style="width:300px;margin:0 auto;text-align: left;">
			<ol>
				<li><a href="${context}/grade/regist.do">등록</a></li>
				<li><a href="${context}/grade/update.do">수정</a></li>
				<li><a href="${context}/grade/delete.do">삭제</a></li>
				<li><a href="${context}/grade/list.do">목록</a></li>
				<li><a href="${context}/grade/count.do">카운트</a></li>
				<li><a href="${context}/grade/search.do">검색</a></li>
			
			
			</ol>	
			</div>	
    <a href="${context}/home.jsp">
    <img alt="home" src="${img}/home.png"style="width:10%">
    </a>
</div>
