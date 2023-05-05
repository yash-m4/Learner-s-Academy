<%@page import="java.io.PrintWriter"%>
<%@page import="com.simplilearn.doa.AppDAO"%>
<%@page import="com.simplilearn.entity.Class"%>
<%@page import="com.simplilearn.entity.Subject"%>
<%@page import="com.simplilearn.entity.Teacher"%>
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

List<Subject> subjects=AppDAO.listSubject();
request.setAttribute("slist", subjects);

List<Teacher> teachers=AppDAO.listTeacher();
request.setAttribute("tlist", teachers);

PrintWriter pw = response.getWriter();


pw.println("<h3> Assign Teacher to a Class for Subjects </h3>");

pw.println("<br/>");

pw.println("<div>");
pw.println("<form method=post action =assign-teacher-class-subject-submit.jsp>");


pw.println("<select name=Teacher2>");
pw.println("<option>Select Teacher</option>");
for(Teacher t:teachers)
{
	pw.println("<option>"+ t.getTfname()+"</option>");
	
}
pw.println("</select>");

pw.println("<br/><br/>");

pw.println("<div>");

pw.println("<select name=Class2>");
pw.println("<option>Select Class</option>");
for(Class c:classs)
{
	pw.println("<option>"+ c.getCname()+"</option>");
	
}
pw.println("</select>");

pw.println("<br/><br/>");

pw.println("<select name=Subject21>");
pw.println("<option>Select Subject</option>");
for(Subject s:subjects)
{
	pw.println("<option>"+ s.getSname()+"</option>");
	
}
pw.println("</select>");
pw.println("<select name=Subject22>");
pw.println("<option>Select Subject</option>");
for(Subject s:subjects)
{
	pw.println("<option>"+ s.getSname()+"</option>");
	
}
pw.println("</select>");

pw.println("<select name=Subject23>");
pw.println("<option>Select Subject</option>");
for(Subject s:subjects)
{
	pw.println("<option>"+ s.getSname()+"</option>");
	
}
pw.println("</select >");
pw.println("<input type=submit value=Add/>");
pw.println("</form>");
pw.println("</div>");

%>
</body>
</html>