<%@page import="java.io.PrintWriter"%>
<%@page import="com.simplilearn.doa.AppDAO"%>
<%@page import="com.simplilearn.entity.Class"%>
<%@page import="com.simplilearn.entity.Student"%>
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

List<Student> students=AppDAO.listStudent();
request.setAttribute("slist", students);
PrintWriter pw = response.getWriter();
pw.println("<html><body>");
pw.println("<h3> Assign Student to a Class </h3>");

pw.println("<br/>");

pw.println("<div>");
pw.println("<form method=post action =assign-student-class-submit.jsp>");
pw.println("<select name=Student>");
pw.println("<option>Select Student</option>");
for(Student s:students)
{
	pw.println("<option>"+ s.getFname()+"</option>");
	
}
pw.println("</select>");
pw.println("<br/><br/>");
pw.println("<select name=Class1>");
pw.println("<option>Select Class</option>");
for(Class c:classs)
{
	pw.println("<option>"+ c.getCname()+"</option>");
	
}
pw.println("</select>");
pw.println("<input type=submit value=Add/>");
pw.println("</form>");
pw.println("</div>");
pw.println("</body></html>");
%>
</body>
</html>