<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>신고</title>

<script>
function close(){	
	window.close();
	}

</script>
<script type="text/javascript">
function test(){
	self.close();
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

<form name="report" method="post" action="ReportPro.hash">

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
<div align="center">
<input type="submit" value="전송" onsubmit="return test()">
<input type="button" value="취소" onclick="self.close()">
</div>
</form>  


</body>
</html>