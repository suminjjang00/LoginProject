<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
<script type="text/javascript" src="Js/jquery-ui.min.js"></script>
<script type="text/javascript" src="Js/script.js"></script>
<script type="text/javascript" src="Js/filter.js"></script>
<link rel="stylesheet" type="text/css" href="css/style.css">
<title></title>
</head>

<body>
<div id="header">
	<div id="menu"><h2>JQuery portfolio</h2></div>
</div>
<div id="overlay"></div>
<div id="frame">
<table id="frame-table">
	<tr>
		<td id="left"><img alt="left" src="Image/left.jpg" width="77px" height="77" ></td>	
		<td id="right"><img alt="right" src="Image/right.jpg" width="77px" height="77"></td>
	</tr>
</table>
	<img id="main" alt="" src="">
	<div id="description">
	<p></p>
	</div>
</div>
<!-- <div id="content">
	<ul id="content-list">
		<li>게시판</li>
		<li>그림올리기</li>
		<li>뭘로할까?</li>
	</ul>
</div> -->
	<div id="wrapper">
	<ul id="filter">
		<li>all</li>		
		<li>nature</li>
		<li>sea</li>				
	</ul>
		<ul id="portfolio">
			<li class="all nature"><img id="1" alt="img" src="Image/s1.jpg"></li>
			<li class="all nature"><img id="2" alt="img" src="Image/s2.jpg"></li>
			<li class="all sea"><img id="3" alt="img" src="Image/s3.jpg"></li>
			<li class="all sea"><img id="4" alt="img" src="Image/s4.jpg"></li>			
		</ul>		
	</div>
	<button id="click"><a href="../Mem/JqeuryAjax/chatbo.jsp">click</a></button>
	<a href="#">click2</a>
</body>
</html>