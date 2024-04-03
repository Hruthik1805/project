<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.security.DigestInputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.PrintStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.math.BigInteger"%>
<%@ page
	import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@ include file="connect.jsp"%>
<%@page
	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>

<%@page import="java.security.MessageDigest"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>



<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>


<html>
<style type="text/css">
<!--
.style2 {
	color: #FF0000;
	font-size: 25px;
}
.style4 {font-family: "Times New Roman", Times, serif}
.style5 {color: #FF0000}
.style6 {font-size: 15px}
.style7 {
	font-weight: bold;
	font-family: "Times New Roman", Times, serif;
}
.style8 {color: #666666}
-->
</style>
<body>

          <p>
		  
		  <table width="965" border="1" align="center" cellspacing="0" cellpadding="5">
  <tr>
    <td  width="23" height="66"  valign="middle" bgcolor="#95c234" style="color: #2c83b0;"><div align="center" class="style4 style5 style3 style2 style15 style21 style6"><strong><strong>ID</strong></strong></div></td>
              <td  width="116" height="66" valign="middle" bgcolor="#95c234" style="color: #2c83b0;"><div align="center" class="style4 style5 style3 style2 style15 style21 style6"><strong><strong>User Image</strong></strong></div></td>
              <td  width="113" height="66" valign="middle" bgcolor="#95c234" style="color: #2c83b0;"><div align="center" class="style4 style5 style3 style2 style15 style21 style6"><strong><strong>User Name </strong></strong></div></td>
              <td  width="83" height="66" valign="middle" bgcolor="#95c234" style="color: #2c83b0;"><div align="center" class="style4 style5 style3 style2 style15 style21 style6"><strong><strong> Email </strong></strong></div></td>
              <td  width="67" height="66" valign="middle" bgcolor="#95c234" style="color: #2c83b0;"><div align="center" class="style4 style5 style3 style2 style15 style21 style6"><strong><strong>Mobile</strong></strong></div></td>
              <td  width="59" height="66"  valign="middle" bgcolor="#95c234" style="color: #2c83b0;"><div align="center" class="style4 style5 style3 style2 style15 style21 style6"><strong><strong>DOB</strong></strong></div></td>
			  <td  width="59" height="66"  valign="middle" bgcolor="#95c234" style="color: #2c83b0;"><div align="center" class="style4 style5 style3 style2 style15 style21 style6"><strong><strong>Address</strong></strong></div></td>
			  <td  width="59" height="66"  valign="middle" bgcolor="#95c234" style="color: #2c83b0;"><div align="center" class="style4 style5 style3 style2 style15 style21 style6"><strong><strong>Gender</strong></strong></div></td>
			  <td  width="59" height="66"  valign="middle" bgcolor="#95c234" style="color: #2c83b0;"><div align="center" class="style4 style5 style3 style2 style15 style21 style6"><strong><strong>Pincode</strong></strong></div></td>
			  <td  width="59" height="66"  valign="middle" bgcolor="#95c234" style="color: #2c83b0;"><div align="center" class="style4 style5 style3 style2 style15 style21 style6"><strong><strong>Location</strong></strong></div></td>
              <td  width="80" height="66"  valign="middle" bgcolor="#95c234" style="color: #2c83b0;"><div align="center" class="style6 style7 style21 style15 style2 style3 style5 style5"><strong>Status</strong></div></td>
  </tr>

	<%
		                String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12;
						int i=0;
			
			try{

			                String query="select * from user "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() ) 
			                {
				                 i=rs.getInt(1);
								s2=rs.getString(2);
								s4=rs.getString(4);
								s5=rs.getString(5);
								s6=rs.getString(6);//add
								s7=rs.getString(7);//dob
								s8=rs.getString(8);
								s9=rs.getString(9);
								s10=rs.getString(10);
								s11=rs.getString(11);
								s12=rs.getString(12);
				
				                                

	%>

	<tr>
		<td  valign="baseline" height="0"><p class="style22 style4 style8">&nbsp;</p>
                  <div align="center" class="style22 style4 style8">
                    <%out.println(i);%>
                    <p>&nbsp; </p>
                  </div></td>
              <td width="116" rowspan="1" ><div class="style22 style4 style8" style="margin:10px 13px 10px 13px;" > <a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="u_Pic.jsp?id=<%=i%>" style="width:90px; height:90px;" />
              </a> </div></td>
              <td  valign="baseline" height="0"><p class="style22 style4 style8">&nbsp;</p>
                  <div align="center" class="style22 style4 style8">
                    <%out.println(s2);%>
                    <p>&nbsp; </p>
                  </div></td>
              <td  valign="baseline" height="0"><p class="style22 style4 style8">&nbsp;</p>
                  <div align="center" class="style22 style4 style8">
                    <%out.println(s4);%>
                    <p>&nbsp; </p>
                  </div></td>
              <td  valign="baseline" height="0"><p class="style22 style4 style8">&nbsp;</p>
                  <div align="center" class="style22 style4 style8">
                    <%out.println(s5);%>
                    <p>&nbsp; </p>
                  </div></td>
              <td  valign="baseline" height="0"><p class="style22 style4 style8">&nbsp;</p>
                  <div align="center" class="style22 style4 style8">
                    <%out.println(s7);%>
                    <p>&nbsp; </p>
                  </div></td>
			  <td  valign="baseline" height="0"><p class="style22 style4 style8">&nbsp;</p>
                  <div align="center" class="style22 style4 style8">
                    <%out.println(s6);%>
                    <p>&nbsp; </p>
                  </div></td>
			  <td  valign="baseline" height="0"><p class="style22 style4 style8">&nbsp;</p>
                  <div align="center" class="style22 style4 style8">
                    <%out.println(s8);%>
                    <p>&nbsp; </p>
                  </div></td>
			  <td  valign="baseline" height="0"><p class="style22 style4 style8">&nbsp;</p>
                  <div align="center" class="style22 style4 style8">
                    <%out.println(s9);%>
                    <p>&nbsp; </p>
                  </div></td>
			  <td  valign="baseline" height="0"><p class="style22 style4 style8">&nbsp;</p>
                  <div align="center" class="style22 style4 style8">
                    <%out.println(s10);%>
                    <p>&nbsp; </p>
                  </div></td>  
			
              <%
						if(s12.equalsIgnoreCase("waiting"))
						{
						
						%>
              <td  width="80" valign="baseline" height="0" style="color:#000000;"align="center"><div align="center" class="style22 style4 style8">
                  <p>&nbsp;</p>
                <a href="u_Status.jsp?id=<%=i%>" class="style5">waiting</a> </div></td>
              <%
						}
						else
						{
						%>
              <td width="64" height="0"  valign="baseline"><p class="style22 style4 style8">&nbsp;</p>
                  <div align="center" class="style22 style4 style8">
                    <%out.println(s12);%>
                </div></td>
              <%
						}
						%>
            </tr>

	<%
		}

			connection.close();
		}

		catch (Exception e) {
		//	out.println(e.getMessage());
		}
	%>
</table>
		  
		  
</body>
</html>
