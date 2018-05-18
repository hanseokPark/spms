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
		width:600px;
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
	<form method="post" action="writeFrom">
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
		
		   
		
			/* $("#addbtn").click(function(){
				var nameVal = $("#title").val();
				var contentVal = $("#content").val();
				var startdayVal = $("#startday").val();
				var enddayVal = $("#endday").val();
				var stateVal = $("#state").val();
				
				
				var sendData = {
						spms_name : nameVal,						
						content : contentVal,
						start_day : startdayVal,
						end_day : enddayVal,
						state : stateVal						
					};

					//@RequestBody, JSON.stringify, headers:Content-Type
					$.ajax({
						type : "post",
						url : "${pageContext.request.contextPath}/writeFrom",
						data : JSON.stringify(sendData), // JSON.stringify() -> json string로 바꿔줌
						dataType : "text", //xml,text,json
						headers : {
							"Content-Type" : "application/json"
						},
						success : function(result) {
							console.log(result)
							if (result == "success") {
								alert("등록 되었습니다.");								
								
								
							}
						}
					})
				}) */
			
			
		</script>
		
		
	<%
		pageContext.include("bottom.jsp");
	%>
</body>
</html>