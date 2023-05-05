<%@page import="com.simplilearn.doa.AppDAO"%>
<%@page import="com.simplilearn.entity.TeacherClassSubject"%>
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
String Teacher2=request.getParameter("Teacher2");
String Class2=request.getParameter("Class2");
String Subject21=request.getParameter("Subject21");
String Subject22=request.getParameter("Subject22");
String Subject23=request.getParameter("Subject23");

TeacherClassSubject tsc=new TeacherClassSubject();
tsc.setTeacherscname(Teacher2);
tsc.setTsclassname(Class2);
tsc.setTcsubject1name(Subject21);
tsc.setTcsubject2name(Subject22);
tsc.setTcs3ubjectname(Subject23);

AppDAO.addTeacherClassSubject(tsc);
response.sendRedirect("assign-teacher-classs-subject-list.jsp");

%>
</body>
</html>