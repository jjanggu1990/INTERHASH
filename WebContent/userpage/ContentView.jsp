<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<style>
#hash{
color:#5AAEFF;
}
#view_div{
	width:780px;
	height:640px;
 	background-color: black;
	border:2px solid;
	padding:5px;
	margin:auto;
	}
	
	#view_left{
	width:380px;
	height:620px;
	background-color: yellow;
	float:left;	
	border:2px solid;
	margin:auto;
	}
	
	
	
	#view_right{	
	width:380px;
	height:620px;
	background-color: yellow;
	float:right;
	border:2px solid;
	margin:auto;
	}
	
	#left_nickndate{
	width:360px;
	height:20px;
	float:left;
	margin:5px;
	border:2px solid;
	background-color:white;
	}
	
	#left_mod_del_rep{
	width:360px;
	height:20px;
	float:left;
	margin:5px;
	border:2px solid;
	background-color:white;
	}
	
	#align_left{
	float:left;
	}
	#align_right{
	float:right;}
	#left_nickndate{
	width:360px;
	height:20px;
	float:left;
	margin:5px;
	border:2px solid;
	background-color:white;
	}

	#left_good_re{
	width:360px;
	heigt:20px;
	float:left;
	margin:5px;
	border:2px solid;
	background-color:white;	
	}
	#right_nick{
	width:360px;
	height:20px;
	float:left;
	margin:5px;
	border:2px solid;
	background-color:white;
	}
	#comment_content{
	width:360px;
	height:60px;
	float:left;
	margin:5px;
	background-color:white;
	}
	#comment_textarea{
	width:98.5%;
	height:100%;
	}
	
	#comment_submit{
	width:360px;
	height:20px;
	float:left;
	margin:5px;
	/* border:2px solid; */
	background-color:white;
	}
	
	#comment_view{
	width:360px;
	height:460px;
	float:left;
	margin:5px;
	border:2px solid;
	background-color:white;
	}
	
	#content_photo{
	width:360px;
	height:490px;
	float:left;
	margin:5px;
	border:2px solid;
	background-color:white;
	}
	
	#test{border-bottom:1px solid;}
</style>
<script>   
function report(){
	
	url="/INTERHASH/ReportForm.hash?check=y";
	
	window.open(url,"post","toolbar=no ,width=500 ,height=300,directories=no,status=yes,menubar=no,scrollbars=no");
}
</script>

</head>
<body>
<div id="view_div">
<form name="view">
<div id="view_left">
	
	<div id="left_nickndate">
		<span id ="align_left">${sessionScope.nickName}님</span>
		<span id="align_right">${sdf.format(content.concreateddate)}</span>
	</div>

	<c:if test="${sessionScope.memId==content.email}">
	<div id="left_mod_del_rep">
		<span id="align_right">/<a href="/INTERHASH/ContentDelete.hash">삭제하기</a></span>
		<span id="align_right"><a href="/INTERHASH/ContentDelete.hash">수정하기 </a> </span>
	</div>
	</c:if>
		
	<c:if test="${sessionScope.memId!=content.email}">
	<div id="left_mod_del_rep">
		<span id="align_right"><a onclick="report()">신고하기</a></span>
	</div>
	</c:if>		
	
	<div id="content_photo" style="height:490px; overflow-x:auto">

		<label>${content.content}<br></label>
		<label>${content.content}<br></label>
		<label>${content.content}<br></label>
		<label id="hash">${content.conhash}</label><label id="hash">${content.conhash}</label><br>

	

	<img src="${content.conphoto}">
	<img src="${content.conphoto}">
	<img src="${content.conphoto}">

	</div>
	
	<div id="left_good_re">
		<label id="align_right">댓글</label>
		<label id="align_right">좋아요/</label>
	</div>
</div>

<div id="view_right">

	<form method="post" action="ContentView.hash">
	<input type=hidden name=connum value="${content.connum}">
	<div id="right_nick">
		<span id ="align_left">${sessionScope.nickName}님</span>
	</div>
	<div id="comment_content">
		<textarea id="comment_textarea" name="comcontent"></textarea>
	</div>
	
	<div id="comment_submit">
		<span id="align_right"><input type="submit" value="개시"></span>
	</div>
	</form>
	
	
	<div id="comment_view" style="height:460px; overflow-x:auto">
	<form>
	<c:forEach var="comment" items="${comment}">
	<input type=hidden name=comnum value="${comment.comnum}">
	<span>${comment.comnick}</span>
	<span>${sdf.format(comment.commodifieddate)}</span>
	
	<span id="align_right">
		<c:if test="${sessionScope.memId==comment.email}">
		수정/
		<a href="/INTERHASH/DeleteComment.hash?comnum=${comment.comnum}">삭제</a>
		</c:if>
		
		<c:if test="${sessionScope.memId!=comment.email}">
		신고
		</c:if>	
	</span><br>
	
	<div id="test">${comment.comcontent}</div>
	</c:forEach>
	</form>
	</div>
</div>

</div>




	<%-- <tr>
		<td width=40% >${sessionScope.nickName}님</td>
		<td align="right">${sdf.format(content.concreateddate)}</td>
	</tr>
	<tr>
		<c:if test="${sessionScope.memId==content.email}">
		<td align="right" colspan="2"><a href="/INTERHASH/ContentDelete.hash">수정하기</a> /
		<a href="/INTERHASH/ContentDelete.hash">삭제하기</a></td>
		</c:if>
		<c:if test="${sessionScope.memId!=content.email}">
		<td align="right" colspan="2"><a onclick="report()">신고하기</a></td>
		</c:if>			
	</tr>
	<tr>
		<td colspan="2">${content.content}</td>
	</tr>
	<tr>
		<td id="hash" colspan="2">${content.conhash}</td></tr>
	<tr>
		<td height="420" colspan="2"><img src="${content.conphoto}"></td>
	</tr>
	<tr>
		<td colspan="2" align="right" height="70">좋아요 / 댓글수</td>		
	</tr>
</div>

</td>

<td>
<form method="post" action="ContentView.hash">
<table id="view_right" >
	<tr>
		<td width=40% >${sessionScope.nickName}님</td>
	
		<input type=hidden name=connum value="${content.connum}">
	
</tr>
	<tr>
		<td><input type="text" name="comcontent"></td>
	</tr>
	<tr>
		<td><input type="submit" value="개시"></td>
	</tr>	
	<tr>
	<td>
	<c:forEach var="comment" items="${comment}">
	<input type=hidden name=comnum value="${comment.comnum}">
<div id="commentdiv">
	<span>${comment.comnick}</span>
	<span>${sdf.format(comment.commodifieddate)}</span>
	<span>
		<c:if test="${sessionScope.memId==comment.email}">
		수정/
		<a href="/INTERHASH/DeleteComment.hash?comnum=${comment.comnum}">삭제</a>
		</c:if>
		<c:if test="${sessionScope.memId!=comment.email}">
		신고
		</c:if>	
	</span>
</div>
<div>
<span>${comment.comcontent}</span>
</div>
</c:forEach>
	</td>
	</tr>
	
</form> 

</table>
<form>

</form>
</td>




<!-- --------------------------------------------------
-댓글보내기 -->


</tr>

</table>

<input type="button" value="글 수정하기" onclick="document.location.href='/INTERHASH/ContentUpdateForm.hash?connum=${content.connum}'">
<input type="button" value="글 삭제하기">
 --%>
</body>
</html>