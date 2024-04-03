<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All Webpages Viewed</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>

<style type="text/css">
<!--
.style1 {font-size: 30px}
.style2 {
	font-size: 24px;
	color: #d86d5a;
}
.style5 {font-family: "Times New Roman", Times, serif; font-size: 24px; }
.style6 {color: #FF0000}
.style7 {font-size: 20px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li class="active"><a href="a_login.jsp"><span>Admin</span></a></li>
          <li><a href="u_login.jsp"><span>User</span></a></li>
          <li><a href="attacker.jsp"><span>Attacker</span></a></li>
        </ul>
      </div>
      <div class="logo">
        <h1><a href="index.html" class="style1">Detecting Mobile Malicious<br /> Webpages in Real Time</a></h1>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="940" height="310" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="940" height="310" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="940" height="310" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h1 align="center" class="style2">VIEW ALL USER DETAILS WHO VIEWED MALICIOUS WEBPAGES</h1>
          <p>&nbsp;</p>
		  
<table width="535" border="1" align="center"  cellpadding="0" cellspacing="0">
        <tr>
          <td  width="35" height="50" align="center" valign="middle" bgcolor="#95c234" style="color: #2c83b0;"><div align="center" class="style5 style25 style14 style15 style16 style10 style6 style7">Id</div></td>
          <td  width="112" height="50" align="center" valign="middle" bgcolor="#95c234" style="color: #2c83b0;"><div align="center" class="style5 style25 style14 style15 style16 style10 style6 style7">User Name</div></td>
          <td  width="192" align="center" valign="middle" bgcolor="#95c234" style="color: #2c83b0;"><div align="center" class="style25 style5 style14 style15 style16 style10 style6 style7">Topic Name<br />(Malicious WebPage) </div></td>
		  <td  width="70" align="center" valign="middle" bgcolor="#95c234" style="color: #2c83b0;"><div align="center" class="style25 style5 style14 style15 style16 style10 style6 style7">Date</div></td>
		  <td  width="114" align="center" valign="middle" bgcolor="#95c234" style="color: #2c83b0;"><div align="center" class="style25 style5 style14 style15 style16 style10 style6 style7"> Ip Address </div></td>
        </tr>
		
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
        <%
					    
						String s1,s2,s3,s4,s5,s6,s7;
						int i=1;
						try 
						{
								String str="Null";
								Statement stmt2=connection.createStatement();
							    String strQuery2 = "select NAME from topics where admin_name='"+str+"' ";
								ResultSet rs2 = stmt2.executeQuery(strQuery2);
					   			while ( rs2.next() )
								{
								  s7=rs2.getString(1);
								
								
								Statement stmt1=connection.createStatement();
								String strQuery1 = "select * from transaction where tname='"+s7+"' ";
								ResultSet rs1 = stmt1.executeQuery(strQuery1);
					   			while ( rs1.next() )
								{
										
										s2=rs1.getString(2);//
										s3=rs1.getString(3);
										s5=rs1.getString(5);//
										s6=rs1.getString(6);


					%>
        <tr>
          <td height="62" align="center"  valign="middle"><div align="center" class="style5 style26 style15 style16 style11 style7">&nbsp;</p>
                <%out.println(i);%>
                <p>&nbsp; </p>
              </div></td>
          
			  
		  
		  
          <td height="62" align="center"  valign="middle"><div align="center" class="style5 style26 style15 style16 style11 style7">&nbsp;</p>
                <a href="a_user_profile.jsp?type1=<%=s2%>&type=<%="four"%>"><%=s2%></a>
                <p>&nbsp; </p>
              </div></td>
		  
		  <td height="62" align="center"  valign="middle"><div align="center" class="style5 style26 style15 style16 style11 style7">&nbsp;</p>
                <%out.println(s3);%>
                <p>&nbsp; </p>
              </div></td>
		  <td height="62" align="center"  valign="middle"><div align="center" class="style5 style26 style15 style16 style11 style7">&nbsp;</p>
		  <%out.println(s5);%>
              <p>&nbsp; </p>
              </div></td>
			  
		  <td height="62" align="center"  valign="middle"><div align="center" class="style5 style26 style15 style16 style11 style7">&nbsp;</p>
		  <%out.println(s6);%>
              <p>&nbsp; </p>
              </div></td>
			  
        
        
		<%
                
				                
				i=i+1;

						}}
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
      </tr>
  </table>		  

		  
		  

		  <p>&nbsp;</p>
		  <p align="right"><a href="a_main.jsp">Back</a></p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Admin</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
			<li><a href="a_main.jsp"><span>Admin Main</span></a></li>
            <li><a href="a_login.jsp"><span>Log Out</span></a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2><span>Image</span> Gallery</h2>
        <a href="#"><img src="images/gal1.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal2.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal3.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal4.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal5.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal6.jpg" width="75" height="75" alt="" class="gal" /></a> </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
