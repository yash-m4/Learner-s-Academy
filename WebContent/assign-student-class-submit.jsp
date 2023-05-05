<%@page import="com.simplilearn.doa.AppDAO"%>
<%@page import="com.simplilearn.entity.StudentClass"%>
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
String Student=request.getParameter("Student");
String Class1=request.getParameter("Class1");
System.out.println(Student);
StudentClass sstclasss=new StudentClass();
sstclasss.setStcname(Student);
sstclasss.setCstname(Class1);
AppDAO.addStudentClasss(sstclasss);
response.sendRedirect("assign-student-classs-list.jsp");
%>
</body>
</html>