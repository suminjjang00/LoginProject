<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("utf-8"); %>
    <jsp:useBean id="memMgr" class="pack.Mem.memberMgr"></jsp:useBean>
    <jsp:useBean id="memBean" class="pack.Mem.memberBean"></jsp:useBean>
    <jsp:setProperty property="*" name="memBean"/>
    <% boolean b= memMgr.Insertmem(memBean); %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">

</script>
<body>
<% 
if(b){
	%>
	alert("가입성공");
	<%
	response.sendRedirect("main.jsp");
}else{
%>
	alert("가입실패");
<% 
	response.sendRedirect("main.jsp");
}
%>
</body>
</html>