<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Join</title>
<script src="./resources/js/jquery-3.2.1.min.js"></script>
<link href="./resources/css/pjoin.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:900i" rel="stylesheet">
<script>
function formtest(){
	var month = document.getElementById('month').value;
	var year = document.getElementById('year').value;
	
	alert(month + '/' + year);
}
</script>
</head>
<body>
<div id="table"></div>
	<div class="seven col">
	<form class="form" method="post" onsubmit="formtest()">
		<input type="text" name="ID" id="ID" placeholder="ID :">
		<input type="password" name="PW" id="PW" placeholder="PW :">
		<input type="password" id="PW2" placeholder="Re-PW :">
		<input type="text" name="NickName" id="NN" placeholder="NickName :">
		<input type="text" name="Email" id="EM" placeholder="E-mail :">
		
		<div class="edate">
			<div class="">
			<p>Birth :</p>
			<select id="year">
				<option value="0"> ▼</option>
				<option value="1987">1987</option>
				<option value="1988">1988</option>
				<option value="1989">1989</option>
				<option value="1990">1990</option>
				<option value="1991">1991</option>
				<option value="1992">1992</option>
				<option value="1993">1993</option>
			</select>
			<select id="month">
				<option value="0"> ▲</option>
				<option value="january">January</option>
				<option value="febuary">Febuary</option>
				<option value="march">March</option>
				<option value="april">April</option>
				<option value="may">May</option>
				<option value="june">June</option>
				<option value="july">July</option>
				<option value="august">August</option>
				<option value="september">September</option>
				<option value="october">October</option>
				<option value="november">November</option>
				<option value="december">December</option>
			</select>
			<select id="gender">
				<option value="0"> ▼</option>
				<option value="M">M</option>
				<option value="F">F</option>
			</select>
			</div>
		</div>
		<div class="submit-wrapper">
			<input class="submit" type="reset" value="Reset">
			<input class="submit" type="submit" value="Join">
		</div>
	</form>
	</div>
</div>
</body>
</html>