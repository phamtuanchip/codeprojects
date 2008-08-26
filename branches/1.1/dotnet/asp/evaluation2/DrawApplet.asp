<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/hinhmaunguoidung.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Xem đánh giá trình độ công nghệ</title>
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
				  <!--#include file="connection.inc" -->
<form action="" method="post" name="doanhnghiep" id="doanhnghiep">         
<table border="0">
  <tr>
    <td align="right">Chọn doanh nghiệp cần xem</td>
	<td align="left">
      <select name="madoanhnghiep" onchange="window.location='drawapplet.asp?ma_dn='+this.value">
        <option value="0">==Chọn một doanh nghiệp==</option>
         <% if session("ma_dn") >0 then
		 		rs.open "select * from doanhnghiep where status=1 and madoanhnghiep="& session("ma_dn") ,conn
		     else
		 		rs.open "select * from doanhnghiep where status=1",conn
			 end if
		 %>
        <% while not rs.eof%>
        <% if (rs(0)=cint(Request.QueryString("ma_dn"))) then %>
        <option value="<%=rs(0)%>" selected="selected"><%=rs("tendoanhnghiep")%></option>
        <% else %>
        <option value="<%=rs(0)%>"><%=rs("tendoanhnghiep")%></option>
        <% end if %>
        <% rs.movenext() %>
        <% wend %>
        <% rs.close()%>
      </select>
	</td>
  </tr>
  <% if (cint(Request.QueryString("ma_dn"))>0)  then %>
  
  <tr>
    <td align="right">Chọn sản phẩm của doanh nhiệp </td>
	<td align="left">
      <select name="masanpham"  onchange="window.location='drawapplet.asp?ma_dn='+doanhnghiep.madoanhnghiep.value+'&ma_sp='+this.value">
        <option value="0">==Chọn một sp==</option>
		 <% dim rssp
 	set rssp =server.CreateObject("adodb.recordset")
	rssp.open "select * from sanpham where madoanhnghiep="& Request.QueryString("ma_dn")&" and status=1",conn
 %>
        <% while not rssp.eof%>
        <% if (rssp(0)=cint(Request.QueryString("ma_sp"))) then %>
		 <option value="<%=rssp(0)%>" selected="selected"><%=rssp("tensanpham")%></option>
        <% else %>
         <option value="<%=rssp(0)%>"><%=rssp("tensanpham")%></option>
        <% end if %>
        <% rssp.movenext() %>
        <% wend %>
	   <%rssp.close()%>

      </select>
	</td>
  </tr>
  </table>
  </form>
  <%if  (cint(Request.QueryString("ma_sp"))>0)  then%>
  <%
  	
	strLayBGC = "select count(MaBuocGiaCong) as Cao from BuocGiaCong where MaSanPham="&cint(Request.QueryString("ma_sp"))&""
	
	''-------------------------------------------------------------------------------------------------
	
	strLayH = "SELECT dbo.DiemTieuChuanConNguoi.Hmax, dbo.DiemTieuChuanConNguoi.Hmin, dbo.NhanToConNguoi.AlphaH, dbo.DiemHieuQuaCongNghe_ConNguoi.Phmax, dbo.DiemHieuQuaCongNghe_ConNguoi.Phmin FROM dbo.DiemTieuChuanConNguoi INNER JOIN dbo.NhanToConNguoi ON dbo.DiemTieuChuanConNguoi.MaNhanToConNguoi = dbo.NhanToConNguoi.MaNhanToConNguoi INNER JOIN dbo.DiemHieuQuaCongNghe_ConNguoi ON dbo.NhanToConNguoi.MaNhanToConNguoi = dbo.DiemHieuQuaCongNghe_ConNguoi.MaNhanToConNguoi INNER JOIN dbo.SanPham ON dbo.NhanToConNguoi.MaSanPham = dbo.SanPham.MaSanPham INNER JOIN dbo.DoanhNghiep ON dbo.SanPham.MaDoanhNghiep = dbo.DoanhNghiep.MaDoanhNghiep INNER JOIN dbo.BuocGiaCong ON dbo.SanPham.MaSanPham = dbo.BuocGiaCong.MaSanPham WHERE (dbo.DoanhNghiep.MaDoanhNghiep = "&cint(Request.QueryString("ma_dn"))&") AND (dbo.SanPham.MaSanPham = "&cint(Request.QueryString("ma_sp"))&")"
	dim RSLayH 
	set RSLayH = Server.CreateObject("ADODB.Recordset")
	RSLayH.open strLayH, conn
	dim tempH
	dim tempH1
	tempH = 0
	tempH1 = 0
	while not (RSLayH.EOF)
	tempH = cdbl(RSLayH("AlphaH"))*(1/9*(cdbl(RSLayH("Hmin"))+ 1/9*1/2*(cdbl(RSLayH("Phmax"))+cdbl(RSLayH("Phmin")))*(cdbl(RSLayH("Hmax"))-cdbl(RSLayH("Hmin")))))
	tempH1 = tempH1 + tempH
	RSLayH.MoveNext
	wend
	
	''-------------------------------------------------------------------------------------------------
	
	strLayT = "SELECT dbo.DiemBuocGiaCong.Tmin, dbo.DiemBuocGiaCong.Tmax, dbo.DiemHieuQuaCongNghe_KyThuat.Ptmax, dbo.DiemHieuQuaCongNghe_KyThuat.Ptmin, dbo.BuocGiaCong.AlPhaT FROM dbo.DiemBuocGiaCong INNER JOIN dbo.BuocGiaCong ON dbo.DiemBuocGiaCong.MaBuocGiaCong = dbo.BuocGiaCong.MaBuocGiaCong INNER JOIN dbo.DiemHieuQuaCongNghe_KyThuat ON dbo.DiemBuocGiaCong.MaThanhVien = dbo.DiemHieuQuaCongNghe_KyThuat.MaThanhVien INNER JOIN dbo.SanPham ON dbo.BuocGiaCong.MaSanPham = dbo.SanPham.MaSanPham INNER JOIN dbo.DoanhNghiep ON dbo.SanPham.MaDoanhNghiep = dbo.DoanhNghiep.MaDoanhNghiep WHERE (dbo.DoanhNghiep.MaDoanhNghiep = "&cint(Request.QueryString("ma_dn"))&") AND (dbo.SanPham.MaSanPham = "&cint(Request.QueryString("ma_sp"))&")"
	dim RSLayT
	set RSLayT = Server.CreateObject("ADODB.Recordset")
	RSLayT.open strLayT, conn
	
	dim tempT
	dim tempT1
	tempT = 0
	tempT1 = 0
	while not (RSLayT.EOF)
	tempT = cdbl(RSLayT("AlphaT"))*(1/9*(cdbl(RSLayT("Tmin"))+ 1/9*1/2*(cdbl(RSLayT("Ptmax"))+cdbl(RSLayT("Ptmin")))*(cdbl(RSLayT("Tmax"))-cdbl(RSLayT("Tmin")))))
	tempT1 = tempT1 + tempT
	RSLayT.MoveNext
	wend
	
	''-------------------------------------------------------------------------------------------------
	
	strLayI = "SELECT dbo.ChiTietThongTin.AlphaI, dbo.DiemTieuChuanThongTin.Imax, dbo.DiemTieuChuanThongTin.Imin, dbo.DiemHieuQuaCongNghe_ThongTin.Pimax, dbo.DiemHieuQuaCongNghe_ThongTin.Pimin FROM dbo.DiemTieuChuanThongTin INNER JOIN dbo.ChiTietThongTin ON dbo.DiemTieuChuanThongTin.MaChiTietThongTin = dbo.ChiTietThongTin.MaChiTietThongTin INNER JOIN dbo.DiemHieuQuaCongNghe_ThongTin ON dbo.DiemTieuChuanThongTin.MaThanhVien = dbo.DiemHieuQuaCongNghe_ThongTin.MaThanhVien INNER JOIN dbo.SanPham ON dbo.ChiTietThongTin.MaSanPham = dbo.SanPham.MaSanPham INNER JOIN dbo.DoanhNghiep ON dbo.SanPham.MaDoanhNghiep = dbo.DoanhNghiep.MaDoanhNghiep WHERE (dbo.DoanhNghiep.MaDoanhNghiep = "&cint(Request.QueryString("ma_dn"))&") AND (dbo.SanPham.MaSanPham = "&cint(Request.QueryString("ma_sp"))&")"
	
	dim RSLayI
	set RSLayI = Server.CreateObject("ADODB.Recordset")
	RSLayI.open strLayI, conn
	
	dim tempI
	dim tempI1
	tempI = 0
	tempI1 = 0
	while not (RSLayI.EOF)
	tempI = cdbl(RSLayI("AlphaI"))*(1/9*(cdbl(RSLayI("Imin"))+ 1/9*1/2*(cdbl(RSLayI("Pimax"))+cdbl(RSLayI("Pimin")))*(cdbl(RSLayI("Imax"))-cdbl(RSLayI("Imin")))))
	tempI1 = tempI1 + tempI
	RSLayI.MoveNext
	wend
		
	''-------------------------------------------------------------------------------------------------
	
	strLayO = "SELECT dbo.DiemTieuChuanToChuc.Omax, dbo.DiemTieuChuanToChuc.Omin, dbo.ChiTietToChuc.AlphaO, dbo.DiemHieuQuaCongNghe_ToChuc.Pomax, dbo.DiemHieuQuaCongNghe_ToChuc.Pomin FROM dbo.DiemTieuChuanToChuc INNER JOIN dbo.ChiTietToChuc ON dbo.DiemTieuChuanToChuc.MaChiTietToChuc = dbo.ChiTietToChuc.MaChiTietToChuc INNER JOIN dbo.DiemHieuQuaCongNghe_ToChuc ON dbo.DiemTieuChuanToChuc.MaThanhVien = dbo.DiemHieuQuaCongNghe_ToChuc.MaThanhVien INNER JOIN dbo.SanPham ON dbo.ChiTietToChuc.MaSanPham = dbo.SanPham.MaSanPham INNER JOIN dbo.DoanhNghiep ON dbo.SanPham.MaDoanhNghiep = dbo.DoanhNghiep.MaDoanhNghiep WHERE (dbo.DoanhNghiep.MaDoanhNghiep = "&cint(Request.QueryString("ma_dn"))&") AND (dbo.SanPham.MaSanPham = "&cint(Request.QueryString("ma_sp"))&")"
	
	dim RSLayO
	set RSLayO = Server.CreateObject("ADODB.Recordset")
	RSLayO.open strLayO, conn
	
	dim tempO
	dim tempO1
	tempO = 0
	tempO1 = 0
	while not (RSLayO.EOF)
	tempO = cdbl(RSLayO("AlphaO"))*(1/9*(cdbl(RSLayO("Omin"))+ 1/9*1/2*(cdbl(RSLayO("Pomax"))+cdbl(RSLayO("Pomin")))*(cdbl(RSLayO("Omax"))-cdbl(RSLayO("Omin")))))
	tempO1 = tempO1 + tempO
	RSLayO.MoveNext
	wend
  %>
  
<%
	Tmark = tempT1
	Hmark = tempH1
	Imark = tempI1
	Omark = tempO1

	Dim RS1
	Set RS1= Server.CreateObject("ADODB.Recordset")
	Dim RS2
	Set RS2 = Server.CreateObject("ADODB.Recordset")
	Dim RS3
	Set RS3 = Server.CreateObject("ADODB.Recordset")
	
	sql = "SELECT COUNT(NhanXetID) FROM XemNhanXet"
	RS3.Open sql,conn
	j = RS3(0)
	RS3.Close
	
	for i = 1 to j
		strsql = "SELECT NX2.NhanXetID,TieuChi, SoSanh, GiaTri,newCount "
		strsql=strsql+"FROM XemNhanXet as NX2 inner join (Select NhanXetID,COUNT(NhanXetID) as newCount from XemNhanXet "
		strsql=strsql+"WHERE NhanXetID='"&i&"' group by NhanXetID ) NX on NX2.NhanXetID=NX.NHanXetID"
		
		RS1.Open strsql,conn
		
		while(NOT RS1.EOF)
			if(RS1(4)=2) then
				TieuChi1 = RS1(1)
				SoSanh1 = RS1(2)
				GiaTri1 = RS1(3)
				RS1.MoveNext
				TieuChi2 = RS1(1)
				SoSanh2 = RS1(2)
				GiaTri2 = RS1(3)

				if(TieuChi="T") then
					sql2 = "SELECT DISTINCT NhanXet FROM XemNhanXet WHERE NhanXetID = "&i&" AND "&Tmark&" "&SoSanh1&" "&GiaTri1&" AND "&Tmark&" "&SoSanh2&" "&GiaTri2
				else if(TieuChi="H") then
					sql2 = "SELECT DISTINCT NhanXet FROM XemNhanXet WHERE NhanXetID = "&i&" AND "&Hmark&" "&SoSanh1&" "&GiaTri1&" AND "&Hmark&" "&SoSanh2&" "&GiaTri2
				else if(TieuChi="I") then
					sql2 = "SELECT DISTINCT NhanXet FROM XemNhanXet WHERE NhanXetID = "&i&" AND "&Imark&" "&SoSanh1&" "&GiaTri1&" AND "&Imark&" "&SoSanh2&" "&GiaTri2
				else
					sql2 = "SELECT DISTINCT NhanXet FROM XemNhanXet WHERE NhanXetID = "&i&" AND "&Omark&" "&SoSanh1&" "&GiaTri1&" AND "&Omark&" "&SoSanh2&" "&GiaTri2
				end if
				end if
				end if
				
			else
				TieuChi = RS1(1)
				TieuChiCu = TieuChi
				SoSanh = RS1(2)
				'GiaTri = RS1(3)
				
				if(TieuChi="T") then
					sql2 = "SELECT NhanXet FROM XemNhanXet WHERE "&Tmark&" "&SoSanh&" GiaTri AND TieuChi='T' AND NhanXetID="&i
				else if(TieuChi="H") then
					sql2 = "SELECT NhanXet FROM XemNhanXet WHERE "&Hmark&" "&SoSanh&" GiaTri AND TieuChi='H' AND NhanXetID="&i
				else if(TieuChi="I") then
					sql2 = "SELECT NhanXet FROM XemNhanXet WHERE "&Imark&" "&SoSanh&" GiaTri AND TieuChi='I' AND NhanXetID="&i
				else
					sql2 = "SELECT NhanXet FROM XemNhanXet WHERE "&Omark&" "&SoSanh&" GiaTri AND TieuChi='O' AND NhanXetID="&i
				end if
				end if
				end if
				
			end if
			
			RS2.Open sql2,conn
			while(NOT RS2.EOF)
				nhanxet = nhanxet & "- " & RS2(0) & chr(13) & chr(10)& chr(13) & chr(10)
				RS2.MoveNext
			wend
			RS2.Close	
			
			RS1.MoveNext
		wend
		RS1.Close
	next
%>
<form action="test.asp" method="get" name="DanhGia" id="DanhGia">
<table>
  <tr>
    <td align="center">
<applet code="DrawApplet.class" codebase = "classes" width="450" height="220" alt="Info" title="Draw Applet">
  <param name="T" value="<%=Tmark%>">
  <param name="H" value="<%=Hmark%>">
  <param name="I" value="<%=Imark%>">
  <param name="O" value="<%=Omark%>">
</applet>	</td>
    </tr>
	<tr>
	  <td align="center">Lưu ý,hình vẽ trên chỉ có thể hiện ra khi máy bạn đã cài đặt JDK 5.0 trở lên.Để tải gói cài về,mời bạn vào địa chỉ <a href="http://sdlc-esd.sun.com:80/ESD20/JSCDL/jdk/1.5.0_06/jre-1_5_0_06-windows-i586-p.exe?AuthParam=1142241682_13fcfec29d3b9ba78e93b07a7f3006ac&TUrl=an1npDpbKod7kSYrROhENTonIuA3W0D1Lc4nXz+pGFFranixdCdgxDTPbW4=&TicketId=dlR9PAFKMus+8w==&GroupName=SDLC&BHost=sdlc4g.sun.com&FilePath=/ESD20/JSCDL/jdk/1.5.0_06/jre-1_5_0_06-windows-i586-p.exe&File=jre-1_5_0_06-windows-i586-p.exe">java.sun.com</a> hoặc <a href="http://www.bkmech.com.vn/download/jre15.exe" target="_blank">www.bkmech.com.vn</a> để download.</td>
	</tr>
	<tr>
       <td align="left" bgcolor="#99CCFF">Chú thích</td>
	  </tr>
	  <tr align="left">
          <td align="left"><strong>Technoware</strong> : Điểm Công nghệ</td>
        </tr>
        <tr align="left">
          <td align="left"><strong>Humanware</strong> : Điểm con người</td>
        </tr>
        <tr align="left">
          <td align="left"><strong>Infoware</strong> : Điểm thông tin</td>
        </tr>
        <tr align="left">
          <td align="left"><strong>Orgaware</strong> : Điểm tổ chức</td>
        </tr>
        <tr>
          <td align="left" bgcolor="#99CCFF">Nhận xét về doanh nghiệp</td>
        </tr>
        <tr>
          <td colspan="2" align="left" bgcolor="#FFFFFF">
		  <textarea cols="64" rows="17" name="NoiDungNhanXet" id="NoiDungNhanXet"><%=nhanxet%></textarea></td>
		  <input type="hidden" name="T" value="<%=Tmark%>" />
		  <input type="hidden" name="H" value="<%=Hmark%>" />
		  <input type="hidden" name="I" value="<%=Imark%>" />
		  <input type="hidden" name="O" value="<%=Omark%>" />
        </tr>
</table>
<p align="center">
<input type="submit" name="Submit" value="  Cập Nhật  " />
<input type="button" name="Print" value=" In Phiếu Điểm " />
</p>
</form>
  	<%else %>
	<p align="center">Bạn phải chọn một sản phẩm để xem đánh giá!</p>
  <%end if%>
  <%else %>
	<p align="center">Bạn phải chọn một doanh nghiệp để xem đánh giá!</p>
  <%end if%>

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
