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
<style type="text/css">
<!--
.style1 {font-size: 18px}
body,td,th {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 12px;
}
-->
</style>
<link href="../stylesheet/Default.css" rel="stylesheet" type="text/css">
<!-- InstanceEndEditable -->
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
<p><%
	var oConn;
	var sql;
	
%>
 <!--#include file = "../Connections/Connection.inc"-->
 <p>Tài khoản hiện hành:<br>
            (<%=Session("username")%>)&nbsp;</p>
          </p>
            <%if (Session("quyen")=="3"){%>
		    <!-- #include file="../customers/menu.asp"-->
			<%} else if (Session("quyen")=="2") {%>
			<!-- #include file="../store/menu.asp"-->
			<%} else if (Session("quyen")=="1"){%>
			<!-- #include file="../admin/menu.asp"-->
			<%} else{%>
			<%="Chưa có menu!"%>
			<%}%>
            <!-- InstanceEndEditable --><!-- InstanceBeginEditable name="nhom_menu" --><!-- InstanceEndEditable -->
<p>&nbsp;</p>
			
            </fieldset>
            </th>
          <td width="79%"><table width="98%" height="100%" border="0" cellpadding="00" cellspacing="0">
            <tr>
              <td width="4%">&nbsp;</td>
              <td width="96%" valign="top"><!-- InstanceBeginEditable name="nhom_thietke" -->
                <p>
                  <script language="javascript">
	function getdate(){
		var date;
		var now = new Date();
		var day = now.getDate();
		var month = now.getMonth() + 1;
		var year = now.getFullYear();
		date = month + "/" + day + "/"+ year ;
		news.ngaygui.value = date;
	}
                  </script>
</p>
                <form action="SaveNew.asp" method="post" name="news" id="news">
                  <table width="573" height="191" border="0" cellspacing="0" class="Link">
                    <tr>
                      <td colspan="3" class="tex_de_muc"><div align="center" class="style1"><span class="Folder">Cập nhật tin tức mới</span></div></td>
                    </tr>
                    <tr>
                      <td colspan="3"><div align="center">
                          <p class="Folder">&nbsp;</p>
                      </div></td>
                    </tr>
                    <tr>
<!--#include file = "../Connections/Connection.inc" -->
 <% 
  if (!Session("login")) {
	Session.Abandon();
	Response.Redirect("../login.asp");
}
// Phan trang
	rs.CursorLocation = 3;
	 //4 nhan vien 1 trang
	rs.PageSize = 5;
	rs.Open("Select ma_tin_tuc,chu_de,ngay_gui from TINTUC order by ngay_gui DESC", oConn);
	
	var rsCurrentPage;
	var rsPageCount;
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
                      <% 
						var RS ;
						RS = oConn.Execute("Select * from NHANVIEN");
					%>
                      <td width="168"><div align="left">T&ecirc;n nh&acirc;n vi&ecirc;n</div></td>
                      <td width="383" colspan="2"><input name="manv" type="text" id="manv" value="<%=Session("ten_nv")%>">
                          <input name="matin" type="hidden" id="matin"></td>
                    </tr>
                    <tr>
                      <td><div align="left">Ch&#7911; &#273;&#7873;</div></td>
                      <td colspan="2"><input name="chude" type="text" id="chude" size="60"></td>
                    </tr>
                    <tr>
                      <td>Tóm tắt ND </td>
                      <td colspan="2"><textarea name="tomtat" cols="50" rows="2" id="tomtat"></textarea></td>
                    </tr>
                    <tr>
                      <td><div align="left">Nội dung </div></td>
                      <td colspan="2"><textarea name="noidung" cols="50" rows="7" id="noidung"></textarea></td>
                    </tr>
                    <tr>
                      <td><div align="left">Ngày &#273;&#432;a tin </div></td>
                      <%rs9=oConn.Execute("select getdate() ngay")%>
                      <td colspan="2"><input name="ngaygui" type="text" id="ngaygui"  size="5" value="<%=rs9("ngay")%>" readonly="1" >
                          <input name="anh" type="hidden" id="anh" size="30" value="\website\new\Uploads\<%=Session("filename")%>"></td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td colspan="2"><input type="submit" class="VoteButton" value="Insert">
                          <input name="Reset" type="reset" class="VoteButton" value="Reset"></td>
                    </tr>
                  </table>
                </form>
                <form action="ToFileSystem.asp"  method="post" enctype="multipart/form-data">
                  <table width="100%" border="0" cellspacing="0">
                    <tr>
                      <td width="30%">Ảnh</td>
                      <td width="70%"><input name="File1" type="file" class="VoteButton" id="File1">
                          <input name="Submit" type="submit" class="VoteButton" value="Upload">
                          <input name="Reset" type="reset" class="VoteButton" value="Reset"></td>
                    </tr>
                  </table>
                  <p align="center">&nbsp;</p>
                  <p align="center"><span class="Folder">Tin Tức</span></p>
                </form>
                <table width="569" height="75" border="1" cellspacing="0" class="Link">
                  <tr>
                    <td height="36" bgcolor="#CCCCCC"><div align="center">Ch&#7911; 
                            &#273;&#7873;</div></td>
                    <td width="112" bgcolor="#CCCCCC"><div align="center">Ngày 
                            &#273;&#432;a tin </div></td>
                    <td colspan="2" bgcolor="#CCCCCC"><div align="center">Chức 
                            n&#259;ng</div></td>
                  </tr>
                  <%while ((!rs.EOF) && rs.AbsolutePage == rsCurrentPage) {%>
                  <tr>
                    <td><a href="NewDetail.asp?matin=<%=rs("ma_tin_tuc")%>" class="ShowNext"><%=rs("chu_de")%></a></td>
                    <td><%=rs("ngay_gui")%></td>
                    <td width="47"><div align="center"><a href="EditNew.asp?matin=<%=rs("ma_tin_tuc")%>" class="ShowNext">Sửa</a></div></td>
                    <td width="55"><div align="center"><a href=javascript:del("<%=rs("ma_tin_tuc")%>") class="ShowNext">Xóa</a></div></td>
                  </tr>
                  <%rs.MoveNext() }%>
                </table>
                <br>
                <p>
                      <%
	// Hien thi phan duyet phan trang
	 ShowPageNavigation(rsCurrentPage, rsPageCount);
	// rs.Open;
	%>
                </p>
                <p></p>
                <form name="viewFrm" method="get" action="new_manager.asp">
                  <p>
                    <input type="hidden" name="page" value="<%=rsCurrentPage%>"/>
</p>
                </form>
                <form action="DeleteNew.asp" name="delFrm">
                  <input type="hidden" name="option" value="delete" />
                  <input type="hidden" name="matin" >
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
	function del(n) {
		if(confirm("Are you sure to Delete?")) {
			delFrm.matin.value=n;
			delFrm.submit();
		}
	}
                </script>
                <p>&nbsp;</p>
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
