<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	String Designation,Department,Name,Faculty_ID,Email_ID,Password,Conform_Password,Gender,DOB;


	Designation= request.getParameter("desig");
	Department= request.getParameter("depart");
	Name= request.getParameter("name");
	Faculty_ID= request.getParameter("staffid");
	Email_ID= request.getParameter("email");
	Password= request.getParameter("password");
	Conform_Password= request.getParameter("cpassword");
	Gender= request.getParameter("gender");
	DOB= request.getParameter("date");
	
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/rohith","root","root");
	
	Statement st =con.createStatement();
	ResultSet re =st.executeQuery("select * from faculty where Faculty_ID='"+Faculty_ID+"'");
	
	if(re.next())
	{
		response.sendRedirect("facultySignUp.html?msg=already");
	}
	else{
	PreparedStatement ps=con.prepareStatement("insert into faculty values(?,?,?,?,?,?,?,?,?,?,?)");
	
	ps.setInt(1,0);
	ps.setString(2,Designation);
	ps.setString(3,Department);
	ps.setString(4,Name);
	ps.setString(5,Faculty_ID);
	ps.setString(6,Email_ID);
	ps.setString(7,Password);
	ps.setString(8,Conform_Password);
	ps.setString(9,Gender);
	ps.setString(10,DOB);
	ps.setInt(11, 2);
	int i=ps.executeUpdate();
		if(i>0){
					System.out.println("Data insterted Successfully");
					response.sendRedirect("facultyLogin.html");
				}
		else{
				System.out.println("Data not inserted");
				response.sendRedirect("facultySignUp.html");
			}
	}
%>