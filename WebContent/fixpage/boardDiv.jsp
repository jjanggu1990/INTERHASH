<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	#board_div{
		width:760px;
		height:320px;
		/* background-color: blue; */
		border:2px solid;
		padding:5px;
		margin:10px;
	}
	#board_img{
		width:270px;
		height:280px;
		/* background-color: green; */
		float:left;
		border:2px solid;
		margin:auto;
	}
	#board_main{
		width:470px;
		height:310px;
		/* background-color: yellow; */
		float:right;
		border:2px solid;
		margin:auto;
	}
	#board_subject{
		width:470px;
		height:50px;
		border:2px solid;
		margin:auto;
	}
	#board_content{
		width:470px;
		height:200px;
		border:2px solid;
		margin:auto;
	}
	#board_like{
		width:470px;
		height:50px;
		border:2px solid;
		margin:auto;
	}
	
	#like{
		position: relative;
	}
	#commnet{
	}
	#like_img{
		height:35px;
		width:43px;
		border:1px solid;
		margin:5px;
		float:left;
	}
	#like_text{
		height:35px;
		width:70px;
		border:1px solid;
		margin:5px;
		float:left;
		text-align: center;
	}
	#commnet_img{
		height:35px;
		width:43px;
		border:1px solid;
		margin:5px;
		float:left;
	}
	#commnet_text{
		height:35px;
		width:70px;
		border:1px solid;
		margin:5px;
		float:left;
		text-align: center;
	}
	#board_subject_click{
		height:50px;
		width:130px;
		position: relative;
		background-color: white;
		float:left;
		left:-130px;
		opacity:0.5;
	}
	#board_commnet_click{
		height:50px;
		width:130px;
		position: relative;
		left:5px;
		top:-45px;
		float:left;
		background-color: white;
		opacity:0.5;
	}
	p{
		
		font-size: 18px;
		margin:5px auto;
	}
</style>
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script>
$(function(){
	$(window).scroll(function(){
		if( $(window).scrollTop() == ($(document).height() -  $(window).height())){
			alert("끝!");
		}
	});  
}); 
</script>
</head>
<body>

<c:forEach var="con" items= '${content}' >

<div id="board_div">
	<div id="board_img">
	</div>
	<div id ="board_main">
		<div id="board_subject">
			<div id="subject">
			<label>'${con.email}'</label>
			</div>
			<div id="time">
			<label>'${con.conmodifieddate}'</label>
			</div>
		</div>
		<div id="board_content">
			<label>'${con.content}'</label>

		</div>
		<div id="board_like">
			<div id="like">
				<div id="like_img">
				</div>
				<div id="like_text">
					<p>123</p>
				</div>
				<div id="like_alpha">
				</div>
			</div>
			<div id="commnet">
				<div id="commnet_img">
				</div>
				<div id="commnet_text">
				
					<P>123</P>
				</div>
			</div>
		</div>
		
	</div>
</div>

</c:forEach>
</body>
</html>