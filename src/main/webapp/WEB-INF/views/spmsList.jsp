<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style>
* {
	margin: 0 auto;
	padding: 0;
}
body{
	padding-top: 60px;
      
}  

#listall{
	width:1000px;
	padding-top: 50px;
	padding-bottom: 50px;
	height:500px;	
	  
}    
  
#projectlist {
	padding-top: 50px;
	
}

table {
	width: 800px;
}

table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}

th, td {
	padding: 5px;
	text-align: center;
}

#lista {
	text-align: right;
	width:1000px;
	margin-top:20px;
}
a{
	color:black;
	text-decoration: none;
}
</style>
</head>
<body>

	<%
		pageContext.include("header.jsp");
	%>
	<div id="listall">
	<p id="lista">
		<a href="write">[새 프로젝트 등록]</a>
	</p>
	<div id="projectlist">
			<table>
				<tr>
					<th>프로젝트 이름</th>
					<th>시작날짜</th>
					<th>종료날짜</th>
					<th>상태</th>
				</tr>
			<c:if test="${list.size() == 0 }">
					<tr>
						<td colspan="4">등록된 게시글이 없습니다.</td>
					</tr>
				</c:if>
				<c:if test="${list.size() > 0 }">
					<c:forEach var="item" items="${list }">
						<tr>							
							<td><a href="read?no=${item.spms_no }">${item.spms_name }</a></td>							
							<td><fmt:formatDate value="${item.start_day }" pattern="yyyy-MM-dd" /></td>
							<td><fmt:formatDate value="${item.end_day }" pattern="yyyy-MM-dd" /></td>
							<td>${item.state }</td>
						</tr>
					</c:forEach>
				</c:if>
			</table>

	</div>
	</div>
	
	<!--   
	<script>
		  
		$(".read").on("click",function(){
		
			var no = $(this).parent().find("input[name='no']").val();
			alert(no);
			location.href = "${pageContext.request.contextPath}/read?spms_no="+no;
			  
			
		})       
	
	</script> -->
	<%
		pageContext.include("bottom.jsp");
	%>

</body>
</html>