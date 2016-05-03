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
 	/* background-color: black; */
	border:2px solid;
	padding:5px;
	margin:auto;
	}
	
	#view_left{
	width:380px;
	height:620px;
	/* background-color: yellow; */
	float:left;	
	border:2px solid;
	margin:auto;
	}
	
	
	
	#view_right{	
	width:380px;
	height:620px;
	/* background-color: yellow; */
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
 function modify(comnum,connum){
	url="/INTERHASH/UpdateComment.hash?check=y&&comnum="+comnum+"&&connum="+connum;
	
	window.open(url,"post","toolbar=no ,width=500 ,height=250,directories=no,status=yes,menubar=no,scrollbars=no");
} 

function report(){
	
	url="/INTERHASH/ReportForm.hash?check=y&&connickname=${content.connickname}&&connum=${content.connum}";
	
	window.open(url,"post","toolbar=no ,width=500 ,height=250,directories=no,status=yes,menubar=no,scrollbars=no");
}
</script>

</head>
<body>
<div id="view_div">
<!-- <form name="view"> -->

<div id="view_left">
	<form>
	<div id="left_nickndate">
		<span id ="align_left">${sessionScope.nickName}님</span>
		<span id="align_right">${sdf.format(content.conmodifieddate)}</span>
	</div>

	<c:if test="${sessionScope.memId==content.email}">
	<div id="left_mod_del_rep">
		<span id="align_right">/<a href="/INTERHASH/ContentDelete.hash?connum=${content.connum}">삭제하기</a></span>
		<span id="align_right"><a href="/INTERHASH/ContentUpdate.hash"+${content.connum}>수정하기 </a> </span>
	</div>
	</c:if>
		
	<c:if test="${sessionScope.memId!=content.email}">
	<div id="left_mod_del_rep">
		<span id="align_right"><a onclick="report()">신고하기</a></span>
	</div>
	</c:if>	
	
	<div id="content_photo" style="height:490px; overflow-x:auto">
		<label>${content.connickname}<br></label>
		<label>${content.content}<br></label>
<<<<<<< HEAD
		<label>${content.content}<br></label>
		<label>${content.content}<br></label>
		<label id="hash">${content.conhash}</label>
=======
		<label id="hash">${content.conhash}</label><br>
		
		<c:forEach var="photo" items="${content.photolist}">
		<img id = "img" src='${photo.serverpath }'/>
		</c:forEach>

>>>>>>> af91ce4f207353df5cdb9668c3e6fadc5606ca1a
	</div>
	
	<div id="left_good_re">
		<label id="align_right">댓글수:${count}</label>
		<!-- <label id="align_right">좋아요/</label> --> 
	</div>
	</form>
</div>

<div id="view_right">

	<form method=post action="InsertComment.hash">
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
	
	
	
	<div id="comment_view" style="height:460px; overflow-x:auto" onchange="reload();">

	<c:forEach var="comment" items="${comment}">
	<input type=hidden name=comnum value="${comment.comnum}">
	<span>${comment.comnick}</span>
	<span>${sdf.format(comment.commodifieddate)}</span>
	
	<span id="align_right">
		<c:if test="${sessionScope.memId==comment.email}">
		<a href="/INTERHASH/DeleteComment.hash?comnum=${comment.comnum}&&connum=${comment.connum}">삭제</a>
		<a onclick="modify(${comment.comnum},${comment.connum})">수정</a>

		</c:if>
		
		<c:if test="${sessionScope.memId!=comment.email}">
		<a href="/INTERHASH/UpdateComment.hash?comnum="+${comment.comnum}>신고</a>
		</c:if>	
	</span><br>
	
	<div id="test">${comment.comcontent}</div>
	</c:forEach>

	</div>
	

</div>

</div>


</body>
</html>