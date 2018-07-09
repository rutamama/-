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
<link href="./resources/css/prMain.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:900i" rel="stylesheet">
<script>
function correctForm(){
	window.close();
}
</script>
</head>
<body>
<c:if test="${gr eq null}">
	<h2 align="center" style="font-family: 'Montserrat', sans-serif">Choose not yet</h2>
	<p align="center" style="font-family: 'Montserrat', sans-serif"><a href="prBoard">GO Choose</a></p>
</c:if>
<c:if test="${gr ne null}">
<form action="prchooseC" method="post" onsubmit="correctForm()">
<input type="hidden" name = "prid" value="${gr.prid }">
<input type="hidden" name = "prgen" value="${gr.prgen }">
<table class="type06" style="width:70%;margin:auto;">
     <%-- <td scope="row" class="even"><input type="radio" name="gr0" value="1" id="gr0" <c:if test ="${gr.gr0==1}">checked</c:if>>휴지 앞으로걸기</td> --%>

		<tr>
			<td width="500" scope="row" class="even"><input type="radio" name="gr0" value="1" id="gr1" <c:if test ="${gr.gr0==1}">checked</c:if>>휴지 앞으로걸기</td>
			<td width="500" class="even"><input type="radio" name="gr0" value="3" id="gr1" <c:if test ="${gr.gr0==3}">checked</c:if>>휴지걸이가 없음</td>
			<td width="500" class="even"><input type="radio" name="gr0" value="2" id="gr1" <c:if test ="${gr.gr0==2}">checked</c:if>>휴지 뒤로 걸기</td>
		</tr>
		<tr>
			<td width="500" scope="row"><input type="radio" name="gr1" value="1" id="gr1" <c:if test ="${gr.gr1==1}">checked</c:if>>붕어빵 머리부터</td>
			<td width="500"><input type="radio" name="gr1" value="3" id="gr1" <c:if test ="${gr.gr1==3}">checked</c:if>>국화빵</td>
			<td width="500"><input type="radio" name="gr1" value="2" id="gr1" <c:if test ="${gr.gr1==2}">checked</c:if>>붕어빵 꼬리부터</td>
		</tr>
		<tr>
			<td scope="row" class="even"><input type="radio" name="gr2" value="1" id="gr2" <c:if test ="${gr.gr2==1}">checked</c:if>>아침형 인간</td>
			<td class="even"><input type="radio" name="gr2" value="3" id="gr2" <c:if test ="${gr.gr2==3}">checked</c:if>>그날그날 다름</td>
			<td class="even"><input type="radio" name="gr2" value="2" id="gr2" <c:if test ="${gr.gr2==2}">checked</c:if>>저녁형 인간</td>
			
		</tr>
		<tr>
			<td scope="row"><input type="radio" name="gr3" value="1" id="gr3" <c:if test ="${gr.gr3==1}">checked</c:if>>비 오는날</td>
			<td><input type="radio" name="gr3" value="3" id="gr3" <c:if test ="${gr.gr3==3}">checked</c:if>>둘다</td>
			<td><input type="radio" name="gr3" value="2" id="gr3" <c:if test ="${gr.gr3==2}">checked</c:if>>맑은날</td>
		</tr>
		<tr>
			<td scope="row" class="even"><input type="radio" name="gr4" value="1" id="gr4" <c:if test ="${gr.gr4==1}">checked</c:if>>떡순</td>
			<td class="even"><input type="radio" name="gr4" value="3" id="gr4" <c:if test ="${gr.gr4==3}">checked</c:if>>순튀</td>
			<td class="even"><input type="radio" name="gr4" value="2" id="gr4" <c:if test ="${gr.gr4==2}">checked</c:if>>떡튀</td>
		</tr>
		<tr>
			<td scope="row"><input type="radio" name="gr5" value="1" id="gr5" <c:if test ="${gr.gr5==1}">checked</c:if>>얇은 감튀</td>
			<td><input type="radio" name="gr5" value="3" id="gr5" <c:if test ="${gr.gr5==3}">checked</c:if>>어니언링</td>
			<td><input type="radio" name="gr5" value="2" id="gr5" <c:if test ="${gr.gr5==2}">checked</c:if>>두꺼운 감튀</td>
		</tr>
		<tr>
			<td scope="row" class="even"><input type="radio" name="gr6" value="1" id="gr6" <c:if test ="${gr.gr6==1}">checked</c:if>>부먹</td>
			<td class="even"><input type="radio" name="gr6" value="3" id="gr6" <c:if test ="${gr.gr6==3}">checked</c:if>>안먹</td>
			<td class="even"><input type="radio" name="gr6" value="2" id="gr6" <c:if test ="${gr.gr6==2}">checked</c:if>>찍먹</td>
		</tr>
		<tr>
			<td scope="row"><input type="radio" name="gr7" value="1" id="gr7" <c:if test ="${gr.gr7==1}">checked</c:if>>소설</td>
			<td><input type="radio" name="gr7" value="3" id="gr7" <c:if test ="${gr.gr7==3}">checked</c:if>>둘다</td>
			<td><input type="radio" name="gr7" value="2" id="gr7" <c:if test ="${gr.gr7==2}">checked</c:if>>만화</td>
		</tr>
		<tr>
			<td scope="row" class="even"><input type="radio" name="gr8" value="1" id="gr8" <c:if test ="${gr.gr8==1}">checked</c:if>>짬뽕</td>
			<td class="even"><input type="radio" name="gr8" value="3" id="gr8" <c:if test ="${gr.gr8==3}">checked</c:if>>볶음밥</td>
			<td class="even"><input type="radio" name="gr8" value="2" id="gr8" <c:if test ="${gr.gr8==2}">checked</c:if>>짜장</td>
		</tr>
		<tr> 
			<td scope="row"><input type="radio" name="gr9" value="1" id="gr9" <c:if test ="${gr.gr9==1}">checked</c:if>>순살치킨</td>
			<td><input type="radio" name="gr9" value="3" id="gr9" <c:if test ="${gr.gr9==3}">checked</c:if>>무많이</td>
			<td><input type="radio" name="gr9" value="2" id="gr9" <c:if test ="${gr.gr9==2}">checked</c:if>>뼈 있는치킨</td>
		</tr>
		<tr>
			<td scope="row" class="even"><input type="radio" name="gr10" value="1" id="gr10" <c:if test ="${gr.gr10==1}">checked</c:if>>순대/쌈장</td>
			<td class="even"><input type="radio" name="gr10" value="3" id="gr10" <c:if test ="${gr.gr10==3}">checked</c:if>>순대/소금</td>
			<td class="even"><input type="radio" name="gr10" value="2" id="gr10" <c:if test ="${gr.gr10==2}">checked</c:if>>순대/초장</td>
		</tr>
		<tr>
			<td scope="row"><input type="radio" name="gr11" value="1" id="gr11" <c:if test ="${gr.gr11==1}">checked</c:if>>락 페스티벌</td>
			<td><input type="radio" name="gr11" value="3" id="gr11" <c:if test ="${gr.gr11==3}">checked</c:if>>음악은 멜론</td>
			<td><input type="radio" name="gr11" value="2" id="gr11" <c:if test ="${gr.gr11==2}">checked</c:if>>일렉 페스티벌</td>
		</tr>
    <tr>
    	<td></td>
		<td><input type="submit" value="수정" style="width:150px;" class="submit"></td>
		<td></td>
	</tr>
</table>
</form>
</c:if>

</body>
</html>