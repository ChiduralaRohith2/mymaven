<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="connection.jsp" %>
<%

	String fid,status;
  fid=request.getParameter("fid");
  status=request.getParameter("status");
  System.out.println(fid);
  
  PreparedStatement ps=con.prepareStatement("update cl set status=? where Faculty_ID='"+fid+"'");
  ps.setString(1, status);
  int i=ps.executeUpdate();
  if(i>0){
	  System.out.println("Leave Approved");
	  response.sendRedirect("PfacultyLeaveApprove.jsp");
  }
  else{
	  System.out.println("Leave Not Rejected");
	  response.sendRedirect("PrincipalLeavesApprove.jsp");
  }
  
%>