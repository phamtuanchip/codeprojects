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
<script language="JavaScript" type="text/javascript">
function del(n) 
{
	if(confirm("Nhấn vào OK nếu bạn thực sự muốn xóa - Cancel để bỏ qua")) 
	{
		delFrm.ma.value=n;
		delFrm.submit();
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
<script  language="JavaScript" type="text/javascript">
	function move(){
		window.location = "Nhap_NhanToMoiTruong.asp"
	}
	
</script>
<input type="button" onclick="history.back()" value=" Quay lại " />
<%
	if(Session("ma_dn")=0) then
		Response.Write("Bạn không có quyền vào trang này.Xin vui lòng quay lại")
	else
dim sqlStr
Dim rsCurrentPage
Dim rsPageCount
Dim i
Dim j
Dim p
	'hien ra danh sach cac hoi dong
	sqlStr = "SELECT * FROM DSNTMoiTruongView WHERE MaDoanhNghiep="&Session("ma_dn")
		'Phan trang--------------------------------------------------------------------------------------
		RS.CursorLocation = 3
		'3 nhan vien 1 trang
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
			<h3 align="center">Danh sách nhân tố môi trường</h3>
<table width="100%" border="1" cellpadding="5" align="center">
			  <tr align="center" >
				
				<td align="center"><b>Tên nhân tố môi trường</b></td>
				<td align="center"><b>T&ecirc;n hội đồng</b></td>
				<td align="center"><b>T&ecirc;n sản phẩm</b></td>
				<td align="center"><b>Lamda</b></td>
				<td colspan="2" align="center"><b>Chức năng</b></td>
			  </tr>
			<%		
			while( (NOT RS.EOF) and RS.AbsolutePage = rsCurrentPage)
			%>
				<tr>
					
					<td align="center"><%=RS("TenNhanToMoiTruong")%></td>
					<td align="center"><%=RS("TenHoiDong")%></td>
					<td align="center"><%=RS("TenSanPham")%></td>
					<td align="center"><%=RS("Lamda")%></td>
					<td><a href="Sua_NhanToMoiTruong.asp?MaNhanToMoiTruong=<%=RS("MaNhanToMoiTruong")%>">Sửa</a></td>
					<td><a href="javascript:del(<%=RS("MaNhanToMoiTruong")%>)">Xóa</a></td>
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
			%>     </p>     <form action="DanhSach_NhanToMoiTruong.asp" method="get" name="viewFrm" id="viewFrm">
				
			  <p>
				  <input type="hidden" name="page" value="<%=rsCurrentPage%>"/>
				  
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
<p align="right"><input type="button" name="nhap" value="Thêm mới" onclick="move()" /></p>
<form action="Xoa_NhanToMoiTruong.asp" method="get" name="delFrm" id="delFrm">
     <input type="hidden" name="ma" />
</form><%end if%>
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
