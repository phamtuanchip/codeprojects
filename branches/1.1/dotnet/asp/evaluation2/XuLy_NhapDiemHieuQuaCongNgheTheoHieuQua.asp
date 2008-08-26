<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file=connection.inc-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/hinhmaunguoidung.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Bachkhoa mechatronics P2</title>
<!-- InstanceEndEditable -->
<!-- InstanceBeginEditable name="head" -->
<!-- InstanceEndEditable -->
</head>
<STYLE>
TD {
	FONT-SIZE: 11px; COLOR: #000000; FONT-FAMILY: Tahoma
}
A {
	COLOR: #184970
}
.cap1 {
	FONT-SIZE: 10px; COLOR: #22608e; FONT-FAMILY: HeliosExtBlack
}
#Layer1 {
	position:absolute;
	left:65px;
	top:523px;
	width:99px;
	height:18px;
	z-index:1;
}
.style1 {
	font-family: Georgia, "Times New Roman", Times, serif;
	font-size: 18px;
	color: #FFFFFF;
}
</STYLE>
<body>
<table height="100%" cellspacing="0" cellpadding="0" border="0">
  <tbody>
    <tr>
      <td style="BACKGROUND-POSITION: right top; BACKGROUND-REPEAT: repeat-y" 
    width="50%" background="images/bg1222.jpg" height="100%" 
    rowspan="10"></td>
      <td width="1" bgcolor="#000000" rowspan="10"></td>
      <td colspan="2"><table cellspacing="0" cellpadding="0" border="0">
        <tbody>
          <tr>
            <td><a href="trangchu.asp"><img src="images/banner.jpg" width="780" height="141" border="0" /></a></td>
          </tr>
          <tr>
            <td height="37"><a 
            href="#"></a><a 
            href="#"></a><a 
            href="#"></a><img src="images/menu.jpg" width="780" height="37" border="0" usemap="#Map" /></td>
          </tr>
        </tbody>
      </table></td>
      <td width="1" bgcolor="#000000" rowspan="10"></td>
      <td style="BACKGROUND-POSITION: left top; BACKGROUND-REPEAT: repeat-y" 
    width="50%" background="images/bg1223.jpg" height="100%" 
    rowspan="10"></td>
    </tr>
    <tr>
      <td valign="top" bgcolor="#32aca8" height="100%"><table height="100%" cellspacing="0" cellpadding="0" border="0">
        <tbody>
          <tr>
            <td><img src="images/cap01.jpg" /></td>
          </tr>
          <tr>
            <td width="200" valign="top" style="PADDING-LEFT: 28px; PADDING-TOP: 14px"></td>
          </tr>
          <tr>
            <%if (session("trangthai")<>true) then  ' form dang nhap he thong %>
            <form action="kiemtra.asp" method="post" name="login" id="login" >
              <td style="PADDING-LEFT: 28px; PADDING-TOP: 14px" valign="top" 
height="70"><table cellspacing="0" cellpadding="0" border="0">
                  <tbody>
                    <tr>
                      <td colspan="2"><input name="user" type="text" id="user" style="WIDTH: 88px; HEIGHT: 20px" /></td>
                    </tr>
                    <tr>
                      <td height="8"></td>
                    </tr>
                    <tr>
                      <td><input name="password" type="password" id="password" style="WIDTH: 88px; HEIGHT: 20px" /></td>
                      <td><input name="image" type="image" src="images/go.jpg" hspace="5" 
                  border="0" /></td>
                    </tr>
                  </tbody>
              </table></td>
            </form>
          </tr>
          <tr>
            <td 
          style="PADDING-RIGHT: 15px; PADDING-LEFT: 30px; PADDING-BOTTOM: 10px; PADDING-TOP: 10px" 
          width="200" height="20"><p>B&#7841;n c&oacute; th&#7875; &#273;&#259;ng k&yacute; v&#7899;i ch&uacute;ng t&ocirc;i b&#7857;ng c&aacute;ch <a href="Dangky_taikhoan.asp">b&#7845;m v&agrave;o &#273;&acirc;y</a></p></td>
          </tr>
          <tr>
            <td 
          style="PADDING-RIGHT: 15px; PADDING-LEFT: 30px; PADDING-BOTTOM: 10px; PADDING-TOP: 10px" height="20">N&#7871;u l&agrave; th&agrave;nh vi&ecirc;n b&#7841;n c&oacute; quy&#7873;n:</td>
          </tr>
          <tr>
            <td 
          style="PADDING-RIGHT: 15px; PADDING-LEFT: 30px; PADDING-BOTTOM: 10px; PADDING-TOP: 10px" height="20">- Xem h&#7879; th&#7889;ng &#273;&aacute;nh gi&aacute; ch&#7845;t l&#432;&#432;&#7907;ng </td>
          </tr>
          <tr>
            <td 
          style="PADDING-RIGHT: 15px; PADDING-LEFT: 30px; PADDING-BOTTOM: 10px; PADDING-TOP: 10px" height="20">- Xem th&ocirc;ng tin v&#7873; c&aacute;c doanh nghi&#7879;p </td>
          </tr>
          <tr>
            <td 
          style="PADDING-RIGHT: 15px; PADDING-LEFT: 30px; PADDING-BOTTOM: 10px; PADDING-TOP: 10px" height="20">- Xem s&#417; &#273;&#7891; ph&aacute;t tri&#7875;n</td>
            <%end if 'kiem tra quyen dang nhap%>
          </tr>
          <tr>
            <td><img src="images/pl01.jpg" /><br />
              <a 
            href="danhsachdoanhnghiep.asp"><img 
            src="images/thongtindn.jpg" width="200" height="20" border="0" /></a></td>
          </tr>
          <tr>
		     
            <% if ((session("quyen")=1)) then 
				'session("tentruycap")="ADMIN"
				'kiem tra quyen cua nguoi dung se dua ra menu tuong ung
			%>
            <%if (session("ma_doanhnghiep")=0) then ' kiem tra xem  co thuoc doanh nghiep hay khong%>
            <td><a href="quantri_taikhoan.asp"><img 
            src="images/quanlytaikhoan.jpg" width="200" height="20" border="0" /></a><br />
                <a 
            href="XemDanhSach.asp?loai=DoanhNghiep"><img 
            src="images/doanhnghiep.jpg" width="200" height="20" border="0" /></a><br />
                <a href="XemDanhSach.asp?loai=HoiDong"><img 
            src="images/danhsachhoidong.jpg" width="200" height="20" border="0" /></a><br />
                <a 
            href="DrawAppletMain.asp"><img 
            src="images/xemdanhgiadn.jpg" width="200" height="20" border="0" /></a><br />
                <a 
            href="quantri.asp"><img 
            src="images/thongke.jpg" width="200" height="20" border="0" /></a><br />
              <a 
            href="dangxuat.asp"><img 
            src="images/dangxuat.jpg" width="200" height="20" border="0" /></a></td>
            <% else ' khet thuc menu cua nha quan tri / den phan menu cua quan ly doanh nghiep %>
            <td><a href="suathongtinnguoidunghienthoi.asp"><img 
            src="images/admindn.jpg" width="200" height="20" border="0" /></a><br />
                <a 
            href="Tao_Moi_chodoanhnghiep.asp"><img 
            src="images/taomoichodn.jpg" width="200" height="20" border="0" /></a><br />
                <a href="Sua.asp?loai=DoanhNghiep&MaDoanhNghiep=<%=session("ma_dn")%>"><img 
            src="images/suathongtindoanhnghiep.jpg" width="200" height="20" border="0" /></a><br />
                <a href="XemDanhSach.asp?loai=SanPham&kieu=all"><img 
            src="images/danhsachsanpham.jpg" width="200" height="20" border="0" /></a><br />
                <a href="XemDanhSach.asp?loai=ThietBi&kieu=all"><img 
            src="images/danhsachthietbi.jpg" width="200" height="20" border="0" /></a><br />
                <a href="XemDanhSach.asp?loai=HoiDong"><img 
            src="images/danhsachhoidong.jpg" width="200" height="20" border="0" /></a><br />
                <a href="XemDanhSach.asp?loai=ThanhVien"><img 
            src="images/danhsachthanhvien.jpg" width="200" height="20" border="0" /></a><br />
                <a href="danhsachdiem.asp"><img 
            src="images/danhsachdiem.jpg" width="200" height="20" border="0" /></a><br />
                <a href="DanhSachHeSoTrongLuong.asp"><img 
            src="images/hesotrongluong.jpg" width="200" height="20" border="0" /></a><br />
                <a href="DrawAppletMain.asp"><img 
            src="images/xemdanhgiadn.jpg" width="200" height="20" border="0" /></a><br />
              <a 
            href="dangxuat.asp"><img 
            src="images/dangxuat.jpg" width="200" height="20" border="0" /></a></td>
            <%end if ' ket thuc phan menu cua doanh nghiep quan tri %>
            <% else ' ket thuc quyen quan tri cua he thong va doanh nghiep 
	   if session("quyen")=2 then  ' quyen la nguoi dung cua doanh nghiep	  %>
            <td><a href="suathongtinnguoidunghienthoi.asp"><img 
            src="images/taikhoannguoidung.jpg" width="200" height="20" border="0" /></a><br />
                <a href="nguoidungdangnhap.asp"><img 
            src="images/nhapdiemchosp.jpg" width="200" height="20" border="0" /></a><br />
                <a href="DrawAppletMain.asp"><img 
            src="images/xemdanhgiadn.jpg" width="200" height="20" border="0" /></a><br />
                <a href="DanhSachPhieuDiem.asp"><img 
            src="images/danhsachphieudiem.jpg" width="200" height="20" border="0" /></a><br />
              <a 
            href="dangxuat.asp"><img 
            src="images/dangxuat.jpg" width="200" height="20" border="0" /></a></td>
            <% else  'ket thuc quyen  la nguoi dung cua doanh nghiep 
			if session("quyen")=3 then ' khach hang dang nhap  %>
            <td><a href="suathongtinnguoidunghienthoi.asp"><img 
            src="images/khach.jpg" width="200" height="20" border="0" /></a><br />
                <a 
            href="DanhSach_doanhnghiep.asp"><img 
            src="images/thongtindn.jpg" width="200" height="20" border="0" /></a><br />
                <a 
            href="DrawAppletMain.asp"><img 
            src="images/xemdanhgiadn.jpg" width="200" height="20" border="0" /></a><br />
                <a 
            href="dangxuat.asp"><img 
            src="images/dangxuat.jpg" width="200" height="20" border="0" /></a><br /></td>
            <% else ' ket thuc khach hang  quyen 3 
			   'Response.Redirect("trangchu.asp") co the la oi o day !
			end if ' khong co quyen dang nhap %>
            <%end if ' ket thuc nguoi dung doanh nghiep  quyen 2 %>
            <%end if ' quyen 1%>
          </tr>
          <tr>
            <td 
          style="PADDING-RIGHT: 10px; PADDING-LEFT: 15px; PADDING-BOTTOM: 10px; COLOR: #ffffff; PADDING-TOP: 10px" 
          width="200" bgcolor="#236393" height="100%">&nbsp;</td>
          </tr>
          <tr>
            <td><img src="images/pl02.jpg" /></td>
          </tr>
          <tr>
            <td style="COLOR: #ffffff" align="middle" width="200" 
            height="81">Copyright &copy; 2005.<br />
              BKMECH.COM.VN<br />
              All rights 
              reserved</td>
          </tr>
        </tbody>
      </table></td>
      <td valign="top" background="images/bg04.jpg" height="100%"><table height="100%" cellspacing="0" cellpadding="0" border="0">
        <tbody>
          <tr>
            <td><img src="images/cap02.jpg" /></td>
            <td width="278"><img src="images/cap03.jpg" /></td>
          </tr>
          <tr>
            <td style="PADDING-LEFT: 10px; PADDING-TOP: 15px" valign="top" width="580" 
          colspan="2" height="100%"><table width="554" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="554">
				  <% if (session("trangthai")=true )then		   %>
				  Bạn đang đăng nhập với tài khoản:
				  <a href="suathongtinnguoidunghienthoi.asp"><% =session("ten")				  
				  %></a>
				  <%end if%>
				  <br />
				  <!-- InstanceBeginEditable name="noidungcuanguoidung " -->
				  <script language="javascript">
				  		function quaylai(){
							window.location = "Nhap_diemcongnghetheohieuqua.asp"
						}
				  </script>

<%
	'Insert T
	dem = Request.Form("count")
	MaThanhVien = Request.Form("MaThanhVien")
	Dim RS2
	dim sql
	dim updt
	dim str
	Set RS2 = Server.CreateObject("ADODB.Recordset")
	for i=1 to dem-1
		MaGiaCong = Request.Form("hiddengc"&i)
		ipmax = Request.Form("idpmax"&i)
		ipmin = Request.Form("idpmin"&i)
	str = "SELECT COUNT(MaThanhVien) FROM DiemHieuQuaCongNghe_KyThuat WHERE MaBuocGiaCong='"+Request.Form("hiddengc"&i)+"' AND MaThanhVien='"+Request.Form("MaThanhVien") + "'"
		RS2.Open str,conn
		if(RS2(0)>0) then
			updt = "update DiemHieuQuaCongNghe_KyThuat set Ptmax = "&ipmax&" , Ptmin = "&ipmin&" where MaThanhVien = "&MaThanhVien&" and MaBuocGiaCong = "&MaGiaCong 
			'Response.Write(updt&"<br>")
			RS.Open updt,conn
		else
			sql="insert into DiemHieuQuaCongNghe_KyThuat (MaThanhVien,MaBuocGiaCong,Ptmax,Ptmin) values"
			sql = sql + "(" + Request.Form("MaThanhVien") + "," 
			sql = sql + Request.Form("hiddengc"&i) + ","
			sql = sql + Request.Form("idpmax"&i) + ","
			sql = sql + Request.Form("idpmin"&i) + ")"
		RS.Open sql,conn
		'Response.Write(sql&"<br>")
		outStr = "Chúc mừng bạn đã cho điểm thành công"
		end if
		
		RS2.Close
		next
		
		
	'Insert H
	demh = Request.Form("counth")
	MaThanhVien = Request.Form("MaThanhVien")
	Dim RS3
	dim sqlh
	dim updh
	dim strh
	Set RS3 = Server.CreateObject("ADODB.Recordset")
	for i=1 to demh-1
		MaNhanToConNguoi = Request.Form("hiddencn"&i)
		ihmax = Request.Form("idhmax"&i)
		ihmin = Request.Form("idhmin"&i)
	strh = "SELECT COUNT(MaThanhVien) FROM DiemHieuQuaCongNghe_ConNguoi WHERE MaNhanToConNguoi='"+Request.Form("hiddencn"&i)+"' AND MaThanhVien='"+Request.Form("MaThanhVien") + "'"
		RS3.Open strh,conn
		if(RS3(0)>0) then
			updh = "update DiemHieuQuaCongNghe_ConNguoi set Phmax = "&ihmax&" , Phmin = "&ihmin&" where MaThanhVien = "&MaThanhVien&" and MaNhanToConNguoi = "&MaNhanToConNguoi 
			'Response.Write(updh&"<br>")
			RS.Open updh,conn
		else
			sqlh="insert into DiemHieuQuaCongNghe_ConNguoi (MaThanhVien,MaNhanToConNguoi,Phmax,Phmin) values"
			sqlh = sqlh + "(" + Request.Form("MaThanhVien") + "," 
			sqlh = sqlh + Request.Form("hiddencn"&i) + ","
			sqlh = sqlh + Request.Form("idhmax"&i) + ","
			sqlh = sqlh +Request.Form("idhmin"&i) + ")"
		RS.Open sqlh,conn
		'Response.Write(sql&"<br>")
		outStr = "Chúc mừng bạn đã cho điểm thành công"
		end if
		RS3.Close
		next
		
		
	'Insert I
	demi = Request.Form("counti")
	MaThanhVien = Request.Form("MaThanhVien")
	Dim RS4
	dim sqli
	dim updi
	dim stri
	Set RS4 = Server.CreateObject("ADODB.Recordset")
	for i=1 to demi-1
		MaHieuQuaCongNgheThongTin = Request.Form("hiddentt"&i)
		iimax = Request.Form("idimax"&i)
		iimin = Request.Form("idimin"&i)
	stri = "SELECT COUNT(MaThanhVien) FROM DiemHieuQuaCongNghe_ThongTin WHERE MaHieuQuaCongNghe_ThongTin='"+Request.Form("hiddentt"&i)+"' AND MaThanhVien='"+Request.Form("MaThanhVien") + "'"
		RS4.Open stri,conn
		if(RS4(0)>0) then
			updi = "update DiemHieuQuaCongNghe_ThongTin set Pimax = "&iimax&" , Pimin = "&iimin&" where MaThanhVien = "&MaThanhVien&" and MaHieuQuaCongNghe_ThongTin = "&MaHieuQuaCongNgheThongTin
			'Response.Write(updi&"<br>")
			RS.Open updi,conn 
		else
			sqli="insert into DiemHieuQuaCongNghe_ThongTin (MaThanhVien,MaHieuQuaCongNghe_ThongTin,Pimax,Pimin) values"
			sqli = sqli + "(" + Request.Form("MaThanhVien") + "," 
			sqli = sqli + Request.Form("hiddentt"&i) + ","
			sqli = sqli + Request.Form("idimax"&i) + ","
			sqli = sqli +Request.Form("idimin"&i) + ")"
		RS.Open sqli,conn
		'Response.Write(sql&"<br>")
		outStr = "Chúc mừng bạn đã cho điểm thành công"
		end if
		RS4.Close
		next	
		
		
	'Insert O
	demo = Request.Form("counto")
	MaThanhVien = Request.Form("MaThanhVien")
	Dim RS5
	dim sqlo
	dim updo
	dim stro
	Set RS5= Server.CreateObject("ADODB.Recordset")
	for i=1 to demo-1
		MaHieuQuaCongNgheToChuc = Request.Form("hiddentc"&i)
		iomax = Request.Form("idomax"&i)
		iomin = Request.Form("idomin"&i)
	stro = "SELECT COUNT(MaThanhVien) FROM DiemHieuQuaCongNghe_ToChuc WHERE MaHieuQuaCongNghe_ToChuc='"+Request.Form("hiddentc"&i)+"' AND MaThanhVien='"+Request.Form("MaThanhVien") + "'"
		RS5.Open stro,conn
		if(RS5(0)>0) then
			updo = "update DiemHieuQuaCongNghe_ToChuc set Pomax = "&iomax&" , Pomin = "&iomin&" where MaThanhVien = "&MaThanhVien&" and MaHieuQuaCongNghe_ToChuc = "&MaHieuQuaCongNgheToChuc 
			'Response.Write(updo&"<br>")
			RS.Open updo,conn
		else
			sqlo="insert into DiemHieuQuaCongNghe_ToChuc (MaThanhVien,MaHieuQuaCongNghe_ToChuc,Pomax,Pomin) values"
			sqlo = sqlo + "(" + Request.Form("MaThanhVien") + "," 
			sqlo = sqlo + Request.Form("hiddentc"&i) + ","
			sqlo = sqlo + Request.Form("idomax"&i) + ","
			sqlo = sqlo +Request.Form("idomin"&i) + ")"
		RS.Open sqlo,conn
		'Response.Write(sql&"<br>")
		outStr = "Chúc mừng bạn đã cho điểm thành công"
		end if
		RS5.Close
		next	

	 Response.Redirect("nhap_diemcongnghetheohieuqua.asp?ma_tv="&MaThanhVien) 
%>
<!-- InstanceEndEditable -->				  </td>
                </tr>
              </table></td>
          </tr>
          <tr>
            <td colspan="2"><img src="images/bot041.jpg" /></td>
          </tr>
          <tr>
            <td colspan="2"><img 
            src="images/f01.jpg" border="0" /><img 
            src="images/f02.jpg" border="0" /><img 
            src="images/f03.jpg" border="0" /><img 
            src="images/f04.jpg" border="0" /><img 
            src="images/f05.jpg" border="0" /><img 
            src="images/f06.jpg" border="0" /><img 
            src="images/f07.jpg" border="0" /><img 
            src="images/f08.jpg" border="0" /><img 
            src="images/f09.jpg" 
  border="0" /></td>
          </tr>
        </tbody>
      </table></td>
    </tr>
  </tbody>
</table>

<map name="Map" id="Map">
  <area shape="rect" coords="646,2,768,39" href="#" />
  <area shape="rect" coords="174,1,296,38" href="gioithieu.asp" />
  <area shape="rect" coords="326,-1,448,36" href="huongdan.htm" target="_blank" />
  <area shape="rect" coords="16,1,138,38" href="trangchu.asp" />
  <area shape="rect" coords="487,1,609,38" href="Dangky_taikhoan.asp" />
</map>
</body>
<!-- InstanceEnd --></html>
