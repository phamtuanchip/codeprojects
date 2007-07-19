<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/hinhmau1.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Bach Khoa Mechatronics</title>
<!-- InstanceEndEditable -->
<!-- InstanceBeginEditable name="head" -->
<!-- InstanceEndEditable -->
</head>
<script language="JavaScript">
	function ValidateForm()
	{
		if (login.user.value=="")
		{
			alert("Bạn chưa nhập tên truy cập.");
			login.user.focus();
			return false;
		}
		else if (login.password.value=="")
		{
			alert("Bạn chưa nhập mật khẩu truy cập.");
			login.password.focus();
			return false;
		}
		else
		{
			var text_range = login.user.createTextRange();
			var str = new String("'");
			if(text_range.findText(str) == true)
			{
				alert("Username chứa ký tự không cho phép.");
				return false;
			}
			else
			{
				text_range = login.password.createTextRange();
				if(text_range.findText(str) == true)
				{
					alert("Password chứa ký tự không cho phép.");
					return false;
				}
			}
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
            <td><a 
            href="trangchu.asp"><img 
            src="images/home.jpg" width="84" height="37" border="0" /></a><img 
            src="images/huongdan.jpg" width="100" height="37" border="0" /><img 
            src="images/sodotrang.jpg" width="117" height="37" border="0" /><img 
            src="images/gioithieu.jpg" width="104" height="37" border="0" /><a href="Dangky_taikhoan.asp"><img 
            src="images/dangnhap.jpg" width="101" height="37" border="0" /></a><a href="Tim_kiem_thongtin.asp"><img 
            src="images/timkiembn.jpg" width="131" height="37" border="0" /></a><img 
            src="images/gopy.jpg" width="143" height="37" border="0" /></td>
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
		  <%if (session("trangthai")<>true) then %>
            <form action="kiemtra.asp" method="post" name="login" id="login" onsubmit="return ValidateForm();">
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
          width="200" height="20"><p>B&#7841;n c&oacute; th&#7875; &#273;&#259;ng k&yacute; v&#7899;i ch&uacute;ng t&ocirc;i b&#7857;ng c&aacute;ch <a href="Dangky_taikhoan.asp">b&#7845;m v&agrave;o &#273;&acirc;y</a></p>
              </td>
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
            <td><img src="images/pl01.jpg" /></td>
          </tr>
          <tr>
            <% '  session("quyen")=1
			%>
			
			<% if ((session("quyen")=1)) then 
				session("tentruycap")="ADMIN"
				'kiem tra quyen cua nguoi dung se dua ra menu tuong ung
			%>
			<%if (session("ma_doanhnghiep")=0) then %>
			<td>			<a href="quantri_taikhoan.asp"><img 
            src="images/quanlytaikhoan.jpg" width="200" height="20" border="0" /></a><br />
                  <a 
            href="XemDanhSach.asp?loai=DoanhNghiep"><img 
            src="images/doanhnghiep.jpg" width="200" height="20" border="0" /></a><br />
              <a 
            href="XemDanhSach.asp?loai=SanPham&amp;kieu=all"><img 
            src="images/sanpham.jpg" width="200" height="20" border="0" /></a><br />
              <a 
            href="DrawApplet.asp"><img 
            src="images/danhgia.jpg" width="200" height="20" border="0" /></a><br />
              <a 
            href="quantri.asp"><img 
            src="images/thongke.jpg" width="200" height="20" border="0" /></a><br />
              <a 
            href="danhsachdiem.asp"><img 
            src="images/xemdiem.jpg" width="200" height="20" border="0" /></a><br />
              <a 
            href="DanhSachHeSoTrongLuong.asp"><img 
            src="images/xemhstrongluong.jpg" width="200" height="20" border="0" /></a><br />
              <a 
            href="tao_moi.asp"><img 
            src="images/taomoi.jpg" width="200" height="20" border="0" /></a><br />
              <a 
            href="xemdanhsach.asp"><img 
            src="images/xemds.jpg" width="200" height="20" border="0" /></a><br />
              <a 
            href="#"><img 
            src="images/m10.jpg" border="0" /></a><br />
              <a 
            href="danhsachtim.asp"><img 
            src="images/timkiem.jpg" width="200" height="20" border="0" /></a><br />
              <a 
            href="dangxuat.asp"><img 
            src="images/dangxuat.jpg" width="200" height="20" border="0" /></a></td>
		    <% else %>
			 <td>			<img 
            src="images/admindn.jpg" width="200" height="20" border="0" /><br />
                  <a 
            href="Tao_Moi_chodoanhnghiep.asp"><img 
            src="images/taomoi.jpg" width="200" height="20" border="0" /></a><br />                
                  <img 
            src="images/suathongtin.jpg" width="200" height="20" border="0" /><br />
              <a 
            href="tim.asp"><img 
            src="images/timkiem.jpg" width="200" height="20" border="0" /></a><br />
              <a 
            href="xemdanhsach.asp"><img 
            src="images/xemds.jpg" width="200" height="20" border="0" /></a><br />              <a href="DrawApplet.asp"><img 
            src="images/danhgia.jpg" width="200" height="20" border="0" /></a><br />
                <img 
            src="images/m04.jpg" width="200" height="23" border="0" /><br />
                <img 
            src="images/m04.jpg" width="200" height="23" border="0" /><br />
                <img 
            src="images/m04.jpg" width="200" height="23" border="0" /><br />
                <img 
            src="images/m04.jpg" width="200" height="23" border="0" /><br />
                <img 
            src="images/m04.jpg" width="200" height="23" border="0" /><br />
              <a 
            href="dangxuat.asp"><img 
            src="images/dangxuat.jpg" width="200" height="20" border="0" /></a></td>
			<%end if ' Doanh nghiep %>
			
          <%else if session("quyen")=2 then
			Session("tentruycap")="USER"
	  
		  %>
		  	<td>			<img 
            src="images/userdn.jpg" width="200" height="20" border="0" /><br />
                  <a 
            href="nguoidungdangnhap.asp"><img 
            src="images/nhapdiem.jpg" width="200" height="20" border="0" /></a><br />                
                  <img 
            src="images/m04.jpg" width="200" height="23" border="0" /><br />
              <a 
            href="tim.asp"><img 
            src="images/timkiem.jpg" width="200" height="20" border="0" /></a><br />
              <a 
            href="xemdanhsach.asp"><img 
            src="images/xemds.jpg" width="200" height="20" border="0" /></a><br />              <a href="DrawApplet.asp"><img 
            src="images/danhgia.jpg" width="200" height="20" border="0" /></a><br />
                <img 
            src="images/m04.jpg" width="200" height="23" border="0" /><br />
                <img 
            src="images/m04.jpg" width="200" height="23" border="0" /><br />
                <img 
            src="images/m04.jpg" width="200" height="23" border="0" /><br />
                <img 
            src="images/m04.jpg" width="200" height="23" border="0" /><br />
                <img 
            src="images/m04.jpg" width="200" height="23" border="0" /><br />
              <a 
            href="dangxuat.asp"><img 
            src="images/dangxuat.jpg" width="200" height="20" border="0" /></a></td>
		  
		  <%else if session("quyen")=3 then
			Session("tentruycap")="GUEST"
		  %>
		  	<td>			<img 
            src="images/guest.jpg" width="200" height="20" border="0" /><br />                <a href="DrawApplet.asp"><img 
            src="images/danhgia.jpg" width="200" height="20" border="0" /></a><br />
              <a 
            href="#"><img 
            src="images/m03.jpg" border="0" /></a><br />
              <a 
            href="#"><img 
            src="images/m04.jpg" border="0" /></a><br />
              <a 
            href="#"><img 
            src="images/m05.jpg" border="0" /></a><br />
              <a 
            href="#"><img 
            src="images/m06.jpg" border="0" /></a><br />
              <a 
            href="#"><img 
            src="images/m07.jpg" border="0" /></a><br />
              <a 
            href="#"><img 
            src="images/m08.jpg" border="0" /></a><br />
              <a 
            href="#"><img 
            src="images/m09.jpg" border="0" /></a><br />
              <a 
            href="#"><img 
            src="images/m10.jpg" border="0" /></a><br />
              <a 
            href="#"><img 
            src="images/m11.jpg" border="0" /></a><br />
              <a 
            href="dangxuat.asp"><img 
            src="images/dangxuat.jpg" width="200" height="20" border="0" /></a></td>
			<%'else Response.Redirect("trangchu.asp")%>
			<%end if 'QUYEN 3%>
			<%end if 'QUYEN 2%>
			<%end if 'QUYEN 1%>
			
			<%
			 %>
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
          colspan="2" height="100%"><!-- InstanceBeginEditable name="noidung" -->
              <%if session("trangthai")=true then %>
              <form id="form1" name="form1" method="post" action="">
              <table width="100%" border="1">
                <tr>
                  <td width="138">Tên doanh nghiệp </td>
                  <td width="275"><input type="text" name="textfield" /></td>
                  <td width="275"><input type="submit" name="Submit" value="Tìm" /></td>
                </tr>
                <tr>
                  <td>Tên sản phẩm </td>
                  <td><input type="text" name="textfield2" /></td>
                  <td><input type="submit" name="Submit2" value="Tìm" /></td>
                </tr>
              </table>
			  </form>
			  <%else%>
			  Bạn phải đăng nhập mới sử dụng được chức năng tìm kiếm
			  <%end if%>
            <!-- InstanceEndEditable --></td>
          </tr>
          <tr>
            <td colspan="2"><img src="images/bot041.jpg" /></td>
          </tr>
          <tr>
            <td colspan="2"><img 
            src="images/f01.jpg" border="0" /><img 
            src="images/f02.jpg" border="0" /><img 
            src="images/f03.jpg" border="0" /><img 
            src="images/f04.jpg" border="0" /><a 
            href="file:///C:/Documents%20and%20Settings/Administrator/My%20Documents/2117/without_FL/html/"><img 
            src="images/f05.jpg" border="0" /></a><img 
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
</body>
<!-- InstanceEnd --></html>
