<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Casual Leaves status</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<style>
        .faculty {
            text-align: center;
            background-color: orange;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
</style>
</head>
<body>
	<div class="container bg-white">
		<div class="row bg-info">
	    <div class="col-12">
	      <p></p>
	    </div>
    	</div>
		<div class="row">
			<div class="col-7">
			<img alt="logo" src="./images/header.jpg">
			</div>
			<div class="col-1">
			<img alt="logo" src="./images/21-years-logo-new.png" width="100%" height="80%">
			</div>
			<div class="col-1">
			<img alt="logo" src="./images/jits-naac2.png">
			</div>
			<div class="col-1">
			<img alt="logo" src="./images/aicte.png">
			</div>
			<div class="col-1">
			<img alt="logo" src="./images/jits-iso.png">
			</div>
			<div class="col-1">
			<img alt="logo" src="./images/ugc.png">
			</div>
		</div>
		<div class="row bg-info">
			<div class="col-12">
				<h1 class="text-success" align="center">Leaves Application Development</h1>
			</div>
		</div>
		<div class="row">
      		<div class="col-12" style="background-color: orange;">
            <ul class="nav rounded shadow">
                <li class="nav-item btn btn-success m-3" ><a href="Leaves.jsp" class="nav-link text-light active">Home</a></li>
            	<li class="nav-item btn btn-success m-3" ><a href="facultyLogin.html" class="nav-link text-light active ">Logout</a></li>
            </ul>
		  	</div>
     		<div class="row">
         		<h1 class="text-success text-center">Casual Leaves/CCL & On-Duty Leaves</h1>
     		</div>
     	<div class="row">
     
     	<div class="col-12 bg-warning">
     	<table class="table">
     		<tr>
     				<th>ID</th>
     				<th>Faculty_ID</th>
     				<th>Name</th>
     				<th>Designation</th>
     				<th>Department</th>
     				<th>No_of_Days</th>
     				<th>From</th>
     				<th>To</th>
     				<th>Reason</th>
     				<th>Alternate_arrangements</th>
     				<th>Date</th>
     				<th>Status</th>
     				</tr>
     				
     	<%
     		String id =session.getAttribute("fid").toString();
     	//	String Faculty_ID=request.getParameter("Faculty_ID");
     		System.out.println(id);
     		Class.forName("com.mysql.jdbc.Driver");
     		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rohith","root","root");
     		Statement st = con.createStatement();
     		ResultSet rs = st.executeQuery("select * from onduty where Faculty_ID='"+id+"'");
     		while(rs.next()){
     			%>
     		     <tr>
     		        <td><%=rs.getInt(1) %></td>
     		        <td><%=rs.getString(2) %></td>
     		        <td><%=rs.getString(3) %></td>
     		        <td><%=rs.getString(4) %></td>
     		        <td><%=rs.getString(5) %></td>
     		        <td><%=rs.getString(6) %></td>
     		        <td><%=rs.getString(7) %></td>
     		        <td><%=rs.getString(8) %></td>
     		        <td><%=rs.getString(9) %></td>
     		        <td><%=rs.getString(10) %></td>
     		        <td><%=rs.getString(11) %></td>
     		        <td><%=rs.getString(12)%></td>
     		     </tr>
     		<%}
     	   
    
           %>
     	</table>
     	</div>
     	<div class="col-1"></div>
     </div>
   </div>
   </div>
</body>
</html>