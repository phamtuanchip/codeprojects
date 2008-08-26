<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head></head><!-- InstanceBegin template="file://///Server/private/Programers/tuanp/Evaluation/Templates/hinhmaunguoidung.dwt.asp" codeOutsideHTMLIsLocked="false" -->
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
    width="50%" background="file://server/private/Programers/tuanp/Evaluation/images/bg1222.jpg" height="100%" 
    rowspan="10"></td>
      <td width="1" bgcolor="#000000" rowspan="10"></td>
      <td colspan="2"><table cellspacing="0" cellpadding="0" border="0">
        <tbody>
          <tr>
            <td><a href="file://server/private/Programers/tuanp/Evaluation/nguoidungdangnhap.asp"><img src="file://server/private/Programers/tuanp/Evaluation/images/banner.jpg" width="780" height="141" border="0" /></a></td>
          </tr>
          <tr>
            <td><a 
            href="file://server/private/Programers/tuanp/Evaluation/trangchu.asp"><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/home.jpg" width="84" height="37" border="0" /></a><a 
            href="#"><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/huongdan.jpg" width="100" height="37" border="0" /></a><a 
            href="#"><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/sodotrang.jpg" width="117" height="37" border="0" /></a><a 
            href="#"><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/gioithieu.jpg" width="104" height="37" border="0" /></a><a 
            href="#"><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/dangnhap.jpg" width="101" height="37" border="0" /></a><a 
            href="file://server/private/Programers/tuanp/Evaluation/Tim_kiem_thongtin.asp"><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/timkiembn.jpg" width="131" height="37" border="0" /></a><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/gopy.jpg" width="143" height="37" border="0" /></td>
          </tr>
        </tbody>
      </table></td>
      <td width="1" bgcolor="#000000" rowspan="10"></td>
      <td style="BACKGROUND-POSITION: left top; BACKGROUND-REPEAT: repeat-y" 
    width="50%" background="file://server/private/Programers/tuanp/Evaluation/images/bg1223.jpg" height="100%" 
    rowspan="10"></td>
    </tr>
    <tr>
      <td valign="top" bgcolor="#32aca8" height="100%"><table height="100%" cellspacing="0" cellpadding="0" border="0">
        <tbody>
          <tr>
            <td><img src="file://server/private/Programers/tuanp/Evaluation/images/cap01.jpg" /></td>
          </tr>
          <tr>
              <td width="200" valign="top" style="PADDING-LEFT: 28px; PADDING-TOP: 14px"><%'Response.Write Session("tentruycap")%></td>
          </tr>
          
          <tr>
            <td><img src="file://server/private/Programers/tuanp/Evaluation/images/pl01.jpg" /></td>
          </tr>
          <tr>
            <% '  session("quyen")=1
			%>
			<%if (session("ma_doanhnghiep")=0) then %>
			<% if ((session("quyen")=1)) then 
				session("tentruycap")="ADMIN"
				'kiem tra quyen cua nguoi dung se dua ra menu tuong ung
			%>
			<td>			<a href="file://server/private/Programers/tuanp/Evaluation/quantri_taikhoan.asp"><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/quanlytaikhoan.jpg" width="200" height="20" border="0" /></a><br />
                  <a 
            href="file://server/private/Programers/tuanp/Evaluation/XemDanhSach.asp?loai=DoanhNghiep"><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/doanhnghiep.jpg" width="200" height="20" border="0" /></a><br />
              <a 
            href="file://server/private/Programers/tuanp/Evaluation/XemDanhSach.asp?loai=SanPham&amp;kieu=all"><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/sanpham.jpg" width="200" height="20" border="0" /></a><br />
              <a 
            href="file://server/private/Programers/tuanp/Evaluation/DrawApplet.asp"><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/danhgia.jpg" width="200" height="20" border="0" /></a><br />
              <a 
            href="file://server/private/Programers/tuanp/Evaluation/quantri.asp"><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/thongke.jpg" width="200" height="20" border="0" /></a><br />
              <a 
            href="file://server/private/Programers/tuanp/Evaluation/danhsachdiem.asp"><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/xemdiem.jpg" width="200" height="20" border="0" /></a><br />
              <a 
            href="file://server/private/Programers/tuanp/Evaluation/DanhSachHeSoTrongLuong.asp"><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/xemhstrongluong.jpg" width="200" height="20" border="0" /></a><br />
              <a 
            href="file://server/private/Programers/tuanp/Evaluation/tao_moi.asp"><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/taomoi.jpg" width="200" height="20" border="0" /></a><br />
              <a 
            href="file://server/private/Programers/tuanp/Evaluation/xemdanhsach.asp"><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/xemds.jpg" width="200" height="20" border="0" /></a><br />
              <a 
            href="#"><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/m10.jpg" border="0" /></a><br />
              <a 
            href="file://server/private/Programers/tuanp/Evaluation/danhsachtim.asp"><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/timkiem.jpg" width="200" height="20" border="0" /></a><br />
              <a 
            href="file://server/private/Programers/tuanp/Evaluation/dangxuat.asp"><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/dangxuat.jpg" width="200" height="20" border="0" /></a></td>
          <%else if session("quyen")=2 then
			Session("tentruycap")="USER"
	  
		  %>
		  	<td>			<img 
            src="file://server/private/Programers/tuanp/Evaluation/images/m04.jpg" width="200" height="23" border="0" /><br />
                  <a 
            href="file://server/private/Programers/tuanp/Evaluation/nguoidungdangnhap.asp"><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/nhapdiem.jpg" width="200" height="20" border="0" /></a><br />                
                  <img 
            src="file://server/private/Programers/tuanp/Evaluation/images/suathongtin.jpg" width="200" height="20" border="0" /><br />
              <a 
            href="file://server/private/Programers/tuanp/Evaluation/tim.asp"><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/timkiem.jpg" width="200" height="20" border="0" /></a><br />
              <a 
            href="file://server/private/Programers/tuanp/Evaluation/xemdanhsach.asp"><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/xemds.jpg" width="200" height="20" border="0" /></a><br />              <a href="file://server/private/Programers/tuanp/Evaluation/DrawApplet.asp"><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/danhgia.jpg" width="200" height="20" border="0" /></a><br />
                <img 
            src="file://server/private/Programers/tuanp/Evaluation/images/m04.jpg" width="200" height="23" border="0" /><br />
                <img 
            src="file://server/private/Programers/tuanp/Evaluation/images/m04.jpg" width="200" height="23" border="0" /><br />
                <img 
            src="file://server/private/Programers/tuanp/Evaluation/images/m04.jpg" width="200" height="23" border="0" /><br />
                <img 
            src="file://server/private/Programers/tuanp/Evaluation/images/m04.jpg" width="200" height="23" border="0" /><br />
                <img 
            src="file://server/private/Programers/tuanp/Evaluation/images/m04.jpg" width="200" height="23" border="0" /><br />
              <a 
            href="file://server/private/Programers/tuanp/Evaluation/dangxuat.asp"><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/dangxuat.jpg" width="200" height="20" border="0" /></a></td>
		  
		  <%else if session("quyen")=3 then
			Session("tentruycap")="GUEST"
		  %>
		  	<td>
			<a 
            href="file://server/private/Programers/tuanp/Evaluation/DrawApplet.asp"><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/danhgia.jpg" width="200" height="20" border="0" /></a><br />                <img 
            src="file://server/private/Programers/tuanp/Evaluation/images/m02.jpg" border="0" /><br />
              <a 
            href="#"><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/m03.jpg" border="0" /></a><br />
              <a 
            href="#"><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/m04.jpg" border="0" /></a><br />
              <a 
            href="#"><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/m05.jpg" border="0" /></a><br />
              <a 
            href="#"><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/m06.jpg" border="0" /></a><br />
              <a 
            href="#"><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/m07.jpg" border="0" /></a><br />
              <a 
            href="#"><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/m08.jpg" border="0" /></a><br />
              <a 
            href="#"><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/m09.jpg" border="0" /></a><br />
              <a 
            href="#"><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/m10.jpg" border="0" /></a><br />
              <a 
            href="#"><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/m11.jpg" border="0" /></a><br />
              <a 
            href="file://server/private/Programers/tuanp/Evaluation/dangxuat.asp"><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/dangxuat.jpg" width="200" height="20" border="0" /></a></td>
			<%else Response.Redirect("trangchu.asp")%>
			<%end if 'QUYEN 3%>
			<%end if 'QUYEN 2%>
			<%end if 'QUYEN 1%>
			<% else %>
			 <td>			<a href="file://server/private/Programers/tuanp/Evaluation/Tao_Moi_chodoanhnghiep.asp"><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/taomoi.jpg" width="200" height="20" border="0" /></a><br />
                  <a 
            href="file://server/private/Programers/tuanp/Evaluation/nguoidungdangnhap.asp"><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/nhapdiem.jpg" width="200" height="20" border="0" /></a><br />                
                  <img 
            src="file://server/private/Programers/tuanp/Evaluation/images/suathongtin.jpg" width="200" height="20" border="0" /><br />
              <a 
            href="file://server/private/Programers/tuanp/Evaluation/tim.asp"><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/timkiem.jpg" width="200" height="20" border="0" /></a><br />
              <a 
            href="file://server/private/Programers/tuanp/Evaluation/xemdanhsach.asp"><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/xemds.jpg" width="200" height="20" border="0" /></a><br />              <a href="file://server/private/Programers/tuanp/Evaluation/DrawApplet.asp"><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/danhgia.jpg" width="200" height="20" border="0" /></a><br />
                <img 
            src="file://server/private/Programers/tuanp/Evaluation/images/m04.jpg" width="200" height="23" border="0" /><br />
                <img 
            src="file://server/private/Programers/tuanp/Evaluation/images/m04.jpg" width="200" height="23" border="0" /><br />
                <img 
            src="file://server/private/Programers/tuanp/Evaluation/images/m04.jpg" width="200" height="23" border="0" /><br />
                <img 
            src="file://server/private/Programers/tuanp/Evaluation/images/m04.jpg" width="200" height="23" border="0" /><br />
                <img 
            src="file://server/private/Programers/tuanp/Evaluation/images/m04.jpg" width="200" height="23" border="0" /><br />
              <a 
            href="file://server/private/Programers/tuanp/Evaluation/dangxuat.asp"><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/dangxuat.jpg" width="200" height="20" border="0" /></a></td>
			<%end if ' Doanh nghiep %>
			<%
			 %>
		  </tr>
          <tr>
            <td 
          style="PADDING-RIGHT: 10px; PADDING-LEFT: 15px; PADDING-BOTTOM: 10px; COLOR: #ffffff; PADDING-TOP: 10px" 
          width="200" bgcolor="#236393" height="100%">&nbsp;</td>
          </tr>
          <tr>
            <td><img src="file://server/private/Programers/tuanp/Evaluation/images/pl02.jpg" /></td>
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
      <td valign="top" background="file://server/private/Programers/tuanp/Evaluation/images/bg04.jpg" height="100%"><table height="100%" cellspacing="0" cellpadding="0" border="0">
        <tbody>
          <tr>
            <td><img src="file://server/private/Programers/tuanp/Evaluation/images/cap02.jpg" /></td>
            <td width="278"><img src="file://server/private/Programers/tuanp/Evaluation/images/cap03.jpg" /></td>
          </tr>
          <tr>
            <td style="PADDING-LEFT: 10px; PADDING-TOP: 15px" valign="top" width="580" 
          colspan="2" height="100%"><table width="554" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="554">
				  <!-- InstanceBeginEditable name="noidungcuanguoidung " -->
                  <!--#include file="connection.inc" -->
                  <%
	TenChiTieu=Request.QueryString("txtTenChiTieu")
	MaHoiDong=Request.QueryString("CboHoiDong")
	GhiChu=Request.QueryString("txtGhiChu")
	MaDoanhNghiep=Request.QueryString("txtMaDoanhNghiep")
'	Response.Write(TenChiTieu)
'	Response.Write("<br>")
'	Response.Write(MaHoiDong)
'	Response.Write("<br>")
'	Response.Write(GhiChu)
'	Response.Write("<br>")
'	Response.Write(MaDoanhNghiep)
	sql="Insert into BangChiTieu(TenChiTieu,MaHoiDong,GhiChu) Values(N'" + TenChiTieu + "'," + MaHoiDong + ",N'" + GhiChu + "')"
	conn.Execute sql
	
	'Rs.open "Select top 1 MaChiTieu From BangChiTieu order by MaChiTieu desc",conn
	'Response.Write(Rs(0))
'	MaChiTieu=Cint(Rs(0))
'	sqlInsert = "Insert into ChiTietChiTieu (MaChiTieu,MaDoanhNghiep) Values(" & MaChiTieu & "," & MaDoanhNghiep & ")"
'	conn.Execute sqlInsert
	'Response.Write(sqlInsert)
	'Response.Write("<br>")
	Response.Write("Bãn đã nhập thành công chỉ tiêu đánh giá")
	'Response.Write("<br>")
	'Response.Write(Rs(0))
	'conn.execute 
	
%>
<!-- InstanceEndEditable -->				  </td>
                </tr>
              </table></td>
          </tr>
          <tr>
            <td colspan="2"><img src="file://server/private/Programers/tuanp/Evaluation/images/bot041.jpg" /></td>
          </tr>
          <tr>
            <td colspan="2"><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/f01.jpg" border="0" /><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/f02.jpg" border="0" /><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/f03.jpg" border="0" /><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/f04.jpg" border="0" /><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/f05.jpg" border="0" /><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/f06.jpg" border="0" /><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/f07.jpg" border="0" /><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/f08.jpg" border="0" /><img 
            src="file://server/private/Programers/tuanp/Evaluation/images/f09.jpg" 
  border="0" /></td>
          </tr>
        </tbody>
      </table></td>
    </tr>
  </tbody>
</table>
</body>
<!-- InstanceEnd --></html>
