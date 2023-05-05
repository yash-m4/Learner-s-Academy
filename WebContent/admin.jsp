<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% String username=(String)session.getAttribute("username");%>
<h2 style="color : green;"> Hello user <%=username %></h2>

<nav>
<Button onclick="location.href='add-student.jsp'">Add Students</Button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="add-teacher.jsp">Add Teachers</a><br/><br/>
<a href="add-subject.jsp">Add Subjects</a><br/><br/>
<a href="add-class.jsp">Add Classes</a><br/><br/>
<a href="assign-class-subject.jsp">Assign Classes for subjects</a><br/><br/>
<a href="assign-techer-class-subject.jsp">Assign Teacher to a Classes for subjects</a><br/><br/>
<a href="assign-student-class.jsp">Assign a Student to a Class</a><br/><br/>
<a href="view-student.jsp">View Students List</a><br/><br/>
<a href="list.jsp">View Class Report</a><br/><br/>
</nav>



<a href="logout.jsp">LOGOUT</a>

</body>
</html>