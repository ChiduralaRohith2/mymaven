<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import ="java.util.Calendar" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	String Faculty_ID,Name,Designation,Department,No_of_Days,From,To,Reason,Alternate_arrangements,Date;

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
	
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/rohith","root","root");
	
	PreparedStatement ps=conn.prepareStatement("insert into CL values(?,?,?,?,?,?,?,?,?,?,?,?)");
	
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
	ps.setString(12, "Pending");
	Calendar calendar = Calendar.getInstance();
	int month = calendar.get(Calendar.MONTH)+1;
	String Month = "0"+String.valueOf(month);
	System.out.println(Month);
	
	String sql = "select sum(No_of_Days) as Total from cl where Faculty_ID ='"+Faculty_ID+"' and FromDate LIKE '2024-"+Month+"-%'";
	
	Statement st =conn.createStatement();
	ResultSet rs = st.executeQuery(sql);
	if(rs.next()){
	int count = rs.getInt("Total");
	System.out.println(count);
	
	//int count =ps.executeUpdate();
		if(count+Integer.valueOf(No_of_Days)<2){
			int i =ps.executeUpdate();
				if(i>0){
				System.out.println("Data inserted Successfully");
				
				response.sendRedirect("Leaves.jsp");
				}
			else{
				System.out.println("Data not inserted");
				response.sendRedirect("CL.html");
			}
		}else{
			System.out.println("your leaves are no avaliable...for this month");
					
					
					response.sendRedirect("noleaves.html");
		}
	
	}
	
%>