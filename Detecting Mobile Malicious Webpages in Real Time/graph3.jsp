
<%@ include file="connect.jsp"%>

<%
try
{

ResultSet rs=connection.createStatement().executeQuery("select * name from user_web_limits ");
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
	
	String s2=null,s3=null;
	
	while(rs.next())
	{
	 
	     s2=rs.getString(2);
		 s3=rs.getString(3);
     int s4=rs.getInt(4);
	 
	
	%>
	
	myData["<%=i%>"]=["<%= s2%>",<%= s3%>,<%= s4%>];
        
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
<span class="style3"></span><span class="style2"></span>

</body>
</html>
<%
}
catch(Exception e)
{
e.printStackTrace();
}
%>

