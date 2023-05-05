<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String username=request.getParameter("username");
String password=request.getParameter("password");

if(username==null || password==null || username.equals("") || password.equals(""))
{
	throw new ServletException("Cerdentials are Missing");
}
if(username.equals("admin") && password.equals("password"))
{
	session.setAttribute("username",username);
	response.sendRedirect("admin.jsp");
}
else
{
	throw new ServletException("invalid Cerdentials");
}
%>

</body>
</html>