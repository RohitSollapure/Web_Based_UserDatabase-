<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%
try{
String name=request.getParameter("name");
String lastName=request.getParameter("lastName");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/rohit","root","Rohit@123");
Statement st=con.createStatement();
ResultSet rs;
st.executeUpdate("insert into employee values('"+name+"','"+lastName+"')");

out.print("Incert succesfully...");
con.close();
}
catch(Exception e){
out.print(e);
}

%>

</body>
</html>