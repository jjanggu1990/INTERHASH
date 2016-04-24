<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title> NewTab </title>
<script>
	function checkIt(){
		var userinfo = eval("document.useremail");
		if(!userinfo.email.value){
			alert("이메일주소를 입력해주세요.")
			return false;
		}
		return true;
		
	}
</script>
<c:set var="email" value='${email}' />
<c:if test='${email == null}'>
<script>
	alert("일치하는 이메일이 없습니다.");
</script>
</c:if> 
<c:if test='${email != null}'>
<script>
	alert("해당 이메일로 임시비밀번호를 전송했습니다.");
</script>
</c:if>
</head>
<body>
비밀번호 찾기 폼
<form method="post" name="useremail" action="FindPasswordPro.hash" onSubmit="return checkIt()">
	<input type="text" name="email">
	<input type="submit" name="confirm" value="비밀번호찾기">
</form>
</body>
</html>