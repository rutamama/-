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
<link href="./resources/css/prMain.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:900i" rel="stylesheet">
<script>
$(document).ready(function() {
	 $(".hamburger").click(function(){
		    $(this).toggleClass("is-active");
		  });
	
	 $(".arrows").click(function() {
		  $( this ).toggleClass( "open" ); 
		    $('.nav').animate({
		    height: 'toggle'});
		});
	
	 $("#correct").click(correctForm);
});

</script>
</head>
<body>
<ul>
  <li><a href="prMain">Main</a></li>
  <li><a href="prBoard">Choose</a></li>
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
	<h1 style="font-family: 'Montserrat', sans-serif">${Member.prid } Wellcome</h1>
<c:if test="${gr eq null }">
	<h2 align="center" style="font-family: 'Montserrat', sans-serif">Choose not yet</h2>
	<p align="center" style="font-family: 'Montserrat', sans-serif"><a href="prBoard">GO Choose</a></p>
</c:if>

<c:if test="${gr ne null }">
<table style="width:70%;margin:auto;">
	<tr>
		<td style="width:160px; height:190px;"><img src="./resources/img/choose/gr0_${gr.gr0 }.png" style="width:160px; height:190px;"></td>
		<td style="width:160px; height:190px;"><img src="./resources/img/choose/gr1_${gr.gr1 }.png" style="width:160px; height:190px;"></td>
		<td style="width:160px; height:190px;"><img src="./resources/img/choose/gr2_${gr.gr2 }.png" style="width:160px; height:190px;"></td>
		<td style="width:160px; height:190px;"><img src="./resources/img/choose/gr3_${gr.gr3 }.png" style="width:160px; height:190px;"></td>
	</tr>
	<tr>
		<td style="width:160px; height:190px;"><img src="./resources/img/choose/gr4_${gr.gr4 }.png" style="width:160px; height:190px;"></td>
		<td style="width:160px; height:190px;"><img src="./resources/img/choose/gr5_${gr.gr5 }.png" style="width:160px; height:190px;"></td>
		<td style="width:160px; height:190px;"><img src="./resources/img/choose/gr6_${gr.gr6 }.png" style="width:160px; height:190px;"></td>
		<td style="width:160px; height:190px;"><img src="./resources/img/choose/gr7_${gr.gr7 }.png" style="width:160px; height:190px;"></td>
	</tr>
	<tr>
		<td style="width:160px; height:190px;"><img src="./resources/img/choose/gr8_${gr.gr8 }.png" style="width:160px; height:190px;"></td>
		<td style="width:160px; height:190px;"><img src="./resources/img/choose/gr9_${gr.gr9 }.png" style="width:160px; height:190px;"></td>
		<td style="width:160px; height:190px;"><img src="./resources/img/choose/gr10_${gr.gr10 }.png" style="width:160px; height:190px;"></td>
		<td style="width:160px; height:190px;"><img src="./resources/img/choose/gr11_${gr.gr11 }.png" style="width:160px; height:190px;"></td>
	</tr>
</table>
</c:if>
</body>
</html>