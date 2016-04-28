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
p{
padding:3px;
}
td{
width:200px; 
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
<tr height="30">
<td>HashTag</td>
<td>좋아요 수</td>
<td>게시글 수</td>
</tr>
<tr>
<td>#우정</td>
<td>45315개</td>
<td>2983개</td>
</tr>
</table>
</p>
<hr/>
<p>
<input type="date" name="date" id="date">
<table border="1">
<tr height="30">
<td>방문자 수</td>
<td>게시물 수</td>
<td>좋아요 수</td>
</tr>
<tr>
<td>12832823명</td>
<td>683923개</td>
<td>283715개</td>
</tr>
</table>
</p>
</body>
</html>