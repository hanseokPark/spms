<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
  $( function(){
    $( ".datepicker" ).datepicker({
    	 dateFormat: 'yy-mm-dd',
	});
});
  $.datepicker.setDefaults({
    prevText: '이전 달',
    nextText: '다음 달',
    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'], //월 이름
    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'], //
    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
    showMonthAfterYear: true,
    yearSuffix: '년'
});  
</script>
<style>
	form{
		margin:0;
		padding:0;
		min-width: 500px;
	}
	p label{
		float:left;
		width:120px;
		text-align: right;
		margin-left:50px;	
		padding-right:10px;
	}
	#btn{
		width:400px;
		text-align: center;	  
		  
	}
	.error, .error2 {
		color:red;
		display: none;
	}
	#main{
		width:1000px;
		margin: 0 auto;
		min-width: 800px;		    
	}	
</style>
</head>
<body>
	<%
		pageContext.include("header.jsp");
	%>
	<form method="post" id="f1">	
		<div id="main">
			<input type="hidden" name="no" value=${spms.spms_no }>
			<p>
				<label>프로젝트 이름</label>
				<input type="text" name="name" value=${spms.spms_name }>
			</p>
			<p>
				<label>프로젝트 내용</label>
				<textarea rows="20" cols="50" name="content">${spms.content }</textarea>
			</p>
			<p>
				<label>시작날짜</label>				
				<input name="startday" type="text" class="datepicker" value=<fmt:formatDate value="${spms.start_day }" type="date" pattern="yyyy-MM-dd"/>>				
			</p>
			<p>
				<label>마감날짜</label>
				<input name="endday" type="text" class="datepicker" value=<fmt:formatDate value="${spms.end_day }" type="date" pattern="yyyy-MM-dd"/>>
			</p>
			<p>
				<label>상태:</label>
				<select name="state">
					<option value="종류">종류</option>
					<option value="준비" ${spms.state == "준비" ? "selected":"" }>준비</option>
					<option value="진행중" ${spms.state == "진행중" ? "selected":"" }>진행중</option>
					<option value="종료" ${spms.state == "종료" ? "selected":"" }>종료</option>
					<option value="보류" ${spms.state == "보류" ? "selected":"" }>보류</option>
				</select>
			</p>	
			<p id="btn">
				<button type="button" id="mod">수정</button>
				<script type="text/javascript">
					$("#mod").click(function(){
						$("#f1").attr("action","modify");
						$("#f1").submit();
					})
				</script>			
				
				<button type="button" id="can">취소</button>
				<script type="text/javascript">
					$("#can").click(function(){
						var no = $("input[name='no']").val();
						location.href="${pageContext.request.contextPath}/read?no="+no;     
					})
				</script>	
				
			</p>
		</div>	
	</form>
	<%
		pageContext.include("bottom.jsp");
	%>
</body>
</html>