<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/hinhmaunguoidung.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Xem danh sách</title>
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
<script language="JavaScript" type="text/javascript">
function bao()
{
	return confirm("Bạn có thực sự muốn xóa không?");
}
function baoTV()
{
	return confirm("Bạn có thực sự muốn xóa thành viên này không?\nLưu ý:Thành viên này có thể đang ở trong một Hội Đồng.\nNếu bạn xóa,thành viên này sẽ không còn trong Hội Đồng đó nữa.");
}
function bao(urlStr)
{
	var i = confirm("Bạn có thực sự muốn xóa không?");
	if(i==true)
	{
		window.location=urlStr;
		return true;
	}
	else
	{
		return false;
	}
}
function baoHD()
{
	return confirm("Bạn có thực sự muốn xóa không?\nLưư ý:Hội Đồng này có thể đang chấm điểm cho một doanh nghiệp.\nNếu bạn xóa hội đồng này,doanh nghiệp đó sẽ không có hội đồng chấm điểm.");
}
function ktraTrong(strValue, url)
{
	if(strValue < 1)
	{
		return false;
	}
	else
	{
		window.location=url;
		return true;
	}
}
</script>
<script language="JavaScript" type="text/javascript">
function setValue(page) 
{
	viewFrm.page.value=page; 
	viewFrm.submit();
}
</script>
<%
'Trang nay cho phep xem danh sach cho nhieu loai,VD: hoi dong,thanh vien hoi dong...
Dim loai
Dim kieu
dim sqlStr
Dim rsCurrentPage
Dim rsPageCount
Dim i
Dim j
Dim p
Dim errorStr
errorStr = Request.QueryString("errorStr")
if(errorStr <> "" or errorStr <> null) then
	Response.Write("<h4 align=center>"+errorStr+"</h4>")
end if
Set loai = Request.QueryString("loai")'lay ra loai de view
Set kieu = Request.QueryString("kieu")'lay ra kieu de view
Set PhanLoai = Request.QueryString("PhanLoai")
'-----------------------------------------Xem Danh sach HoiDong---------------------------------------
if(loai = "HoiDong") then'Loai o day la loai Hoi Dong
	if(PhanLoai = "ChonLoc") then
		TenHoiDong = Request.QueryString("TenHoiDong")
		if session("ma_doanhnghiep")>0 then
			sqlStr = "SELECT * FROM XemDSHoiDong WHERE TenHoiDong LIKE N'%"+TenHoiDong+"%' and MaDoanhNghiep="& Session("ma_doanhnghiep")
		else
			sqlStr = "SELECT * FROM XemDSHoiDong WHERE TenHoiDong LIKE N'%"+TenHoiDong+"%'"
		end if
	else
	    if session("ma_doanhnghiep")>0 then
			sqlStr = "SELECT * FROM XemDSHoiDong WHERE MaDoanhNghiep="& Session("ma_doanhnghiep")
		else
			sqlStr = "SELECT * FROM XemDSHoiDong"
		end if
	end if
		'Phan trang--------------------------------------------------------------------------------------
		RS.CursorLocation = 3
		'15 nhan vien 1 trang
		RS.PageSize =10
		RS.Open sqlStr, conn
		
			If Request.QueryString("page") = null or Request.QueryString("page") = "" Then
				rsCurrentPage = 1
			Else
				rsCurrentPage = CLng(Request.QueryString("page"))
			End If
			' Kiem tra tinh hop le cua so trang
			If rsCurrentPage < 1 Then
				rsCurrentPage = 1 
			End If
			rsPageCount = rs.PageCount
			If rsCurrentPage > rsPageCount Then
				rsCurrentPage = rsPageCount
			End If
			if (rsCurrentPage > 0 and rsCurrentPage <= rsPageCount) then
				' Dinh vi trang hien hanh
				RS.absolutePage = rsCurrentPage
			End If
		
			'create button and table:
			%>
			<h3 align="center">Danh sách các hội đồng</h3>
			<ul>
<li>Ấn vào "Sửa" để thay đổi thông tin của hội đồng đó.</li>
<li>Ấn vào "Xóa" để xóa hội đồng đó.</li>
<li>Ấn vào "Thêm thành viên" để thêm thành viên vào hội đồng đó.</li>
</ul>
<form action="XemDanhsach.asp" method="get" name="form7" id="form7">
  Tìm theo tên hội đồng : 
  	<input type="text" name="TenHoiDong" />
  <input type="hidden" name="loai" value="HoiDong" />
  <input type="hidden" name="PhanLoai" value="ChonLoc" />
  <input type="submit" name="Submit" value="  Tìm  " />
</form>
<table width="100%" border="1" cellpadding="5">
			  <tr align="center" >
				<td width="16%"><b>Tên hội đồng</b></td>
				<td width="36%"><b>Chấm điểm cho doanh nghiệp</b></td>
				<td width="14%"><b>Ngày thành lập</b></td>
				<%
				if(Session("ma_dn")>0) then
				%>
					<td colspan="3"><b>Chức năng </b><b></b></td>
				<%
				end if
				%>
			  </tr>
			<%		
			while( (NOT RS.EOF) and RS.AbsolutePage = rsCurrentPage)
			%>
				<tr>
					<td><%=RS(1)%>&nbsp;</td>
					<td><%=RS(2)%>&nbsp;</td>
					<td><%=RS(3)%>&nbsp;</td>
				<%
				if(Session("ma_dn")>0) then
				%>
					<td width="8%"><a title="Sửa thông tin của Hội Đồng này" href="Sua.asp?loai=HoiDong&amp;MaHoiDong=<%=RS(0)%>")>Sửa</a></td>
					<td width="11%"><a title="Xóa Hội Đồng này" onclick="return baoHD()" href="Xoa.asp?loai=HoiDong&amp;MaHoiDong=<%=RS(0)%>")>Xóa</a></td>
					<td width="15%"><a title="Thêm thành viên vào Hội Đồng này" href="ThemThanhVien.asp?MaHoiDong=<%=RS(0)%>&TenHoiDong=<%=RS(1)%>")>Thêm thành viên</a></td>
				<%
				end if
				%>
				</tr>
			<%	
			RS.MoveNext
			wend
			%>
</table>
		   </p>	 <p>&nbsp;</p>	 <%
			' Hien thi phan duyet phan trang
			  ShowPageNavigation rsCurrentPage, rsPageCount
			' rs.Open;
			%>     </p>     <form action="XemDanhSach.asp" method="get" name="viewFrm" id="viewFrm">
				
			  <p>
				  <input type="hidden" name="page" value="<%=rsCurrentPage%>" />
				  <input type="hidden" name="loai" value="HoiDong" />
			  </p>
			</form>     
			<%	
				'Ham su dung cho phan trang
				function ShowPageNavigation(rsCurrentPage, rsPageCount) 
					Response.Write("<center><table><tr><td><strong><font color=#cccccc>")
					' link toi trang dau va trang truoc
					if ((rsCurrentPage <> 1) and (rsCurrentPage <> 0)) then
						Response.Write("<a href=JavaScript:setValue(1);>Trang &#273;&#7847;u</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
						Response.Write("<a href=JavaScript:setValue(" & (Cint(rsCurrentPage) - Cint(1)) & ");>Tr&#432;&#7899;c</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
					else		
						Response.Write("Trang &#273;&#7847;u&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tr&#432;&#7899;c&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
					end if
					'link toi trang ke tiep va trang cuoi
					if (rsCurrentPage < rsPageCount) then
						Response.Write("<a href=JavaScript:setValue(" & (CInt(rsCurrentPage) + CInt(1)) & ");>Sau</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
						Response.Write("<a href=JavaScript:setValue(" & Cint(rsPageCount) & ");>Trang cu&#7889;i</a>")
					else
						Response.Write("Sau&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
						Response.Write("Trang cu&#7889;i")
					end if
					
					Response.Write("</font></strong></td></tr><tr><td><strong><center><font color=#cccccc>")
					Response.Write("| ")
					'link toi tung trang
					for p = 1 to rsPageCount
						if (rsCurrentPage <> p) then
							Response.Write("<a href=JavaScript:setValue(" & p & ");>" & p & "</a> | ")
						else
							Response.Write("<b>" & p & "</b>" & " | ")
						end if
					next
					Response.Write("</font></center></strong></td></tr></table></center>")
				end function'het ham su dung cho phan trang
				RS.Close
%>
		<p align="center"><input type="button" onclick="window.location='TaoMoiHoiDong.asp'" value="Ấn vào đây để tạo hội đồng mới")></p> 
<input type="button" onclick="history.back()" value=" Quay lại " />
<%
'-----------------------------------------Xem Danh sach ThanhVien---------------------------------------
else if(loai = "ThanhVien") then
	if(PhanLoai = "ChonLoc") then
		TenThanhVien = Request.QueryString("TenThanhVien")
		if session("ma_doanhnghiep")>0 then
			sqlStr = "SELECT * FROM XemDsTVChamDiemChoTungDN WHERE TenThanhVien LIKE N'%"+TenThanhVien+"%' and MaDoanhNghiep="& Session("ma_doanhnghiep")
		else	
			sqlStr = "SELECT * FROM XemDsTVChamDiemChoTungDN WHERE TenThanhVien LIKE N'%"+TenThanhVien+"%'"
		end if
	else
		if session("ma_doanhnghiep")>0 then
		    sqlStr = "SELECT * FROM XemDsTVChamDiemChoTungDN WHERE MaDoanhNghiep="& Session("ma_doanhnghiep")
		else
			sqlStr = "SELECT * FROM XemDsTVChamDiemChoTungDN"
		end if
	end if
		'Phan trang--------------------------------------------------------------------------------------
		RS.CursorLocation = 3
		'15 nhan vien 1 trang
		RS.PageSize =10
		RS.Open sqlStr, conn
		
			If Request.QueryString("page") = null or Request.QueryString("page") = "" Then
				rsCurrentPage = 1
			Else
				rsCurrentPage = CLng(Request.QueryString("page"))
			End If
			' Kiem tra tinh hop le cua so trang
			If rsCurrentPage < 1 Then
				rsCurrentPage = 1 
			End If
			rsPageCount = rs.PageCount
			If rsCurrentPage > rsPageCount Then
				rsCurrentPage = rsPageCount
			End If
			if (rsCurrentPage > 0 and rsCurrentPage <= rsPageCount) then
				' Dinh vi trang hien hanh
				RS.absolutePage = rsCurrentPage
			End If
		
			'create button and table:
			%>
			<h3 align="center">Danh sách các thành viên</h3>
			<ul>
<li>Ấn vào "Sửa" để thay đổi thông tin của thành viên đó.</li>
<li>Ấn vào "Xóa" để xóa thành viên đó.</li>
</ul>
<form action="XemDanhsach.asp" method="get" name="form7" id="form7">
  Tìm theo tên thành viên : 
  	<input type="text" name="TenThanhVien" />
  <input type="hidden" name="loai" value="ThanhVien" />
  <input type="hidden" name="PhanLoai" value="ChonLoc" />
  <input type="submit" name="Submit" value=" Tìm " />
</form>
<table width="100%" border="1" cellpadding="5">
			  <tr align="center" >
				<td><b>Tên thành viên</b></td>
				<td><b>Tên hội đồng</b></td>
				<%
				if session("ma_doanhnghiep")=0 then
				%>
					<td><b>Tên doanh nghiệp</b></td>
				<% end if %>
				<td><b>Chức danh </b></td>
				<td colspan="2"><b>Chức năng </b><b></b></td>
			  </tr>
			<%		
			while( (NOT RS.EOF) and RS.AbsolutePage = rsCurrentPage)
			%>
				<tr>
					<td><a title="Sửa thông tin của Thành Viên này" href="Sua.asp?loai=ThanhVien&amp;MaThanhVien=<%=RS(0)%>")><%=RS(1)%></a>&nbsp;</td>
					<td><%=RS(6)%></td>
				<%
				if session("ma_doanhnghiep")=0 then
				%>
					<td><%=RS(3)%>&nbsp;</td>
				<% end if %>
					<td><%=RS(4)%>&nbsp;</td>
					<td><a title="Sửa thông tin của Thàn Viên này" href="Sua.asp?loai=ThanhVien&amp;MaThanhVien=<%=RS(0)%>")>Sửa</a></td>
					<td><a title="Xóa Thành Viên này" onclick="return baoTV()" href="Xoa.asp?loai=ThanhVien&amp;MaThanhVien=<%=RS(0)%>")>Xóa</a></td>
				</tr>
			<%	
			RS.MoveNext
			wend
			%>
</table>
		   </p>	 <p>&nbsp;</p>	 <%
			' Hien thi phan duyet phan trang
			  ShowPageNavigation rsCurrentPage, rsPageCount
			' rs.Open;
			%>     </p>     <form action="XemDanhSach.asp" method="get" name="viewFrm" id="viewFrm">
				
			  <p>
				  <input type="hidden" name="page" value="<%=rsCurrentPage%>" />
				  <input type="hidden" name="loai" value="ThanhVien" />
			  </p>
			</form>     
			<%	
				'Ham su dung cho phan trang
				function ShowPageNavigation(rsCurrentPage, rsPageCount) 
					Response.Write("<center><table><tr><td><strong><font color=#cccccc>")
					' link toi trang dau va trang truoc
					if ((rsCurrentPage <> 1) and (rsCurrentPage <> 0)) then
						Response.Write("<a href=JavaScript:setValue(1);>Trang &#273;&#7847;u</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
						Response.Write("<a href=JavaScript:setValue(" & (Cint(rsCurrentPage) - Cint(1)) & ");>Tr&#432;&#7899;c</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
					else		
						Response.Write("Trang &#273;&#7847;u&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tr&#432;&#7899;c&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
					end if
					'link toi trang ke tiep va trang cuoi
					if (rsCurrentPage < rsPageCount) then
						Response.Write("<a href=JavaScript:setValue(" & (CInt(rsCurrentPage) + CInt(1)) & ");>Sau</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
						Response.Write("<a href=JavaScript:setValue(" & Cint(rsPageCount) & ");>Trang cu&#7889;i</a>")
					else
						Response.Write("Sau&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
						Response.Write("Trang cu&#7889;i")
					end if
					
					Response.Write("</font></strong></td></tr><tr><td><strong><center><font color=#cccccc>")
					Response.Write("| ")
					'link toi tung trang
					for p = 1 to rsPageCount
						if (rsCurrentPage <> p) then
							Response.Write("<a href=JavaScript:setValue(" & p & ");>" & p & "</a> | ")
						else
							Response.Write("<b>" & p & "</b>" & " | ")
						end if
					next
					Response.Write("</font></center></strong></td></tr></table></center>")
				end function'het ham su dung cho phan trang
				RS.Close
%>
<p align="center"><input type="button" onclick="window.location='TaoMoiThanhVien.asp'" value="Ấn vào đây để tạo thành viên mới")></p> 
<input type="button" onclick="history.back()" value=" Quay lại " />
<%
'-----------------------------------------Xem Danh sach DoanhNghiep---------------------------------------
else if(loai = "DoanhNghiep") then
	'hien ra danh sach cac hoi dong
	if(kieu = "ChiTiet") then
		Dim MaDoanhNghiep
		Dim MaHoiDong
		Set MaDoanhNghiep = Request.QueryString("MaDoanhNghiep")
		Set MaHoiDong = Request.QueryString("MaHoiDong")
			'if(MaHoiDong.length < 1) then
			'	Set MaHoiDong = " "
			'end if
		sqlStr = "SELECT DISTINCT TenDoanhNghiep, ChucNang, DiaChi, NamThanhLap, SoDienThoai_Fax, Email, Website, MaDoanhNghiep FROM XemDSDoanhNghiep WHERE MaDoanhNghiep='"+MaDoanhNghiep+"'"
		
		sqlStr2 = "SELECT DISTINCT TenHoiDong FROM XemDSDoanhNghiep WHERE MaDoanhNghiep = '"+MaDoanhNghiep+"'"
		Dim RSnew
		Set RSnew = Server.CreateObject("ADODB.Recordset")
		RSnew.Open sqlStr2, conn
		DSHoiDong = ""
		while( (NOT RSnew.EOF))
			DSHoiDong = DSHoiDong + RSnew(0) + " , "
		RSnew.MoveNext
		wend
	else
		sqlStr = "SELECT DISTINCT TenDoanhNghiep, DiaChi, SoDienThoai_Fax, MaDoanhNghiep FROM XemDSDoanhNghiep"
	end if
	if(PhanLoai = "ChonLoc") then
		TenDoanhNghiep = Request.QueryString("TenDoanhNghiep")
		sqlStr = "SELECT DISTINCT TenDoanhNghiep, DiaChi, SoDienThoai_Fax, MaDoanhNghiep FROM XemDSDoanhNghiep WHERE TenDoanhNghiep LIKE N'%"+TenDoanhNghiep+"%'"
	end if
		'Phan trang--------------------------------------------------------------------------------------
		RS.CursorLocation = 3
		'15 nhan vien 1 trang
		RS.PageSize =10
		RS.Open sqlStr, conn
		
			If Request.QueryString("page") = null or Request.QueryString("page") = "" Then
				rsCurrentPage = 1
			Else
				rsCurrentPage = CLng(Request.QueryString("page"))
			End If
			' Kiem tra tinh hop le cua so trang
			If rsCurrentPage < 1 Then
				rsCurrentPage = 1 
			End If
			rsPageCount = rs.PageCount
			If rsCurrentPage > rsPageCount Then
				rsCurrentPage = rsPageCount
			End If
			if (rsCurrentPage > 0 and rsCurrentPage <= rsPageCount) then
				' Dinh vi trang hien hanh
				RS.absolutePage = rsCurrentPage
			End If
		
			'create button and table:
			if(kieu = "ChiTiet") then
			%>
					<h3 align="center">Thông tin chi tiết của <%=RS(0)%> </h3>
<ul>
<li>Ấn vào nút "Sửa" để thay đổi thông tin của doanh nghiệp này.</li>
<li>Ấn vào nút "Xóa" để xóa doanh nghiệp này.</li>
</ul>
				    <table width="100%" border="1" >
					<tr>
						<td width="45%" align="left"><div align="left"><b>Tên doanh nghiệp</b></div></td>
						<td colspan="3" align="left"><%=RS(0)%></td>
					</tr>
					<tr>
						<td align="left"><div align="left"><b>Chức năng</b></div></td>
						<td colspan="3" align="left"><%=RS(1)%></td>
					</tr>
					<tr>
						<td align="left"><div align="left"><b>Địa chỉ</b></div></td>
						<td colspan="3" align="left"><%=RS(2)%></td>
					</tr>
					<tr>
						<td align="left"><div align="left"><b>Năm thành lập</b></div></td>
						<td colspan="3" align="left"><%=RS(3)%></td>
					</tr>
					<tr>
						<td align="left"><div align="left"><b>Điện thoại - Fax</b></div></td>
						<td colspan="3" align="left"><%=RS(4)%></td>
					</tr>
					<tr>
						<td align="left"><div align="left"><b>Thư điện tử</b></div></td>
						<td colspan="3" align="left"><%=RS(5)%></td>
					</tr>
					<tr>
						<td align="left"><div align="left"><b>Trang web</b></div></td>
						<td colspan="3" align="left"><%=RS(6)%></td>
					</tr>
					<tr>
						<td align="left"><div align="left"><b>Tên các hội đồng đang chấm điểm</b></div></td>
						<td colspan="3" align="left"><%=DSHoiDong%></td>
					</tr>
					<tr>
					  <td rowspan="2" align="right"><div align="left"><strong>Danh sách tài khoản hiện thời </strong></div></td>
					  <td width="17%" align="left"><div align="center"><strong>Quản trị </strong></div></td>
					  <td width="19%" align="left"><div align="center"><strong>Người dùng </strong></div></td>
					  <td width="19%" align="left"><div align="center"><strong>Khách</strong></div></td>
					</tr>
					<tr>
					  <td align="left"><%
					   	dim rsacount', rscountdn
						set rsacount=server.CreateObject("adodb.recordset")
						'set rscountdn=server.CreateObject("adodb.recordset")
						
						rsacount.open "select * from users where madoanhnghiep='"& Request.QueryString("MaDoanhNghiep")&"' and quyen='1'",conn
						while not rsacount.eof 
						%>
                        -<% =rsacount("tentruycap") %>
                        <br />
                        <%
					    rsacount.movenext()
					   	wend
						rsacount.close()
					   %>
                      &nbsp; </td>
					  <td align="left"><%
					   	'dim rsacount', rscountdn
						'set rsacount=server.CreateObject("adodb.recordset")
						'set rscountdn=server.CreateObject("adodb.recordset")
						
						rsacount.open "select * from users where madoanhnghiep='"& Request.QueryString("MaDoanhNghiep")&"' and quyen='2'",conn
						while not rsacount.eof 
						%>
                        -<% =rsacount("tentruycap") %>
                        <br />
                        <%
					    rsacount.movenext()
					   	wend
						rsacount.close()
					   %>
                        &nbsp;</td>
					  <td align="left"><%
					   '	dim rsacount', rscountdn
						'set rsacount=server.CreateObject("adodb.recordset")
						'set rscountdn=server.CreateObject("adodb.recordset")
						
						rsacount.open "select * from users where madoanhnghiep='"& Request.QueryString("MaDoanhNghiep")&"' and quyen='3'",conn
						while not rsacount.eof 
						%>
                        -<% =rsacount("tentruycap") %>
                        <br />
                        <%
					    rsacount.movenext()
					   	wend
						rsacount.close()
					   %>
                        &nbsp;</td>
					</tr>
					<tr>
						<td align="right"><input type="button" value="  Sửa  " onclick="window.location='Sua.asp?loai=DoanhNghiep&amp;MaDoanhNghiep=<%=RS(7)%>'" /></td>
						<td colspan="3" align="left"><input type="button" value="  Xóa  " onclick="return bao('Xoa.asp?loai=DoanhNghiep&amp;MaDoanhNghiep=<%=RS(7)%>')" /></td>
					</tr>
					</table>
					<%	
			else 'xem ko chi tiet:
			%>
					<h3 align="center">Danh sách các doanh nghiệp</h3>
					<ul>
						<li>Ấn vào "Sửa" để thay đổi thông tin của doanh nghiệp đó.</li>
						<li>Ấn vào "Xóa" để xóa doanh nghiệp đó.</li>
</ul>
<form action="XemDanhsach.asp" method="get" name="form7" id="form7">
  Tìm theo tên doanh nghiệp : 
  	<input type="text" name="TenDoanhNghiep" />
  <input type="hidden" name="loai" value="DoanhNghiep" />
  <input type="hidden" name="PhanLoai" value="ChonLoc" />
  <input type="submit" name="Submit" value=" Tìm " />
</form>
		<table width="100%" border="1" cellpadding="5">
					  <tr align="center" >
						<td width="21%"><b>Tên doanh nghiệp</b></td>
						<td width="23%"><b>Hội đồng chấm điểm</b></td>
						<td colspan="5"><b>Chức năng </b><b></b></td>
					  </tr>
					<%		
					'Dim RSnew
					Set RSnew = Server.CreateObject("ADODB.Recordset")
					
					while( (NOT RS.EOF) and RS.AbsolutePage = rsCurrentPage)
					%>
						<tr>
							<td><a title="Xem thông tin chi tiết của Doanh Nghiệp này" href="XemDanhSach.asp?loai=DoanhNghiep&amp;kieu=ChiTiet&amp;MaDoanhNghiep=<%=RS(3)%>")><%=RS(0)%></a>&nbsp;</td>
							<td><%
								RSnew.Open "SELECT DISTINCT TenHoiDong FROM XemDSDoanhNghiep WHERE MaDoanhNghiep = '" &RS(3)& "'", conn
								DSHoiDong = ""
								while( (NOT RSnew.EOF))
									DSHoiDong = DSHoiDong + "- "+RSnew(0) + " <br> "
								RSnew.MoveNext
								wend
								RSnew.Close
								Response.Write(DSHoiDong)
							%>&nbsp;</td>
							<td width="8%"><a title="Sửa thông tin của Doanh Nghiệp này" href="Sua.asp?loai=DoanhNghiep&amp;MaDoanhNghiep=<%=RS(3)%>")>Sửa</a></td>
							<td width="8%"><a title="Xóa Doanh Nghiệp này" onclick="return bao()" href="Xoa.asp?loai=DoanhNghiep&amp;MaDoanhNghiep=<%=RS(3)%>")>Xóa</a></td>
						</tr>
					<%	
					RS.MoveNext
					wend
			end if
			%>
</table>
		   </p>	 <p>&nbsp;</p>	 <%
			' Hien thi phan duyet phan trang
			  ShowPageNavigation rsCurrentPage, rsPageCount
			' rs.Open;
			%>     </p>     <form action="XemDanhSach.asp" method="get" name="viewFrm" id="viewFrm">
				
			  <p>
				  <input type="hidden" name="page" value="<%=rsCurrentPage%>" />
				  <input type="hidden" name="loai" value="DoanhNghiep" />
			  </p>
			</form>     
			<%	
				'Ham su dung cho phan trang
				function ShowPageNavigation(rsCurrentPage, rsPageCount) 
					Response.Write("<center><table><tr><td><strong><font color=#cccccc>")
					' link toi trang dau va trang truoc
					if ((rsCurrentPage <> 1) and (rsCurrentPage <> 0)) then
						Response.Write("<a href=JavaScript:setValue(1);>Trang &#273;&#7847;u</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
						Response.Write("<a href=JavaScript:setValue(" & (Cint(rsCurrentPage) - Cint(1)) & ");>Tr&#432;&#7899;c</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
					else		
						Response.Write("Trang &#273;&#7847;u&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tr&#432;&#7899;c&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
					end if
					'link toi trang ke tiep va trang cuoi
					if (rsCurrentPage < rsPageCount) then
						Response.Write("<a href=JavaScript:setValue(" & (CInt(rsCurrentPage) + CInt(1)) & ");>Sau</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
						Response.Write("<a href=JavaScript:setValue(" & Cint(rsPageCount) & ");>Trang cu&#7889;i</a>")
					else
						Response.Write("Sau&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
						Response.Write("Trang cu&#7889;i")
					end if
					
					Response.Write("</font></strong></td></tr><tr><td><strong><center><font color=#cccccc>")
					Response.Write("| ")
					'link toi tung trang
					for p = 1 to rsPageCount
						if (rsCurrentPage <> p) then
							Response.Write("<a href=JavaScript:setValue(" & p & ");>" & p & "</a> | ")
						else
							Response.Write("<b>" & p & "</b>" & " | ")
						end if
					next
					Response.Write("</font></center></strong></td></tr></table></center>")
				end function'het ham su dung cho phan trang
				RS.Close
%>
<p align="center"><input type="button" onclick="window.location='TaoMoiDoanhNghiep.asp'" value="Ấn vào đây để tạo doanh nghiệp mới")>
</p> 
<input type="button" onclick="history.back()" value=" Quay lại " />
<%
'-------------------------------------------------xem DS San Pham---------------------------------------
else if(loai="SanPham") then
	'Response.Write("Xem thông tin về sản phẩm của doanh nghiệp hiện đang trong quá trình hoàn thiện.")
	MaDoanhNghiep = Request.QueryString("MaDoanhNghiep")
	TenDoanhNghiep = Request.QueryString("TenDoanhNghiep")
	kieu = Request.QueryString("kieu")
	'hien ra danh sach cac thanhvien	
	if(kieu = "all") then
		if session("ma_doanhnghiep")>0 then
			sqlStr = "SELECT * FROM XemDSSanPham WHERE MaDoanhNghiep="&session("ma_doanhnghiep")
		else
			sqlStr = "SELECT * FROM XemDSSanPham"
		end if
	else
		sqlStr = "SELECT * FROM XemDSSanPham WHERE MaDoanhNghiep="+MaDoanhNghiep
	end if
	if(PhanLoai = "ChonLoc") then
		TenSanPham = Request.QueryString("TenSanPham")
		if session("ma_doanhnghiep")>0 then
			sqlStr = "SELECT * FROM XemDSSanPham WHERE TenSanPham LIKE N'%"+TenSanPham+"%' AND MaDoanhNghiep="&session("ma_doanhnghiep")
		else
			sqlStr = "SELECT * FROM XemDSSanPham WHERE TenSanPham LIKE N'%"+TenSanPham+"%'"
		end if
	end if
		'Phan trang--------------------------------------------------------------------------------------
		RS.CursorLocation = 3
		'15 nhan vien 1 trang
		RS.PageSize =10
		RS.Open sqlStr, conn
		
			If Request.QueryString("page") = null or Request.QueryString("page") = "" Then
				rsCurrentPage = 1
			Else
				rsCurrentPage = CLng(Request.QueryString("page"))
			End If
			' Kiem tra tinh hop le cua so trang
			If rsCurrentPage < 1 Then
				rsCurrentPage = 1 
			End If
			rsPageCount = rs.PageCount
			If rsCurrentPage > rsPageCount Then
				rsCurrentPage = rsPageCount
			End If
			if (rsCurrentPage > 0 and rsCurrentPage <= rsPageCount) then
				' Dinh vi trang hien hanh
				RS.absolutePage = rsCurrentPage
			End If
		
			'create button and table:
			%>
			<h3 align="center">Danh sách các sản phẩm của doanh nghiệp 
				<%Response.Write(TenDoanhNghiep)%></h3>
			<fieldset >
            <% if session("ma_dn")> 0 then ' nếu đã chọn doanh nghiệp sẽ hiện ra%>
            <%
					dim rsdoanhnghiep
					set rsdoanhnghiep=server.CreateObject("adodb.recordset")
				 %>
            <%rsdoanhnghiep.open "select * from doanhnghiep where madoanhnghiep="& Session("ma_dn"),conn%>
            <%if not rsdoanhnghiep.eof then %>
            <legend align="center"><%=rsdoanhnghiep("tendoanhnghiep")%></legend>
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td width="45%">Năm thành lập </td>
                <td width="55%"><%=rsdoanhnghiep("namthanhlap")%></td>
              </tr>
              <tr>
                <td>Lĩnh vực ngành nghề kinh doanh</td>
                <td><%=rsdoanhnghiep("chucnang")%></td>
              </tr>
              <tr>
                <td>Địa chỉ</td>
                <td><%=rsdoanhnghiep("diachi")%></td>
              </tr>
              <tr>
                <td>Điện thoại</td>
                <td><%=rsdoanhnghiep("sodienthoai_fax")%></td>
              </tr>
              <tr>
                <td height="35">Địa chỉ thư điện tử <%=rsdoanhnghiep("email")%></td>
                <td>Trang chủ: &nbsp;<a href="http://<%=rsdoanhnghiep("website")%>"><%=rsdoanhnghiep("website")%></a></td>
              </tr>
              <tr>
                <td colspan="2"><div align="justify"><%=rsdoanhnghiep("info")%>&nbsp;</div></td>
              </tr>
            </table>
            <%rsdoanhnghiep.close()%>
            <%end if%>
            <%end if%>
            </fieldset>
			<p align="center">&nbsp;</p>
			<ul>
<li>Ấn vào tên "Xem bước gia công" để xem các bước gia công của sản phẩm đó.</li>
<li>Ấn vào "Sửa" để thay đổi thông tin của sản phẩm đó.</li>
<li>Ấn vào "Xóa" để xóa sản phẩm đó khỏi danh sách sản phẩm của doanh nghiệp này.</li>
</ul>
<form action="XemDanhsach.asp" method="get" name="form1" id="form1">
  Tìm theo tên sản phẩm : 
  	<input type="text" name="TenSanPham" />
  <input type="hidden" name="loai" value="SanPham" />
  <input type="hidden" name="PhanLoai" value="ChonLoc" />
  <input type="submit" name="Submit" value=" Tìm " />
</form>
<table width="100%" border="1" cellpadding="5">
			  <tr align="center" >
				<td><b>Tên sản phẩm</b></td>
				<td><b>Kỹ thuật sản xuất</b></td>
				<td><b>Thị trường</b></td>
				<td><b>Tiêu chuẩn sản phẩm</b></td>
				<td><b>Năm sản xuất</b></td>
				<td colspan="4"><b>Chức năng </b><b></b></td>
			  </tr>
			<%		
			while( (NOT RS.EOF) and RS.AbsolutePage = rsCurrentPage)
			%>
				<tr>
					<td><%=RS(3)%>&nbsp;</td>
					<td><%=RS(4)%>&nbsp;</td>
					<td><%=RS(5)%>&nbsp;</td>
					<td><%=RS(6)%>&nbsp;</td>
					<td><%=RS(7)%>&nbsp;</td>
					<td><a title="Xem các bước gia công" href="XemDanhSach.asp?loai=BuocGiaCong&amp;MaSanPham=<%=RS(0)%>&TenSanPham=<%=RS(3)%>")>Xem bước gia công</a></td>
					
					<td><a title="Sửa thông tin của Sản Phẩm này" href="Sua.asp?loai=SanPham&amp;MaSanPham=<%=RS(0)%>&MaDoanhNghiep=<%=RS(1)%>&TenDoanhNghiep=<%=RS(2)%>")>Sửa</a></td>
					<td><a title="Xóa Sản Phẩm này khỏi danh sách của Doanh Nghiệp này" onclick="return bao()" href="Xoa.asp?loai=SanPham&amp;MaSanPham=<%=RS(0)%>&MaDoanhNghiep=<%=RS(1)%>&TenDoanhNghiep=<%=RS(2)%>")>Xóa</a></td>
				</tr>
			<%	
			RS.MoveNext
			wend
			%>
</table>
		   </p>	 <p>&nbsp;</p>	 <%
			' Hien thi phan duyet phan trang
			  ShowPageNavigation rsCurrentPage, rsPageCount
			' rs.Open;
			%>     </p>     <form action="XemDanhSach.asp" method="get" name="viewFrm" id="viewFrm">
				
			  <p>
				  <input type="hidden" name="page" value="<%=rsCurrentPage%>" />
				  <input type="hidden" name="loai" value="SanPham" />
				  <input type="hidden" name="MaDoanhNghiep" value="<%=MaDoanhNghiep%>" />
				  <input type="hidden" name="TenDoanhNghiep" value="<%=TenDoanhNghiep%>" />
				  <input type="hidden" name="kieu" value="<%=kieu%>" />
			  </p>
			</form>     
			<%	
				'Ham su dung cho phan trang
				function ShowPageNavigation(rsCurrentPage, rsPageCount) 
					Response.Write("<center><table><tr><td><strong><font color=#cccccc>")
					' link toi trang dau va trang truoc
					if ((rsCurrentPage <> 1) and (rsCurrentPage <> 0)) then
						Response.Write("<a href=JavaScript:setValue(1);>Trang &#273;&#7847;u</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
						Response.Write("<a href=JavaScript:setValue(" & (Cint(rsCurrentPage) - Cint(1)) & ");>Tr&#432;&#7899;c</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
					else		
						Response.Write("Trang &#273;&#7847;u&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tr&#432;&#7899;c&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
					end if
					'link toi trang ke tiep va trang cuoi
					if (rsCurrentPage < rsPageCount) then
						Response.Write("<a href=JavaScript:setValue(" & (CInt(rsCurrentPage) + CInt(1)) & ");>Sau</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
						Response.Write("<a href=JavaScript:setValue(" & Cint(rsPageCount) & ");>Trang cu&#7889;i</a>")
					else
						Response.Write("Sau&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
						Response.Write("Trang cu&#7889;i")
					end if
					
					Response.Write("</font></strong></td></tr><tr><td><strong><center><font color=#cccccc>")
					Response.Write("| ")
					'link toi tung trang
					for p = 1 to rsPageCount
						if (rsCurrentPage <> p) then
							Response.Write("<a href=JavaScript:setValue(" & p & ");>" & p & "</a> | ")
						else
							Response.Write("<b>" & p & "</b>" & " | ")
						end if
					next
					Response.Write("</font></center></strong></td></tr></table></center>")
				end function'het ham su dung cho phan trang
				RS.Close
%>
<p align="center"><input type="button" onclick="window.location='TaoMoiSanPham.asp'" value="Ấn vào đây để tạo sản phẩm mới")>
</p> 
<input type="button" onclick="history.back()" value=" Quay lại " />
<%
'------------------------------------------------------------xem ds buoc gia cong----------------------------
else if(loai = "BuocGiaCong") then
	MaSanPham = Request.QueryString("MaSanPham")
	TenSanPham = Request.QueryString("TenSanPham")
	kieu = Request.QueryString("kieu")
	'hien ra danh sach cac hoi dong
	if(kieu = "all") then
		if session("ma_doanhnghiep")>0 then
			sqlStr = "SELECT MaBuocGiaCong, TenBuocGiaCong, TenSanPham, TenHoiDong, TenThietBi, TenDoanhNghiep,AlphaT, GhiChu FROM XemDSBuocGiaCong WHERE MaDoanhNghiep="&session("ma_doanhnghiep")
		else
			sqlStr = "SELECT MaBuocGiaCong, TenBuocGiaCong, TenSanPham, TenHoiDong, TenThietBi, TenDoanhNghiep,AlphaT, GhiChu FROM XemDSBuocGiaCong"
		end if
	else
		sqlStr = "SELECT MaBuocGiaCong, TenBuocGiaCong, TenSanPham, TenHoiDong, TenThietBi,TenDoanhNghiep,AlphaT, GhiChu FROM XemDSBuocGiaCong WHERE MaSanPham="+MaSanPham
	end if
	if(PhanLoai = "ChonLoc") then
		TenBuocGiaCong = Request.QueryString("TenBuocGiaCong")
		if session("ma_doanhnghiep")>0 then
			sqlStr = "SELECT MaBuocGiaCong, TenBuocGiaCong, TenSanPham, TenHoiDong, TenThietBi,TenDoanhNghiep,AlphaT, GhiChu FROM XemDSBuocGiaCong WHERE TenBuocGiaCong LIKE N'%"+TenBuocGiaCong+"%' AND MaDoanhNghiep="&session("ma_doanhnghiep")
		else
			sqlStr = "SELECT MaBuocGiaCong, TenBuocGiaCong, TenSanPham, TenHoiDong, TenThietBi,TenDoanhNghiep,AlphaT, GhiChu FROM XemDSBuocGiaCong WHERE TenBuocGiaCong LIKE N'%"+TenBuocGiaCong+"%'"
		end if
	end if
		'Phan trang--------------------------------------------------------------------------------------
		RS.CursorLocation = 3
		'15 nhan vien 1 trang
		RS.PageSize =10
		RS.Open sqlStr, conn
		
			If Request.QueryString("page") = null or Request.QueryString("page") = "" Then
				rsCurrentPage = 1
			Else
				rsCurrentPage = CLng(Request.QueryString("page"))
			End If
			' Kiem tra tinh hop le cua so trang
			If rsCurrentPage < 1 Then
				rsCurrentPage = 1 
			End If
			rsPageCount = rs.PageCount
			If rsCurrentPage > rsPageCount Then
				rsCurrentPage = rsPageCount
			End If
			if (rsCurrentPage > 0 and rsCurrentPage <= rsPageCount) then
				' Dinh vi trang hien hanh
				RS.absolutePage = rsCurrentPage
			End If
		
			'create button and table:
			%>
			<h3 align="center">Danh sách bước gia công cho sản phẩm <%=TenSanPham%></h3>
<ul>
<li>Ấn vào "Sửa" để thay đổi thông tin của bước gia công đó.</li>
<li>Ấn vào "Xóa" để xóa bước gia công đó.</li>
</ul>
<form action="XemDanhsach.asp" method="get" name="form7" id="form7">
  Tìm theo tên Bước Gia Công : <input type="text" name="TenBuocGiaCong" />
  <input type="hidden" name="loai" value="BuocGiaCong" />
  <input type="hidden" name="PhanLoai" value="ChonLoc" />
  <input type="submit" name="Submit" value=" Tìm " />
</form>
<table width="100%" border="1" cellpadding="5">
			  <tr align="center" >
				<td><b>Tên bước gia công</b></td>
				<td><b>Tên sản phẩm</b></td>
				<td><b>Tên hội đồng</b></td>
				<td><b>Tên thiết bị</b></td>
				<td><b>Tên doanh nghiệp</b></td>
				<td><b>Alpha T</b></td>
				<td><b>Ghi chú</b></td>
				<td colspan="2"><b>Chức năng </b><b></b></td>
			  </tr>
			<%		
			while( (NOT RS.EOF) and RS.AbsolutePage = rsCurrentPage)
			%>
				<tr>
					<td><%=RS(1)%>&nbsp;</td>
					<td><%=RS(2)%>&nbsp;</td>
					<td><%=RS(3)%>&nbsp;</td>
					<td><%=RS(4)%>&nbsp;</td>
					<td><%=RS(5)%>&nbsp;</td>
					<td><%=RS(6)%>&nbsp;</td>
					<td><%=RS(7)%>&nbsp;</td>
					<td><a title="Sửa thông tin của bước gia công này" href="Sua.asp?loai=BuocGiaCong&amp;MaBuocGiaCong=<%=RS(0)%>")>Sửa</a></td>
					<td><a title="Xóa bước gia công này" onclick="return bao()" href="Xoa.asp?loai=BuocGiaCong&amp;MaBuocGiaCong=<%=RS(0)%>")>Xóa</a></td>
				</tr>
			<%	
			RS.MoveNext
			wend
			%>
</table>
		   </p>	 <p>&nbsp;</p>	 <%
			' Hien thi phan duyet phan trang
			  ShowPageNavigation rsCurrentPage, rsPageCount
			' rs.Open;
			%>     </p>     <form action="XemDanhSach.asp" method="get" name="viewFrm" id="viewFrm">
				
			  <p>
				  <input type="hidden" name="page" value="<%=rsCurrentPage%>" />
				  <input type="hidden" name="loai" value="BuocGiaCong" />
				  <input type="hidden" name="MaSanPham" value="<%=MaSanPham%>" />
				  <input type="hidden" name="TenSanPham" value="<%=TenSanPham%>" />
				  <input type="hidden" name="kieu" value="<%=kieu%>" />
			  </p>
			</form>     
			<%	
				'Ham su dung cho phan trang
				function ShowPageNavigation(rsCurrentPage, rsPageCount) 
					Response.Write("<center><table><tr><td><strong><font color=#cccccc>")
					' link toi trang dau va trang truoc
					if ((rsCurrentPage <> 1) and (rsCurrentPage <> 0)) then
						Response.Write("<a href=JavaScript:setValue(1);>Trang &#273;&#7847;u</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
						Response.Write("<a href=JavaScript:setValue(" & (Cint(rsCurrentPage) - Cint(1)) & ");>Tr&#432;&#7899;c</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
					else		
						Response.Write("Trang &#273;&#7847;u&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tr&#432;&#7899;c&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
					end if
					'link toi trang ke tiep va trang cuoi
					if (rsCurrentPage < rsPageCount) then
						Response.Write("<a href=JavaScript:setValue(" & (CInt(rsCurrentPage) + CInt(1)) & ");>Sau</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
						Response.Write("<a href=JavaScript:setValue(" & Cint(rsPageCount) & ");>Trang cu&#7889;i</a>")
					else
						Response.Write("Sau&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
						Response.Write("Trang cu&#7889;i")
					end if
					
					Response.Write("</font></strong></td></tr><tr><td><strong><center><font color=#cccccc>")
					Response.Write("| ")
					'link toi tung trang
					for p = 1 to rsPageCount
						if (rsCurrentPage <> p) then
							Response.Write("<a href=JavaScript:setValue(" & p & ");>" & p & "</a> | ")
						else
							Response.Write("<b>" & p & "</b>" & " | ")
						end if
					next
					Response.Write("</font></center></strong></td></tr></table></center>")
				end function'het ham su dung cho phan trang
				RS.Close
%>
		<p align="center"><input type="button" onclick="window.location='TaoMoiSanPham.asp?loai=BuocGiaCong'" value="Ấn vào đây để tạo bước gia công mới")></p>
<input type="button" onclick="history.back()" value=" Quay lại " />
<%
else if(loai = "ThietBi") then
	MaThietBi = Request.QueryString("MaThietBi")
	MaSanPham = Request.QueryString("MaSanPham")
	TenSanPham = Request.QueryString("TenSanPham")
	kieu = Request.QueryString("kieu")
	'hien ra danh sach cac hoi dong
	if(kieu = "all") then
		if session("ma_doanhnghiep")>0 then
			sqlStr = "SELECT MaThietBi, TenThietBi, NamSanXuat, NoiSanXuat, T, H, N, C, k, Kt, Kh, Kn, Kc, Q, Status, NangSuat, MaDoanhNghiep, CASE ThietBi.LacHau WHEN 0 THEN N'Mới 100%' WHEN 1 THEN N'Lạc hậu 1 đời' WHEN 2 THEN N'Lạc hậu 2 đời' WHEN 3 THEN N'Lạc hậu về Model' WHEN 4 THEN N'Không có phụ tùng thay thế' END AS LacHau FROM dbo.ThietBi WHERE Status=1 AND MaDoanhNghiep="&session("ma_doanhnghiep")
		else
			sqlStr = "SELECT * FROM XemDSThietBi"
		end if
	else
		sqlStr = "SELECT * FROM XemDSThietBi WHERE MaSanPham="+MaSanPham
	end if
	if(PhanLoai = "ChonLoc") then
		TenThietBi = Request.QueryString("TenThietBi")
		if session("ma_doanhnghiep")>0 then
			sqlStr = "SELECT MaThietBi, TenThietBi, NamSanXuat, NoiSanXuat, T, H, N, C, k, Kt, Kh, Kn, Kc, Q, Status, NangSuat, MaDoanhNghiep, CASE ThietBi.LacHau WHEN 0 THEN N'Mới 100%' WHEN 1 THEN N'Lạc hậu 1 đời' WHEN 2 THEN N'Lạc hậu 2 đời' WHEN 3 THEN N'Lạc hậu về Model' WHEN 4 THEN N'Không có phụ tùng thay thế' END AS LacHau FROM dbo.ThietBi WHERE  Status=1 AND TenThietBi LIKE N'%"+TenThietBi+"%' AND MaDoanhNghiep="&session("ma_doanhnghiep")
		else
			sqlStr = "SELECT * FROM XemDSThietBi WHERE TenThietBi LIKE N'%"+TenThietBi+"%'"
		end if
	end if
		'Phan trang--------------------------------------------------------------------------------------
		RS.CursorLocation = 3
		'15 nhan vien 1 trang
		RS.PageSize =10
		RS.Open sqlStr, conn
		
			If Request.QueryString("page") = null or Request.QueryString("page") = "" Then
				rsCurrentPage = 1
			Else
				rsCurrentPage = CLng(Request.QueryString("page"))
			End If
			' Kiem tra tinh hop le cua so trang
			If rsCurrentPage < 1 Then
				rsCurrentPage = 1 
			End If
			rsPageCount = rs.PageCount
			If rsCurrentPage > rsPageCount Then
				rsCurrentPage = rsPageCount
			End If
			if (rsCurrentPage > 0 and rsCurrentPage <= rsPageCount) then
				' Dinh vi trang hien hanh
				RS.absolutePage = rsCurrentPage
			End If
		
			'create button and table:
			%>
			<h3 align="center">Danh sách thiết bị cho sản phẩm <%=TenSanPham%></h3>
<ul>
<li>Ấn vào "Sửa" để thay đổi thông tin của thiết bị đó.</li>
<li>Ấn vào "Xóa" để xóa thiết bị đó.</li>
</ul>
<form action="XemDanhsach.asp" method="get" name="form7" id="form7">
  Tìm theo tên Thiết Bị : <input type="text" name="TenThietBi" />
  <input type="hidden" name="loai" value="ThietBi" />
  <input type="hidden" name="PhanLoai" value="ChonLoc" />
  <input type="submit" name="Submit" value=" Tìm " />
</form>
<table width="100%" border="1" cellpadding="5">
			  <tr align="center" >
				<td><b>Tên thiết bị</b></td>
				<td><b>Năm sản xuất</b></td>
				<td><b>Nơi sản xuất</b></td>
				<td><b>Năng suất</b></td>
				<td><b>Tình trạng thiết bị </b></td>
				<td colspan="2"><b>Chức năng </b><b></b></td>
			  </tr>
			<%		
			while( (NOT RS.EOF) and RS.AbsolutePage = rsCurrentPage)
			%>
				<tr>
					<td><%=RS(1)%>&nbsp;</td>
					<td><%=RS(2)%>&nbsp;</td>
					<td><%=RS(3)%>&nbsp;</td>
					<td><%=RS(15)%>&nbsp;%</td>
					<td><%=RS(17)%>&nbsp;</td>
					<td><a title="Sửa thông tin của thiết bị này" href="Sua.asp?loai=ThietBi&amp;MaThietBi=<%=RS(0)%>")>Sửa</a></td>
					<td><a title="Xóa thiết bị này" onclick="return bao()" href="Xoa.asp?loai=ThietBi&amp;MaThietBi=<%=RS(0)%>")>Xóa</a></td>
				</tr>
			<%	
			RS.MoveNext
			wend
			%>
</table>
		   </p>	 <p>&nbsp;</p>	 <%
			' Hien thi phan duyet phan trang
			  ShowPageNavigation rsCurrentPage, rsPageCount
			' rs.Open;
			%>     </p>     <form action="XemDanhSach.asp" method="get" name="viewFrm" id="viewFrm">
				
			  <p>
				  <input type="hidden" name="page" value="<%=rsCurrentPage%>" />
				  <input type="hidden" name="loai" value="ThietBi" />
				  <input type="hidden" name="MaSanPham" value="<%=MaSanPham%>" />
				  <input type="hidden" name="TenSanPham" value="<%=TenSanPham%>" />
				  <input type="hidden" name="kieu" value="<%=kieu%>" />
			  </p>
			</form>     
			<%	
				'Ham su dung cho phan trang
				function ShowPageNavigation(rsCurrentPage, rsPageCount) 
					Response.Write("<center><table><tr><td><strong><font color=#cccccc>")
					' link toi trang dau va trang truoc
					if ((rsCurrentPage <> 1) and (rsCurrentPage <> 0)) then
						Response.Write("<a href=JavaScript:setValue(1);>Trang &#273;&#7847;u</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
						Response.Write("<a href=JavaScript:setValue(" & (Cint(rsCurrentPage) - Cint(1)) & ");>Tr&#432;&#7899;c</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
					else		
						Response.Write("Trang &#273;&#7847;u&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tr&#432;&#7899;c&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
					end if
					'link toi trang ke tiep va trang cuoi
					if (rsCurrentPage < rsPageCount) then
						Response.Write("<a href=JavaScript:setValue(" & (CInt(rsCurrentPage) + CInt(1)) & ");>Sau</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
						Response.Write("<a href=JavaScript:setValue(" & Cint(rsPageCount) & ");>Trang cu&#7889;i</a>")
					else
						Response.Write("Sau&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
						Response.Write("Trang cu&#7889;i")
					end if
					
					Response.Write("</font></strong></td></tr><tr><td><strong><center><font color=#cccccc>")
					Response.Write("| ")
					'link toi tung trang
					for p = 1 to rsPageCount
						if (rsCurrentPage <> p) then
							Response.Write("<a href=JavaScript:setValue(" & p & ");>" & p & "</a> | ")
						else
							Response.Write("<b>" & p & "</b>" & " | ")
						end if
					next
					Response.Write("</font></center></strong></td></tr></table></center>")
				end function'het ham su dung cho phan trang
				RS.Close
%>
<p align="center"><input type="button" onclick="window.location='TaoMoiThietBi.asp'" value="Ấn vào đây để tạo thiết bị mới")></p>
<input type="button" onclick="history.back()" value=" Quay lại " />
<%
'them else if () then vao	
else
%>
<h3 align="center">Chọn loại danh sách bạn muốn xem:</h3>
<ul>
<li><a href="XemDanhSach.asp?loai=HoiDong" title="Danh sách các Hội Đồng hiện có trong cơ sở dữ liệu">Danh sách các hội đồng.</a></li>
<li><a href="XemDanhSach.asp?loai=ThanhVien" title="Danh sách các Thành Viên hiện có trong cơ sở dữ liệu">Danh sách các thành viên.</a></li>
<%
	if session("ma_doanhnghiep")=0 then
%>
<li><a href="XemDanhSach.asp?loai=DoanhNghiep" title="Danh sách các Doanh Nghiệp hiện có trong cơ sở dữ liệu">Danh sách các doanh nghiệp.</a></li>
<%
end if
%>
</a></li>
<li><a href="XemDanhSach.asp?loai=BuocGiaCong&kieu=all" title="Danh sách các Bước Gia Công">Danh sách các bước gia công.</a></li>
<li><a href="XemDanhSach.asp?loai=SanPham&kieu=all" title="Danh sách các sản phẩm của Doanh Nghiệp">Danh sách các sản phẩm của doanh nghiệp.</a></li>
<li><a href="XemDanhSach.asp?loai=ThietBi&kieu=all" title="Danh sách các thiết bị của sản phẩm">Danh sách các thiết bị của sản phẩm.</a></li>
<li><a href="DanhSach_ChiTietThongTin.asp">Danh sách chi tiết thông tin</a></li>
<li><a href="DanhSach_ChiTietToChuc.asp">Danh sách chi tiết tổ chức</a></li>
<li><a href="DanhSach_DiemTieuChuanMoiTruong.asp">Danh sách điểm tiêu chuẩn môi trường</a></li>
<li><a href="DanhSach_HieuQuaCongNgheKyThuat.asp">Danh sách hiệu quả công nghệ kỹ thuật</a></li>
<li><a href="DanhSach_HieuQuaCongNgheThongTin.asp">Danh sách hiệu quả công nghệ thông tin</a></li>
<li><a href="DanhSach_HieuQuaCongNgheToChuc.asp">Danh sách hiệu quả công nghệ tổ chức</a></li>
<li><a href="DanhSach_NhanToConNguoi.asp">Danh sách nhân tố con người</a></li>
<li><a href="DanhSach_NhanToMoiTruong.asp">Danh sách nhân tố môi trường</a></li>
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
