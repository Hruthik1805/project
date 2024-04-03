<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>WebPage Details</title>
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
.style14 {color: #FF0000}
.style15 {font-family: "Times New Roman", Times, serif}
.style16 {font-size: 15px}
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
          <li><a href="a_login.jsp"><span>Admin</span></a></li>
          <li class="active"><a href="u_login.jsp"><span>User</span></a></li>
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
          <h1 align="center" class="style2"> WEBPAGE DETAILS </h1>
          <p>&nbsp;</p>
		  
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
				
<%
    String s1 = "", s2 = "", s3 = "", s4 = "", s5 = "", s6 = "", s7 = "", s8, s9 = "", s10, s11, s12, s13,s14,s15,s16,s17;
	int i = 0, j = 0, k = 0;
    String tn=request.getParameter("tn");
	String rk=request.getParameter("rank");
	String user=(String)application.getAttribute("user");
								


try
{

                    SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
					SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
					Date now = new Date();
				    String strDate = sdfDate.format(now);
					String strTime = sdfTime.format(now);
					String dt = strDate + "   " + strTime;
						
					String task="Searched";
					String strQuery222 = "insert into transaction(user,tname,task,dt) values('"+user+"','"+tn+"','"+task+"','"+dt+"')";
					connection.createStatement().executeUpdate(strQuery222);


                                String sql="select * from topics where name='"+tn+"' ";
								Statement st=connection.createStatement();
								ResultSet rs=st.executeQuery(sql);
								if(rs.next())
										{
										
                                                i = rs.getInt(1);
                                                s2 = rs.getString(2);//tname
                                                s3 = rs.getString(3);//url
                                                s4 = rs.getString(4);//descr
                                                s5 = rs.getString(5);//uses
                                                s6 = rs.getString(6);//img
                                                s7 = rs.getString(7);//auth
                                                s8 = rs.getString(8);//year
                                                s9 = rs.getString(9);//rk
                                                s10 = rs.getString(10);//dt
				
				
				                                String keys="q2e34rrfgfgfgg2a";
												byte[] keyValue1 = keys.getBytes();
												Key key1 = new SecretKeySpec(keyValue1, "AES");
												Cipher c1 = Cipher.getInstance("AES");
												c1.init(Cipher.DECRYPT_MODE, key1);
						   
						                        String decrys4 = new String(Base64.decode(s4.getBytes()));
												
												String strQuery2 = "update topics set rank='"+rk+ "' where name='"+ s2 + "'";
												connection.createStatement().executeUpdate(strQuery2);
										
										
										
										%>
										
	<table width="515" border="1.5" align="center"  cellpadding="0" cellspacing="0">
										
		<tr>
		  <td  width="139" height="40" valign="middle" bgcolor="#95c234" style="color: #2c83b0;"><div align="left" class="style20 style9 style4 style6 style5 style14 style15 style16" style="margin-left:20px;"><strong>Topic Image</strong></div></td>
          <td width="116" rowspan="1" ><div class="style7" style="margin:10px 13px 10px 13px;">
		  <input  name="image" type="image" src="t_Pic.jsp?id=<%=i%>" style="width:90px; height:90px;">
          </div></td>
        </tr>
		
        <tr>
          <td  width="139" height="40" valign="middle" bgcolor="#95c234" style="color: #2c83b0;"><div align="left" class="style20 style9 style4 style6 style5 style14 style15 style16" style="margin-left:20px;"><strong>Topic Name</strong></div></td>
          <td  width="252" valign="middle" height="40" style="color:#000000;"><div align="left" class="style23 style9 style10 style6 style4" style="margin-left:20px;">
            <%out.println(s2);%>
          </div></td>
        </tr>
		
		<tr>
          <td  width="139" height="40" valign="middle" bgcolor="#95c234" style="color: #2c83b0;"><div align="left" class="style20 style9 style4 style6 style5 style14 style15 style16" style="margin-left:20px;"><strong>URL</strong></div></td>
          <td  width="252" valign="middle" height="40"><div align="left" class="style23 style9 style10 style6 style4" style="margin-left:20px;">
		  
            <input type="button" value="<%=s3%>" onclick="window.open('<%=s3%>')">
          </div></td>
        </tr>
		
		<tr>
          <td  width="139" height="40" valign="middle" bgcolor="#95c234" style="color: #2c83b0;"><div align="left" class="style20 style9 style4 style6 style5 style14 style15 style16" style="margin-left:20px;"><strong> Date</strong></div></td>
          <td  width="252" valign="middle" height="40" style="color:#000000;"><div align="left" class="style23 style9 style10 style6 style4" style="margin-left:20px;">
            <%out.println(s10);%>
          </div></td>
        </tr>
		
		<tr>
          <td  width="139" height="40" align="left" valign="middle" bgcolor="#95c234" style="color: #2c83b0;"><div align="left" class="style20 style9 style4 style6 style5 style14 style15 style16" style="margin-left:20px;"><strong>Description</strong></div></td>
          <td  width="252" valign="middle" height="40"><div align="left" class="style23 style9 style10 style6 style4" style="margin-left:20px;">
            <textarea name="textarea" cols="25" rows="7" readonly><%= decrys4 %></textarea>
          </div></td>
        </tr>
		
        <tr>
          <td  width="139" height="40"  valign="middle" bgcolor="#95c234" style="color: #2c83b0;"><div align="left" class="style20 style9 style4 style6 style5 style14 style15 style16" style="margin-left:20px;"><strong>Uses</strong></div></td>
          <td  width="252" valign="middle" height="40"><div align="left" class="style23 style9 style10 style6 style4" style="margin-left:20px;">
            <textarea name="text" cols="25" rows="7" readonly><%= s5 %></textarea>
          </div></td>
        </tr>
		
        <tr>
          <td  width="139" height="40" valign="middle" bgcolor="#95c234" style="color: #2c83b0;"><div align="left" class="style20 style9 style4 style6 style5 style14 style15 style16" style="margin-left:20px;"><strong>Url Author</strong></div></td>
          <td  width="252" valign="middle" height="40" style="color:#000000;"><div align="left" class="style23 style9 style10 style6 style4" style="margin-left:20px;">
            <%out.println(s7);%>
          </div></td>
        </tr>
		
		<tr>
          <td  width="139" height="40" valign="middle" bgcolor="#95c234" style="color: #2c83b0;"><div align="left" class="style20 style9 style4 style6 style5 style14 style15 style16" style="margin-left:20px;"><strong>Launched Year </strong></div></td>
          <td  width="252" valign="middle" height="40" style="color:#000000;"><div align="left" class="style23 style9 style10 style6 style4" style="margin-left:20px;">
            <%out.println(s8);%>
          </div></td>
        </tr>
		
		<tr>
          <td  width="139" height="40" valign="middle" bgcolor="#95c234" style="color: #2c83b0;"><div align="left" class="style20 style9 style4 style6 style5 style14 style15 style16" style="margin-left:20px;"><strong> Rank</strong></div></td>
          <td  width="252" valign="middle" height="40" style="color:#000000;"><div align="left" class="style23 style9 style10 style6 style4" style="margin-left:20px;">
            <%out.println(rk);%>
          </div></td>
        </tr>
		
		<tr>
          <td  width="139" height="40" valign="middle" bgcolor="#95c234" style="color: #2c83b0;"><div align="left" class="style20 style9 style4 style6 style5 style14 style15 style16" style="margin-left:20px;"><strong> Ratings </strong></div></td>
          <td><span class="style8">
                <%
		int rank=Integer.parseInt(s9);
					 
    if(rank==3)
    {
    	%>
                <input  name="image2" type="image" src="Gallery/1.png" width="30" height="30" />
                <%
    }
    if(rank>3 && rank<=6)
    {
    	%>
                <input  name="image2" type="image" src="Gallery/2.png" width="80" height="30" />
                <%
    }
    if(rank>6 && rank<=9)
    {
    	%>
                <input  name="image2" type="image" src="Gallery/3.png" width="100" height="30" />
                <%
    }
    if(rank>9 && rank<=12)
    {
    	%>
                <input  name="image2" type="image" src="Gallery/4.png" width="120" height="30" />
                <%
    }
    if(rank>12 && rank<=15)
    {
    	%>
                <input  name="image2" type="image" src="Gallery/5.png" width="140" height="30" />
                <%
    }
    if(rank>15)
    {
    	%>
                <input  name="image2" type="image" src="Gallery/6.png" width="170" height="30" />
                <%
    }
    %>
              </span></td>
        </tr>
		
		
		
		</table>
		
<%
}
										
								
}
					
					catch(Exception e)
					{						  
						out.println(e.getMessage());
					}
					
%>		  

		  <p>&nbsp;</p>
		  <p align="right"><a href="u_top_k.jsp">Back</a></p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>User</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="u_main.jsp"><span>User Main</span></a></li>
            <li><a href="u_login.jsp"><span>Log Out</span></a></li>
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
