<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  <div id="box" class="memberClass box">
  <h1>회원관리</h1><br/>
            <div style="width:300px;margin:0 auto;text-align: left;">
			<ol>
				<li><a href="${context}/member/regist.do">회원가입</a></li>
				<li><a href="${context}/member/login.do">로그인</a></li>
				<li><a href="${context}/member/logout.do">로그아웃</a></li>
				<li><a href="${context}/member/detail_result.do">내정보보기</a></li>
				<li><a href="${context}/member/update.do">내정보수정(비번)</a></li>
				<li><a href="${context}/member/delete.do">탈퇴</a></li>
				<li><a href="${context}/member/list.do">회원검색</a></li>
				<li><a href="${context}/member/findBy.do">검색</a></li>
			    <li><a href="${context}/member/count.do">회원수</a></li>
			</ol>	
			</div>	
    <a href="${context}/home.do">
    <img alt="home" src="${img}/home.png"style="width:10%">
    </a>
</div>
