<%@LANGUAGE="JSCRIPT" codepage = 65001%>
<html><!-- InstanceBegin template="/Templates/templace.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- InstanceBeginEditable name="doctitle" -->
<title>PCS</title>
<!-- InstanceEndEditable -->
<style type="text/css">
<!--

body {
	font-family: "Times New Roman", Times, serif;
	font-size: 14px;
	color: #000000;
}
.Buton {
	font-family: "Times New Roman", Times, serif;
	color: #F06000;
	background-color: #C9C9C9;
	font-size: 10px;
	padding: 0px;
}
.inputtext {
	font-family: "Times New Roman", Times, serif;
	font-size: 14px;
	color: #FF0000;
	background-color: #CCCCCC;
	height: 18px;
	width: 100px;
	border: thin inset #99CC99;
}
.table {
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
	text-align: justify;
	text-indent: 0px;
	white-space: normal;
	display: run-in;
	word-spacing: 20px;
}
.list {
	font-family: "Times New Roman", Times, serif;
	font-size: 14px;
	color: #FF0000;
	background-color: #CCCCCC;
	height: 18px;
	width: 100px;
	border: thin ridge #99CC99;
}
.textcoppyright {
	font-family: "Times New Roman", Times, serif;
	font-size: 16px;
	color: #CCCCCC;
	font-style: italic;
}
.tex_de_muc {
	font-family: "Times New Roman", Times, serif;
	color: #FF8000;
	font-size: 16px;
	font-style: normal;
	text-decoration: none;
	border: 10;
}

-->
</style>

<!-- InstanceBeginEditable name="head" -->
<link href="../stylesheet/Default.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
body,td,th {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 12px;
}
-->
</style><!-- InstanceEndEditable -->
<script language="JavaScript" type="text/JavaScript">
<!--


function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}
//-->
</script>
</head>

<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="" onLoad="MM_preloadImages('../images/menu11.jpg','images/menu_lien_he_11.gif')">
<div align="center"> 
  <p class="textcoppyright">&nbsp;</p>
  <table width="301" height="100" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td width="301"><div align="center">
        <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="770" height="178">
          <param name="movie" value="../images/logo.swf">
          <param name="quality" value="high"><param name="LOOP" value="false"><param name="SCALE" value="noborder">
          <embed src="../images/logo.swf" width="770" height="178" loop="false" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" scale="noborder"></embed>
        </object>
      </div></td>
    </tr>
  </table>
  <table width="770" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="210" height="47" background="../images/n-m02.jpg"><img src="../images/vd.gif" width="180" height="47"></td>
      <td width="560" background="../images/n-m02.jpg"><div align="left">
        <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="98%">              <div align="right">
              <table width="400" border="0" cellpadding="0" cellspacing="0" class="table">
                <tr>
                  <td><div align="right">
                    <input name="textfield" type="text" class="inputtext" size="30" value="Mã kh cần tìm" onfocus="if(this.value=='Điền từ cần tìm')this.value='';" >
                    <input name="Submit" type="submit" class="Buton" value="T&igrave;m ki&#7871;m">
                  </div></td>
                </tr>
              </table>
              </div></td>
            <td width="2%"><div align="right"><img src="../images/vd1.jpg" width="10" height="47"></div></td>
          </tr>
        </table>
      </div></td>
    </tr>
  </table>
  <table width="770" height="211" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td colspan="2" background="../images/bg01.gif"><table width="100%" height="57" border="0" cellpadding="0" cellspacing="0">
        <tr valign="top">
          <th width="200"></p>
            <fieldset>
            <!-- InstanceBeginEditable name="nhom_dang_nhap" -->
<p>
  <%
	var oConn;
	var sql;
	
%>
  <!--#include file = "../Connections/Connection.inc"-->

</p>
            <p>Tài khoản hiện hành:<br>(<%=Session("username")%>)&nbsp;</p>
			<%if (Session("quyen")=="3"){%>
		    <!-- #include file="../customers/menu.asp"-->
			<%} else if (Session("quyen")=="2") {%>
			<!-- #include file="../store/menu.asp"-->
			<%} else if (Session("quyen")=="1"){%>
			<!-- #include file="../admin/menu.asp"-->
			<%} else{%>
			<%="Chưa có menu!"%>
			<%}%>
            <!-- InstanceEndEditable --><!-- InstanceBeginEditable name="nhom_menu" -->
<!-- InstanceEndEditable -->
<p>&nbsp;</p>
			
            </fieldset>
            </th>
          <td width="79%"><table width="98%" height="100%" border="0" cellpadding="00" cellspacing="0">
            <tr>
              <td width="4%">&nbsp;</td>
              <td width="96%" valign="top"><!-- InstanceBeginEditable name="nhom_thietke" -->
                <p>&nbsp;</p>
                <%
			  	var oConn;
			  	var RS;
				
				%>
                <!--#include file = "../Connections/Connection.inc" -->
                <%	
				
				RS = oConn.Execute( " SELECT TT.ma_tin_tuc,NV.ten_nv,TT.chu_de,TT.tom_tat,TT.noi_dung,TT.ngay_gui,TT.anh_url FROM TINTUC TT inner join NHANVIEN NV on TT.ma_nv = NV.ma_nv where TT.ma_tin_tuc=" + Request.QueryString("matin"));
			  %>
                <form >
                  <table width="564" border="0" cellpadding="5" class="Link">
                    <tr>
                      <td height="37" colspan="2"><div align="center" class="Folder" ><%=RS("chu_de")%></div></td>
                    </tr>
                    <tr>
                      <td width="148"><img src="<%=RS("anh_url")%>" width="150" height="100"></td>
                      <td width="384" valign="top"><div class="AdTitle"><%=RS("tom_tat")%></div></td>
                    </tr>
                    <tr>
                      <td colspan="2"><div align="left"></div>
                          <div align="left"><%=RS("noi_dung")%> </div></td>
                    </tr>
                    <tr>
                      <td height="31" colspan="2"><div align="right">Ngày:<%=RS("ngay_gui")%> .bởi <%=RS("ten_nv")%> </div></td>
                    </tr>
                  </table>
                </form>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
              <!-- InstanceEndEditable --></td>
              </tr>
          </table>
              <p class="list">&nbsp;</p></td>
        </tr>
      </table></td>
      <td width="10" bgcolor="#32aca8"><img src="../images/d-p01.gif" width="10" height="30"></td>
    </tr>
  </table>
  <table width="770" height="74" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td height="74" background="../images/n-d01.jpg"><div align="center" class="textcoppyright">COPYRIGHT @ PCS GROUP C0411G<img src="../images/n-d01.jpg" width="10" height="70"></div></td>
    </tr>
  </table>
</div>
</body>
<!-- InstanceEnd --></html>
