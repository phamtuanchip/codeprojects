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
                <div align="center" class="tex_de_muc">Kết quả tìm kiếm</div><br><hr><br>
              		
					<% 
			TenThietBi=Request.Form("TenThietBi")
			PhuongThuc=Request.Form("PhuongThuc");
			ktt=" '%";
			kts="%' ";
			if (PhuongThuc=="=") {ktt=" '";kts="' ";}
			PhuongThucNgay=Request.Form("PhuongThucNgay");
			KyTuTruoc=" '";
			KyTuSau="' ";
			s=new String(Request.Form("NgayLapPhieu"));
			NgayNhanThietBi =s.substr(3,3)+s.substr(0,3)+s.substr(6,4);
			if (PhuongThucNgay=="<=") 
			{NgayNhanThietBi=" getdate() ";
			KyTuTruoc="";
			KyTuSau="";}
			
			sqlloaitb=" and ma_loai_tb='"+Request.Form("LoaiThietBi")+"' ";
			if (Request.Form("LoaiThietBi")=="all") sqlloaitb=" ";
			sqlnhacc=" and ma_nha_cc='"+Request.Form("NhaCungCap")+"' ";
			if (Request.Form("NhaCungCap")=="all") sqlnhacc=" ";
			sqlhangsx=" and ma_hang_sx='"+Request.Form("HangSanXuat")+"' ";
			if (Request.Form("HangSanXuat")=="all") sqlhangsx=" ";
			sqltext="select so_luong_nhap-so_luong_xuat ton, * from PHIEU"
						   +" where ten_tb "+PhuongThuc+ktt+TenThietBi+kts
						   +" and ngay_nhap "+PhuongThucNgay+KyTuTruoc+NgayNhanThietBi+KyTuSau
						   +sqlloaitb+sqlnhacc+sqlhangsx+" order by ngay_nhap desc " ;
				   rs=oConn.Execute(sqltext);
				 %>
                    <%if (Session("quyen")=="2"){%>
			
					<%if (rs.EOF) {%>
                    <%Response.Write("Không tìm thấy thiết bị nào thỏa mãn ")%><p>
					<table width="100%" border="1" cellpadding="0" cellspacing="0" bordercolor="#F3F3F3" bgcolor="#F7F7F7">
                      <tr>
                        <td width="63" bgcolor="#E4E4E4"><div align="center">Số thứ tự</div></td>
                        <td width="309" bgcolor="#E4E4E4"><div align="center">Tên thiết bị</div></td>
                        <td width="86" bgcolor="#E4E4E4"><div align="center">Số lượng</div></td>
                        <td width="52" bgcolor="#E4E4E4"><div align="center">Sửa</div></td>
                        <td width="43" bgcolor="#E4E4E4"><div align="center">Xóa</div></td>
                      </tr>
                      <tr>
                        <td bgcolor="#F7F7F7">&nbsp;</td>
                        <td bgcolor="#F7F7F7"><div align="center"></div></td>
                        <td bgcolor="#F7F7F7"><div align="center"></div></td>
                        <td bgcolor="#F7F7F7"><div align="center"></div></td>
                        <td bgcolor="#F7F7F7"><div align="center"></div></td>
                      </tr>
                      <tr>
                        <td bgcolor="#F7F7F7">&nbsp;</td>
                        <td bgcolor="#F7F7F7"><div align="center"></div></td>
                        <td bgcolor="#F7F7F7"><div align="center"></div></td>
                        <td bgcolor="#F7F7F7">&nbsp;</td>
                        <td bgcolor="#F7F7F7">&nbsp;</td>
                      </tr>
                      <tr>
                        <td bgcolor="#F7F7F7">&nbsp;</td>
                        <td bgcolor="#F7F7F7"><div align="center"></div></td>
                        <td bgcolor="#F7F7F7"><div align="center"></div></td>
                        <td bgcolor="#F7F7F7">&nbsp;</td>
                        <td bgcolor="#F7F7F7">&nbsp;</td>
                      </tr>
                      <tr>
                        <td bgcolor="#F7F7F7">&nbsp;</td>
                        <td bgcolor="#F7F7F7"><div align="center"></div></td>
                        <td bgcolor="#F7F7F7"><div align="center"></div></td>
                        <td bgcolor="#F7F7F7">&nbsp;</td>
                        <td bgcolor="#F7F7F7">&nbsp;</td>
                      </tr>
                      <tr bgcolor="#F7F7F7">
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td bgcolor="#E4E4E4">&nbsp;</td>
                        <td bgcolor="#E4E4E4">&nbsp;</td>
                        <td bgcolor="#E4E4E4">&nbsp;</td>
                        <td bgcolor="#E4E4E4">&nbsp;</td>
                        <td bgcolor="#E4E4E4">&nbsp;</td>
                      </tr>
                    </table>
                    <%}else {%>
                    <table width="100%" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="13%" bgcolor="#E4E4E4">S&#7889; th&#7913; t&#7921;</td>
                        <td width="42%" bgcolor="#E4E4E4">Tên thiế bị:</td>
                        <td width="12%" bgcolor="#E4E4E4">Số lượng</td>
                        <td width="13%" bgcolor="#E4E4E4"><div align="center">Xửa</div></td>
                        <td width="9%" bgcolor="#E4E4E4"><div align="center">Xuất</div></td>
                        <td width="11%" colspan="6" bgcolor="#E4E4E4"><div align="center">Xóa</div></td>
                      </tr>
                      <% 
					  	var Dem=1;
					  	while (!rs.EOF) {
					  %>
                      <tr>
                        <td><%=Dem%></td>
                        <td ><a  href="#"title="<%=rs("mo_ta_ct")%>"><%=rs("ten_tb")%></a></td>
						<td><%=rs("so_luong_nhap")-rs("so_luong_xuat")%></td>
						<td><div align="center"><a href="UpDateTb.asp?MaThietBi=<%=rs("ma_tb")%>&KiemTra=Edit">Sửa</a></div></td>
						<td><div align="center"><a href="OutDevice.asp?MaThietBi=<%=rs("ma_tb")%>">Sửa</a></div></td>
						<td><div align="center"><a href="#">Xóa</a></div></td>
                      </tr>
                      <%rs.MoveNext;Dem=Dem+1;}rs.Close;%>
                    </table>
                    <%}%><br><hr>
                    <%} else if (Session("quyen")=="3") {%>
			<%if (rs.EOF) {%>
                    <%Response.Write("Không tìm thấy thiết bị nào thỏa mãn ")%><p>
					
                    <%}else {%>
                    <table width="100%" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="11%" bgcolor="#E4E4E4">S&#7889; th&#7913; t&#7921;</td>
                        <td width="36%" bgcolor="#E4E4E4">Tên thiế bị:</td>
                        <td width="11%" bgcolor="#E4E4E4">Số lượng</td>
                        <td width="14%" bgcolor="#E4E4E4"><div align="center">Báo nhập</div></td>
                        <td width="13%" bgcolor="#E4E4E4"><div align="center">Gi&aacute;(VN&#272;)</div></td>
                        <td width="15%" colspan="6" bgcolor="#E4E4E4"><div align="center">Bảo hành(Th)</div></td>
                      </tr>
                      <% 
					  	var Dem=1;
					  	while (!rs.EOF) {
					  %>
                      <tr>
                        <td><%=Dem%></td>
                        <td ><a  href="#"title="<%=rs("mo_ta_ct")%>"><%=rs("ten_tb")%></a></td>
						<td><%=rs("so_luong_nhap")-rs("so_luong_xuat")%></td>
						<td><div align="center"><%=rs("muc_bao_nhap")%></div></td>
						<td><div align="center"><%=rs("gia_xuat")%></div></td>
						<td><div align="center"><%=rs("bao_hanh")%></div></td>
                      </tr>
                      <%rs.MoveNext;Dem=Dem+1;}rs.Close;%>
                    </table>
                    <%}%><br><hr>
			
			<%} else if (Session("quyen")=="1"){%>
			<%="ADMIN KHÔNG CÓ QUYỀN XEM THIẾT BỊ"%>
			<%} else{%>
			<%="Chưa đăng nhập"%>
			<%}%>
					<div align="right"><br>
                      <a href="search_items_instore.asp">Quay lại trang tìm kiếm</a>
                    </div>
					
	
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
