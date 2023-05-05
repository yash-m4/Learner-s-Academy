<%@page import="com.simplilearn.doa.AppDAO"%>
<%@page import="com.simplilearn.entity.StudentClass"%>
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
List<StudentClass> studentsclass=AppDAO.listStudentClass();
request.setAttribute("stclist", studentsclass);


PrintWriter pw = response.getWriter();

pw.println("<html><body>");
pw.println("<table>");
pw.println("<tr>");
pw.println("<th>Class&Student ID </th>");
pw.println("<th>Student Name</th>");
pw.println("<th>Class</th>");

pw.println("</tr>");


for(StudentClass stc:studentsclass)
{
	pw.println("<tr>");
	pw.println("<td>"+stc.getStcid()+"<td>");
	pw.println("<td>"+stc.getStcname()+"<td>");
	pw.println("<td>"+stc.getCstname()+"<td>");
	pw.println("</tr>");
}



pw.println("</table>");
pw.println("</body></html>");
%>
<a href="admin.jsp">Click here for home page</a><br/><br/>
<a href="assign-student-class.jsp">Click here to add another Student to a class</a>
</body>
</html>