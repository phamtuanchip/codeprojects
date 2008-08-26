<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/hinhmaunguoidung.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Bachkhoa mechatronics</title>
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
<!--#include file=connection.inc-->
<input type="button" onclick="history.back()" value=" Quay lại " />
<%
'Trang nay cho phep xoa new cho nhieu loai,VD: hoi dong,thanh vien hoi dong...
Dim loai
dim sqlStr
Set loai = Request.QueryString("loai")'lay ra loai de xoa
Set errorStr = Request.QueryString("errorStr")
'-----------------------------------------tim HoiDong---------------------------------------
if(loai = "HoiDong") then'Loai o day la loai Hoi Dong
	'dim MaHoiDong
	'MaHoiDong = Request.QueryString("MaHoiDong")
	'sqlStr = "EXECUTE XoaHoiDong_PROC @MaHoiDong='"+MaHoiDong+"'"
	'conn.execute(sqlStr)
	'Response.Redirect("XemDanhSach.asp?loai=HoiDong&PhanLoai=ChonLoc&MaHoiDong="+MaHoiDong)
%>
<h3 align="center">Tìm thông tin của Hội Đồng</h3>
<ul>
<li>Mời bạn nhập tên Hội Đồng và ấn vào nút Tìm để tìm Hội Đồng đó.</li>
</ul>
<form action="XemDanhsach.asp" method="get" name="form1" id="form1">
  Tên Hội Đồng : <input type="text" name="TenHoiDong" />
  <input type="hidden" name="loai" value="HoiDong" />
  <input type="hidden" name="PhanLoai" value="ChonLoc" />
  <input type="submit" name="Submit" value=" Tìm " />
</form>
<%
	
'-----------------------------------------tim ThanhVien---------------------------------------
else if(loai = "ThanhVien") then
	'dim MaThanhVien
	'MaThanhVien = Request.QueryString("MaThanhVien")
	'dim kieu
	'kieu = Request.QueryString("kieu")
%>
<h3 align="center">Tìm thông tin của Thành Viên</h3>
<ul>
<li>Mời bạn nhập tên Thành Viên và ấn vào nút Tìm để tìm Thành Viên đó.</li>
</ul>
<form action="XemDanhsach.asp" method="get" name="form1" id="form1">
  Tên Thành Viên : <input type="text" name="TenThanhVien" />
  <input type="hidden" name="loai" value="ThanhVien" />
  <input type="hidden" name="PhanLoai" value="ChonLoc" />
  <input type="submit" name="Submit" value=" Tìm " />
</form>
<%
'-----------------------------------------tim DoanhNghiep---------------------------------------
else if(loai = "DoanhNghiep") then
	'dim MaDoanhNghiep
	'MaDoanhNghiep = Request.QueryString("MaDoanhNghiep")
%>
<h3 align="center">Tìm thông tin của Doanh Nghiệp</h3>
<ul>
<li>Mời bạn nhập tên Doanh Nghiệp và ấn vào nút Tìm để tìm Doanh Nghiệp đó.</li>
</ul>
<form action="XemDanhsach.asp" method="get" name="form1" id="form1">
  Tên Doanh Nghiệp : <input type="text" name="TenDoanhNghiep" />
  <input type="hidden" name="loai" value="DoanhNghiep" />
  <input type="hidden" name="PhanLoai" value="ChonLoc" />
  <input type="submit" name="Submit" value=" Tìm " />
</form>
<%
'-----------------------------------------tim SanPham---------------------------------------
else if(loai = "SanPham") then
	'MaSanPham = Request.QueryString("MaSanPham")
	'MaDoanhNghiep = Request.QueryString("MaDoanhNghiep")
	'TenDoanhNghiep = Request.QueryString("TenDoanhNghiep")
%>
<h3 align="center">Tìm thông tin của Sản Phẩm</h3>
<ul>
<li>Mời bạn nhập tên Sản Phẩm và ấn vào nút Tìm để tìm Sản Phẩm đó.</li>
</ul>
<form action="XemDanhsach.asp" method="get" name="form1" id="form1">
  Tìm theo tên Sản Phẩm : <input type="text" name="TenSanPham" />
  <input type="hidden" name="loai" value="SanPham" />
  <input type="hidden" name="PhanLoai" value="ChonLoc" />
  <input type="submit" name="Submit" value=" Tìm " />
</form>
<%
'------------------------------------------------tim buoc gia cong------------------------
else if(loai = "BuocGiaCong")then
	'MaBuocGiaCong = Request.QueryString("MaBuocGiaCong")
%>
<h3 align="center">Tìm thông tin của Bước Gia Công</h3>
<ul>
<li>Mời bạn nhập tên Bước Gia Công và ấn vào nút Tìm để tìm Bước Gia Công đó.</li>
</ul>
<form action="XemDanhsach.asp" method="get" name="form1" id="form1">
  Tên Bước Gia Công : <input type="text" name="TenBuocGiaCong" />
  <input type="hidden" name="loai" value="BuocGiaCong" />
  <input type="hidden" name="PhanLoai" value="ChonLoc" />
  <input type="submit" name="Submit" value=" Tìm " />
</form>
<%
'------------------------------------------------tim thiet bi------------------------
else if(loai = "ThietBi")then
	'MaThietBi = Request.QueryString("MaThietBi")
%>
<h3 align="center">Tìm thông tin của Thiết Bị</h3>
<ul>
<li>Mời bạn nhập tên Thiết Bị và ấn vào nút Tìm để tìm Thiết Bị đó.</li>
</ul>
<form action="XemDanhsach.asp" method="get" name="form1" id="form1">
  Tên Thiết Bị : <input type="text" name="TenThietBi" />
  <input type="hidden" name="loai" value="ThietBi" />
  <input type="hidden" name="PhanLoai" value="ChonLoc" />
  <input type="submit" name="Submit" value=" Tìm " />
</form>
<%
else
%>
<h3 align="center">Bạn muốn tìm thông tin nào?</h3>
<ul>
<li><a href="Tim.asp?loai=HoiDong" title="Tìm thông tin của Hội Đồng">Tìm thông tin của Hội Đồng.</a></li>
<li><a href="Tim.asp?loai=ThanhVien" title="Tìm thông tin của Thành Viên">Tìm thông tin của Thành Viên.</a></li>
<li><a href="Tim.asp?loai=DoanhNghiep" title="Tìm thông tin của Doanh Nghiệp">Tìm thông tin của Doanh Nghiệp.</a></li>
<li><a href="Tim.asp?loai=SanPham" title="Tìm thông tin của Sản Phẩm">Tìm thông tin của Sản Phẩm.</a></li>
<li><a href="Tim.asp?loai=BuocGiaCong" title="Tìm thông tin của các Bước Gia Công">Tìm thông tin của các Bước Gia Công.</a></li>
<li><a href="Tim.asp?loai=ThietBi" title="Tìm thông tin của Thiết Bị">Tìm thông tin của Thiết Bị.</a></li>
<li></li>
<li><a href="Tim_ChiTietThongTin.asp">Tìm chi tiết thông tin</a></li>
<li><a href="Tim_ChiTietToChuc.asp">Tìm chi tiết tổ chức</a></li>
<li><a href="Tim_DiemTieuChuanMoiTruong.asp">Tìm điểm tiêu chuẩn môi trường</a></li>
<li><a href="Tim_HieuQuaCongNgheKyThuat.asp">Tìm hiệu quả công nghệ kỹ thuật</a></li>
<li><a href="Tim_HieuQuaCongNgheThongTin.asp">Tìm hiệu quả công nghệ thông tin</a></li>
<li><a href="Tim_HieuQuaCongNgheToChuc.asp">Tìm hiệu quả công nghệ tổ chức</a></li>
<li><a href="Tim_NhanToConNguoi.asp">Tìm nhân tố con người</a></li>
<li><a href="Tim_NhanToMoiTruong.asp">Tìm nhân tố môi trường</a></li>
</ul>
<input type="button" onclick="history.back()" value=" Quay lại " />
<%
end if
end if
end if
end if
end if
'else phan create new cho cac loai khac
end if'end of if(loai = "HoiDong") then
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
