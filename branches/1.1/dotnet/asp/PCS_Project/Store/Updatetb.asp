<%@LANGUAGE="JAVASCRIPT" CODEPAGE="65001"%>
<!--#include file = "../Connections/Connection.inc"-->
<meta http-equiv="refresh" >
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
<!--tao ket noi -->
<form method="post" action="Update.asp">
					<table width="100%"  border="1" cellpadding="0" cellspacing="0" bordercolor="#FCFCFC">
                      <tr bgcolor="#FFFFFF">
                         
                        <td colspan="3" valign="top">                        <div align="center"></div>
                          <div align="center">
                              <%
						var MaThietBi = Request.QueryString("MaThietBi");
						P = oConn.Execute("exec phieuab"+" " +MaThietBi);
					%>
                          </div></td>
                        </tr>
                      <tr bgcolor="#FFFFFF">
                        <td width="22%" valign="top" bgcolor="#DBDCE5">M&atilde; phiếu</td>
                      <td valign="top" bgcolor="#DBDCE5"><%=P("ma_phieu")%>
					  </td>
                      <td valign="top" bgcolor="#DBDCE5"><div align="right">
                            <%
							RS = oConn.Execute( " SELECT getdate() time");
						%>
                          <%=RS("time")%></div></td>
                      </tr>
                      <tr bgcolor="#FFFFFF">
                        <td valign="top" bgcolor="#FFFFFF">Nhân viên</td>
                      <td colspan="2" valign="top" bgcolor="#FFFFFF">
					  <!-- Lấy tên nhân viên -->
					  <input name="KiemTra" type="hidden" id="KiemTra" size="4" value="<%=Request.QueryString("KiemTra")%>">
                      <input name="MaThietBi" type="hidden" id="MaThietBi" size="4" value="<%=MaThietBi%>">
                      <%
					  	var MaNhanVien = Session("ma_nv");
						RS = oConn.Execute("SELECT ten_nv FROM NHANVIEN WHERE ma_nv = '"+MaNhanVien+"'");
						var TenNhanVien = RS("ten_nv");
						Response.Write(TenNhanVien);
					  %>
					  </td>
                      </tr>
                      <tr bgcolor="#FFFFFF">
                        <td valign="top" bgcolor="#FFFFFF">Nhà cung cấp (* ) </td>
                      <td colspan="2" valign="top"><%
							Response.Write(P("ten_nha_cc"));
					  %></td>
                      </tr>
                      <tr bgcolor="#FFFFFF">
                        <td valign="top">Lo&#7841;i thi&#7871;t b&#7883; (* ) </td>
                      <td colspan="2" valign="top"><select name="LoaiThietBi" class="TextNhap" id="LoaiThietBi">
                        <option  value="<%=P("ma_loai_tb")%>"><%=P("ten_loai_tb")%></option>
                        <%
							RS = oConn.Execute( " SELECT ma_loai_tb,ten_loai_tb FROM LOAITHIETBI where ma_loai_tb<>" + P("ma_loai_tb"));
						%>
                        <% while(!RS.EOF) { %>
                        <option value="<%=RS("ma_loai_tb")%>"><%=RS("ten_loai_tb")%></option>
                        <% RS.MoveNext } %>
                      </select>
					  </td>
                      </tr>
                      <tr bgcolor="#FFFFFF">
                        <td valign="top">Tên thiết bị(* ) </td>
                      <td colspan="2" valign="top" bgcolor="#FFFFFF"><input name="TenThietBi" type="text" class="TextNhap" id="TenThietBi" value="<%=P("ten_tb")%>" size="60"></td>
                      </tr>
                      <tr bgcolor="#FFFFFF">
                        <td valign="top"><div align="left">Số lượng nhập(* ) </div> </td>
                        <td colspan="2" valign="top" bgcolor="#FFFFFF"><input name="SoLuongNhap" type="text" class="TextNhap" id="SoLuongNhap" value="<%=P("so_luong_nhap")%>" size="6"></td>
                      </tr>
                      
                      <tr bgcolor="#FFFFFF">
                        <td height="10" valign="top">Giá nhập </td>
                        <td colspan="2" valign="top"><input name="GiaNHap" type="text" class="TextNhap"  id="GiaNHap" value="<%=P("gia_nhap")%>" size="10">
                          &nbsp;(Vn) </td>
                      </tr>
                      <tr bgcolor="#FFFFFF">
                        <td height="11" valign="top">Giá xuất</td>
                      <td colspan="2" valign="top"><input name="GiaXuat" type="text" class="TextNhap"  id="GiaXuat" value="<%=P("gia_xuat")%>" size="10">
&nbsp;(Vn) </td>
                      </tr>
                      
                      <tr bgcolor="#FFFFFF">
                        <td height="2" valign="top">Hãng sản xuất</td>
                      <td colspan="2" valign="top"><select name="HangSanXuat" class="TextNhap" id="HangSanXuat">
						<option value="<%=P("ma_hang_sx")%>"><%=P("ten_hang_sx")%></option>
                        	<%
								RS = oConn.Execute("SELECT ma_hang_sx,ten_hang_sx FROM HANGSANXUAT where ma_hang_sx <>'" + P("ma_hang_sx") +"'");
							%>
                        <%while(!RS.EOF){%>
                        <option value="<%=RS("ma_hang_sx")%>"><%=RS("ten_hang_sx")%></option>
                        <%RS.MoveNext }%>
                      </select></td>
                      </tr>
                      <tr bgcolor="#FFFFFF">
                        <td height="3" valign="top">Serial</td>
                        <td colspan="2" valign="top"><input name="SoHieuThietBi" type="text" class="TextNhap" id="SoHieuThietBi" value="<%=P("so_hieu_tb")%>" size="30"></td>
                      </tr>
                      <tr bgcolor="#FFFFFF">
                        <td height="5" valign="top">M&ocirc; t&#7843; chi tiết</td>
                      <td colspan="2" valign="top"><textarea name="MoTaChiTiet" cols="65" rows="3" class="TextNhap" id="MoTaChiTiet"><%=P("mo_ta_ct")%></textarea></td>
                      </tr>
                      <tr bgcolor="#FFFFFF">
                        <td height="6" valign="top" bgcolor="#FFFFFF">&nbsp;</td>
                      <td colspan="2" valign="top" bgcolor="#FFFFFF">&nbsp;
                        </td>
                      </tr>
                      <tr bgcolor="#FFFFFF">
                        <td valign="top">&nbsp;</td>
                      <td colspan="2" valign="top" bgcolor="#FFFFFF">&nbsp;</td>
                      </tr>
                      <tr bgcolor="#FFFFFF">
                        <td height="26" valign="top">&nbsp;</td>
                      <td width="26%" valign="top" bgcolor="#FFFFFF"><input type="button" name="Submit" value="Làm lại">                        </td>
                      <td width="52%" valign="top" bgcolor="#FFFFFF"><input type="submit" name="Submit" value="Thêm linh kiện"></td>
                      </tr>
                    </table>
					</form>
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
