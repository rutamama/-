<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<script src="./resources/js/jquery-3.2.1.min.js"></script>
<link href="./resources/css/home.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:900i" rel="stylesheet">
<script>
$(document).ready(function() {
	
	$('#jid').keyup(function(){
		var jid = $('#jid').val();
		
		if(jid.length > 10)
		{
			$('#checkW').html('ID: Long');
		}
		if(jid.length > 4 && jid.length <9)
		{
			/* 
			$.ajax({
				url: 'prIdCheck',
				type: 'GET',
				data: {prid: jid},
				dataType: 'json',
				success: function(check)
				{
					if(check == true)
					{
						$('#checkW').html('ID: Not Used');
					}
					else
					{
						$('#checkW').html('ID: Used');
					}
				},
				error: function(e){
					alert(JSON.stringify(e));
				}
			});
			 */
			$('#checkW').html('ID: Not used');	 
		}
		if(jid.length < 4)
		{
			$('#checkW').html('ID: Short');
		}	
	});
	
});

function formtest(){
	var pw = $('#pw').val();
	var pw2 = $('#pw2').val();
	if(pw != pw2)
	{
		alert('Pw is not Same');
		return false;
	}
	else
	{
		return true;
	}
}

function LoginCheck(){
	
}
</script>
</head>

<body>

<div class="container">
	<h1>An nyung ha se yo!</h1>
	<p id="check"></p>	
	<h2 id="checkW"></h2>
  <table>
  <tr>
  <td width="900" align="right">
  <div class="block">
    	<form action="prJoin" method="post" onsubmit="formtest()">
		<h2>Join</h2>
		<p class="img-p">
			<select id="year" name="pryear">
				<option value="0"> ▽</option>
				<option value="1987">1987</option>
				<option value="1988">1988</option>
				<option value="1989">1989</option>
				<option value="1990">1990</option>
				<option value="1991">1991</option>
				<option value="1992">1992</option>
				<option value="1993">1993</option>
			</select>
			<select id="month" name="prmonth">
				<option value="0"> ▼</option>
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
			<select id="gender" name="prgen">
				<option value="0"> ▽</option>
				<option value="M">M</option>
				<option value="F">F</option>
			</select>
			<input type="text" name="prid" id="jid" placeholder="ID :">
			<input type="password" name="prpw" id="pw" placeholder="PW :">
			<input type="password" id="pw2" placeholder="Re-PW :">
			<input type="text" name="prnn" id="nn" placeholder="NickName :">
			<input type="text" name="prem" id="em" placeholder="E-mail :">
					
			<input class="submit" type="submit" value="Join">	
		</p>
		</form>	
	</div>
</td>
<td width="900" align="left">
<form action="prLogin" method="post" onsubmit="LoginCheck()" >
  <div class="block">
  	<h2> &nbsp;Login</h2>
    <p class="img-p" width="1100">
    	<input type="text" name="id" id="lid" placeholder=" ID :">
		<input type="password" name="pw" id="lpw" placeholder=" PW :">
		&nbsp; &nbsp;<input class="submit" type="submit" value="Login">
     </p>
   </div>
</form>
</td>
</tr>	
</table>
</div>

</body>
</html>
