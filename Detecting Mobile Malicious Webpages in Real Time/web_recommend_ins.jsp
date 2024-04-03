<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
<html>
<title>Recommendation Status</title>
<head></head>
<body>
	<center>&nbsp;</center>
	
	<%
	//String msg=null;
		try {
				String tname1 = request.getParameter("tname");
				String recommendto1 = request.getParameter("recommendto");
				
				SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
                SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

                Date now = new Date();

                String strDate = sdfDate.format(now);
                String strTime = sdfTime.format(now);
                String dt = strDate + "   " + strTime;
				//int imgid = Integer.parseInt(p_Name);
				//out.println(img);
				
				Statement stmt1=connection.createStatement();
				String strQuery1 = "select * from recommend where recommendto ='"+recommendto1+"' && tname='"+tname1+"'";
				ResultSet rs1 = stmt1.executeQuery(strQuery1);
				if(rs1.next())
				{
						
						out.println("Already Recommended this Topic to the User");
						%><br/><br/><a href="u_search_webpage.jsp">Back</a><%
						%><br/><br/><a href="u_main.jsp">User Main</a><%
		
				}
				else
				{
				
						String uname1 = (String )application.getAttribute("user");
					
						//out.println("hi");
						Statement st1 = connection.createStatement();
						String query1 ="insert into recommend(recommendfrom,recommendto,tname,date) values('"+uname1+"','"+recommendto1+"','"+tname1+"','"+dt+"')";
						st1.executeUpdate(query1);
						//out.println(n);
						
						out.println("Topic Successfully Recommended");
						%><br/><br/><a href="u_search_webpage.jsp">Back</a><%
						%><br/><br/><a href="u_main.jsp">User Main</a><%
				
				}
				
				
     connection.close();
}
      	catch(Exception e)
     	{
		out.println(e);
   		}
	
   		//response.sendRedirect("recommendlistofimages.jsp");  
	%>
		
                
</body>
</html>