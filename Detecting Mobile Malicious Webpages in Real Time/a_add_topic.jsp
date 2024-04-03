<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Add Topic</title>
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
var na3=document.s.name.value;
if(na3=="")

{
alert("Please Enter Topic Name");
document.s.name.focus();
return false;
}

var na4=document.s.url.value;
if(na4=="")

{
alert("Please Enter URL");
document.s.url.focus();
return false;
}



var na44=document.s.des.value;
if(na44=="")

{
alert("Please Write Description");
document.s.des.focus();
return false;
}
var na33=document.s.uses.value;
if(na33=="")

{
alert("Please Write Uses");
document.s.uses.focus();
return false;
}
var na13=document.s.author.value;
if(na13=="")

{
alert("Please Enter Url Author");
document.s.author.focus();
return false;
}
var na23=document.s.year.value;
if(na23=="")

{
alert("Please Enter Year");
document.s.year.focus();
return false;
}
var na11=document.s.pic.value;
if(na11=="")

{
alert("please Select Picture");
document.s.pic.focus();
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
.style4 {font-size: 24px}
.style5 {font-family: "Times New Roman", Times, serif; font-size: 24px; }
.style6 {font-family: "Times New Roman", Times, serif}
.style7 {color: #FF0000}
.style8 {font-size: 20px}
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
          <h1 align="center" class="style2">ADD TOPIC</h1>
          <p>&nbsp;</p>
		  
<form name="s" action="a_add_topic_ins.jsp" method="post" enctype="multipart/form-data" onSubmit="return valid()"  ons target="_top">  

    <table align="center" border="1" width="81%" height="267">
      <tr>
        <td width="48%" height="25" bgcolor="#95c234" class="style4 style2"><span class="style18 style6 style7 style8"> Topic Name </span></td>
        <td width="52%" height="25"><input type="name"  name="name" size="48" /></td>
      </tr>
      <tr>
        <td width="48%" height="25" bgcolor="#95c234" class="style5 style2"> <span class="style18 style6 style7 style8">Url</span></td>
        <td width="52%" height="25"><input type="url"  name="url" size="48" /></td>
      </tr>
	  
	  <tr>
        <td width="48%" height="25" bgcolor="#95c234" class="style5 style2"> <span class="style18 style6 style7 style8">Description</span></td>
        <td width="52%" height="25"><textarea name="des" cols="50" id="des"></textarea></td>
      </tr>
	  <tr>
        <td width="48%" height="25" bgcolor="#95c234" class="style5 style2"> <span class="style18 style6 style7 style8">Uses</span></td>
        <td width="52%" height="25"><textarea name="uses" cols="50" id="uses"></textarea></td>
      </tr>
	  <tr>
        <td width="48%" height="25" bgcolor="#95c234" class="style4 style2"><span class="style18 style6 style7 style8"> Url Author </span></td>
        <td width="52%" height="25"><input type="author"  name="author" size="48" /></td>
      </tr>
	  <tr>
        <td width="48%" height="25" bgcolor="#95c234" class="style4 style2"><span class="style18 style6 style7 style8"> Launched Year </span></td>
        <td width="52%" height="25"><input type="year"  name="year" size="48" /></td>
      </tr>
	  <tr>
        <td width="48%" height="25" bgcolor="#95c234" class="style5 style2"> <span class="style18 style6 style7 style8">Attach Image</span></td>
        <td width="52%" height="25"><input type="file" id="pic" name="pic" class="text" /></td>
      </tr>
      <tr>
        <td height="78" colspan="2"><p align="center">
            <input type="submit"  value="Add" name="B1" />
            <input type="reset" value="Reset" name="B2" />
        </td>
      </tr>
    </table>
	
</form>

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
