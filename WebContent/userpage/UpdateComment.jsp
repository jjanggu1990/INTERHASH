<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>

<style>
#nickname{
font-size:15px;
}

</style>
</head>
<body>


<div align="center">댓글수정</div>
<form method="post" action="UpdateCommentPro.hash">
<div align="center">

<b id="nickname">닉네임 :${article.comnick}</b>님</div>
<div align="center">
<input type="text" size="30" name="comcontent" value="${article.comcontent}">
<%-- <input type="hidden" name="commodifieddate" value="${article.commodifieddate}"> --%>
<input type="hidden" name="comnum" value="${article.comnum}">
</div>
<br>
<div align="center"><input type="submit" value="수정하기" /></div>
</form>  




</body>
</html>