<%@page import="java.io.PrintWriter"%>
<%@page import="com.simplilearn.doa.AppDAO"%>
<%@page import="com.simplilearn.entity.Class"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
List<Class> classs=AppDAO.listClass();
request.setAttribute("clist", classs);
PrintWriter pw = response.getWriter();

pw.println("<html><body>");
pw.println("<table>");
pw.println("<tr>");
pw.println("<th>Class ID </th>");
pw.println("<th>Class Name </th>");
pw.println("</tr>");


for(Class c:classs)
{

	
	pw.println("<tr>");

	pw.println("<td>"+c.getCid()+"<td>");
	pw.println("<td>"+c.getCname()+"<td>");
	
	pw.println("</tr>");
	
	
}



pw.println("</table>");
pw.println("</body></html>");
%>
<a href="admin.jsp">Click here for home page</a><br/><br/>
<a href="add-class.jsp">Click here to add another class</a>
</body>
</html>