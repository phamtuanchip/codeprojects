<%@LANGUAGE="JAVASCRIPT" CODEPAGE="65001"%>
<html><!-- InstanceBegin template="/Templates/index_Process.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<!-- InstanceBeginEditable name="doctitle" -->
<title>Upload file</title>
<script language="javascript">
	function checkFile()
	{
		if(form.File1.value=="")
		{
			alert("Please choose a NC file!");
			return false;
		}
		
		
	}
</script>
<!-- InstanceEndEditable --><meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- InstanceBeginEditable name="head" --><!-- InstanceEndEditable -->
<style type="text/css">

a:link {
	color: #000066;
	font-weight: normal;
	text-decoration: none;
}
td 
{
	font-family: Times New Roman, Arial, Helvetica, sans-serif;
	font-size: 14px;
	color: #000000;
}
a:visited {
	text-decoration: none;
	color: #000000;
}
a:hover {
	text-decoration: none;
	color: #0000FF;
}
a:active {
	text-decoration: none;
	color: #000000;
}
a {
	font-weight: normal;
}

.style1 {color: #FFFFFF}
.style5 {color: #FFFFFF; font-weight: bold; }
.style6 {
	color: #0000FF;
	font-weight: bold;
}
</style>
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" bgcolor="#F1F3F8" >
<table cellspacing="0" cellpadding="0" border="0" height="57" width="100%">
  <tr valign="top"> 
    <td width="796" height="101"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="778" height="91">
      <param name="movie" value="NewBanner.swf">
      <param name="quality" value="high">
      <embed src="NewBanner.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="778" height="91"></embed>
    </object><br>
    <img src="images/bottombar1.gif" width="353" height="41"><img src="images/bottombar2.gif" width="153" height="41"><img src="images/topbutton1.gif" width="86" height="41" name="Image1" border="0"><img src="images/topbutton2.gif" width="86" height="41" name="Image2" border="0"><a href="Logout.asp"><img src="images/topbutton3.gif" width="86" height="41" name="Image3" border="0"></a><img src="images/bottombarend.gif" width="14" height="41">  </tr>
</table>
<table width="770" border="0" cellpadding="0" cellspacing="0" bordercolor="#F1F3F8" bgcolor="#F1F3F8">
  <tr align="left" valign="top"> 
    <td>	<!-- InstanceBeginEditable name="Content" -->
<table align="center" border="1" width="100%" height="50%" bordercolor="#006633" bordercolorlight="#0000CC"  cellpadding="8">
 <tr>
 	<td>

<p>Do you want to upload NC file for created process id?<br>
Note: File name can not contain blank charater ! ex: &quot;filename.cnc&quot; is true, &quot;file name.cnc&quot; is false </p>
<FORM name="form" method="Post" encType="multipart/form-data" action="uploadlogo.asp?idcp=<%=FName%>">
	<INPUT type="File" name="File1" size="30">
	<INPUT type="Submit" value="Upload" onClick="return checkFile();">
    <input type="button" name="Button" value="Cancel" onClick="window.location='WorkWithProject.asp'">
</FORM>
	</td>
  </tr>
</table>
<!-- InstanceEndEditable --></td>
    <td width="11">&nbsp;</td>
  </tr>
</table>
<br>
<br>
</body>
<!-- InstanceEnd --></html>
