<%@page import="com.simplilearn.doa.AppDAO"%>
<%@page import="com.simplilearn.entity.SubjectClass"%>
<%@page import="java.util.List"%>
<%@page import="java.io.PrintWriter"%>
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
List<SubjectClass> subjectsclass=AppDAO.listSubjectClass();
request.setAttribute("sclist", subjectsclass);


PrintWriter pw = response.getWriter();

pw.println("<html><body>");
pw.println("<table>");
pw.println("<tr>");
pw.println("<th>Class&Subject ID </th>");
pw.println("<th>Class Name </th>");
pw.println("<th>Subject1</th>");
pw.println("<th>Subject2</th>");
pw.println("<th>Subject3</th>");
pw.println("</tr>");


for(SubjectClass sc:subjectsclass)
{
	pw.println("<tr>");
	pw.println("<td>"+sc.getScid()+"<td>");
	pw.println("<td>"+sc.getScname()+"<td>");
	pw.println("<td>"+sc.getS1name()+"<td>");
	pw.println("<td>"+sc.getS2name()+"<td>");
	pw.println("<td>"+sc.getS3name()+"<td>");
	pw.println("</tr>");
}



pw.println("</table>");
pw.println("</body></html>");
%>
<a href="admin.jsp">Click here for home page</a><br/><br/>
<a href="assign-class-subject.jsp">Click here to add another class to subjects</a>
</body>
</html>