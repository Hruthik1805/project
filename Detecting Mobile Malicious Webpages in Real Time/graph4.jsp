
<%@ include file="connect.jsp"%>

<%
try
{
String web=request.getParameter("wb");
ResultSet rs=connection.createStatement().executeQuery("select user,count from user_web_limits where name='"+web+"' ");
%><html>
<head>
<title>Bookmark Results</title>
<script type="text/javascript" src="sources/jscharts.js"></script>
<style type="text/css">
<!--
.style2 {color: #C1FFFF}
.style3 {color: #F0F0F0}
-->
</style>
</head>
<body>
<div id="graph">Loading graph...</div>
<script type="text/javascript">
var myData=new Array();
var colors=[];

<%
	int i=0;
	String s1="";
	
	
	while(rs.next())
	{
	 
	     
   s1=rs.getString(1);
     int s2=rs.getInt(2);
	 
	
	%>
	
	myData["<%=i%>"]=["<%= s1%>",<%= s2%>];
        
	<%
	i++;}
	%>
	
	var myChart = new JSChart('graph', 'bar');
	myChart.setDataArray(myData);
	myChart.setBarColor('#FF3300');
	myChart.setBarOpacity(0.8);
	myChart.setBarBorderColor('#D9EDF7');
	myChart.setBarValues(true);
	myChart.setTitleColor('#8C8383');
	myChart.setAxisColor('#777E89');
	myChart.setAxisValuesColor('#FF0000');
	myChart.draw();
	
</script>

</body>
</html>
<%
}
catch(Exception e)
{
e.printStackTrace();
}
%>

