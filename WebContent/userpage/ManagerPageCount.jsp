<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script>
window.onload=function() {
document.getElementById('date').valueAsDate = new Date();
}
</script>
<style>

hr{
padding:1px;
}
td{
width:200px; 
text-align:center;
}
div{
position:relative;
right:200px;

}
</style>
</head>
<body>
<center>
<h3>통계</h3>
<hr/>
<p>
<table border="1">
<tr height="30">
<td><b>HashTag</b></td>
<td><b>좋아요 수</b></td>
<td><b>게시글 수</b></td>
</tr>
<tr>
<td>#우정</td>
<td>45315개</td>
<td>2983개</td>
</tr>
</table>
</p>
<hr/>

<div align="right"><input type="date" name="date" id="date"></div>
<p>
<table border="1">
<tr height="30">
<td><b>방문자 수</b></td>
<td><b>게시물 수</b></td>
<td><b>좋아요 수</b></td>
</tr>
<tr>
<td>12832823명</td>
<td>683923개</td>
<td>283715개</td>
</tr>
</table>
</p>
<c:forEach var="hash" items="${array}">
${hash}
</c:forEach>
<p>

</p>
</body>
</html>