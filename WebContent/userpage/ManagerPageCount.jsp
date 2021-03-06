<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>관리자</title>
<script>
window.onload=function() {
document.getElementById('date').valueAsDate = new Date();
}
</script>
<style>
*{
color:#7A7A7A;
}
td{
width:100px; 
text-align:center;
}
</style>
</head>
<body>
<center>
<h3>통계</h3>
<hr/>
<p>
<table border="1">
<tr>
<td><b>HashTag</b></td>
<td><b>좋아요 수</b></td>
<td><b>게시글 수</b></td>
</tr>
<c:forEach var="hash" items="${array}">
<tr>
<td>
${hash.hashName}
</td>
<td>
${hash.hashLikeCount}
</td>
<td>
${hash.hashContentCount}
</td>

</tr>
</c:forEach>
</table>

<hr/>

<div align="right"><input type="date" name="date" id="date"></div>
<p>
<table border="1">
<tr height="30">
<td><b>방문자 수</b></td>
<td><b>게시물 수</b></td>
<td><b>좋아요 수</b></td>
</tr>

</table>
<input type="button" value="관리자페이지" onclick="javascript:window.location='ManagerPage.hash'">

</body>
</html>