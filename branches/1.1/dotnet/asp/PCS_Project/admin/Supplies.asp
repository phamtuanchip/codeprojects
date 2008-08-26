<%@LANGUAGE="JSCRIPT" codepage = 65001%>
<html><!-- InstanceBegin template="/Templates/template_admin.dwt" codeOutsideHTMLIsLocked="false" -->
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

<!-- InstanceBeginEditable name="head" --><!-- InstanceEndEditable -->
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_nbGroup(event, grpName) { //v6.0
  var i,img,nbArr,args=MM_nbGroup.arguments;
  if (event == "init" && args.length > 2) {
    if ((img = MM_findObj(args[2])) != null && !img.MM_init) {
      img.MM_init = true; img.MM_up = args[3]; img.MM_dn = img.src;
      if ((nbArr = document[grpName]) == null) nbArr = document[grpName] = new Array();
      nbArr[nbArr.length] = img;
      for (i=4; i < args.length-1; i+=2) if ((img = MM_findObj(args[i])) != null) {
        if (!img.MM_up) img.MM_up = img.src;
        img.src = img.MM_dn = args[i+1];
        nbArr[nbArr.length] = img;
    } }
  } else if (event == "over") {
    document.MM_nbOver = nbArr = new Array();
    for (i=1; i < args.length-1; i+=3) if ((img = MM_findObj(args[i])) != null) {
      if (!img.MM_up) img.MM_up = img.src;
      img.src = (img.MM_dn && args[i+2]) ? args[i+2] : ((args[i+1])? args[i+1] : img.MM_up);
      nbArr[nbArr.length] = img;
    }
  } else if (event == "out" ) {
    for (i=0; i < document.MM_nbOver.length; i++) {
      img = document.MM_nbOver[i]; img.src = (img.MM_dn) ? img.MM_dn : img.MM_up; }
  } else if (event == "down") {
    nbArr = document[grpName];
    if (nbArr)
      for (i=0; i < nbArr.length; i++) { img=nbArr[i]; img.src = img.MM_up; img.MM_dn = 0; }
    document[grpName] = nbArr = new Array();
    for (i=2; i < args.length-1; i+=2) if ((img = MM_findObj(args[i])) != null) {
      if (!img.MM_up) img.MM_up = img.src;
      img.src = img.MM_dn = (args[i+1])? args[i+1] : img.MM_up;
      nbArr[nbArr.length] = img;
  } }
}
//-->
</script>
<link href="../stylesheet/Default.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
body,td,th {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 12px;
}
-->
</style></head>

<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="" onLoad="MM_preloadImages('../images/menu11.jpg','images/menu_lien_he_11.gif','../images/menu_home_11.gif')">
<div align="center">
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
<p><%
	if (!Session("login")) {
	Session.Abandon();
	Response.Redirect("../login.asp");
	}
else {
	if(Session("quyen") !=1){
		Response.Redirect("../login.asp");
	}
}
%>
                <!--#include file = "../Connections/Connection.inc"-->
            <p>Tài khoản hiện hành:<br>
            (<%=Session("username")%>)&nbsp;<a href="../logout.asp">logout</a></p> 
            <p>&nbsp;</p>
            <!-- InstanceEndEditable --><!-- InstanceBeginEditable name="nhom_menu" -->
			<!--#include file = "menu.asp"-->
   
            <!-- InstanceEndEditable -->
<p>&nbsp;</p>     
			
            </fieldset>
            </th>
          <td width="79%"><table width="98%" height="100%" border="0" cellpadding="00" cellspacing="0">
            <tr>
              <td width="4%">&nbsp;</td>
              <td width="96%" valign="top"><!-- InstanceBeginEditable name="nhom_thietke" -->
                <p>
                  <!--#include file = "../Connections/Connection.inc"-->
                  <% // Phan trang
	rs.CursorLocation = 3;
	 //4 nhan vien 1 trang
	rs.PageSize = 10;
	rs.Open("select * from NHACUNGCAP", oConn);
	
	var rsCurrentPage;
	var rsPageCount;
	var i;
	var j;
	var p;

	rsCurrentPage = Request.QueryString("page");	
	if (isNaN(rsCurrentPage)) {
		rsCurrentPage = 1;
	}
	// Kiem tra tinh hop le cua so trang
		rsPageCount = rs.PageCount;
		if (rsCurrentPage > 0 && rsCurrentPage <= rsPageCount)
		{
			rs.AbsolutePage = rsCurrentPage;
		} 		
%>
                </p>
                <form name="form1" method="post" action="">
                  <table width="100%"  border="1" cellspacing="0" class="Link">
                    <tr>
                      <td colspan="6"><div align="center" class="Folder">Damh m&#7909;c nh&agrave; cung c&#7845;p</div></td>
                    </tr>
                    <tr bgcolor="#CCCCCC">
                      <td width="6%"><div align="center">Stt</div></td>
                      <td width="20%"><div align="center">M&atilde; nh&agrave; cung c&#7845;p</div></td>
                      <td width="27%"><div align="center">Nh&agrave; cung c&#7845;p</div></td>
                      <td width="28%"><div align="center">&#272;&#7883;a ch&#7881;</div></td>
                      <td colspan="2"><div align="center">Ch&#7913;c n&#259;ng</div></td>
                    </tr>
                    <% var stt = parseInt(0);
					while((!rs.EOF) && rs.AbsolutePage == rsCurrentPage) {%>
                    <tr>
                      <td><div align="center"> <%=parseInt(stt + parseInt(1))%> </div></td>
                      <td><div align="center"><%=rs("ma_nha_cc")%></div></td>
                      <td><div align="center"><a href="Supplies_details.asp?macc=<%=rs("ma_nha_cc")%>" class="ShowNext"> <%=rs("ten_nha_cc")%> </a></div></td>
                      <td><div align="center"> <%=rs("dia_chi_ncc")%> </div></td>
                      <td width="9%"><div align="center"><a href="Supplies_Edit.asp?macc=<%=rs("ma_nha_cc")%>" class="ShowNext">S&#7917;a</a></div></td>
                      <td width="10%"><div align="center"><a href="Delete_Supplies.asp?macc=<%=rs("ma_nha_cc")%>" class="ShowNext">Xóa</a></div></td>
                    </tr>
                    <%stt = stt +1;
					rs.MoveNext;} 
					%>
                  </table>
                </form>
                <%
	// Hien thi phan duyet phan trang
	 ShowPageNavigation(rsCurrentPage, rsPageCount);
	// rs.Open;
	%>
                <p></p>
                <form name="viewFrm" method="get" action="Supplies.asp">
                  <p>
                    <input type="hidden" name="page" value="<%=rsCurrentPage%>"/>
                  </p>
                </form>
                <%	
	function ShowPageNavigation(rsCurrentPage, rsPageCount) {
		Response.Write("<center><table><tr><td><strong><font color=#cccccc>");
		// link toi trang dau va trang truoc
		if ((rsCurrentPage != 1) && (rsCurrentPage != 0)) {
			Response.Write("<a href=JavaScript:setValue(1);>Trang &#273;&#7847;u</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
			Response.Write("<a href=JavaScript:setValue(" + (rsCurrentPage - 1) + ");>Tr&#432;&#7899;c</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
			}
		else		
		{
			Response.Write("Trang &#273;&#7847;u&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tr&#432;&#7899;c&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
		}
		//link toi trang ke tiep va trang cuoi
		if (rsCurrentPage < rsPageCount) {
			Response.Write("<a href=JavaScript:setValue(" + (parseInt(rsCurrentPage) + parseInt(1)) + ");>Sau</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
			Response.Write("<a href=JavaScript:setValue(" + rsPageCount + ");>Trang cu&#7889;i</a>");
			}
		else
		{
			Response.Write("Sau&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
			Response.Write("Trang cu&#7889;i");
		}
		
		Response.Write("</font></strong></td></tr><tr><td><strong><center><font color=#cccccc>");
		Response.Write("| ");
		// link toi tung trang
		for (p = 1; p <= rsPageCount; p++ ) {
			if (rsCurrentPage != p) {
				Response.Write("<a href=JavaScript:setValue(" + p + ");>" + p + "</a> | ");
			}
			else
			{
				Response.Write("<b>" + p + "</b>" + " | ");
			}
		}
		Response.Write("</font></center></strong></td></tr></table></center>");
	}
	rs.Close;
%>
                <script language="JavaScript" type="text/JavaScript">
	function setValue(page) {
			viewFrm.page.value=page; 
			viewFrm.submit();
		}
		        </script>
<!-- InstanceEndEditable --></td>
              </tr>
          </table>    
              <p>&nbsp;</p></td>     
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
