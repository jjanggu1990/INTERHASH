<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Tag check</title>
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
	function checkOnly(chk) {

		var obj = document.getElementsByName("favorite");

		for (var i = 0; i < obj.length; i++) {
			if (obj[i] != chk) {
				obj[i].checked = false;
			}
		}
	}

	var checkflag = "false";

	function check(field) {
		if (checkflag == "false") {
			for (i = 0; i < field.length; i++) {
				field[i].checked = true;
			}
			checkflag = "true";
		} else {
			for (i = 0; i < field.length; i++) {
				field[i].checked = false;
			}
			checkflag = "false";
		}
	};
	function sendValue(){
		var a = "asfasdf";
		//alert(document.tagcheck.val.value);
		//opener.document.fo.aaaaa.value = document.tagcheck.favorite.value;
		var obj = document.getElementsByName("favorite");

		for (var i = 0; i < obj.length; i++) {
			if (obj[i].checked == true) {
				opener.document.writeForm.tag.value = document.getElementsByName("favorite")[i].value;
				break;
			}
		}
		//opener.document.fo.aaaaa.value = document.getElementsByName("favorite")[0].value;
		/* self.opener = self; */
		window.close();
	}
	
</script>
</head>
<body>
	<form method="post" name="tagcheck">
		<table>
			<tr>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="사랑과 연애" onClick="javascript:checkOnly(this);">사랑과 연애</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="유머" onClick="javascript:checkOnly(this);">유머</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="여행" onClick="javascript:checkOnly(this);">여행</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="영화" onClick="javascript:checkOnly(this);">영화</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="이슈" onClick="javascript:checkOnly(this);">이슈</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="다이어트" onClick="javascript:checkOnly(this);">다이어트</td>
			</tr>
			<tr>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="IT" onClick="javascript:checkOnly(this);">IT</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="뉴스" onClick="javascript:checkOnly(this);">뉴스</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="데일리룩" onClick="javascript:checkOnly(this);">데일리룩</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="가족" onClick="javascript:checkOnly(this);">가족</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="반려동물" onClick="javascript:checkOnly(this);">반려동물</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="예술" onClick="javascript:checkOnly(this);">예술</td>
			</tr>
			<tr>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="모델" onClick="javascript:checkOnly(this);">모델</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="골프" onClick="javascript:checkOnly(this);">골프</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="가수" onClick="javascript:checkOnly(this);">가수</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="배우" onClick="javascript:checkOnly(this);">배우</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="감독" onClick="javascript:checkOnly(this);">감독</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="연극" onClick="javascript:checkOnly(this);">연극</td>
			</tr>
			<tr>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="그릇" onClick="javascript:checkOnly(this);">그릇</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="가구" onClick="javascript:checkOnly(this);">가구</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="드라마" onClick="javascript:checkOnly(this);">드라마</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="안경" onClick="javascript:checkOnly(this);">안경</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="결혼" onClick="javascript:checkOnly(this);">결혼</td>
				<td><input type="checkbox" name="favorite" id="favorite"
					value="커피" onClick="javascript:checkOnly(this);">커피</td>
			</tr>
			<tr>
				<td align="center">
				<input id="checkButton" type="button" name="Submit" value="확인" onClick="sendValue()"></td>
			</tr>
		</table>
	</form>
</body>
</html>