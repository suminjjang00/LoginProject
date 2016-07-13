<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style type="text/css">
#display1 {
	width: 250px;
	height: 250px;
	border: 1px dashed gray;
}
</style>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>

<script type="text/javascript">
$(function(){
	$("#buttontext").click(function(){
		
		$("#display1").html($("#text1").val());
		//var txt=$("#text1").val();	이 방법도 됨.	
		//$("#display1").html(txt);
		$("#text1").val(" ");
	})
})

</script>
<body>
입력창: <input type="text" id="text1">
<input type="button" id="buttontext" value="wjsthd">
<div id="display1"></div>
</body>
</html>