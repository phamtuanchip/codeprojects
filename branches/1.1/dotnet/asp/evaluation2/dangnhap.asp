<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="file:///E|/BKMECH/Evaluation/Templates/hinhmaunguoidung.dwt.asp" codeOutsideHTMLIsLocked="false" -->
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
            <td><img src="images/name.jpg" /></td>
          </tr>
          <tr>
            <td><a 
            href="#"><img 
            src="images/t01.jpg" border="0" /></a><a 
            href="#"><img 
            src="images/t02.jpg" border="0" /></a><a 
            href="#"><img 
            src="images/t03.jpg" border="0" /></a><a 
            href="#"><img 
            src="images/t04.jpg" border="0" /></a><a 
            href="#"><img 
            src="images/t05.jpg" border="0" /></a><a 
            href="#"><img 
            src="images/t06.jpg" border="0" /></a><img 
            src="images/t07.jpg" border="0" /></td>
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
              <td width="200" valign="top" style="PADDING-LEFT: 28px; PADDING-TOP: 14px"><%'Response.Write Session("tentruycap")%></td>
          </tr>
          
          <tr>
            <td><img src="images/pl01.jpg" /></td>
          </tr>
          <tr>
            <% 'session("quyen")=0
			%>
			<% if session("quyen")=1 then 
				session("tentruycap")="ADMIN"
				'kiem tra quyen cua nguoi dung se dua ra menu tuong ung
			%>
			<td>			<a href="quantri.asp"><img 
            src="images/quanlytaikhoan.jpg" width="200" height="20" border="0" /></a><br />
                  <a 
            href="#"><img 
            src="images/doanhnghiep.jpg" width="200" height="20" border="0" /></a><br />
              <a 
            href="#"><img 
            src="images/sanpham.jpg" width="200" height="20" border="0" /></a><br />
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
          <%else if session("quyen")=2 then
			Session("tentruycap")="USER"
	  
		  %>
		  	<td>
			<a 
            href="xemdanhsach.asp"><img 
            src="images/xemds.jpg" width="200" height="20" border="0" /></a><br />
                  <a 
            href="taomoi.asp"><img 
            src="images/taomoi.jpg" width="200" height="20" border="0" /></a><br />
              <a 
            href="sua.asp"><img 
            src="images/suathongtin.jpg" width="200" height="20" border="0" /></a><br />
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
		  
		  <%else if session("quyen")=3 then
			Session("tentruycap")="GUEST"
	  
		  %>
		  	<td>
			<a 
            href="#"><img 
            src="images/m01.jpg" border="0" /></a><br />
                  <a 
            href="#"><img 
            src="images/m02.jpg" border="0" /></a><br />
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
			<%else 'Response.Redirect("trangchu.asp")%>
			<%end if 'QUYEN 3%>
			<%end if 'QUYEN 2%>
			<%end if 'QUYEN 1%>
			<%
			 %>
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
				  <!-- InstanceBeginEditable name="noidungcuanguoidung " -->
				  <form id="dangnhap" name="dangnhap" method="post" action="kiemtra.asp">
				  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td><label for="label2">Tên của bạn</label></td>
                      <td><label for="textfield"></label>
                        <input type="text" name="textfield" id="textfield" /></td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td>Mật khẩu</td>
                      <td><label for="label"></label>
                        <input type="password" name="textfield2" id="label" /></td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td><input type="submit" name="Submit" value="Đăng nhập" /></td>
                      <td>&nbsp;</td>
                    </tr>
                  </table>
				  
                  </form>
				  <!-- InstanceEndEditable -->
				  </td>
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
</body>
<!-- InstanceEnd --></html>
