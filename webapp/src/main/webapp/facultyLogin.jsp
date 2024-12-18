<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	String Designation,Faculty_ID,Password;

	Designation=request.getParameter("desig");
	Faculty_ID=request.getParameter("facultyid");
	Password=request.getParameter("password");
	
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/rohith","root","root");
	
	Statement st=conn.createStatement();
	
	if(Designation.equals("Principal")){
		ResultSet rs=st.executeQuery("select * from faculty where Designation='"+Designation+"' and faculty_ID='"+Faculty_ID+"' and Password='"+Password+"'");
		if(rs.next()){
			session.setAttribute("fid", Faculty_ID);
			System.out.println("Login successfull.....!");
			response.sendRedirect("Principal.jsp?msg=success");
		}else{
			response.sendRedirect("facultyLogin.html");
		}
	}else if(Designation.equals("HOD")){
		ResultSet rs=st.executeQuery("select * from faculty where Designation='"+Designation+"' and faculty_ID='"+Faculty_ID+"' and Password='"+Password+"'");
	
		if(rs.next()){
			session.setAttribute("fid", Faculty_ID);
			System.out.println("Login successfull.....!");
			
			response.sendRedirect("HOD.jsp?msg=success");
		}else{
			response.sendRedirect("facultyLogin.html");
		}
	}else if(Designation.equals("Teaching")){
		ResultSet rs=st.executeQuery("select * from faculty where Designation='"+Designation+"' and faculty_ID='"+Faculty_ID+"' and Password='"+Password+"'");
		if(rs.next()){
			session.setAttribute("fid", Faculty_ID);
			//System.out.println(fid);
			System.out.println("Login successfull.....!");
			response.sendRedirect("Leaves.jsp?msg=success");
		}else{
			response.sendRedirect("facultyLogin.html");
		}
	}else if(Designation.equals("Non-Teaching")){
		ResultSet rs=st.executeQuery("select * from faculty where Designation='"+Designation+"' and faculty_ID='"+Faculty_ID+"' and Password='"+Password+"'");
		if(rs.next()){
			session.setAttribute("fid", Faculty_ID);
			System.out.println("Login successfull.....!");
			response.sendRedirect("Leaves.jsp?msg=success");
		}else{
			response.sendRedirect("facultyLogin.html");
		}
	}else{
		System.out.println("login Faild.....!");
		response.sendRedirect("facultyLogin.html");
	}
	
	
%>