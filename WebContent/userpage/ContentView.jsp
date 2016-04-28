<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<style>
#nickname{
float:left;
}
#date{
float:right;
}
#hash{
color:#5AAEFF;
}
</style>
<script>   
function report(){
	
	url="/INTERHASH/ReportForm.hash?check=y";
	
	window.open(url,"post","toolbar=no ,width=500 ,height=300,directories=no,status=yes,menubar=no");
}
</script>

</head>
<body>
<table bgcolor="blue "width=100% height=100%>
<tr>
<td>
<form name="view">
<table bgcolor="green" align="center" width=50% height=100% >
	<tr>
		<td width=40% >${sessionScope.nickName}님</td>
		<td align="right">${sdf.format(content.concreateddate)}</td>
	</tr>
	<tr>
		<c:if test="${sessionScope.memId==content.email}">
		<td align="right" colspan="2"><a href="/INTERHASH/ContentDelete.hash">수정하기</a> /
		<a href="/INTERHASH/ContentDelete.hash">삭제하기</a></td>
		</c:if>
		<c:if test="${sessionScope.memId!=content.email}">
		<td align="right" colspan="2"><a onclick="report()">신고하기</a></td>
		</c:if>			
	</tr>
	<tr>
		<td colspan="2">${content.content}</td>
	</tr>
	<tr>
		<td id="hash" colspan="2">${content.conhash}</td></tr>
	<tr>
		<td height="420" colspan="2"><img src="${content.conphoto}"></td>
	</tr>
	<tr>
		<td colspan="2" align="right" height="70">좋아요 / 댓글수</td>		
	</tr>
</table>
</form> 
</td>

<td>
<form method="post" action="ContentView.hash">
<table bgcolor="green" align="center" width=80% height=100% >
	<tr>
		<td width=40% >${sessionScope.nickName}님</td>
	
		<input type=hidden name=connum value="${content.connum}">
	</tr>
	<tr>
		<td><input type="text" name="comcontent"></td>
	</tr>
	<tr>
		<td><input type="submit" value="개시"></td>
	</tr>	
	
</form> 
<!-- --------------------------------------------------
-댓글보내기 -->


 <c:if test="${comment.comnum>0}">

<c:forEach var="comments" items="${comment}">
<tr>
<td>
${comment.comcontent}
</td>
</tr>
</c:forEach>
</c:if> 
</table>
</td>



</tr>
</table>
<%-- <input type="button" value="글 수정하기" onclick="document.location.href='/INTERHASH/ContentUpdateForm.hash?connum=${content.connum}'">
<input type="button" value="글 삭제하기"> --%>

</body>
</html>