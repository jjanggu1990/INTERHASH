<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">
<title>글쓰기</title>
<script type="text/javascript">
	function fileUploadPreview(thisObj, preViewer) {
		// 형식 체크
		if (!/(\.gif|\.jpg|\.jpeg|\.png)$/i.test(thisObj.value)) {
			alert("이미지 형식의 파일을 선택하십시오");
			$(thisObj).val('');
			return;
		}

		var preViewer = $('.preViewImg:last');//(typeof(preViewer) == "object") ? preViewer : document.getElementById(preViewer);
		var ua = window.navigator.userAgent;

		// 렌더링 버전 알아내기
		var rv = -1;

		// ie 브라우저이며 ie10 미만 버전
		if (ua.indexOf("MSIE") > -1 && rv < 10) {
			var img_path = "";
			if (thisObj.value.indexOf("\\fakepath\\") < 0) {
				img_path = thisObj.value;
			} else {
				thisObj.select();
				var selectionRange = document.selection.createRange();
				img_path = selectionRange.text.toString();
				thisObj.blur();
			}
			$(preViewer).css(
					'filter',
					"progid:DXImageTransform.Microsoft.AlphaImageLoader(src='fi"
							+ "le://" + img_path + "', sizingMethod='scale')")
					.show();

		
			var cloneHtml = $('.photo_list:last').clone();
			cloneHtml.find('input').val('');
			cloneHtml.find('img').removeAttr('src', 'style').hide();
			$(thisObj).parents('.photoBox:first').append(cloneHtml);
		} else { // 그외 브라우저
			var reader = new FileReader();
			reader.readAsDataURL(thisObj.files[0]);
			reader.onload = function(e) {
				$('.preViewImg:last').attr('src', e.target.result).show();

				var cloneHtml = $('.photo_list:last').clone();
				cloneHtml.find('input').val('');
				cloneHtml.find('img').attr('src', '').hide();
				$(thisObj).parents('.photoBox:first').append(cloneHtml);
			}
		}
	}
	
	function tagCheck() {

		url = "userpage/TagCheck.jsp?check=y";
		newwindow=window.open(url,"post","toolbar=no ,width=800 ,height=550 ,directories=no ,status=yes ,scrollbars=no ,menubar=no");
	}
	
</script>
<!-- <script>
	$(function() {
		var availableTags = [ "가족", "연인", "동물", "BASIC",
				"C", "C++", "Clojure", "COBOL", "ColdFusion", "Erlang",
				"Fortran", "Groovy", "Haskell", "Java", "JavaScript", "Lisp",
				"Perl", "PHP", "Python", "Ruby", "Scala", "Scheme" ];
		$("#tags").autocomplete({
			source : availableTags
		});
	});
</script> -->
<style type="text/css">
/* CSS */
#textfield {
	width: 500px;
	height: 80px;
	background: #ffffff;
}

#preview {
	height: 80px;
	background: #ffffff;
}

#imageon {
	height: 30px;
	background: #ffffff;
}

#taglist {
	height: 30px;
	background: #ffffff;
}

#submit {
	height: 30px;
	background: #ffffff;
}

#button {
	display: inline-block;
	outline: none;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	font: 14px/100% Arial, Helvetica, sans-serif;
	padding: .4em 2em .50em;
	text-shadow: 0 1px 1px rgba(0, 0, 0, .3);
	-webkit-border-radius: .4em;
	-moz-border-radius: .4em;
	border-radius: .4em;
	-webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, .2);
	-moz-box-shadow: 0 1px 1px rgba(0, 0, 0, .2);
	box-shadow: 0 1px 1px rgba(0, 0, 0, .2);
}

.photoBox .fileData {
	display: none;
}

.photoBox .preViewImg {
	width: 80px;
	height: 80px;
	text-align: center;
	border: 1px solid silver;
}

.custom_checkbox {
	position: relative;
	margin: 45px 0 0 20px;
}

.custom_checkbox label {
	position: absolute;
	left: 0;
	height: 20px;
	padding: 4px 0 0 25px;
	background: url('images/custom_checkbox2.png') no-repeat;
}

.custom_checkbox input {
	type ="checkbox": checked+ label{background-position:0 -25px;
}
</style>
</head>
<body>
	<form action="ContentInputPro.hash" name="writeForm" method="post">	<!-- enctype="multipart/form-data"> -->
		<div id="wrap" style="width: 500px; margin: auto;">
			<textarea id="textfield" name="content" placeholder="안녕하세요"></textarea>
			<div class="photoBox">
				<span class='photo_list'> <input class='fileData'
					name="fileData" type="file"
					onchange="fileUploadPreview(this, 'preView')" /> <img
					class="preViewImg" />
				</span>
			</div>
			<div style="clear: both;"></div>
			<div id="sub">
				<span id="imageon" style="width: 100px; float: left;"> <img
					src="image.JPG" onclick="$('.fileData:last').click();" />
				</span> 
				<span id="taglist" style="width: 300px; float: left;">
					<!-- <div class="ui-widget">
  						<label for="tags">Tags: </label>
  						<input id="tags">
					</div> -->
					<input type="text" name="tag" size="7" readonly>
					<input type="button" value="Tag" onClick="tagCheck()">
				</span> 
				<span id="submit" style="width: 100px; float: left;"> 
				<input type="submit" id="button" value="submit"/>
				</span>
			</div>
		</div>
	</form>
</body>
</html>