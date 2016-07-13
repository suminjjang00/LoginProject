<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
<script src="../Js/Script.js"></script>
<script type="text/javascript">
$(function(){
	$("#button1").css("font-size","24px");
	$("#button1").css("color","red");
	$("#button1").click(function(){
		$("input:not(#psw)").hide();
		$(this).css("font-size","100px");
	});
});


</script>
</head>
<body>
<form action="LoginProc.jsp" name="Form" method="post">
<table>
	<tr>
		<td>id</td>
		<td><input type="text" name="id"></td>
	</tr>
	<tr>
		<td>psw</td>
		<td><input type="password" name="psw" id="psw"></td>
	</tr>
	<tr>
		<td><input type="button" value="회원가입" onclick="Join()"> 
	</tr>
</table>

</form>
	<table>
		<tr>
			<td><button class="button1" id="button1">연습임.</button>
			<td><button class="button2" id="button2">연습용2</button>
			<td><button class="button3" id="button3">연습용3</button>
			
		</tr>
	
	</table>
</body>
</html>