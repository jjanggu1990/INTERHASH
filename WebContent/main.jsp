<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
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
<script>
function checkIt(){
		var userinput = eval("document.userinput");
		
		if(!userinput.email.value){
			alert("ID 를 입력하세요.");
			userinput.email.focus(); 
			return false;
		}

		if(!userinput.passwd.value){
			alert("비밀번호를 입력하세요.");
			userinput.passwd.focus(); 
			return false;		
		}
		 return true; 		 
}	 
	
</script>
</head>
<body>
 <c:if test='${memId == null}'> 

메인페이지<br>

<div id="jb-header" align="center">
	<img src="./proimg/interHash.png">
</div>

<div id="jb-container" align="center">
<form method="post" action="LoginPro.hash" name="userinput"  onSubmit="return checkIt()">
<table>
	<tr height="200" />
	<tr>
		<td align="left">Email</td>
		<td align="left"><input type="text" name="email" styl="width:80px;"/></td>
		<td rowspan="3"><input type="submit" name="login" value="로그인" style="width:60px; height:60px;"/></td>
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

</div>
</body>
  </c:if>
</html>