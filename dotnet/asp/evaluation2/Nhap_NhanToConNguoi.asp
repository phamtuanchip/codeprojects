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
<!-- #include file = connection.inc-->
<script language="javascript">
	function movesp(){
		window.location = "TaoMoiSanPham.asp"
	}
	function movehd(){
		window.location = "TaoMoiHoiDong.asp"
	}
	
	
</script>
<script language="JavaScript" type="text/javascript">
	function check(){
	document.all.formnhantoconnguoi.mantcn.focus();
}
function validateForm(f){

	if(!istxtNhanToConNguoiEmpty(f))
		 return false
	if(!istxtTenNhanToConNguoiEmpty(f))
		return false
	if(!isNumber(f))
		 return false
	if(!istxtAlphaHEmpty(f))
		return false
	if(!isCheckNumber(f))
		 return false
	if(!istxtChonSanPhamEmpty(f))
		 return false
	if(!istxtChonHoiDongEmpty(f))
		 return false
	
}
function istxtNhanToConNguoiEmpty(formnhantoconnguoi) {
      if ( 	formnhantoconnguoi.tenntcn.value == "" &&
			formnhantoconnguoi.alphah.value == ""){
          alert("Bạn phải nhập đầy đủ thông tin");
          return false;
       }
	   else {
          return true;
       }
    }
	
function istxtTenNhanToConNguoiEmpty(formnhantoconnguoi) {
      if ( formnhantoconnguoi.tenntcn.value == "" &&
			formnhantoconnguoi.tenntcn.value == null){
          alert("Bạn phải nhập tên nhân tố con người");
          return false;
       }
	   else {
          return true;
       }
    }
function isNumber(formnhantoconnguoi) {
    var str = formnhantoconnguoi.tenntcn.value;
    var re = /^[a-zA-Z]/;
    str = str.toString( );
    if (!str.match(re)) {
        alert("Tên nhân tố con người không được nhập dạng số");
        return false;
    }
    return true;
}

function istxtAlphaHEmpty(formnhantoconnguoi) {
    var str = document.formnhantoconnguoi.alphah.value;
    var re = /^[-]?\d*\.?\d*$/;
	str = str.toString();
    if ( formnhantoconnguoi.alphah.value == "" || 
			formnhantoconnguoi.alphah.value  ==null){
          alert("Bạn phải nhập alphaH");
          return false;
       }
	if (!str.match(re)) {
        alert("AlphaH phải là kiểu số");
       
    } else 
	  return true;
}
function isCheckNumber(formnhantoconnguoi) {
    var str = formnhantoconnguoi.alphah.value;
    //if (parseFloat(str)>=0.1 && parseFloat(str)<=0.9)
	//{
	//	return true;
	//}
	//else{
	//	alert("AlphaH phải nhập trong khoảng từ 0.1 đến 0.9");
	//	return false;
	}
}

function istxtChonSanPhamEmpty(formnhantoconnguoi) {
      if ( 	formnhantoconnguoi.slSanPham.value == "0"){
          alert("Bạn phải chọn 1 Sản Phẩm");
          return false;
       }
	   else {
          return true;
       }
    }
function istxtChonHoiDongEmpty(formnhantoconnguoi) {
      if ( 	formnhantoconnguoi.slHoiDong.value == "0"){
          alert("Bạn phải chọn 1 Hội Đồng");
          return false;
       }
	   else {
          return true;
       }
    }
</script>	
<input type="button" onclick="history.back()" value=" Quay lại " />
<%
	Dim RsSanPham
	Dim RsHoiDong
	Dim strSanPham
	Dim strHoiDong
	
	set RsSanPham = Server.CreateObject("ADODB.Recordset")
	set RsHoiDong = Server.CreateObject("ADODB.Recordset")
	strSanPham = "Select MaSanPham,TenSanPham from XemDSSanPham where MaDoanhNghiep="&Session("ma_dn")
	MaSanPham = Request.QueryString("MaSanPham")
	if(MaSanPham <> "" and MaSanPham <> "0") then
		strHoiDong = "Select X.MaHoiDong, X.TenHoiDong from XemDSHoiDong as X INNER JOIN SanPham as S ON X.MaHoiDong=S.MaHoiDong WHERE S.MaSanPham="&MaSanPham&" AND X.MaDoanhNghiep="&Session("ma_dn")
	else
		strHoiDong = "Select MaHoiDong,TenHoiDong from XemDSHoiDong where MaDoanhNghiep="&Session("ma_dn")
	end if
	RsSanPham.Open strSanPham,conn
	RsHoiDong.Open strHoiDong,conn
	set tmpSanPham = Request.QueryString("MaSanPham")
	set tmpHoiDong = Request.QueryString("MaHoiDong")
%>
<center><font face="Arial, Helvetica, sans-serif" color="#006633" size="4">Nhập nhân tố con người</font></center><p>
<table align="center">
<tr>
<td>Nếu Tên Sản Phẩm trống xin nhấn vào nút Tạo mới Sản Phẩm</td>
</tr>
<tr>
<td>Nếu Tên Hội Đồng trống xin nhấn vào nút Tạo mới Hội Đồng</td>
</tr>
<tr>
<td align="center">Để xem danh sách Nhân Tố Con Người. Xin hãy nhấn <a href="DanhSach_NhanToConNguoi.asp">vào đây</a></td>
</tr>

</table>
<form action="XuLy_NhapNhanToConNguoi.asp" method="post" name="formnhantoconnguoi" id="formnhantoconnguoi" onsubmit="return validateForm(this)">
  <table width="100%" border="0" align="center">
    <tr>
      <td>Tên sản phẩm </td>
      <td><select name="slSanPham" onchange="window.location='Nhap_NhanToConNguoi.asp?MaSanPham='+this.value">
	  <option value="0">----- Chọn Sản Phẩm -----</option>
		<%
			do while (not RsSanPham.EOF)
		%>
		
		<option <% if(RsSanPham("MaSanPham")=cint(MaSanPham)) then %>selected="1"<% end if %> value="<%=RsSanPham("MaSanPham")%>"><%=RsSanPham("TenSanPham")%></option>
		<%
			RsSanPham.MoveNext
			loop
		%>
	</select></td>
    </tr>
    <tr>
      <td>Tên hội đồng </td>
      <td><select name="slHoiDong">
	  <option value="0">----- Chọn Hội Đồng -----</option>
		<%
			do while (not RsHoiDong.EOF)
		%>
		
		<option value="<%=RsHoiDong("MaHoiDong")%>"><%=RsHoiDong("TenHoiDong")%></option>
		<%
			RsHoiDong.MoveNext
			loop
		%>
	</select></td>
    </tr>
    <tr>
      <td width="177">Tên nhân tố con người </td>
      <td width="215"><input name="tenntcn" type="text" id="tenntcn" /></td>
    </tr>
    <tr>
      <td>AlphaH</td>
      <td><input name="alphah" type="text" id="alphah" value="0" readonly="1" /> 
      (Alpha H lúc khởi tạo bằng 0)  </td>
    </tr>
	 </table>
	 <table align="center">
    <tr>
      <td align="right"><input name="chapnhan" type="submit" id="chapnhan" value="Chấp nhận" /></td>
      <td><input name="huybo" type="reset" id="huybo" value="Hủy bỏ" /></td>
    </tr>
 </table>
 <hr />
  <table align="right">
  	<tr>
		<td><input type="button" name="taosp" value="Tạo mới Sản Phẩm" onclick="movesp();"/></td>
		<td><input type="button" name="taohd" value="Tạo mới Hội Đồng" onclick="movehd();"/></td>
	</tr>
  
  </table>
</form>
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
