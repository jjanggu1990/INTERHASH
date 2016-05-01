<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import = "board.LogonDBBean" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<title>LoginPro</title>

<style>
	/* .main{ position:fixed; top:100px; left:450px;}
	
	.loginfrom{ position:fixed; top:350px; left:500px;} 	
	*/
	
	#jb-header {
		width: 500px;
        margin: 0px auto;
        height: 120px;
        margin-bottom: 20px;
        border: 0px solid #bcbcbc;
      }
       
    #jb-container {
        width: 350px;
        margin: 0px auto;
        padding: 20px;
        border: 0px solid #bcbcbc;
      }
</style>
</head>
</div>

<body>
아이디 또는 비밀번호가 틀렸습니다.

<!-- <script>
history.go(-1); 
</script> -->



<!-- <div id="jb-header" align="center">
	<img src="../proimg/interHash.png"> mian에서 검사 하고 넘어갈때 사진이 안나옴 ㅠ
</div> -->

<div id="jb-container" align="center">
<form method="post" action="LoginPro.hash" name="userinput"  onSubmit="return checkIt()">
<table>
	<tr height="200" />
	<tr>
		<td>Email</td>
		<td><input type="text" name="email"/></td>
		<td rowspan="3"><input type="submit" name="login" value="로그인" /></td>
	</tr>
	<tr>
		<td>PW</td>
		<td><input type="password" name="passwd"/></td>
		<td />
	</tr>
	<tr rowspan="3">
		<td colspan="2" />
	 	<td />
	</tr>
</table> 
</form>

<table>
	<tr>
		<td align="left">
			<input type="button" value="회원가입" onclick="javascript:window.location='SignupForm.hash'"/>
		</td>
		<td />
		<td align="right">
			<input type="button" value="비밀번호찾기" onclick="javascript:window.location='FindPasswordForm.hash'"/>
		</td>
	</tr>
</table>

 <c:if test="${memId==null}">  <!--  맞는 값을 넣어도 null값이 들어감 -->
<script>
alert("아이디 또는 비밀번호가 맞지 않습니다.");
history.go(-1);  
</script>
 </c:if> 

</body>
</html>