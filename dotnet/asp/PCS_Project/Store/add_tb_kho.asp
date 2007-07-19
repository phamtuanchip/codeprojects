<%@LANGUAGE="JAVASCRIPT" CODEPAGE="65001"%>
<!--#include file = "../Connections/Connection.inc"-->
<!--Nhung script-->
<script type="text/javascript" >
			  		function Validate(form1) {
					
						//var regex=/^[a-zA-Z]+$/; 
				//Ten nha cung cap			 

						if(form1.NhaCungCap.value == "" || form1.NhaCungCap.value == null) {
							alert ("Bạn Phải chọn nhà cung cấp");
							form1.NhaCungCap.focus();
							return false;
						}
			    //Loại Thiết bị
							if(form1.LoaiThietBi.value == "" || form1.LoaiThietBi.value == null) {
							alert ("Bạn Phải chọn loại thiết bị");
							form1.LoaiThietBi.focus();
							return false;
						}
				//Ten Thiet bi
						if(form1.TenThietBi.value == "" || form1.TenThietBi.value == null) {
							alert ("Bạn phải nhập Tên Thiết bị");
							form1.TenThietBi.focus();
							return false;
						}
						
				// Số lượng thiết bị
						
						if(form1.SoLuongNhap.value == "" || form1.SoLuongNhap.value == null) {
							alert("Bạn phải nhập số lượng nhập	");
							form1.SoLuongNhap.focus();
							return false;
						}
						
						if(form1.HangSanXuat.value == "" || form1.HangSanXuat.value == null) {
							alert("Bạn phải chọn Hãng sản xuất");
							form1.HangSanXuat.focus();
							return false;
						}
						
						
						else {
							return true;
						}
					}
			  

</script>

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
                      <input name="textfield" type="text" class="inputtext" size="30" value="Mã kh cần tìm" onfocus="if(this.value=='Điền từ cần tìm')this.value='';" >
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
                <p align="center" class="tex_de_muc">
				<strong>
						<%
								RS = oConn.Execute("SELECT MAX(ma_phieu) as MaxMaPhieu FROM PHIEUNHAPXUAT");
						%>
						<%
							var KiemTra = Request.QueryString("KiemTra");
							var MaxMaPhieu;
							if(KiemTra=="add"){
								Response.Write("Nhập thêm linh kiện vào phiếu");
								MaxMaPhieu = RS("MaxMaPhieu");
							}
							else{
								Response.Write("Nhập linh kiện vào phiếu mới");
								MaxMaPhieu = RS("MaxMaPhieu") +1;
							    
							};
						%>
</strong>
					</p>
					<form name="add" id="add" method="post" action="manage_tb_kho.asp" onsubmit="return Validate(add)">
					<table width="100%"  border="1" cellpadding="0" cellspacing="0" bordercolor="#F5F5F5">
                      <tr bgcolor="#FFFFFF">
                         
                        <td width="22%" valign="top" bgcolor="#E4E4E4">M&atilde; phiếu</td>
											
                        <td valign="top" bgcolor="#E4E4E4">
						<%=MaxMaPhieu%>
                        </td>
                      <td valign="top" bgcolor="#E4E4E4"><div align="right">
                        <%
							RS = oConn.Execute( " SELECT getdate() time");
						%>
						<%=RS("time")%>
                      </div></td>
                      </tr>
                      <tr bgcolor="#FFFFFF">
                        <td valign="top" bgcolor="#FFFFFF">Nhân viên</td>
                      <td colspan="2" valign="top" bgcolor="#FFFFFF">
					  					  <!-- Lấy tên nhân viên -->
					  <%
					  	var MaNhanVien = Session("ma_nv");
						RS = oConn.Execute("SELECT ten_nv FROM NHANVIEN WHERE ma_nv = '"+MaNhanVien+"'");
						var TenNhanVien = RS("ten_nv");
						Response.Write(TenNhanVien);
					  %>

					  <input name="KiemTra" type="hidden" id="KiemTra" size="4" value="<%=Request.QueryString("KiemTra")%>"></td>
                      </tr>
                      <tr bgcolor="#FFFFFF">
                        <td valign="top" bgcolor="#FFFFFF">Nhà cung cấp (* )</td>
                      <td colspan="2" valign="top"><%if(KiemTra!="add"){%>
                        <select name="NhaCungCap" class="TextNhap" id="NhaCungCap">
                          <%
					  		RS = oConn.Execute("SELECT ten_nha_cc,ma_nha_cc FROM NHACUNGCAP")
					   %>
                          <option selected value="">Chọn nhà cung cấp</option>
                          <%while(!RS.EOF) {%>
                          <option value="<%=RS("ma_nha_cc")%>"><%=RS("ten_nha_cc")%></option>
                          <%RS.MoveNext }%>
                        </select>
                        <%}%>
                        <%
					  	else{
							var MaNhaCungCap = Request.QueryString("ncc");
							RS = oConn.Execute("SELECT ten_nha_cc FROM NHACUNGCAP WHERE ma_nha_cc = '"+MaNhaCungCap+"'");
							Response.Write(RS("ten_nha_cc"));
						     
						
					  %>
					  <input type="hidden" name="NhaCungCap" value="<%=MaNhaCungCap%>" >
					  <%}%>
					                     </td>
                      </tr>
                      <tr bgcolor="#FFFFFF">
                        <td valign="top">Lo&#7841;i thi&#7871;t b&#7883; (* ) </td>
                      <td colspan="2" valign="top"><select name="LoaiThietBi" class="TextNhap" id="LoaiThietBi">
                        <%
							RS = oConn.Execute( " SELECT ma_loai_tb,ten_loai_tb FROM LOAITHIETBI");
						%>
                        <option selected>Chọn loại thiết bị</option>
                        <% while(!RS.EOF) { %>
                        <option value="<%=RS("ma_loai_tb")%>"><%=RS("ten_loai_tb")%></option>
                        <% RS.MoveNext } %>
                      </select>
					  </td>
                      </tr>
                      <tr bgcolor="#FFFFFF">
                        <td valign="top">Tên thiết bị(* ) </td>
                      <td colspan="2" valign="top"><input name="TenThietBi" type="text" class="TextNhap" id="TenThietBi" size="60"></td>
                      </tr>
                      <tr bgcolor="#FFFFFF">
                        <td valign="top"><div align="left">Số lượng nhập(* ) </div> </td>
                        <td colspan="2" valign="top"><input name="SoLuongNhap" type="text" class="TextNhap" id="SoLuongNhap" size="6"></td>
                      </tr>
                      
                      <tr bgcolor="#FFFFFF">
                        <td height="10" valign="top" bgcolor="#FFFFFF">Giá nhập</td>
                        <td colspan="2" valign="top"><input name="GiaNHap" type="text" class="TextNhap"  id="GiaNHap" size="10">
                          (Vn) </td>
                      </tr>
                      <tr bgcolor="#FFFFFF">
                        <td height="11" valign="top">Giá xuất</td>
                      <td colspan="2" valign="top"><input name="GiaXuat" type="text" class="TextNhap"  id="GiaXuat" size="10">
                        &nbsp;(Vn) </td>
                      </tr>
                      
                      <tr bgcolor="#FFFFFF">
                        <td height="2" valign="top">Hãng sản xuất</td>
                      <td colspan="2" valign="top"><select name="HangSanXuat" class="TextNhap" id="HangSanXuat">
                        	<%
								RS = oConn.Execute("SELECT ma_hang_sx,ten_hang_sx FROM HANGSANXUAT");
							%>
                        <option value = "" selected>Chọn hãng sản xuất</option>
                        <%while(!RS.EOF){%>
                        <option value="<%=RS("ma_hang_sx")%>"><%=RS("ten_hang_sx")%></option>
                        <%RS.MoveNext }%>
                      </select></td>
                      </tr>
                      <tr bgcolor="#FFFFFF">
                        <td height="3" valign="top">Serial</td>
                        <td colspan="2" valign="top"><input name="SoHieuThietBi" type="text" class="TextNhap" id="SoHieuThietBi" size="30"></td>
                      </tr>
                      <tr bgcolor="#FFFFFF">
                        <td height="5" valign="top">Mô tả chi tiết</td>
                        <td colspan="2" valign="top">                          <textarea name="MoTaChiTiet" cols="65" rows="3" class="TextNhap" id="MoTaChiTiet"></textarea></td>
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
