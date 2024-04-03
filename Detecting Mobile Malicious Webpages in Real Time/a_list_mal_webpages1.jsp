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
.style1 {font-size: 20px}
.style4 {font-family: "Times New Roman", Times, serif}
.style5 {color: #FF0000}
.style6 {
	font-size: 18px;
	color: #FF0000;
}
.style8 {
	color: #666666;
	font-size: 18px;
}
.style9 {font-size: 18px}
.style10 {color: #666666}
-->
</style>
<body>

          <p>
		  
		  <table width="1140" border="1" align="center" cellspacing="0" cellpadding="5">
  <tr>
              <td width="21" bgcolor="#95c234"><div align="center" class="style3 style4 style5 style9">Id</div></td>
              <td width="91" bgcolor="#95c234"><div align="center" class="style3 style4 style5 style9">Topic Name </div></td>
              <td width="107" bgcolor="#95c234"><div align="center" class="style3 style4 style5 style9">Topic Image </div></td>
              <td width="89" bgcolor="#95c234"><div align="center" class="style3 style4 style5 style9">URL</div></td>
              <td width="136" bgcolor="#95c234"><div align="center" class="style3 style4 style5 style9">Description</div></td>
              <td width="127" bgcolor="#95c234"><div align="center" class="style3 style4 style5 style9">Uses</div></td>
              <td width="127" bgcolor="#95c234"><div align="center" class="style3 style4 style5 style9">Url Publisher</div></td>
              <td width="127" bgcolor="#95c234"><div align="center" class="style3 style4 style5 style9">Launched Year</div></td>
              <td width="127" bgcolor="#95c234"><div align="center" class="style3 style4 style5 style9">Uploaded Date</div></td>
			  <td width="127" bgcolor="#95c234"><div align="center" class="style3 style4 style5 style9">IP Address</div></td>
              <td width="127" bgcolor="#95c234"><div align="center" class="style3 style4 style5 style9">Rank</div></td>
              <td width="127" bgcolor="#95c234"><div align="center" class="style6 style1 style3 style4">Rating</div></td>
  </tr>

	<%
		String s1 = "", s2 = "", s3 = "", s4 = "", s5 = "", s6 = "", s7 = "", s8, s9 = "", s10, s11, s12, s13,s14,s15,s16;
		int i = 0, j = 1, k = 0;
		
		
        
		
try {
            String s17="Null";
			String query = "select * from topics where admin_name='"+s17+"' ";
			Statement st = connection.createStatement();
			ResultSet rs = st.executeQuery(query);
			while (rs.next()) {
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
				s11 = rs.getString(11);//aname
				s12 = rs.getString(12);//ip
				
				                                String keys="q2e34rrfgfgfgg2a";
												byte[] keyValue1 = keys.getBytes();
												Key key1 = new SecretKeySpec(keyValue1, "AES");
												Cipher c1 = Cipher.getInstance("AES");
												c1.init(Cipher.DECRYPT_MODE, key1);
												
						   String decrys4 = new String(Base64.decode(s4.getBytes()));

	%>

	<tr>
		      <td height="29"><div align="center" class="style9 style10"><%=j%></div></td>
              <td height="29"><div align="center" class="style9 style10"><%=s2%></div></td>
              <td height="80"><div align="center" class="style9 style10">
                <input  name="image" type="image" src="t_Pic.jsp?id=<%=i%>" style="width:90px; height:90px;" />
              </div></td>
              <td><div align="center" class="style9 style10"><input type="button" value="<%=s3%>" onClick="window.open('<%=s3%>')"></div></td>
              <td><div align="center" class="style9 style10">
                <textarea name="text" cols="10" rows="7" readonly><%= decrys4 %></textarea>
              </div></td>
              <td><div align="center" class="style9 style10">
                <textarea name="text" cols="10" rows="7" readonly><%= s5 %></textarea>
              </div></td>
              <td height="29"><div align="center" class="style9 style10"><%=s7%></div></td>
              <td height="29"><div align="center" class="style8 style10"><%=s8%></div></td>
			  <td height="29"><div align="center" class="style9 style10"><%=s10%></div></td>
			  <td height="29"><div align="center" class="style9 style10"><%=s12%></div></td>
              <td height="29"><div align="center" class="style8 style10"><%=s9%></div></td>
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

	<%j=j+1;
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
