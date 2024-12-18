<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	String Faculty_ID,Name,Designation,Department,No_of_Days,From,To,Reason,Alternate_arrangements,Date,status;

	Faculty_ID = request.getParameter("facultyid");
	Name = request.getParameter("name");
	Designation = request.getParameter("desig");
	Department = request.getParameter("depart");
	No_of_Days = request.getParameter("number");
	From = request.getParameter("fdate");
	To = request.getParameter("tdate");
	Reason = request.getParameter("reas");
	Alternate_arrangements =request.getParameter("alter");
	Date = request.getParameter("date");
	status = "pending";
	
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/rohith","root","root");
	
	PreparedStatement ps=conn.prepareStatement("insert into onduty values(?,?,?,?,?,?,?,?,?,?,?,?)");
	
	ps.setInt(1,0);
	ps.setString(2,Faculty_ID);
	ps.setString(3,Name);
	ps.setString(4,Designation);
	ps.setString(5,Department);
	ps.setString(6,No_of_Days);
	ps.setString(7,From);
	ps.setString(8,To);
	ps.setString(9,Reason);
	ps.setString(10,Alternate_arrangements);
	ps.setString(11,Date);
	ps.setString(12,status);
	
	int i=ps.executeUpdate();
		if(i>0){
					System.out.println("Data inserted Successfully");
					response.sendRedirect("HodAlert.jsp");
				}
		else{
				System.out.println("Data not inserted");
				response.sendRedirect("onduty.html");
			}
%>