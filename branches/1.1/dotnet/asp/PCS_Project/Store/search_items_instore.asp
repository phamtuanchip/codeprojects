<%@LANGUAGE="JAVASCRIPT" CODEPAGE="65001"%>
<!--#include file = "../Connections/Connection.inc"-->
<link href="../stylesheet/store.css" rel="stylesheet" type="text/css">
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
             <%if (Session("quyen")=="3"){%>
		    <!-- #include file="../customers/menu.asp"-->
			<%} else if (Session("quyen")=="2") {%>
			<!-- #include file="../store/menu.asp"-->
			<%} else if (Session("quyen")=="1"){%>
			<!-- #include file="../admin/menu.asp"-->
			<%} else{%>
			<%="Chưa có menu!"%>
			<%}%>
                  <!-- InstanceEndEditable --></td>
            </tr>
          </table></th>
          <td width="79%"><table width="100%" height="100%" border="0" cellpadding="00" cellspacing="0">
            <tr>
              <td width="4%" height="32">&nbsp;</td>
              <td width="96%" valign="top"><!-- InstanceBeginEditable name="nhom_thietke" -->
<!--tao ket noi -->

<!--#include file = "javascript.js"-->			
<%
	TenDangNhap=Session("username");
	MaDangNhap=Session("ma_nv") ;
	TenNhanVien=Session("ten_nv");
%>
<div align="center">
	<span class="tex_de_muc">Chào mừng <strong><%=Session("ten_nv")%> </strong> Đến với trang tìm kiếm thiết bị </span><br>
</div>
<hr>
<div align="right"></div>
<form action="search_items_instore_result.asp" method="post" name="timkiem" id="timkiem">
					  <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td><table width="100%"  border="0">
                            <tr>
                              <td width="18%">Tên thiế bị</td>
                              <td colspan="2"><input name="TenThietBi" type="text" class="TextNhap" id="TenThietBi" size="40"></td>
                              </tr>
                            <tr>
                              <td>&nbsp;</td>
                              <td colspan="2"><input name="PhuongThuc" type="radio" id="PhuongThuc" value="like" checked> 
                                Tìm t&#7915; gần &#273;úng</td>
                              </tr>
                            <tr>
                              <td>&nbsp;</td>
                              <td colspan="2"><input type="radio" name="PhuongThuc" id="PhuongThuc" value="=">
                                Tìm t&#7915; chính xác với t&#7915; &#273;&oacute;</td>
                              </tr>
                            <tr>
                              <td>&nbsp;</td>
                              <td colspan="2"><input type="radio" name="PhuongThuc" id="PhuongThuc" value="not like">
      Khác hẳn t&#7915; &#273;&oacute;</td>
                              </tr>
                            <tr>
                              <td>Loại thiết bị</td>
                              <td colspan="2"><p>
                                  <select name="LoaiThietBi" size="1" class="TextNhap" id="LoaiThietBi" >
                                    <%rs=oConn.Execute("select * from LOAITHIETBI")%>
                                    <option value="all" selected>Chọn tất cả</option>
                                    <%while (!rs.EOF){%>
                                    <option value="<%=rs("ma_loai_tb")%>"><%=rs("ten_loai_tb")%></option>
                                    <%rs.MoveNext;}rs.Close;%>
                                  </select>
                                  <br>
                              </p></td>
                              </tr>
                            <tr>
                              <td>Hãng sản xuất</td>
                              <td colspan="2"><select name="HangSanXuat" size="1" class="TextNhap" id="HangSanXuat" >
                                <%rs=oConn.Execute("select * from HANGSANXUAT")%>
                                <option value="all" selected>Chọn tất cả</option>
                                <%while (!rs.EOF){%>
                                <option value="<%=rs("ma_hang_sx")%>"><%=rs("ten_hang_sx")%></option>
                                <%rs.MoveNext;}rs.Close;%>
                              </select></td>
                              </tr>
                            <tr>
                              <td>Nh&agrave; cung cấp</td>
                              <td colspan="2"><select name="NhaCungCap" size="1" class="TextNhap" id="NhaCungCap" >
                                <%rs=oConn.Execute("select * from NHACUNGCAP")%>
                                <option value="all" selected>Chọn tất cả</option>
                                <%while (!rs.EOF){%>
                                <option value="<%=rs("ma_nha_cc")%>"><%=rs("ten_nha_cc")%></option>
                                <%rs.MoveNext;}%>
                              </select></td>
                              </tr>
                            <tr>
                              <td>Theo Ngày</td>
                              <td colspan="2"><select name="PhuongThucNgay" size="1" class="TextNhap" id="PhuongThucNgay" >
                                <option value="<=" selected>Chọn một</option>
                                <option value="<">Trước ngày</option>
                                <option value=">">Sau ngày</option>
                              </select>
                                <input name="NgayLapPhieu" type="text" class="TextNhap" id="NgayLapPhieu"  onFocus="this.value=''" size="20" > </td>
                              </tr>
                            <tr>
                              <td>&nbsp;</td>
                              <td colspan="2">&nbsp;</td>
                              </tr>
                            <tr>
                              <td>&nbsp;</td>
                              <td colspan="2">&nbsp;</td>
                              </tr>
                            <tr>
                              <td>&nbsp;</td>
                              <td width="26%"><input type="reset" name="Reset" value="Nhập lại"></td>
                            <td width="56%"><input type="submit" name="Submit" value="Bắt đầu tìm kiếm"></td>
                            </tr>
                          </table>                            
                            <hr>                            <p>&nbsp;</p>
                            </td>
                        </tr>
                      </table>
                    </form><hr> 
<%rs.Close;%>
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
