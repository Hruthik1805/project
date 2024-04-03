	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
 	<%
  		
   	try {
		   
			int i = 0, j = 0, k = 0,n = 0,n1 = 0;
			String id=request.getParameter("id");
			String user=request.getParameter("user");
			
			        SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
					SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
					Date now = new Date();
				    String strDate = sdfDate.format(now);
					String strTime = sdfTime.format(now);
					String dt = strDate + "   " + strTime;
			
			String str = "Unblocked";
       		Statement st1 = connection.createStatement();
       		String query1 ="update unblock_req set status='"+str+"',res_dt='"+dt+"' where id="+id+" ";
	   		st1.executeUpdate (query1);
			
			
				String query2 = "delete from blocked_user where user='"+ user + "' ";
				st1.executeUpdate(query2);
				
				    String query5="select * from user "; 
					Statement st5=connection.createStatement();
					ResultSet rs5=st5.executeQuery(query5);
					while( rs5.next())
					{
					  n++;
					}
					String query15="select * from blocked_user "; 
					Statement st15=connection.createStatement();
					ResultSet rs15=st15.executeQuery(query15);
					while( rs15.next())
					{
					  n1++;
					}
					
					int n2=n-n1;//Unblocked users
					
						
				    String strQuery21 = "update bnb_users set number="+n1+ " where user='Blocked Users' ";
				    connection.createStatement().executeUpdate(strQuery21);
					
					String strQuery212 = "update bnb_users set number="+n2+ " where user='UnBlocked Users' ";
				    connection.createStatement().executeUpdate(strQuery212);
			
			
			
			connection.close();
			response.sendRedirect("a_unblock_user.jsp");  
			
			
	   		
       	}
      	catch(Exception e)
     	{
			out.println(e.getMessage());
   		}
   		
	%>
