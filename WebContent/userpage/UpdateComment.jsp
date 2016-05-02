<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

<form method="post" action="ManagerPageReport.hash">
<div align="center">
<b>닉네임 :${article.comnick}</b>님</div>
<div align="center">

<input type="text" name="comcontent" value="${article.comcontent}">
</div>
<br><br>
<div align="center"><input type="submit" value="수정하기" /></div>
</form>  



</body>
</html>