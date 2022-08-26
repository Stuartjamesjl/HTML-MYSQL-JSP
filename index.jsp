<%@ page import = "java.sql.*"%>
<%
  String Name = request.getParameter("Name");
  String Email = request.getParameter("Email");
  String Message = request.getParameter("Message");
  
  
  try{
	  Class.forName("com.mysql.jdbc.Driver");
	  Connection conn = DriverManager.getConnection("localhost","root","password");
	  Statement st = conn.createStatement();
	  st.executeUpdate("insert into //tablename// (Name,Email,Message) values('"+Name+"','"+Email+"','"+Message+"')");
	  response.sendRedirect("enter the resulting html page");
	  
  }catch(Exception e){
		response.sendRedirect("enter the resulting html page");
  }

%>

