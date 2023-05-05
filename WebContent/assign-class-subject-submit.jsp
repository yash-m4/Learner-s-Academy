<%@page import="com.simplilearn.doa.AppDAO"%>
<%@page import="com.simplilearn.entity.SubjectClass"%>
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
String Class=request.getParameter("Class");
String Subject1=request.getParameter("Subject1");
String Subject2=request.getParameter("Subject2");
String Subject3=request.getParameter("Subject3");

System.out.println("<p>"+Class+"<p>");
System.out.println(Subject1);
System.out.println(Subject2);
System.out.println(Subject3);

SubjectClass sc=new SubjectClass();
sc.setScname(Class);
sc.setS1name(Subject1);
sc.setS2name(Subject2);
sc.setS3name(Subject3);

AppDAO.addSubjectClass(sc);
response.sendRedirect("assign-classs-subject-list.jsp");

%>
</body>
</html>