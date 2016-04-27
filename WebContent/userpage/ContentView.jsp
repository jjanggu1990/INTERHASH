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
</style>
<script>   
function report(){
	
	url="/INTERHASH/ReportForm.hash?check=y";
	
	window.open(url,"post","toolbar=no ,width=500 ,height=300,directories=no,status=yes,menubar=no");
}
</script>
<!-- <script>     
 function deleteSave(){
if(document.delForm.passwd.value==''){
alert("삭제하시겠습니까?");
return false;
}
}   
</script> -->
</head>
<body>
<%-- <h2>글 번호 : ${content.connum}</h2> --%>
<div>
<form name="viewform">
<table bgcolor="green" width=50% height=100% >
	<tr>
		<td width=40% ><h3>${sessionScope.nickName}님</h3></td>
		
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
		<td colspan="2">${content.conhash}</td></tr>
	<tr>
		<td height="420" colspan="2"><img src="${content.conphoto}"></td>
	</tr>
	<tr>
		<td colspan="2" align="right" height="70">좋아요 / 댓글수</td>
		
	</tr>
</table>

</form> 
<%-- <input type="button" value="글 수정하기" onclick="document.location.href='/INTERHASH/ContentUpdateForm.hash?connum=${content.connum}'">
<input type="button" value="글 삭제하기"> --%>
</div>
</body>
</html>