<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		width:700px;
		margin: 0 auto;
		margin-bottom:30px;
		  
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
	
	
	#btn #savebtn{
		background:blue;
		color: #fff;
		width:48px;
		height:27px;
	}
	#btn #goListBtn{
	 	background:blue;
		color: #fff;
	 	
	 	
	 	border-width: 2px;
	    border-style: outset;
  		border-color: buttonface;
  	 	border-image: initial;
   	    align-items: flex-start;
        padding: 1px 6px;
	}
	  
</style>
</head>
<body>
	<%
		pageContext.include("header.jsp");
	%>
	<form method="post" action="write">
		<div id="main">
			<p>
				<label>프로젝트 이름</label>
				<input type="text" name="spms_name" id="title">
			</p>
			<p>
				<label>프로젝트 내용</label>  
				<textarea rows="20" cols="50" name="content"></textarea>  
			</p>
			<p>
				<label>시작날짜</label>
				<input name="startday" type="text" class="datepicker">				
			</p>
			<p>
				<label>마감날짜</label>
				<input name="endday" type="text" class="datepicker">
			</p>
			<p>  
				<label>상태:</label>
				<select name="state">
					<option>종류</option>
					<option selected="selected">준비</option>
					<option>진행중</option>
					<option>종료</option>
					<option>보류</option>
				</select>
			</p>
			</div>
			<div>
			<p id="btn">
				<button type="submit" id="savebtn">저장</button>
				<a id="goListBtn">취소</a>
			</p>
		</div>
		</form>
		  
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