<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	String Mr,Ms,Name,Designation,is_having,CL,CCL,his,her;

	Mr = request.getParameter("abc");
	Ms = request.getParameter("abc");
	Name = request.getParameter("name");
	Designation = request.getParameter("desi");
	is_having = request.getParameter("having");
	CL = request.getParameter("rohith");
	CCL = request.getParameter("rohith");
	his = request.getParameter("bc");
	her =request.getParameter("bc");
	
	Class.forName("com.mysql.jdbc.Driver");
%>