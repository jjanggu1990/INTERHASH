<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
신고 화면

<form action ="ReportPro.hash" method="post">
<input type="hidden" name="redistinction" value="b"/>
<input type="hidden" name="connum" value="3"/>
카테고리 : <input type="text" name="category"/><br>
신고내용 : <input type="text" name="report"/><br>
<input type="submit" value="신고하기"/><input type="button" value="취소"/>
</form>

</body>
</html>