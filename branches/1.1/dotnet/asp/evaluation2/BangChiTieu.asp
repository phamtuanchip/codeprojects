<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/hinhmaunguoidung.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Tạo mới chỉ tiêu cho doanh nghiệp</title>
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
	function check()
	{
		if(form1.CboHoiDong.value=="0")
		{
			alert("Bạn phải chọn tên hội đồng chấm điểm");
			form1.CboHoiDong.focus();
			return false;
		}
		if(form1.txtTenChiTieu.value=="")
		{
			alert("Bạn phải nhập tên chỉ tiêu cho doanh nghiệp");
			form1.txtTenChiTieu.focus();
			return false;
		}
		
		
	}
</script>
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
<!--#include file="connection.inc" -->
<%
		TenTruyCap=session("ten")
		
		sql="Select DoanhNghiep.MaDoanhNghiep,TenDoanhNghiep from DoanhNghiep inner join users on DoanhNghiep.MaDoanhNghiep=users.MaDoanhNghiep where users.TenTruyCap='" & TenTruyCap & "'"
		Dim RSDoanhNghiep
		Set RSDoanhNghiep= Server.CreateObject("ADODB.Recordset")
		RSDoanhNghiep.open sql ,conn
		'Response.Write(RSDoanhNghiep(0))
		'TenDoanhNghiep=RSDoanhNghiep(1)
		'MaDoanhNghiep=RSDoanhNghiep(0)
		
 		Rs.open "Select MaHoiDong,TenHoiDong From HoiDong where madoanhnghiep="&RSDoanhNghiep(0),conn 
		Dim RSChiTieu
			Set RSChiTieu= Server.CreateObject("ADODB.Recordset")
 		if len(Request.QueryString("MaHoiDong"))>0 then
			
			sql1="SELECT   dbo.BangChiTieu.MaChiTieu, dbo.BangChiTieu.TenChiTieu, dbo.BangChiTieu.MaHoiDong, dbo.BangChiTieu.GhiChu FROM dbo.BangChiTieu WHERE (dbo.BangChiTieu.MaChiTieu IN (SELECT MaChiTieu FROM ChiTietChiTieu where MaDoanhNghiep="&RSDoanhNghiep(0) & "))" & " and MaHoiDong=" & Request.QueryString("MaHoiDong")
		else
			sql1="select * from BangChiTieu where MaChiTieu=1"
		end if
			'Response.Write(sql1)
			
			RSChiTieu.open sql1,conn,3 
 
'else
' Rs.open "Select MaHoiDong,TenHoiDong From HoiDong",conn 
'end if
'	Dim TenDoanhNghiep
'	Dim MaDoanhNghiep
'	Dim RSDoanhNghiep
'	Set RSDoanhNghiep= Server.CreateObject("ADODB.Recordset")
 '	if(len(Request.QueryString("MaHoiDong"))>1) then
		
		
	'else
'		TenDoanhNghiep=""
'		MaDoanhNghiep=""
'	end if
		
		'Response.Write(sql)

	
 
 %>
<br />
   <fieldset >
   <% if session("ma_dn")> 0 then ' nếu đã chọn doanh nghiệp sẽ hiện ra%>
   <%
					dim rsdn
					set rsdn=server.CreateObject("adodb.recordset")
				 %>
   <%rsdn.open "select * from doanhnghiep where madoanhnghiep="& Session("ma_dn"),conn%>
   <%if not rsdn.eof then %>
   <legend align="center"><%=rsdn("tendoanhnghiep")%></legend>
   <table width="100%" border="0" cellpadding="0" cellspacing="0">
     <tr>
       <td width="45%">Năm thành lập </td>
       <td width="55%"><%=rsdn("namthanhlap")%></td>
     </tr>
     <tr>
       <td>Lĩnh vực ngành nghề kinh doanh</td>
       <td><%=rsdn("chucnang")%></td>
     </tr>
     <tr>
       <td>Địa chỉ</td>
       <td><%=rsdn("diachi")%></td>
     </tr>
     <tr>
       <td>Điện thoại</td>
       <td><%=rsdn("sodienthoai_fax")%></td>
     </tr>
     <tr>
       <td height="35">Địa chỉ thư điện tử <%=rsdn("email")%></td>
       <td>Trang chủ  :<%=rsdn("website")%></td>
     </tr>
     <tr>
       <td colspan="2"><div align="justify"><%=rsdn("info")%>&nbsp;</div></td>
     </tr>
   </table>
   <%rsdn.close()%>
   <%end if ' ket thuc phan thong tin doanh nghiep %>
   <%end if ' ket thuc phan ma doanh nghiep %>
   </fieldset>
   <br />
   <table width="100%" border="1">
                    <tr height="20">
                      <td colspan="2"><b>  Các chỉ tiêu kỹ thuật cho doanh nghiệp:<font face="Verdana, Arial, Helvetica, sans-serif" size="2"> <%'=RSDoanhNghiep(1)%></font></b></td>
                      </tr>
                    
                    <tr height="20">
                      <td><div align="center"><strong>Tên chỉ tiêu </strong></div></td>
                      <td><div align="center"><strong>Ghi chú </strong></div></td>
                    </tr>
					<% while(not RSChiTieu.EOF) %>
                    <tr>
                      <td>&nbsp;<%=RSChiTieu(1) %></td>
                      <td>&nbsp;<textarea name="" cols="20" rows="4"><%=RSChiTieu(3) %></textarea></td>
                    </tr>
					<% RSChiTieu.MoveNext()
						Wend
					%>
                  </table>
				 <br>
<form id="form1" name="form1" method="get" action="CapNhatBangChiTieu.asp" onsubmit="return check();" >
  <table width="100%" border="1">
    
    <tr height="0">
      <td height="0"> </td>
        <td><input name="txtDoanhNghiep" type="hidden" id="txtDoanhNghiep" value="<%=RSDoanhNghiep(1)%>" size="55"/></td>
      </tr>
    
    <tr>
      <td>H&#7897;i &#273;&#7891;ng ch&#7845;m &#273;i&#7875;m </td>
        <td><input name="txtMaDoanhNghiep" type="hidden" id="txtMaDoanhNghiep" value="<%=RSDoanhNghiep(0)%>" />
          <select name="CboHoiDong" id="CboHoiDong" onchange="window.location='BangChiTieu.asp?MaHoiDong='+this.value;">
            <option value="0">Chọn hội đồng chấm điểm</option>
            <% while (not Rs.EOF) %>
            <%  if(Cint(Request.QueryString("MaHoiDong")))=Rs(0) then %>
            <option value="<%=Rs(0)%>" selected="selected"><%=Rs(1)%></option>
            <% else %>
            <option value="<%=Rs(0)%>"><%=Rs(1)%></option>
            <% end if %>
            <% 
			Rs.MoveNext()
			Wend
		 %>
          </select></td>
      </tr>
    <tr>
      <td width="120">T&ecirc;n ch&#7881; ti&ecirc;u </td>
        <td width="418"><input name="txtTenChiTieu" type="text" id="txtTenChiTieu" size="55"  /></td>
      </tr>
    <tr>
      <td>Ghi ch&uacute; </td>
        <td><textarea name="txtGhiChu" cols="43" rows="5" id="txtGhiChu"></textarea></td>
      </tr>
    <tr>
      <td>&nbsp;</td>
        <td><input name="cmdOK" type="submit" id="cmdOK" value="Đồng ý" onclick="return check();"/>
          <input name="cmdCancel" type="reset" id="cmdCancel" value="Hủy bỏ" /></td>
      </tr>
    </table>
</form>				

<br />
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
