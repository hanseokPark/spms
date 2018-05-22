<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
* {
	margin: 0 auto;
	padding: 0;
}
#projectlist {
	padding-top: 50px;
	padding-bottom: 50px;
	width:1000px;
}
table {
	width: 1000px;
}
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}
th{
	width:250px;
	text-align: center;
}
td{
	padding: 5px;
	text-align: left;
}
#btn{
	width:1000px;
	text-align: center;
	margin-top:50px;
	
}
#btn a{
	margin-left:30px;
}
a{
	color:black;
	text-decoration: none;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
	$(function(){
		$("#del").click(function(){
			if (confirm("정말 삭제하시겠습니까?") == true){
			}else{
			   	  return false;
			}
		})	
	})
	
</script>
</head>
<body>
	<%
		pageContext.include("header.jsp");
	%>
	
	<div id="projectlist">
			<table>
				<tr>
					<th>프로젝트 이름</th>
					<td>${spms.spms_name }</td>
				</tr>
				<tr>
					<th>프로젝트 내용</th>
					<td>${spms.content }</td>
				</tr>			
				<tr>
					
					<th>시작날짜</th>
					<td><fmt:formatDate value="${spms.start_day }" type="date" pattern="yyyy-MM-dd"/></td>  
				</tr>			
				<tr>					
					<th>종료날짜</th>	
					<td><fmt:formatDate value="${spms.end_day }" type="date" pattern="yyyy-MM-dd"/></td>
				</tr>			
				<tr>					
					<th>상태</th>	
					<td>${spms.state }</td>
				</tr>
			</table>
			<p id="btn">
				<a href="modify?no=${spms.spms_no }">[수정]</a>
				<a href="delete?no=${spms.spms_no }"id="del">[삭제]</a>
				<a id="goListBtn">[돌아가기]</a>
			</p>
	</div>
	
	<script>   
		
			
			$("#goListBtn").click(function(){
				location.href="${pageContext.request.contextPath}/";				
			})
		
			
		</script>
		
	
	<%
		pageContext.include("bottom.jsp");
	%>
	
</body>
</html>