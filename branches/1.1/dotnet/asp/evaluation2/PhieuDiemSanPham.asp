<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/hinhmaunguoidung.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Phiếu cho điểm sản phẩm</title>
<script language="javascript">
function messageWindow(title)
{

if(document.phieudiem.PhieuTrong.checked)
  {
  	url="InAllPhieuDiemSanPham.asp";  
	var height=screen.height;
  	var width=screen.width;
	var newWindow = window.open(url,"msgWindow","status,menubar,scrollbars,height=600,width=800");
  	newWindow.focus( );
  }
  else
  {
  url="InPhieuDiemSanPham.asp?MaThanhVien="+phieudiem.MaThanhVien.value;
  var height=screen.height;
  var width=screen.width;
	//content="status,menubar,scrollbars,height=" + height + ",width=" + width +")";
	//var newWindow = window.open(url,"msgWindow",content);
  var newWindow = window.open(url,"msgWindow", "status,menubar,scrollbars,height=600,width=800");
  newWindow.focus( );
  }
}
</script>
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
<style type="text/css">
<!--
.style1 {
	font-size: medium;
	font-weight: bold;
}
-->
</style>
<script language="JavaScript">

<!--

function tinh()
{
	var d=parseInt(document.phieudiem.dem.value),tong=0,i=1;
	while (i<d )
	{
		document.getElementById("miai"+i).value=parseFloat(document.getElementById("mi"+i).value)*parseFloat(document.getElementById("ai"+i).value);
		tong=parseFloat(tong)+parseFloat(document.getElementById("miai"+i).value);
		i=i+1;
		//alert("");
	}
	document.phieudiem.ma.value=round(tong,2);
}

function kiemtra(id)

{
 var d=parseInt(document.phieudiem.dem.value),tongmi=0,i=1;
 while (i<d )
	{
		tongmi=parseFloat(tongmi)+parseFloat(document.getElementById("mi"+i).value);
		i=i+1;
	}
 
	if (tongmi>1)
		{
			alert("Tổng mi không được lớn hơn 1");
	    }
  
}
   


//-->

</script> 
<!--#include file = connection.inc-->
<%
		MaSanPham=Session("ma_sp")
  	 	MaHoiDong=Session("ma_hd")
	  	MaDoanhNghiep=Session("ma_dn")
	strSQL = "Select ThanhVien.MaThanhVien,TenThanhVien From ThanhVien inner join HoiDongChamDiem  on ThanhVien.MaThanhVien=HoiDongChamDiem.MathanhVien where ThanhVien.Status=1 and MahoiDong=" & MaHoiDong & "and HoiDongChamDiem.Status=1"
	RS.open strSQL, conn
	
	strSP = "select TenSanPham from SanPham where MaSanPham = " & Session("ma_sp")
	dim RSSP
	Set RSSP = Server.CreateObject("ADODB.Recordset")
	
	RSSP.open strSP, conn
	
	strDN = "select TenDoanhNghiep from DoanhNghiep where MaDoanhNghiep = " &Session("ma_dn")
	dim RSDN
	Set RSDN = Server.CreateObject("ADODB.Recordset")
	RSDN.open strDN, conn
	
	'if(RSSP.EOF or RSDN.EOF or RS.EOF) then
	'	Response.Write("Bạn chưa nhập đủ các thông số,Xin vui lòng quay lại")
	'else
%>
<h3 align="center">PHIẾU CHO ĐIỂM SẢN PHẨM</h3>
<form action="Ghi_PhieuDiemSanPham.asp" method="post" name="phieudiem" id="phieudiem">
<table width="100%" border="0">
  <tr>
    <td width="23%">Tên sản phẩm:</td>
    <td width="77%"><strong><%=RSSP("TenSanPham")%>
      <input name="masp" type="hidden" id="masp" value="<%=session("ma_sp")%>" />
    </strong></td>
  </tr>
  
  <tr>
    <td>Cơ sở sản xuất:</td>
    <td><strong><%=RSDN("TenDoanhNghiep")%>
        <input name="madn" type="hidden" id="madn" value="<%=session("ma_dn")%>" />
</strong></td>
  </tr>
  <tr>
    <td>Họ tên người chấm điểm:</td>
    <td><select name="MaThanhVien" onchange="window.location='phieudiemsanpham.asp?ma_tv='+this.value">
      <option value="0" >--Chọn một thành viên--</option>
	  <%
	    
	while not (RS.EOF)
     %>
	  <%if (cint(Request.QueryString("ma_tv"))=RS("MaThanhVien")) then  %>
      <option value="<%=RS("MaThanhVien")%>" selected="selected"><%=RS("TenThanhVien")%></option>
	  <%else %>
	  <option value="<%=RS("MaThanhVien")%>"><%=RS("TenThanhVien")%></option>
	  <%end if%>
      <%
	RS.MoveNext
	wend
%>
<%rs.close()%>
    </select>
      <strong>
      <input name="mahd" type="hidden" id="mahd" value="<%=session("ma_hd")%>" />
      </strong></td>
  </tr>
</table>
<%if (cint(Request.QueryString("ma_tv"))>1)  then %>
<p align="center">NỘI DUNG CHO ĐIỂM </p>
  <table width="99%" border="1">
    <tr>
      <th width="7%" scope="col">Thứ tự </th>
      <th width="67%" scope="col">Tên nội dung cho điểm </th>
      <th width="8%" scope="col">Hệ số trọng lượng mi </th>
      <th width="9%" scope="col">Điểm gốc ai </th>
      <th width="9%" scope="col">Tổng số mi x ai </th>
    </tr>
    <%
		rs.open "select * from hesotrongluong where mahoidong="&session("ma_hd"),conn
		dem=1
	%>
	<% while not rs.eof %>
	<tr>
      <td><div align="center"><%=dem%>
        <input name="mahesotrongluong<%=dem%>" type="hidden" id="mahesotrongluong<%=dem%>" value="<%=rs("mahesotrongluong_sanpham")%>" />
      </div></td>
      <td title="<%=rs("GhiChu")%>"><%=rs("TenHeSoTrongLuong")%></td>
      <td><div align="left">
        <input name="mi<%=dem%>" type="text" id="mi<%=dem%>" readonly="1" value="<% =rs("Diem") %>" size="3"  />
      </div></td>
      <td>
	  <%
	    dim rsdiemgoc 
	  	set rsdiemgoc = server.CreateObject("adodb.recordset")
		rsdiemgoc.open "select * from diemsanpham  where mahesotrongluong_sanpham="& rs("mahesotrongluong_sanpham") & " and MaThanhVien=" & Request.QueryString("ma_tv") & " and MaSanPham=" & MaSanPham,conn
	  %>
	  <% 
	  	if (not rsdiemgoc.eof) then 
		diem = rsdiemgoc("diemgoc")
		else
		diem=0
		end if
	  %>
	  <div align="left">
        <input name="ai<%=dem%>" type="text" id="ai<%=dem%>"  value="<%=diem%>"onblur="if ((this.value>=10)||(this.value<1) || isNaN(this.value)){alert('ai phải là kiểu số và không được nhỏ hơn 1 hoặc lớn hơn 10'); this.value='1'; this.focus();this.select();};" size="3" />
      </div>
	  <% rsdiemgoc.close() %>
	  </td>
      <td>
	    <div align="left">
	      <input name="miai<%=dem%>" type="text" id="miai<%=dem%>" value="0" size="3" readonly="1" />	  
	      </div></td>
    </tr>
	<% dem=dem+1 %>
	<% rs.movenext()%>
	<% wend %>
	<% rs.close()%>
    <tr>
      <td colspan="4"><div align="right"><strong>Điểm tổng hợp a = 
        Σaimi</strong>        
            <input name="dem" type="hidden" id="dem" size="3" value="<%=dem%>"  />
      </div></td>
      <td><input name="ma" type="text" id="ma" value="0" size="3" readonly="1" /></td>
    </tr>
    <tr>
      <td colspan="2">
	          
	  <div align="right">
        <input type="checkbox" name="PhieuTrong"  /><label>In tất cả phiếu điểm đã chấm</label><input name="InPhieuDiem" type="button" id="InPhieuDiem" value="In phiếu điểm" onclick="messageWindow('Phiếu cho điểm sản phẩm')" />
        <input type="submit" name="Submit" value="Ghi lại"  onclick="" onmouseover="kiemtra();tinh();"/>
      </div>
	  </td>
      <td colspan="3"><input type="reset" name="Submit2" value="Hủy bỏ" />
        &nbsp;</td>
    </tr>
  </table>
  <strong><p>
Ghi chú: điểm hệ số trọng lượng mi không được vượt quá 1, tổng các điểm thành phần Σmi = 1<br />
Điểm gốc ai nằm trong khoảng 1 đến 10
</p>
 <%end if%>
</form><%'end if%>

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
