<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>신고</title>

<<<<<<< HEAD
<script>
function close(){	
	window.close();
	}

</script>
<script type="text/javascript">
function test(){
	self.close();
=======
<script type="text/javascript">
function test() {
	alert("신고되었습니다");
window.close();
>>>>>>> 923368e4f7d3ee997d2c60f691afa77aa4c5d426
}
</script>
</head>
<script>
function test() {
	self.close();

	
}
</script>
<body>

<!-- <form action ="ReportPro.hash" method="post">
<input type="hidden" name="redistinction" value="b"/>
<input type="hidden" name="connum" value="3"/>
카테고리 : <input type="text" name="category"/><br>
신고내용 : <input type="text" name="report"/><br>
<input type="submit" value="신고하기"/><input type="button" value="취소"/>
</form>-->

<<<<<<< HEAD
<form name="report" method="post" action="ReportPro.hash">
=======

<form method="post" action="ManagerPageReport.hash">
>>>>>>> af12e1ab9f61db25271afe47ff4a4e3c534ce4e0
<div align="center">
<h3>이메일 :${content.email}</h3></div>

<div align="center">
<select name="report">
		<option value="0">불쾌한 내용이 있거나 재미없습니다.</option>
		<option value="1">저속한 내용 또는 욕성이 포함되어 있습니다.</option>
		<option value="2">음란물 입니다.</option>
		<option value="3">타인을 괴롭히거나 편파적인 내용입니다.</option>
		<option value="4">마약 또는 성인 용품의 관련 게시물입니다.</option>
		<option value="5">이 계정이 해킹당했습니다.</option>
		<option value="6">스팸성 게시물입니다.</option>
	</select>

	<input type="hidden" name="test" value="${content.email}">
	<input type="hidden" name="connum" value="${content.connum}">
</div>

<br><br>
<<<<<<< HEAD
<div align="center"><input type="submit" value="신고하기" onsubmit="close();"/>
<input type="button" value="취소" onClick="test()">  
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
<div align="center">
<input type="submit" value="전송" onsubmit="return test()">
=======
<<<<<<< HEAD
>>>>>>> 547d027605fd1fc469171bbd8f75760bfae582f2
<div align="center"><input type="submit" value="신고하기" /><input type="button" value="취소" onclick="test()"></div>
<div align="center"><input type="submit" value="신고하기" />
>>>>>>> af12e1ab9f61db25271afe47ff4a4e3c534ce4e0
<input type="button" value="취소" onclick="self.close()">
>>>>>>> 923368e4f7d3ee997d2c60f691afa77aa4c5d426
</div>
</form>  


</body>
</html>