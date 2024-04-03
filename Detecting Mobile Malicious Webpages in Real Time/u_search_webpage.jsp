<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Search Webpages</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script language="javascript" type="text/javascript">
function valid()
{
var na1=document.s.keyword.value;
if (na1=="")
{
alert("Please Enter Keyword");
document.s.keyword.focus();
return false;
}

}      
</script>
<style type="text/css">
<!--
.style1 {font-size: 30px}
.style2 {
	font-size: 24px;
	color: #d86d5a;
}
.style11 {color: #666666}
.style12 {font-family: "Times New Roman", Times, serif}
.style13 {font-size: 15px}
.style14 {color: #FF0000}
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
          <h1 align="center" class="style2">SEARCH WEBPAGES</h1>
          <p>&nbsp;</p>
		  
<form name="s" action="u_search_webpage.jsp" method="post" onSubmit="return valid()"  ons target="_top">   
                <DIV STYLE="width:600px;">
                  <TABLE ALIGN="center" STYLE="margin:0 0 0 30px;">
                    <TR>
                      <TD width="174"><div align="center" class="header">
                        <div align="right" class="style12">
                          <div align="center" class="style6 style13">Enter Fuzzy Keyword</div>
                        </div>
                      </div></TD>
					  
                      <TD width="152">
                      <div align="left"><INPUT TYPE="text" name="keyword" /></div></TD>
					  <TD width="155"><INPUT name="submit" TYPE="submit" STYLE="width:50px; height:25px;" VALUE="GO"/></TD>
                    </TR>
                    <TR>
                      <TD COLSPAN="3"><div class="style2"></div></TD>
                    </TR>
                  </TABLE>
				  <p align="center" class="style13">(Topics will be Displayed in Descending Order)</p>
                </DIV>
                <P>&nbsp; </P>
</form>

		 
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

try
{
								String s1="",keyword="",s2="",s3="",s4,s5="",s6="",s8,s9,s10,s11,s12;
								String strDate="",strTime="",dt="";
								int rank=0,i=0;
								
								
							    String	input= request.getParameter("keyword");	
								keyword = input.toLowerCase();
								
								String user=(String)application.getAttribute("user");
								
								String nu="Null";
								String sql92="select name from topics where admin_name='"+nu+"' ";
								Statement st92=connection.createStatement();
								ResultSet rs92=st92.executeQuery(sql92);
								while(rs92.next())
										{
								                s11=rs92.getString(1);
												
												String sql222="select * from user_web_limits where user='"+user+"' and name='"+s11+"' ";
												Statement st222=connection.createStatement();
												ResultSet rs222=st222.executeQuery(sql222);
												if(rs222.next()!=true)
												{
								                
											   String count1="0",str="Malicious";
											   String strQuery22 = "insert into user_web_limits(user,name,count,type) values('"+user+"','"+s11+"','"+count1+"','"+str+"')";
											   connection.createStatement().executeUpdate(strQuery22);
												}
										}
										
								String nu2="Null";
								String sql99="select name from topics where admin_name!='"+nu2+"' ";
								Statement st99=connection.createStatement();
								ResultSet rs99=st99.executeQuery(sql99);
								while(rs99.next())
										{
								                s12=rs99.getString(1);
												
												String sql32="select * from user_web_limits where user='"+user+"' and name='"+s12+"' ";
												Statement st32=connection.createStatement();
												ResultSet rs32=st32.executeQuery(sql32);
												if(rs32.next()!=true)
												{
								                
											   String count2="0",str2="Good";
											   String strQuery42 = "insert into user_web_limits(user,name,count,type) values('"+user+"','"+s12+"','"+count2+"','"+str2+"')";
											   connection.createStatement().executeUpdate(strQuery42);
												}
										}
										
								
																	
								String sql2="select * from topics ORDER BY name desc";
								Statement st2=connection.createStatement();
								ResultSet rs2=st2.executeQuery(sql2);
								while(rs2.next())
										{
									
										   
										   s2 = rs2.getString(2).toLowerCase();//bk_name
										   s3 = rs2.getString(3).toLowerCase();//url
										   s4 = rs2.getString(4);//desc
										   s5 = rs2.getString(5).toLowerCase();//uses
										   s6 = rs2.getString(7).toLowerCase();//author
										   s9 = rs2.getString(9);//rk
										   
										   
						                        String keys="q2e34rrfgfgfgg2a";
												byte[] keyValue1 = keys.getBytes();
												Key key1 = new SecretKeySpec(keyValue1, "AES");
												Cipher c1 = Cipher.getInstance("AES");
												c1.init(Cipher.DECRYPT_MODE, key1);
												
												String decryptedValues4 = new String(Base64.decode(s4.getBytes())).toLowerCase();//desc
												
												
									   
					
							if ((s2.contains(keyword)) || (decryptedValues4.contains(keyword)) || (s5.contains(keyword)) )  // searching on tname,desc,uses
										{
										
										int UpdateRank=Integer.parseInt(s9)+1;
										
										String sql22="select count from user_web_limits where user='"+user+"' and name='"+s2+"' ";
										Statement st22=connection.createStatement();
										ResultSet rs22=st22.executeQuery(sql22);
										if(rs22.next())
										{
										  s10 = rs22.getString(1);
										  int UpdateRank1=Integer.parseInt(s10)+1;
										
									%>
									
                </P>
 </p>
         <table align="center">
              <tr>
		        <td width="89" bgcolor="#95c234"> <div align="left" class="style6 style5 style14 style12 style13"><span class="style4">Topic Name : </span></div></td>
			     <td width="40"><span class="style15 style13"> <%=s2%></span> </td>
              </tr>
			   
			   <tr>
			     <td bgcolor="#95c234"><div align="left" class="style6 style5 style14 style12 style13"><span class="style4">URL  : </span> </div></td>
			     <td><span class="style15 style13"> <%=s3%></span></td>
			   </tr>
		</table>
                <p>
            <div align="center" class="style5 style14"><span class="style11">  <a href="u_search_webpage1.jsp?tn=<%=s2%>&rank=<%=UpdateRank%>&count=<%=UpdateRank1%>">View Details </a></span></div>
                </p>
                <p></p>
				<div>
				  <div align="center">--------------------------------------------------------</div>
				</div>
				 <p></p>
				<%
				
						  	     
								
								
									   
									    }
							           }
						 
						}
					}
					
					catch(Exception e)
					{						  
					    e.printStackTrace();
						//out.println(e.getMessage());
					}
%>



		  <p>&nbsp;</p>
		  <p align="right"><a href="u_main.jsp">Back</a></p>
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
