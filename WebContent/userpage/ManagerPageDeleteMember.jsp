<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<style>
p{
padding:3px;
}
td{
width:250px; 
}
*{
color:#7A7A7A;
}
</style>
</head>
<body>
<center>
<h3>Å»ÅðÈ¸¿ø°ü¸®</h3>
<hr/>
<table border="1">
<tr>
<td><b>email</b></td>
<td><b>Å»Åð³¯Â¥</b></td>
<td><b>Å»Åð»çÀ¯</b></td>
</tr>
<c:forEach var="member" items="${array}">
<tr>
<td>
${member.drawalemail}
</td>
<td>
${member.drawaldate}
</td>
<td>
${member.drawalcause}
</td>
</tr>
</c:forEach>
</table>

</body>
</html>