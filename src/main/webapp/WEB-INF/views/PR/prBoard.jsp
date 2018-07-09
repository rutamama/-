<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="./resources/js/jquery-3.2.1.min.js"></script>
<link href="./resources/css/prMain.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:900i" rel="stylesheet">
<script>
$(document).ready(function() {
	$("#div1").hide();
	
	$( ".arrows" ).click(function() {
		  $( this ).toggleClass( "open" ); 
		    $('.nav').animate({
		    height: 'toggle'});
		});

	$('#bt1').on('click', function(){
		$("#div1").show('slow');
	
	});
	
	$('#bt2').on('click', function(){
		$("#div1").hide();
	});
});	

</script>
</head>

<body>
<ul>
  <li><a href="prMain">Main</a></li>
  <li><a href="prBoard">Choose</a></li>
  <li><a href="prGomin">Something Wrong?</a></li>
  <li>
  <c:if test="${Member.prid ne null}">
  <div class="nav">
   <ul> 
      <c:if test="${Member.prid ne null}">
	      <li class="aaaa"><a href="prchooseCForm">Correct</a></li>
	      <li></li>
	      <li class="aaaa"><a href="prLogout">Logout</a></li>
	      <li></li>
       </c:if>
       <c:if test="${Member.prid eq null}">
			<li></li>
	      	<li class="aaaa"><a href="/projectTwo">Login</a></li>
	      	<li></li>
	   </c:if>
   </ul>
  </div>
  </c:if>
  <br>
  <div class="arrowsWrap">
    <div class="arrows">
      <span class="chevron bottom"></span>
    </div>
  </div>	
  </li>
</ul>
<c:if test="${gr eq null }">
<form action="prChoose" method="post" onsubmit="radioCheck()">
<input type="hidden" name = "prid" value="${Member.prid }">
<input type="hidden" name = "prgen" value="${Member.prgen }">
	<table class="type06" style="width:70%;margin:auto;">
		<tr>
			<td width="500" scope="row" class="even"><input type="radio" name="gr0" value="1" id="gr1">휴지 앞으로걸기</td>
			<td width="500" class="even"><input type="radio" name="gr0" value="3" checked id="gr1">휴지걸이가 없음</td>
			<td width="500" class="even"><input type="radio" name="gr0" value="2" id="gr1">휴지 뒤로 걸기</td>
		</tr>
		<tr>
			<td width="500" scope="row"><input type="radio" name="gr1" value="1" id="gr1">붕어빵 머리부터</td>
			<td width="500"><input type="radio" name="gr1" value="3" checked id="gr1">국화빵</td>
			<td width="500"><input type="radio" name="gr1" value="2" id="gr1">붕어빵 꼬리부터</td>
		</tr>
		<tr>
			<td scope="row" class="even"><input type="radio" name="gr2" value="1" id="gr2">아침형 인간</td>
			<td class="even"><input type="radio" name="gr2" value="3" checked id="gr2">그날그날 다름</td>
			<td class="even"><input type="radio" name="gr2" value="2" id="gr2">저녁형 인간</td>
			
		</tr>
		<tr>
			<td scope="row"><input type="radio" name="gr3" value="1" id="gr3">비 오는날</td>
			<td><input type="radio" name="gr3" value="3" checked id="gr3">둘다</td>
			<td><input type="radio" name="gr3" value="2" id="gr3">맑은날</td>
		</tr>
		<tr>
			<td scope="row" class="even"><input type="radio" name="gr4" value="1" id="gr4">떡순</td>
			<td class="even"><input type="radio" name="gr4" value="3" checked id="gr4">순튀</td>
			<td class="even"><input type="radio" name="gr4" value="2" id="gr4">떡튀</td>
		</tr>
		<tr>
			<td scope="row"><input type="radio" name="gr5" value="1" id="gr5">얇은 감튀</td>
			<td><input type="radio" name="gr5" value="3" checked id="gr5">어니언링</td>
			<td><input type="radio" name="gr5" value="2" id="gr5">두꺼운 감튀</td>
		</tr>
		<tr>
			<td scope="row" class="even"><input type="radio" name="gr6" value="1" id="gr6">부먹</td>
			<td class="even"><input type="radio" name="gr6" value="3" checked id="gr6">안먹</td>
			<td class="even"><input type="radio" name="gr6" value="2" id="gr6">찍먹</td>
		</tr>
		<tr>
			<td scope="row"><input type="radio" name="gr7" value="1" id="gr7">소설</td>
			<td><input type="radio" name="gr7" value="3" checked id="gr7">둘다</td>
			<td><input type="radio" name="gr7" value="2" id="gr7">만화</td>
		</tr>
		<tr>
			<td scope="row" class="even"><input type="radio" name="gr8" value="1" id="gr8">짬뽕</td>
			<td class="even"><input type="radio" name="gr8" value="3" checked id="gr8">볶음밥</td>
			<td class="even"><input type="radio" name="gr8" value="2" id="gr8">짜장</td>
		</tr>
		<tr>
			<td scope="row"><input type="radio" name="gr9" value="1" id="gr9">순살치킨</td>
			<td><input type="radio" name="gr9" value="3" checked id="gr9">무많이</td>
			<td><input type="radio" name="gr9" value="2" id="gr9">뼈 있는치킨</td>
		</tr>
		<tr>
			<td scope="row" class="even"><input type="radio" name="gr10" value="1" id="gr10">순대/쌈장</td>
			<td class="even"><input type="radio" name="gr10" value="3" checked id="gr10">순대/소금</td>
			<td class="even"><input type="radio" name="gr10" value="2" id="gr10">순대/초장</td>
		</tr>
		<tr>
			<td scope="row" style="width:150px;"><input type="radio" name="gr11" value="1" id="gr11">락 페스티벌</td>
			<td><input type="radio" name="gr11" value="3" checked id="gr11">음악은 멜론</td>
			<td><input type="radio" name="gr11" value="2" id="gr11">일렉 페스티벌</td>
		</tr>
		<tr>
			<td></td>
			<td><input type="submit" class="submit" value="Submit" style="width:150px;"></td>
			<td></td>
		</tr>
	</table>
</form>
</c:if>

<c:if test="${gr ne null && lifeaccompany eq null }">
<h2 align="center" style="font-family: 'Montserrat', sans-serif">Already Choose</h2>
<form action="prSearch" method="post">
<input type="hidden" name="prid" value="${gr.prid}">
<input type="hidden" name="gr0" value="${gr.gr0}">
<input type="hidden" name="gr1" value="${gr.gr1}">
<input type="hidden" name="gr2" value="${gr.gr2}">
<input type="hidden" name="gr3" value="${gr.gr3}">
<input type="hidden" name="gr4" value="${gr.gr4}">
<input type="hidden" name="gr5" value="${gr.gr5}">
<input type="hidden" name="gr6" value="${gr.gr6}">
<input type="hidden" name="gr7" value="${gr.gr7}">
<input type="hidden" name="gr8" value="${gr.gr8}">
<input type="hidden" name="gr9" value="${gr.gr9}">
<input type="hidden" name="gr10" value="${gr.gr10}">
<input type="hidden" name="gr11" value="${gr.gr11}">
<input type="hidden" name="prgen" value="${gr.prgen}">
<table>
	<tr>
		<td align="center" width="1500"><input type="submit" value="찾아주세요" class="submit"></td>
	</tr>
</table>
</form>
</c:if>

<c:if test="${gr ne null && lifeaccompany ne null }">
<h1 align="center" style="font-family: 'Montserrat', sans-serif">Congratulation Find Your Life accompany</h1>
<h2 align="center" style="font-family: 'Montserrat', sans-serif">ID is ${lifeaccompany.get(0).prid }, Matched Cnt is ${lifeaccompany.get(0).cnt }</h2>

<p style="width:70%;margin:auto;" align="right"><input type="button" value="Messege" id="bt1" style="font-family: 'Montserrat', sans-serif"></p>


<div id="div1" style="width:70%;margin:auto;">
<form action="prSendm" method="post">	
	<br>
		<p align="right"><input type="text" name="contents" style="width:530px; font-family: 'Montserrat', sans-serif;"></p>
		<p></p>
		<p align="right"><input type="submit" value="Send" class="submit"> <input type="button" value="Close" id="bt2" style="font-family: 'Montserrat', sans-serif">
		</p>
		
	<br>
</form>
</div>
<table style="width:70%;margin:auto;">
	<tr class="contetnt">
	<c:if test="${mlist eq null }">
		<h1 align="center" style="font-family: 'Montserrat', sans-serif">Messege is Nothing</h1>
	</c:if>
	</tr>
	<tr>
	<c:if test="${mlist ne null }">
	<c:forEach var="m" items="${mlist}">
	<c:if test="${m.mid eq gr.prid || lifeaccompany.get(0).prid eq m.mid}">
		<c:if test="${m.mid eq gr.prid}">
			<tr align="right">
				<td width="600px" style="color:white; font-size:20px; background:#1aa3ff; font-family: 'Montserrat', sans-serif;">${m.mcontents }</td>
			</tr>	
			<tr align="right">
				<td style="font-size:5px; background:#c3d4e0; font-family: 'Montserrat', sans-serif;">${m.minputdate  }</td>
			</tr>
		</c:if>
		
		<c:if test="${lifeaccompany.get(0).prid eq m.mid}">
			<tr align="left">
				<td width="600px" style="color:white; font-size:20px; background:#ff80aa; font-family: 'Montserrat', sans-serif;">${m.mcontents }</td>
			</tr>
			<tr align="left">
				<td style="font-size:5px; background:#ffccdd; font-family: 'Montserrat', sans-serif;">${m.minputdate  }</td>
			</tr>
		</c:if>
	</tr>		
	</c:if>	
	</c:forEach>
	</c:if>
</table>
</c:if>
</body>
</html>