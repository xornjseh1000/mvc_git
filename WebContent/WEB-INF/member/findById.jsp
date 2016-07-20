<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 상세정보</title>
<link rel="stylesheet" href="${context}/css/member.css" />
<style>
	#member_detail{border: 1px solid gray;width:90%;height: 400px;margin:0 auto;border-collapse: collapse;}
	#member_detail tr{border: 1px solid gray;height: 20%}
	#member_detail tr td{border: 1px solid gray;}
	.font_bold{font-weight: bold;}
	.bg_color_yellow{background-color: yellow}
</style>
</head>
<body>
 <!-- id,birth,name,regDate,gender,profileImg -->
	<div class="box">
		<h1>내정보 보기</h1> <br>
				<table id="member_detail">
			<tr>
				<td rowspan="3" style="width:30%">
					<img src="<%=application.getContextPath()%>/img/bbo.jpg"  width="130" height="150">
				</td>
				<td style="width:20%" class="font_bold bg_color_yellow">ID</td>
				<td style="width:40%"></td>
			</tr>
			<tr>
				<td class="font_bold bg_color_yellow">이 름</td>
				<td></td>
			</tr>
			<tr>
				<td class="font_bold bg_color_yellow">성 별</td>
				<td></td>
			</tr>
			<tr>
				<td class="font_bold bg_color_yellow">생년월일</td>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td class="font_bold bg_color_yellow">등록일</td>
				<td colspan="2"></td>
			</tr>
		</table>
		
		<a href="${context}/index.jsp">
		<img src="${img}/home.png" alt="home" style="width: 30px"/>
	</a>
	<a href="${context}/member/member_controller.jsp">
		<img src="${img}/Previous.png" alt="member" style="width: 30px"/>
	</a>
	</div>
</body>
</html>