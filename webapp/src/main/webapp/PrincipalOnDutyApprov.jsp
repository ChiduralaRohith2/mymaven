<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="connection.jsp" %>
<%

	String fid,status;
int LID;
  fid=request.getParameter("fid");
  status=request.getParameter("status");
  LID=Integer.valueOf(request.getParameter("LID"));
  System.out.println(fid);
  System.out.println(LID);
  
  PreparedStatement ps=con.prepareStatement("update onduty set status=? where Faculty_ID='"+fid+"' and ID="+LID+"");
  ps.setString(1, status);
  int i=ps.executeUpdate();
  if(i>0){
	  System.out.println(" Aproved");
	  response.sendRedirect("Principal.jsp");
  }
  else{
	  System.out.println("Leave Not APProved");
	  response.sendRedirect("HODLeavesApprov.jsp");
  }
  
%>