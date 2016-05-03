<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script type="text/javascript">
window.onload=function close(){
	opener.parent.location.href="ContentView.hash?connum="+${connum};
	window.close();
}

</script>
</head>
<body>

</body>
</html>