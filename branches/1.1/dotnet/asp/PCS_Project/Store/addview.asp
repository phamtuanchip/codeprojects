<%@LANGUAGE="JAVASCRIPT" CODEPAGE="65001"%>
<!--#include file = "../Connections/Connection.inc"-->
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
	border: 10px;
}
a:link {
	color: #000000;
	font-weight: bold;
	text-decoration: none;
}
a:visited {
	text-decoration: none;
	color: #0033CC;
}
a:hover {
	text-decoration: none;
}
a:active {
	text-decoration: none;
}
-->
</style>

<!-- InstanceBeginEditable name="head" --><!-- InstanceEndEditable -->
</head>
<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0">
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
              <!-- InstanceBeginEditable name="TimKiem" -->
              <table width="400" border="0" cellpadding="0" cellspacing="0" class="table">
                <tr>
                  <td><div align="right">
                      <input name="textfield" type="text" class="inputtext" size="30" value="Điền từ cần tìm" onfocus="if(this.value=='Điền từ cần tìm')this.value='';" >
                      <input name="Submit" type="submit" class="Buton" value="T&igrave;m ki&#7871;m">
                  </div></td>
                </tr>
              </table>
            <!-- InstanceEndEditable --></div></td>
            <td width="2%"><div align="right"><img src="../images/vd1.jpg" width="10" height="47"></div></td>
          </tr>
        </table>
      </div></td>
    </tr>
  </table>
  <table width="770" height="32" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td height="32" colspan="2" background="../images/bg01.gif"><table width="100%" height="32" border="0" cellpadding="0" cellspacing="0">
        <tr valign="top">
          <th width="200" height="32"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td><!-- InstanceBeginEditable name="Menu" -->
<!--#include file = "menu.asp"-->                  
<!-- InstanceEndEditable --></td>
            </tr>
          </table></th>
          <td width="79%"><table width="100%" height="100%" border="0" cellpadding="00" cellspacing="0">
            <tr>
              <td width="4%" height="32">&nbsp;</td>
              <td width="96%" valign="top"><!-- InstanceBeginEditable name="nhom_thietke" -->
        
 
              <div align="center" class="tex_de_muc"><strong>Thông tin thiết bị của phiếu nhập</strong></div>
              <div align="right"><br>
			  <span class="tex_de_muc">Mã phiếu</span> :<%=Request.QueryString("mp")%>
              </div>
  <table width="100%" border="1" cellpadding="0" cellspacing="0" bordercolor="#F3F3F3" bgcolor="#F7F7F7">
  <tr>
    <td width="63" bgcolor="#E4E4E4"><div align="center">Số thứ tự</div></td>
    <td width="309" bgcolor="#E4E4E4"><div align="center">Tên thiết bị</div></td>
	 <td width="86" bgcolor="#E4E4E4"><div align="center">Số lượng</div></td>
	 <td width="52" bgcolor="#E4E4E4"><div align="center">Sửa</div></td>
	 <td width="43" bgcolor="#E4E4E4"><div align="center">Xóa</div></td>
  </tr>
<%
	MaxMaPhieu =Request.QueryString("mp");
	RS = oConn.Execute("SELECT ma_nha_cc FROM PHIEUNHAPXUAT WHERE ma_phieu="+MaxMaPhieu);
	MaNhaCungCap = RS("ma_nha_cc");
	RS = oConn.Execute("SELECT ma_tb,ten_tb,so_luong_nhap FROM PHIEU WHERE ma_phieu ="+MaxMaPhieu);
%>
<%
var i=1;
while(!RS.EOF){
%>	
  <tr>
    <td bgcolor="#F7F7F7"><%=i++%></td>
    <td bgcolor="#F7F7F7"><%=RS("ten_tb")%></td>
	<td bgcolor="#F7F7F7"><%=RS("so_luong_nhap")%></td>
	<td bgcolor="#F7F7F7"><div align="center"><a href="UpDateTb.asp?MaThietBi=<%=RS("ma_tb")%>&KiemTra=Edit">Sửa</a></div></td>
	<td bgcolor="#F7F7F7"><div align="center"><a href="#">Xóa</a></div></td>
  </tr>
<%RS.MoveNext}%>  
<%
//RS = oConn.Execute("SELECT ma_nha_cc from PHIEUNHAPXUAT where ma_phieu ="+mp);
%>
</table>
</p>
<a href="add_tb_kho.asp?KiemTra=add&ncc=<%=MaNhaCungCap%>">Bạn tiếp tục đưa linh kiện vào phiếu nhập thiết bị</a>
<p>
<a href="add_tb_kho.asp">Lập một phiếu nhập mới</a>
<%RS.Close;%>
<!-- InstanceEndEditable --></td>
              </tr>
          </table>
            </td>
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
