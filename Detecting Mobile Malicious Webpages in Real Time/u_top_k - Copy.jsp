<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Top K WebPages</title>
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
var na1=document.s.top.value;
if (na1=="")
{
alert("Please Enter Top Value");
document.s.top.focus();
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
.style9 {color: #FF0000}
.style11 {color: #666666}
.style12 {font-family: "Times New Roman", Times, serif}
.style13 {font-size: 15px}
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
          <h1 align="center" class="style2"> View Top-K WebPages</h1>
          <p>&nbsp;</p>

<form name="s" action="u_top_k.jsp" method="post" onSubmit="return valid()"  ons target="_top">   

              <table align="left" style="margin:0 0 0 30px;">
                <tr>
                  <td width="150"><div align="center" class="style3"><strong>Select Top 'K' </strong></div></td>
                  <td width="137"><div align="left"><input type="text" name="top" /></div></td>
				  
                  <td width="83"><input name="submit" type="submit" style="width:50px; height:25px;" value="GO"/></td>
                </tr>
              </table>
</form>

<p>
  <%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
    <%@ page import="java.sql.*"%>
    <%@ include file="connect.jsp" %>
    <%@ page import="java.util.Date" %>
  
    <%
	
      	try 
	         {
		          
				  int one=Integer.parseInt(request.getParameter("top"));	
		          
				  String q2="select * from topics order by rank DESC LIMIT 0,"+one+" "; 
                  Statement st8=connection.createStatement();
                  ResultSet rs8=st8.executeQuery(q2);
       	          while ( rs8.next() )
       	          {
       	
       	           
			       String s2=rs8.getString(2);
				   String s3=rs8.getString(3);
			       String Rank =rs8.getString(9);
				   
				   int UpdateRank=Integer.parseInt(Rank)+1;
       
%>
    
<p>&nbsp;</p>
<table align="center">
              <tr>
		        <td width="89" bgcolor="#95c234"> <div align="left" class="style6 style5 style14 style12 style13 style9"><span class="style4">Topic Name : </span></div></td>
			     <td width="40"><span class="style15 style13"> <%=s2%></span> </td>
              </tr>
			   
			   <tr>
			     <td width="89" bgcolor="#95c234"><div align="left" class="style6 style5 style14 style12 style13 style9"><span class="style4">URL  : </span> </div></td>
			     <td><span class="style15 style13"> <%=s3%></span></td>
			   </tr>
			   
			   <tr>
			     <td width="89" bgcolor="#95c234"><div align="left" class="style6 style5 style14 style12 style13 style9"><span class="style4">Rank  : </span> </div></td>
			     <td><span class="style15 style13"> <%=Rank%></span></td>
			   </tr>
</table>
                <p>
            <div align="center" class="style5 style14"><span class="style11">  <a href="u_webpage_details.jsp?tn=<%=s2%>&rank=<%=UpdateRank%>">View Details </a></span></div>
                </p>
                <p></p>
				<div>
				  <div align="center">--------------------------------------------------------</div>
				</div>
				 <p></p>
				<%
				
						  	     
								
								
									   
									    
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
