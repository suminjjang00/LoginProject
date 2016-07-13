<%@page import="javafx.scene.control.Alert"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="memberMgr" class="pack.Mem.memberMgr"></jsp:useBean>
    <%
    String id=request.getParameter("id");
    boolean b= memberMgr.selectID(id); 
    %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
<script type="text/javascript">
/* $(function(){
	$("#id").blur(function(){
		$.ajax({
			type:"post",
			url:"Join.jsp",
			data:{
				id:$('#id').val()
			},
			succes:function(data){
				if($.trim(data)==false){
					$("#idcheck").html('사용가능');
					
				}else{
					$("#idcheck").html('사용불가');
				}
			}
		});
	});
});
 */
function FormCheck(){
	var psw=document.getElementById("psw");
	var psw2=document.getElementById("psw2");
	var id=document.getElementById("id");
	var gen=document.getElementById("gen");
	
	if(id.value=='' || id.value==null){
		
		alert("id가 올바르지 않음");
		focus.id.value;
		return false;
	}	
	if(psw.value != psw2.value || psw.value==null || psw.value==''){
		alert("암호가 올바르지 않음");
		focus.psw.value;
		return false;
	}else{
		Formsubmit();
	}
	
}
function Formsubmit(){
	var Join=document.getElementById('JoinForm');
	Join.submit();
	alert("가입완료");
	
}
</script>
<body>
회원가입
<form action="JoinProc.jsp" id="JoinForm" method="post">
<table>
	<tr>
		<td>Email</td>
		<td><input type="text" name="id" id="id"></td>
		<span id="idcheck"></span>
	</tr>
	<tr>
		<td>암호</td>
		<td><input type="password" name="psw" id="psw"></td>
	</tr>
	<tr>
		<td>암호 확인</td>
		<td><input type="password" name="psw2" id="psw2"></td>
	<tr>
		<td>성별:</td>
		<td>
		남<input type="radio" name="gen" id="gen"  checked="checked">
		여<input type="radio" name="gen" id="gen">							
		</td>		
	</tr>
	<tr>
		<td colspan="2"><input type="button" value="회원가입" onclick="javascript:FormCheck()">
	</tr>
</table>
</form>
</body>
</html>