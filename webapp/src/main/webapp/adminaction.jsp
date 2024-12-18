<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="connection.jsp" %>
<%
String Admin_ID,Password;


Admin_ID = request.getParameter("adminid");
Password = request.getParameter("pass");

Statement st=con.createStatement();

ResultSet rs=st.executeQuery("select * from admin where AdminID='"+Admin_ID+"' and Password='"+Password+"'");

if(rs.next())
{
	System.out.println("Login successfull.....");
	response.sendRedirect("adminHome.jsp");
}
else{
	System.out.println("Login failed...");
	response.sendRedirect("admin.jsp");
}
%>