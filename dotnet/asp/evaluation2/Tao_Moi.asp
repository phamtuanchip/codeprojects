<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/hinhmaunguoidung.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Tạo mới danh mục</title>
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
<input type="button" onclick="history.back()" value=" Quay lại " />
<!--#include file=connection.inc-->
<%
'Trang nay cho phep create new cho nhieu loai,VD: hoi dong,thanh vien hoi dong...
Dim loai
myDNSession = Session("ma_dn")
Set loai = Request.Form("loai")'lay ra loai de create new
'-----------------------------------------Insert vao bang HoiDong---------------------------------------
if(loai = "HoiDong") then'Loai o day la loai Hoi Dong
	dim TenHoiDong
	dim TenDoanhNghiep
	dim NgayThanhLap
	TenHoiDong = Request.Form("TenHoiDong")
	MaDoanhNghiep = Request.Form("MaDoanhNghiep")
	NgayThanhLap = Request.Form("NgayThanhLap")
	QuyetDinh = Request.Form("QuyetDinh")
	NguoiKy = Request.Form("NguoiKy")
	
	dim sqlStr
	sqlStr = "SELECT COUNT(MaHoiDong) FROM HoiDong WHERE TenHoiDong = N'"+TenHoiDong+"'"
	RS.Open sqlStr, conn
	
	if(myDNSession=0) then
		Response.Write("Bạn không có quyền tạo mới hội đồng.Xin vui lòng quay lại")
	else
		'kiem tra xem ten hoi dong nay da co chua
		if(RS(0)>0) then
			Dim errorStr
			errorStr = "Tên hội đồng này đã có rồi,xin bạn vui lòng nhập lại với tên khác."
			Response.Redirect("TaoMoiHoiDong.asp?errorStr="+errorStr+"&TenHoiDong="+TenHoiDong+"&NgayThanhLap="+NgayThanhLap+"")
		else
			sqlStr = "EXECUTE TaoMoiHoiDong_PROC @TenHoiDong=N'"+TenHoiDong+"', @MaDoanhNghiep='"+MaDoanhNghiep+"', @NgayThanhLap='"+NgayThanhLap+"', @QuyetDinh=N'"+QuyetDinh+"', @NguoiKy=N'"+NguoiKy+"'"
			conn.execute (sqlStr)
			Response.Redirect("XemDanhSach.asp?loai=HoiDong")
		end if'end of if(RS(0)>0) then
	end if
'-----------------------------------------Insert vao bang ThanhVien---------------------------------------
else if(loai = "ThanhVien") then
	if(myDNSession=0) then
		Response.Write("Bạn không có quyền tạo mới thành viên.Xin vui lòng quay lại")
	else
		MaHoiDong = Request.Form("MaHoiDong")
		TenThanhVien = Request.Form("TenThanhVien")
		MaViTri = Request.Form("MaViTri")
		TenViTri = Request.Form("TenViTri")
		MaDoanhNghiep = Request.Form("MaDoanhNghiep")
		

		if(MaDoanhNghiep = -1) then
			errorStr = "Không thể tìm thấy tên doanh nhgiệp của thành viên này,xin bạn vui lòng tạo mới doanh nghiệp."
			Response.Redirect("TaoMoiDoanhNghiep.asp?errorStr="+errorStr)
		end if
		
		sql = "SELECT COUNT(MaThanhVien) FROM ThanhVien WHERE TenThanhVien = N'"+TenThanhVien+"' AND MaViTri = '"+MaViTri+"' AND MaDoanhNghiep = '"+MaDoanhNghiep+"'"
		
		RS.Open sql, conn
		if(RS(0)>0) then
			errorStr = "Thành viên này đã tồn tại rồi,xin bạn vui lòng kiểm tra xem bạn nhập đúng hay sai."
			RS.Close
			Response.Redirect("TaoMoiThanhVien.asp?errorStr="+errorStr+"&TenThanhVien="+TenThanhVien)
		else
			'chay procedure:
			sqlStr = "DECLARE @ValueOut int"
			sqlStr = sqlStr + " EXECUTE @ValueOut = TaoMoiThanhVien_PROC @MaHoiDong='"+MaHoiDong+"' , @TenThanhVien=N'"+TenThanhVien+"' , "
			sqlStr = sqlStr + "@MaViTri='"+MaViTri+"' , @TenViTri=N'"+TenViTri+"' , @MaDoanhNghiep='"+MaDoanhNghiep+"' SELECT 'VOut' = @ValueOut"
			
			RS.Close
			conn.Execute (sqlStr)
			errorStr = "Tạo thành viên thành công.Mời bạn tiếp tục tạo thành viên mới."
			Response.Redirect("TaoMoiThanhVien.asp?errorStr="+errorStr)
		end if'end of if(RS(0)>0) then
	end if
	
	
'-----------------------------------------Insert vao bang DoanhNghiep---------------------------------------
else if(loai = "DoanhNghiep") then
	TenDoanhNghiep = Request.Form("TenDoanhNghiep")
	ChucNang = Request.Form("ChucNang")
	DiaChi = Request.Form("DiaChi")
	SoDienThoai_Fax = Request.Form("SoDienThoai_Fax")
	Email = Request.Form("Email")
	Website = Request.Form("Website")
	NamThanhLap = Request.Form("NamThanhLap")
	
	if(Email= "") then
		Email = ""
	end if
	if(Website = "") then
		Website = "Không có"
	end if
	
	sql = "SELECT COUNT(MaDoanhNghiep) FROM DoanhNghiep WHERE TenDoanhNghiep = N'"+TenDoanhNghiep+"' AND NamThanhLap = '"+NamThanhLap+"' AND SoDienThoai_Fax = '"+SoDienThoai_Fax+"'"
	RS.Open sql, conn
	if(RS(0)>0) then
		errorStr = "Doanh Nghiệp này đã tồn tại rồi,xin bạn vui lòng kiểm tra xem bạn nhập đúng hay sai."
		linkStr = "TaoMoiDoanhNghiep.asp?errorStr="+errorStr+"&TenDoanhNghiep="+TenDoanhNghiep
		linkStr = linkStr+"&ChucNang="+ChucNang+"&DiaChi="+DiaChi+"&SoDienThoai_Fax="+SoDienThoai_Fax
		linkStr = linkStr+"&Email="+Email+"&Website="+Website+"&NamThanhLap="+NamThanhLap
		RS.Close
		Response.Redirect(linkStr)
	else
		'chay procedure:
		sqlStr = " EXECUTE TaoMoiDoanhNghiep_PROC @TenDoanhNghiep=N'"+TenDoanhNghiep+"', "
		sqlStr = sqlStr + "@NamThanhLap='"+NamThanhLap+"', @DiaChi=N'"+DiaChi+"', "
		sqlStr = sqlStr + "@SoDienThoai_Fax='"+SoDienThoai_Fax+"', @Email=N'"+Email+"', "
		sqlStr = sqlStr + "@ChucNang=N'"+ChucNang+"', @WebSite=N'"+Website+"'"
		
		RS.Close
		conn.Execute (sqlStr)
		errorStr = "Tạo doanh nghiệp thành công,mời bạn tiếp tục tạo doanh nghiệp mới."
		Response.Redirect("TaoMoiDoanhNghiep.asp?errorStr="+errorStr)
	end if'end of if(RS(0)>0) then
'---------------------------------------------------Tao moi San Pham---------------------------------------
else if(loai = "SanPham") then
	if(myDNSession=0) then
		Response.Write("Bạn không có quyền tạo mới sản phẩm.Xin vui lòng quay lại")
	else
		TenSanPham = Request.Form("TenSanPham")
		MaDoanhNghiep = Request.Form("MaDoanhNghiep")
		CongNgheSanXuat = Request.Form("CongNgheSanXuat")
		ThiTruong = Request.Form("ThiTruong")
		TieuChuanSanPham = Request.Form("TieuChuanSanPham")
		NamSanXuat = Request.Form("NamSanXuat")
		MaHoiDong = Request.Form("MaHoiDong")
		
		sql = "SELECT COUNT(MaSanPham) FROM SanPham WHERE TenSanPham = N'"+TenSanPham+"' AND MaDoanhNghiep = '"+MaDoanhNghiep+"'"
		RS.Open sql, conn
		if(RS(0)>0) then
			errorStr = "Bạn vừa nhập trùng với một sản phẩm khác.Xin bạn vui lòng nhập lại."
			linkStr = "TaoMoiSanPham.asp?errorStr="+errorStr+"&TenSanPham="+TenSanPham
			linkStr = linkStr+"&MaDoanhNghiep="+MaDoanhNghiep+"&KyThuatSanXuat="+CongNgheSanXuat+"&ThiTruong="+ThiTruong
			linkStr = linkStr+"&TieuChuanSanPham="+TieuChuanSanPham+"&NamSanXuat="+NamSanXuat
			RS.Close
			Response.Redirect(linkStr)
		else
			'chay procedure:
			sqlStr = " EXECUTE TaoMoiSanPham_PROC @TenSanPham=N'"+TenSanPham+"', "
			sqlStr = sqlStr + "@MaDoanhNghiep='"+MaDoanhNghiep+"', @KyThuatSanXuat=N'"+CongNgheSanXuat+"', "
			sqlStr = sqlStr + "@ThiTruong=N'"+ThiTruong+"', @TieuChuanSanPham=N'"+TieuChuanSanPham+"', "
			sqlStr = sqlStr + "@NamSanXuat='"+NamSanXuat+"', @MaHoiDong='"+MaHoiDong+"'"
			
			RS.Close
			conn.Execute (sqlStr)
			errorStr = "Tạo sản phẩm thành công,mời bạn tiếp tục tạo sản phẩm mới."
			Response.Redirect("TaoMoiSanPham.asp?errorStr="+errorStr)
		end if'end of if(RS(0)>0) then
	end if
'---------------------------------------------------Tao moi Buoc Gia Cong---------------------------------------
else if(loai = "BuocGiaCong") then
	if(myDNSession=0) then
		Response.Write("Bạn không có quyền tạo mới bước gia công.Xin vui lòng quay lại")
	else
		TenBuocGiaCong = Request.Form("TenBuocGiaCong")
		MaSanPham = Request.Form("MaSanPham")
		AlphaT = Request.Form("AlphaT")
		GhiChu = Request.Form("GhiChu")
		MaThietBi = Request.Form("MaThietBi")
		MaHoiDong = Request.Form("MaHoiDong")
		

		sql = "SELECT COUNT(MaBuocGiaCong) FROM BuocGiaCong WHERE TenBuocGiaCong = N'"+TenBuocGiaCong+"' AND MaSanPham = '"+MaSanPham+"'"
		RS.Open sql, conn
		if(RS(0)>0) then
			errorStr = "Bạn vừa nhập trùng với một bước gia công khác.Xin bạn vui lòng nhập lại."
			linkStr = "TaoMoiSanPham.asp?errorStr="+errorStr+"&loai=BuocGiaCong&TenBuocGiaCong="+TenBuocGiaCong
			linkStr = linkStr+"&MaSanPham="+MaSanPham+"&AlphaT="+AlphaT+"&GhiChu="+GhiChu
			RS.Close
			Response.Redirect(linkStr)
		else
			'chay procedure:
			sqlStr = " EXECUTE TaoMoiBuocGiaCong_PROC @TenBuocGiaCong=N'"+TenBuocGiaCong+"', "
			sqlStr = sqlStr + "@MaSanPham='"+MaSanPham+"', @AlphaT='"+AlphaT+"', "
			sqlStr = sqlStr + "@GhiChu=N'"+GhiChu+"', @MaThietBi='"+MaThietBi+"', @MaHoiDong='"+MaHoiDong+"'"
			
			RS.Close
			conn.Execute (sqlStr)
			errorStr = "Tạo bước gia công mới thành công,mời bạn tiếp tục tạo sản phẩm mới."
			Response.Redirect("TaoMoiSanPham.asp?loai=BuocGiaCong&errorStr="+errorStr)
		end if'end of if(RS(0)>0) then
	end if
'---------------------------------------------------Tao moi Thiet Bi---------------------------------------
else if(loai = "ThietBi") then
	if(myDNSession=0) then
		Response.Write("Bạn không có quyền tạo mới thiết bị.Xin vui lòng quay lại")
	else
		TenThietBi = Request.Form("TenThietBi")
		NamSanXuat = Request.Form("NamSanXuat")
		NoiSanXuat = Request.Form("NoiSanXuat")
		NangSuat = Request.Form("NangSuat")
		LacHau = Request.Form("LacHau")
		MaDoanhNghiep = Request.Form("MaDoanhNghiep")
		MyImage = Request.Form("MyImage")
		

		if( NangSuat = "" ) then
			NangSuat = ""
		end if	
		
		'chay procedure:
		sqlStr = " EXECUTE TaoMoiThietBi_PROC @TenThietBi=N'"+TenThietBi+"', "
		sqlStr = sqlStr + "@NamSanXuat='"+NamSanXuat+"', "
		sqlStr = sqlStr + "@NoiSanXuat=N'"+NoiSanXuat+"', "
		sqlStr = sqlStr + "@NangSuat = N'"+NangSuat+"', "
		sqlStr = sqlStr + "@LacHau = "+LacHau+", "
		sqlStr = sqlStr + "@MaDoanhNghiep = "+MaDoanhNghiep+", @MyImage=N'"+MyImage+"'"
		
		'RS.Close
		'Response.Write(sqlStr)
		conn.Execute (sqlStr)
		errorStr = "Tạo thiết bị mới thành công,mời bạn tiếp tục tạo thiết bị mới."
		Response.Redirect("TaoMoiThietBi.asp?errorStr="+errorStr)
	end if
else
%>
<h3 align="center">Tạo mới danh mục </h3>
<ul>
<li><a href="TaoMoiDoanhNghiep.asp" title="Tạo mới một Doanh Nghiệp">Tạo mới một Doanh Nghiệp.</a></li>
<li><a href="TaoMoiThietBi.asp" title="Tạo mới Thiết Bị"></a><a href="TaoMoiThietBi.asp" title="Tạo mới Thiết Bị">Tạo mới Thiết Bị.</a></li>
<li><a href="TaoMoiSanPham.asp" title="Tạo mới sản phẩm cho Doanh Nghiệp">Tạo mới sản phẩm cho Doanh Nghiệp.</a></li>
<li><a href="TaoMoiSanPham.asp?loai=BuocGiaCong" title="Tạo mới Bước gia công cho sản phẩm">Tạo mới Bước gia công cho sản phẩm.</a></li>
<li><a href="BangChiTieu.asp">Tạo mới chỉ tiêu đánh giá </a></li>
<br />
<br />
<li><a href="TaoMoiHoiDong.asp" title="Tạo mới một Hội Đồng để chấm điểm cho các Doanh Nghiệp">Tạo mới một Hội Đồng.</a></li>
<li><a href="TaoMoiThanhVien.asp" title="Tạo mới một Thành Viên để làm việc cho Hội Đồng">Tạo mới Thành Viên.</a></li>
<br />
<br />
<li><a href="Nhap_ChiTietThongTin.asp">Nhập mới chi tiết thông tin</a></li>
<li><a href="Nhap_ChiTietToChuc.asp">Nhập mới chi tiết tổ chức</a></li>
<li><a href="Nhap_DiemTieuChuanMoiTruong.asp">Nhập mới điểm tiêu chuẩn môi trường</a></li>
<li><a href="Nhap_HieuQuaCongNgheKyThuat.asp">Nhập mới hiệu quả công nghệ kỹ thuật</a></li>
<li><a href="Nhap_HieuQuaCongNgheThongTin.asp">Nhập mới hiệu quả công nghệ thông tin</a></li>
<li><a href="Nhap_HieuQuaCongNgheToChuc.asp">Nhập mới hiệu quả công nghệ tổ chức</a></li>
<li><a href="Nhap_NhanToConNguoi.asp">Nhập mới nhân tố con người</a></li>
<li><a href="Nhap_NhanToMoiTruong.asp">Nhập mới nhân tố môi trường</a></li>
</ul>
<input type="button" onclick="history.back()" value=" Quay lại " />
<%
end if
end if
end if
end if
end if
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
