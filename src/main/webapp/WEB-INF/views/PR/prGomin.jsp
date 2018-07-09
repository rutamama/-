<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="./resources/js/jquery-3.2.1.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Montserrat:900i" rel="stylesheet">
<link href="./resources/css/prMain.css" rel="stylesheet" type="text/css">
<script>
$(document).ready(function() {
	$('#psoraF').on('click', function (){
		//소라고동님 답주세요
		$('#psoraF').attr('src', './resources/img/sora/${godong}.png');
		var w = $(this).width();
		var h = $(this).height();
		$(this).css('width', 700).css('height', 352);
		$('#psoraB').css('width', 0).css('height', 0);
	});
	
	$('#psoraF').on('mouseleave', function (){
		//페이지 새로고침
		location.reload();
	});
	
	$( ".arrows" ).click(function() {
		  $( this ).toggleClass( "open" ); 
		    $('.nav').animate({
		    height: 'toggle'});
		});
});

</script>
</head>
<body>
<ul>
  <li><a href="prMain">Main</a></li>
  <li><a href="prBoard ">Choose</a></li>
  <li><a href="prGomin">Something Wrong?</a></li>
  <li>
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
  <br>
  <div class="arrowsWrap">
    <div class="arrows">
      <span class="chevron bottom"></span>
    </div>
  </div>	
  </li>
</ul>

<h2 align="center" style="font-family: 'Montserrat', sans-serif">Click Conch</h2>
<br>
<table align="center" width="496">
	<tr>
		<td><img src="./resources/img/sora/soraF.jpg" id="psoraF" align="left">
		<img src="./resources/img/sora/soraB.jpg" id="psoraB" align="right"></td>
	</tr>
</table>

</body>
</html>