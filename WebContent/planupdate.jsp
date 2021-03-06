<%@page import="dao.BoardScheduleDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.mySchduleDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<%@ include file="pageLoginCheck.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
/* 	절대위치(absolute)
	상대위치(relative) */
* {
	margin: 0px;
	padding: 0px;
}
bady {
	background-image: url('images/background.jpg') no-repeat;
}
div { /* 모두모두 가운데 정렬 !!!!! */
	margin: 0px auto; 
 	/* border: 1px solid black; */
}

.main-top {
	width: 1200px;
	height: 330px;
	padding: 15px 0 0 0;
	border: 1px solid #B5B2FF;
	border-radius: 10px;
	
}
.main-imagebt{
	width: 80px;
	height: 30px;
	margin: 0 5px 0 50px;
}
.main-top-second1 {
	width: 380px;
	height: 250px;
 	margin: 25px 0 0 35px; 
	border: 1px solid #B5B2FF;
	display: inline-block;
}
.main-top-second2 {
	padding: 40px 0 0 70px;
	border-radius: 10px;
	vertical-align: top;
	width: 630px;
	height: 212px;
 	margin: 25px 0 0 40px; 
	border: 1px solid #B5B2FF;
	display: inline-block;
}
#title {
	width: 300px;
	height: 30px;
}
#tag {
	width: 300px;
	height: 30px;
}
#tour_date {
	width: 136px;
	height: 30px;
}
#nickname {
	width: 290px;
	height: 30px;
}
.main-center {
	border-radius: 10px;
	width: 1200px;
	height: 350px;
	padding: 15px 0 0 0;
	border: 1px solid #B5B2FF;
}
.center-text {
	/* display: inline-block; */
	/* vertical-align: middle; /* 텍스트 라인 높이 맞춤 */ */
	margin: 0 0 0 20px;
	width: 1100px;
	height: 50px;
	font-size: 20pt;
}
.center-main-card{
	width: 1200px;
	height: 300px;
	overflow: auto;
	border: 1px solid #B5B2FF;
}
.center-card-box{
	/* overflow: scroll; */
	width: 250px;
	height: 250px;
	margin: 25px 0 10px 35px;
	display: inline-block; /* 가로형 정렬 */
}
.card-box-title {
	vertical-align: top; /* 텍스트 라인 높이 맞춤 */
	width: 240px;
	height: 70px;
	overflow: hidden;
	overflow: auto;
	margin: 0 0 5px 2px;
	border: 1px solid #B5B2FF;
	font-size: 10pt;
}
.card-box-title0 {
	width: 240px;
	height: 20px;
	margin: 0;
	vertical-align: middle;
}
.card-box-title1 {
	width: 240px;
	height: 20px;
	margin: 0;
	vertical-align: middle;
}
.card-box-title2 {
	width: 240px;
	height: 20px;
	margin: 3px 0 0 0;
	vertical-align: middle;
}
.card-box-bottom {
	width: 240px;
	height: 170px;
	overflow: auto;
	border: 1px solid #B5B2FF;
}
.center-bottom-image {
	width: 1160px;
	height: 200px;
	margin: 20px 20px;
	font-size: 14pt;
	vertical-align: top;
}
.button-bottom {
	width: 1100px;
	height: 30px;
	magin : 0 30px;
}
#radio {

}
.area {
	height: 15px;
}
.buttonList {
	background-color: #A2C4FF;
	color: white;
	border-style: double;
	font-family: 굴림;
	font-weight: bold;
}
</style>
<script type="text/javascript">
	function previewFile(input){
   		 var reader=new FileReader();
    
   		 reader.onload=function(event){
    	   $('.main-top-second1').attr('src', event.target.result);
    	}
  		  reader.readAsDataURL(input.files[0]);
 	}
	function change() {
		var plan = document.getElementById("")
		
	}

$(document).on('click', '.radio', function(){					 // document 전체  라디오 버튼에 이벤트를 준다. (클래스로 잡아주고)
	var clickedid = $(this).attr("id"); 					     // 클릭 이벤트시 나 자신의(this) 이벤트 처리를 하고 다른곳에서 가지고올 필요한 데이터에 id 값을 지정해준뒤 id값을 가지고 오겠다고 지정해줌
	var parsedid = clickedid.substring(5, clickedid.lenght);	 // 변수에 값을 담아주면서 서브스트링 함수를 사용하여 r a d i o 5번째 이후 부터 값을 출력하게 됨
	parsedid = "#"+parsedid;									 // 가지고올 값 id   # 을 변수명에 더해줌
	var centerCardBox = $(parsedid);							 // center-box에 있는 값을 뽑아본다.
	var cardBoxTitle = centerCardBox.children().children().eq(1).text();	 // 가지고올 값이 title 에 있으므로 box에서 두번 타고 내려가 값을 뽑아온다. div 파일 2번째가 name
	var cardBoxTitle1 = centerCardBox.children().children().eq(0).text();	 // 가지고올 값이 title 에 있으므로 box에서 두번 타고 내려가 값을 뽑아온다. div 파일 첫번쨰가 sl_code
	var cardBoxBottom = centerCardBox.children().children().eq(2).text();	 // 위와 동일한 방법 // div 파일 세번째가 date 값이다. 순서를 보면 이해 가능
	console.log("cardBoxTitle1 : " + cardBoxTitle1);
	
 	$("#datehidden").val(cardBoxBottom.trim());
	$("#areahidden").val(cardBoxTitle.trim());								// 뽑아온값을 value 값으로 submit 넘겨준후 Action, dao 에서 추가해주면 출력 끝!!
	$("#area").text(cardBoxTitle.trim());							// 뽑아온값을 넣어줄곳에 아이디를 지정해주어 아이디에 담아주면 원하는 위치에 값 출력 끝!!!
	$("#date").text(cardBoxBottom);									// 위와 동일!!
	$("#sl_codehidden").val(cardBoxTitle1.trim());					//	trim()<<< 공백 제거
});

var loadFile = function(event) {
	var output = document.getElementById('output');
	output.src = URL.createObjectURL(event.target.files[0]);
};
var loadFile = function(event) {
    var output = document.getElementById('output');
    output.src = URL.createObjectURL(event.target.files[0]);
};
</script>
</head>
<body>
<%
	String bs_num = request.getParameter("bs_num");
	request.setAttribute("email", session.getAttribute("email"));
%>
<form action="planupdatePro.do?bs_num=${bs_num}" name="planSelect" method="post" enctype="multipart/form-data">
	<div class="main-top">
		<img class="main-top-second1" id="output" alt="IMG" id="output" src="${dto.image_url }">
		<div class="main-top-second2" id ="test">
		<p>제   목 : <input type="text" id="title" name="title" required="required" placeholder="제 목" value ="${dto.title }"></p><br>
		<p>태   그 : <input type="text" id="tag" name="tag" required="required" value="${dto.tag }"></p><br>
		<h2>수정할 내용을 입력하여 주세요</h2>
		 	<input type="hidden" id="sl_codehidden" value="${dto.sl_code }">
		</div>
		<div class="main-imagebt">
			<input type="file" name="image" onchange="loadFile(event)" accept="image/*">
		</div>
	</div>
	<div class="area"></div>
	<div class="main-center">
		<div class="center-text">
			일정 내용
		</div>
		<div class="center-bottom-image">
			<textarea rows="13" cols="163" name="content" required="required">${dto.content }</textarea>
		</div>
		<div class="button-bottom" align="right">
			<input type="submit" value="확인" class="buttonList" style="width: 40pt; height: 20pt">
			<input type="button" value="취소" class="buttonList" style="width: 40pt; height: 20pt" 
			onclick="location.href='planview.do?bs_num=${dto.bs_num}'">
		</div>
	</div>
	</form>
	
	<%@ include file="footer.jsp"%>
	
</body>
</html>