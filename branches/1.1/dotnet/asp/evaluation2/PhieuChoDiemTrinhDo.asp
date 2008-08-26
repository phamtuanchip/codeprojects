<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/hinhmaunguoidung.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Phiếu cho điểm thành phần công nghệ theo trình độ hiện đại</title>
<script language="javascript">
function messageWindow(title)

{
	if(document.all.inAll.checked)
	{
		url="InPhieuChoDiemTrinhDo.asp?MaThanhVien=All";
	}
	else
	{
		if(document.form1.MaThanhVienSelect.value>0)  
		{
			url="InPhieuChoDiemTrinhDo.asp?MaThanhVien="+form1.MaThanhVienSelect.value;
		}
		else
		{
			alert("Bạn chưa chọn thành viên để in phiếu điểm trống.");
			document.form1.MaThanhVien.focus();
			return false;
		}
	}
  //alert(form1.MaThanhVienSelect.value);
  var height=screen.height;
    var width=screen.width;

	//content="status,menubar,scrollbars,height=" + height + ",width=" + width +")";
	//var newWindow = window.open(url,"msgWindow",content);
  var newWindow = window.open(url,"msgWindow", "status,menubar,scrollbars,height=600,width=800");

	newWindow.focus( );
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
<script language="javascript">
	function tinhTmin()
	{/*

     	TBTmin=0;
		countTmin=parseInt(document.form1.TminCount.value);
		countHmin=parseInt(document.form1.HminCount.value);
		countImin=parseInt(document.form1.IminCount.value);
		countOmin=parseInt(document.form1.OminCount.value);
		
		for(s=0;s<countTmin;s++) {
			
			if(isNaN(document.getElementById("Tmin"+s).value))
			{
				alert("Bạn phải nhập các giá trị Tmin là kiểu số");
				return false;
			}
			if(parseFloat(document.getElementById("Tmin"+s).value)<=0 || parseFloat(document.getElementById("Tmin"+s).value)>=10 )
			{
				alert("Bạn phải nhập các giá trị Tmin trong khoảng từ 1 đến 9");
				return false;
			}
			
//			TBTmin= (parseFloat(TBTmin) + parseFloat(document.getElementById("Tmin"+s).value));
		}
		
		for(s=0;s<countTmin;s++) {
			if(isNaN(document.getElementById("Tmax"+s).value))
			{
				alert("Bạn phải nhập các giá trị Tmax là kiểu số");
				return false;
			}
			if(parseFloat(document.getElementById("Tmax"+s).value)<=0 || parseFloat(document.getElementById("Tmax"+s).value)>=10 )
			{
				alert("Bạn phải nhập các giá trị Tmax trong khoảng từ 1 đến 9");
				return false;
			}
			
//			TBTmin= (parseFloat(TBTmin) + parseFloat(document.getElementById("Tmin"+s).value));
		}
		
		//kiem tra H
		
		for(s=0;s<countHmin;s++) {
			if(isNaN(document.getElementById("Hmin"+s).value))
			{
				alert("Bạn phải nhập các giá trị Hmin là kiểu số");
				return false;
			}
			if(parseFloat(document.getElementById("Hmin"+s).value)<=0 || parseFloat(document.getElementById("Hmin"+s).value)>=10 )
			{
				alert("Bạn phải nhập các giá trị Hmin trong khoảng từ 1 đến 9");
				return false;
			}
			
//			TBTmin= (parseFloat(TBTmin) + parseFloat(document.getElementById("Tmin"+s).value));
		}
		
		for(s=0;s<countHmin;s++) {
			if(isNaN(document.getElementById("Hmax"+s).value))
			{
				alert("Bạn phải nhập các giá trị Hmax là kiểu số");
				return false;
			}
			if(parseFloat(document.getElementById("Hmax"+s).value)<=0 || parseFloat(document.getElementById("Hmax"+s).value)>=10 )
			{
				alert("Bạn phải nhập các giá trị Hmax trong khoảng từ 1 đến 9");
				return false;
			}
			
//			TBTmin= (parseFloat(TBTmin) + parseFloat(document.getElementById("Tmin"+s).value));
		}
		
		
		//Kiem tra I
		/*
		
		for(s=0;s<countImin;s++) {
			if(isNaN(document.getElementById("Imin"+s).value))
			{
				alert("Bạn phải nhập các giá trị Imin là kiểu số");
				return false;
			}
			if(parseFloat(document.getElementById("Imin"+s).value)<=0 || parseFloat(document.getElementById("Imin"+s).value)>=10 )
			{
				alert("Bạn phải nhập các giá trị Imin trong khoảng từ 1 đến 9");
				return false;
			}
			
//			TBTmin= (parseFloat(TBTmin) + parseFloat(document.getElementById("Tmin"+s).value));
		}
		
		for(s=0;s<countImin;s++) {
			if(isNaN(document.getElementById("Imax"+s).value))
			{
				alert("Bạn phải nhập các giá trị Imax là kiểu số");
				return false;
			}
			if(parseFloat(document.getElementById("Imax"+s).value)<=0 || parseFloat(document.getElementById("Imax"+s).value)>=10 )
			{
				alert("Bạn phải nhập các giá trị Imax trong khoảng từ 1 đến 9");
				return false;
			}
			
			
					//Kiem tra O
		
		
		for(s=0;s<countOmin;s++) {
			if(isNaN(document.getElementById("Omin"+s).value))
			{
				alert("Bạn phải nhập các giá trị Omin là kiểu số");
				return false;
			}
			if(parseFloat(document.getElementById("Omin"+s).value)<=0 || parseFloat(document.getElementById("Omin"+s).value)>=10 )
			{
				alert("Bạn phải nhập các giá trị Omin trong khoảng từ 1 đến 9");
				return false;
			}
			
//			TBTmin= (parseFloat(TBTmin) + parseFloat(document.getElementById("Tmin"+s).value));
		}
		
		for(s=0;s<countOmin;s++) {
			if(isNaN(document.getElementById("Omax"+s).value))
			{
				alert("Bạn phải nhập các giá trị Omax là kiểu số");
				return false;
			}
			if(parseFloat(document.getElementById("omax"+s).value)<=0 || parseFloat(document.getElementById("Omax"+s).value)>=10 )
			{
				alert("Bạn phải nhập các giá trị Omax trong khoảng từ 1 đến 9");
				return false;
			}

			
//			TBTmin= (parseFloat(TBTmin) + parseFloat(document.getElementById("Tmin"+s).value));
		}*/
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		/*
		TBTmax=0;
		for(s=0;s<countTmin;s++) {
			TBTmax= (parseFloat(TBTmax) + parseFloat(document.getElementById("Tmax"+s).value));
		}
		// Đang làm ở chỗ này
		

		countHmin=parseInt(document.form1.HminCount.value);
		TBHmin=0;
		for(s=0;s<countHmin;s++) {
			TBHmin= (parseFloat(TBHmin) + parseFloat(document.getElementById("Hmin"+s).value));
		}

		TBHmax=0;
		for(s=0;s<countHmin;s++) {
			TBHmax= (parseFloat(TBHmax) + parseFloat(document.getElementById("Hmax"+s).value));
		}
		
		
		countImin=parseInt(document.form1.IminCount.value);
		TBImin=0;
		for(s=0;s<countImin;s++) {
			TBImin= (parseFloat(TBImin) + parseFloat(document.getElementById("Imin"+s).value));
		}
		
		TBImax=0;
		for(s=0;s<countImin;s++) {
			TBImax= (parseFloat(TBImax) + parseFloat(document.getElementById("Imax"+s).value));
		}
		
		countOmin=parseInt(document.form1.OminCount.value);
		TBOmin=0;
		for(s=0;s<countOmin;s++) {
			TBOmin= (parseFloat(TBOmin) + parseFloat(document.getElementById("Omin"+s).value));
		}
		
		TBOmax=0;
		for(s=0;s<countOmin;s++) {
			TBOmax= (parseFloat(TBOmax) + parseFloat(document.getElementById("Omax"+s).value));
		}
		
		
		alert (countTmin + "; " + TBTmin/countTmin+ "; " + TBTmax/countTmin + "; " + TBHmin/countHmin  + "; " + TBHmax/countHmin + "; " + TBImin/countImin + "; " + TBImax/countImin  + "; " + TBOmin/countOmin + "; " + TBOmax/countOmin );
    	//document.form1.TrungbinhTmin.value=document.getElementById("Tmin"+t).value);
		//document.form1.TrungbinhTmin.value=document.getElementById("Tmin"+s).value);
	 	//return false;
	    
 	*/
	}
</script>
<div align="center"><br />
	<!--#include file="connection.inc" -->
  <br />
  <%  
  		MaSanPham=Session("ma_sp")
  	 	MaHoiDong=Session("ma_hd")
	  MaDoanhNghiep=Session("ma_dn")
	  dim RsDoanhNghiep
		Set RsDoanhNghiep= Server.CreateObject("ADODB.Recordset")
		RsDoanhNghiep.open "Select MaDoanhNghiep,TenDoanhNghiep from DoanhNghiep where MaDoanhNghiep=" & MaDoanhNghiep ,conn,3
	  dim Rs1
	  Set RS1 = Server.CreateObject("ADODB.Recordset")
  		Rs.open "Select TenSanPham from SanPham where MaSanPham=" + MaSanPham,conn
		Rs1.open "Select ThanhVien.MaThanhVien,TenThanhVien From ThanhVien inner join HoiDongChamDiem  on ThanhVien.MaThanhVien=HoiDongChamDiem.MathanhVien where ThanhVien.Status=1 AND MahoiDong=" + MaHoiDong & "and HoiDongChamDiem.Status=1",conn
		dim RsMaGiaCong 
		Set RsMaGiaCong = Server.CreateObject("ADODB.Recordset")
		RsMaGiaCong.open "Select MaBuocGiaCong,TenBuocGiaCong from BuocGiaCong where Status=1 and MaSanPham=" + MaSanPham + " and MaHoiDong=" + MaHoiDong,conn,3
		RsMaGiaCongCount=RsMaGiaCong.RecordCount
		
		dim RsMaNhanToConNguoi 
		Set RsMaNhanToConNguoi = Server.CreateObject("ADODB.Recordset")
		RsMaNhanToConNguoi.open "Select MaNhanToConNguoi,TenNhanToConNguoi from NhanToConNguoi where MaSanPham=" + MaSanPham + " and MaHoiDong=" + MaHoiDong,conn,3
		RsMaNhanToConNguoiCount=RsMaNhanToConNguoi.RecordCount
		
		dim RsMaChiTietThongTin 
		Set RsMaChiTietThongTin = Server.CreateObject("ADODB.Recordset")
		RsMaChiTietThongTin.open "Select MaChiTietThongTin,TenChiTietThongTin from ChiTietThongTin where MaSanPham=" + MaSanPham + " and MaHoiDong=" + MaHoiDong,conn,3
		RsMaChiTietThongTinCount=RsMaChiTietThongTin.RecordCount
		
		dim RsMaChiTietToChuc 
		Set RsMaChiTietToChuc= Server.CreateObject("ADODB.Recordset")
		RsMaChiTietToChuc.open "Select MaChiTietToChuc,TenChiTietToChuc from ChiTietToChuc where MaSanPham=" + MaSanPham + " and MaHoiDong=" + MaHoiDong,conn,3
		RsMaChiTietToChucCount=RsMaChiTietToChuc.RecordCount
		dim rsdiemcham
	  	set rsdiemcham= server.CreateObject("adodb.recordset")
'		Response.Write(RsMaChiTietThongTinCount)
	'if(RsDoanhNghiep.EOF or RS1.EOF or RsMaGiaCong.EOF or RsMaNhanToConNguoi.EOF or RsMaChiTietThongTin.EOF or RsMaChiTietToChuc.EOF) then
		'Response.Write("Bạn chưa nhập đủ các thông số,Xin vui lòng quay lại")
	'else
   %>
  
<p align="left"><input type="button" onclick="history.back()" value=" Quay lại " />&nbsp;&nbsp;&nbsp;<input name="InPhieuDiem" type="button" id="InPhieuDiem" value="In phiếu điểm" onclick="messageWindow('Phiếu cho điểm sản phẩm')" />
<input type="checkbox" id="inAll" name="inAll" />In tất cả phiếu điểm đã chấm</p>
<form id="form1" name="form1" method="get" action="CapNhatDiemTrinhDoHienDai.asp">
		<% if len(Request.QueryString("outStr"))>0 then %>
			<H3 align="center"><%=Request.QueryString("outStr") %></H3>
		<% end if %>
  <table width="100%" border="1">
            <tr>
              <td height="45" colspan="4"><div align="center"><span class="heading">PHI&#7870;U CHO &#272;I&#7874;M TH&Agrave;NH PH&#7846;N C&Ocirc;NG NGH&#7878; THEO TR&Igrave;NH &#272;&#7896; HI&#7878;N &#272;&#7840;I</span></div></td>
              </tr>
            
            <tr>
              <td height="26" colspan="4"><div align="left">Cơ sở sản xuất:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=RsDoanhNghiep(1) %> </div></td>
            </tr>
            <tr>
              <td height="26" colspan="4"><div align="left">Ch&#7911;ng lo&#7841;i s&#7843;n phẩm: &nbsp;<%=Rs(0) %>&nbsp;</div></td>
              </tr>
            <tr>
              <td colspan="4"><div align="left">Ng&#432;&#7901;i cho &#273;i&#7875;m:&nbsp;                
                    <select name="MaThanhVienSelect" onchange="window.location='PhieuChoDiemTrinhDo.asp?ma_tv='+this.value">
					<option value="0">Chọn một thành viên</option>
                      <% while (not Rs1.Eof) %>
						  <%if (cint(Request.QueryString("ma_tv"))=Rs1("MaThanhVien")) then  %>
					  
							  <option value="<%=Rs1("MaThanhVien")%>" selected="selected"><%=Rs1(1)%></option>
						   <%else %>
                		      <option value="<%=Rs1("MaThanhVien")%>"><%=Rs1(1)%></option>
						   <%end if%>
             <%
				Rs1.moveNext
				Wend
			%>
                    </select>
              </div></td>
          </tr>
		  <%if (cint(Request.QueryString("ma_tv"))>1)  then %>
        <tr>
          <td width="262" rowspan="2"><div align="center">C&aacute;c th&agrave;nh ph&#7847;n c&ocirc;ng ngh&#7879; </div></td>
      <td colspan="2"><div align="center">&#272;I&#7874;M CHO </div></td>
      <td width="150" rowspan="2">TI&Ecirc;U CHU&#7848;N &#272;I&#7874;M <br />
n</td>
        </tr>
    <tr>
      <td width="58" height="23"><div align="center">min</div></td>
      <td width="56"><div align="center">max</div></td>
      </tr>
    <tr>
      <td><div align="center"><strong>T Thi&#7871;t b&#7883; </strong></div></td>
      <td><div align="center">T min </div></td>
      <td><div align="center">T max </div></td>
      <td><div align="center">Theo m&#7913;c &#273;&#7897; hi&#7879;n &#273;&#7841;i </div></td>
    </tr>
    <tr>
      <td><div align="center">
		<% t=0 %>	  	
		
	  	<% while(not RsMaGiaCong.EOF) %>
	  		<tr>
				<td>

					<%=RsMaGiaCong(1) %>				</td>
				
				<td>
				<%
				if (cint(Request.QueryString("ma_tv"))>0) then  
				 Sqldiem="Select Tmax,Tmin From DiemBuocGiaCong where MaThanhVien=" & Request.QueryString("ma_tv") & " and MaBuocGiaCong=" & RsMaGiaCong(0)
'				 Response.Write(Sqldiem)
				 rsdiemcham.open SqlDiem,conn
				   if not rsdiemcham.eof  then
				  		Tmax=	rsdiemcham("Tmax")
						Tmin=	rsdiemcham("Tmin")
				  	else
						Tmax=	"1"
						Tmin=	"1"
					end if
					rsdiemcham.close
				end if
				  %>
					<input type="hidden" id="TminID<%=t%>" name="TminID<%=t%>"  size="3" value="<%=RsMaGiaCong(0)%>" />
					<input type="text" id="Tmin<%=t%>" align="right"  name="Tmin<%=t%>"  size="3" title="Bạn phải nhập trong khoảng từ 1 đến 9 "   value="<%=Tmin%>" onblur="if ((this.value>=10)||(this.value<1) || isNaN(this.value) || this.value>Tmax<%=t%>.value ){alert('Tmin phải là kiểu số, không được nhỏ hơn 1 hoặc lớn hơn 10 và Tmin phải nhỏ hơn Tmax.'); this.value='1';this.focus();this.select();};"/>				</td>
				
				<td>
					<input type="text" id="Tmax<%=t%>" align="right" name="Tmax<%=t%>" size="3" title="Bạn phải nhập trong khoảng từ 1 đến 9" value="<%=Tmax %>" onblur="if ((this.value>=10)||(this.value<1) || isNaN(this.value) || this.value<Tmin<%=t%>.value){alert('Tmax phải là kiểu số, không được nhỏ hơn 1 hoặc lớn hơn 10 và Tmax phải lớn hơn Tmin.'); this.value='1';this.focus();this.select();};"/>				</td>
				
				
				<%
				if(t=0) then
				%>
          <td rowspan="<%=RsMaGiaCongCount%>" align="left">
            <ul>
              			<li>Thủ công: 1,2,3</li>
					    <li>Cơ khí: 2,3,4</li>
					    <li>Tự động từng thao tác: 5,6,7</li>
					    <li>Tự động tổ hợp: 6,7,8</li>
					    <li>Tự động cao, vi điện tử, CNC: 7,8,9</li>
					    </ul></td>
				  <%
				end if
				%>
			</tr>
			
		<% 
			t=t+1
			RsMaGiaCong.moveNext()
			Wend	
		%>
		
		
				<input name="TminCount" type="hidden" value="<%=t%> " />
	  
	  </div></td>

      <td colspan="2"><div align="center"></div></td>
      <td><div align="center"></div></td>
    </tr>
    <tr>
      <td><div align="center"><strong>H Con ng&#432;&#7901;i (S&#7889; ng&#432;&#7901;i) </strong></div></td>
      <td><div align="center">H min </div></td>
      <td><div align="center">H max </div></td>
      <td><div align="center">Theo tr&igrave;nh &#273;&#7897; </div></td>
    </tr>
    <tr>
      <td><div align="center">
	  <% h=0 %>	  	
	  	<% while(not RsMaNhanToConNguoi.EOF) %>
	  		<tr>
				<td>

					<%=RsMaNhanToConNguoi(1) %>				</td>
				<td>
				<%
				if (cint(Request.QueryString("ma_tv"))>0) then  
				 Sqldiem="Select Hmax,Hmin From DiemTieuChuanConNguoi where MaThanhVien=" & Request.QueryString("ma_tv") & " and MaNhanToConNguoi=" & RsMaNhanToConNguoi(0)
'				 Response.Write(Sqldiem)
				 rsdiemcham.open SqlDiem,conn
				   if not rsdiemcham.eof  then
				  		Hmax=	rsdiemcham("Hmax")
						Hmin=	rsdiemcham("Hmin")
				  	else
						Hmax=	"1"
						Hmin=	"1"
					end if
					rsdiemcham.close
				end if
				  %>
					<input type="hidden" id="HminID<%=h%>"  name="HminID<%=h%>" size="3" value="<%=RsMaNhanToConNguoi(0)%>"/>
					<input type="text" id="Hmin<%=h%>"size="3" align="right"  name="Hmin<%=h%>"  value="<%=Hmin %>" onblur="if ((this.value>=10)||(this.value<1) || isNaN(this.value) || this.value>Hmax<%=h%>.value){alert('Hmin phải là kiểu số, không được nhỏ hơn 1 hoặc lớn hơn 10 và Hmin phải nhỏ hơn Hmax.'); this.value='1';this.focus();this.select();};"/>				</td>
				<td>
					<input type="text" id="Hmax<%=h%>" name="Hmax<%=h%>" align="right"   size="3" value="<%=Hmax %>" onblur="if ((this.value>=10)||(this.value<1) || isNaN(this.value) || this.value<Hmin<%=h%>.value){alert('Hmax phải là kiểu số, không được nhỏ hơn 1 hoặc lớn hơn 10 và Hmax phải lớn hơn Hmin.'); this.value='1';this.focus();this.select();};"/>				</td>
				<%
				if(h=0) then
				%>
          <td rowspan="<%=RsMaNhanToConNguoiCount%>" align="left">
            <ul>
              <li><b> Trình độ văn hóa: </b></li>
					    <li>&nbsp;&nbsp;+ Cấp 2: 1,2,3</li>
					    <li>&nbsp;&nbsp;+ Cấp 3: 3,4,5</li>
			  <li><b>Tự động tổ hợp: 6,7,8</b></li>
					    <li>&nbsp;&nbsp;+ Đào tạo hoàn chỉnh ngoại ngữ, vi tính, chuyên môn quản lý: 7,8,9</li>
					    <li>&nbsp;&nbsp;+ Thành thạo: 6,7,8</li>
					    <li>&nbsp;&nbsp;+ Bình thường: 4,5,6</li>						
					    <li>&nbsp;&nbsp;+ Kém: 2,3,4</li>					
					    </ul></td>
				  <%
				end if
				%>
			</tr>
		<% 
			h=h+1	
			RsMaNhanToConNguoi.moveNext()
			Wend	
		%>
			<input name="HminCount" type="hidden" value="<%=h%> " />
	  </div></td>
      <td colspan="2"><div align="center"></div></td>
      <td><div align="center"></div></td>
    </tr>
    <tr>
      <td><div align="center"><strong>I Th&ocirc;ng tin </strong></div></td>
      <td><div align="center">I min </div></td>
      <td><div align="center">I max </div></td>
      <td><div align="center">&nbsp;</div></td>
    </tr>
    <tr>
      <td><div align="center">
	  <% i=0 %>	  	
	  	<% while(not RsMaChiTietThongTin.EOF) %>
	  		<tr>
				<td>

					<%=RsMaChiTietThongTin(1) %>				</td>
				<td>
					<%
				if (cint(Request.QueryString("ma_tv"))>0) then  
				 Sqldiem="Select Imax,Imin From DiemTieuChuanThongTin where MaThanhVien=" & Request.QueryString("ma_tv") & " and MaChiTietThongTin=" & RsMaChiTietThongTin(0)
'				 Response.Write(Sqldiem)
				 rsdiemcham.open SqlDiem,conn
				   if not rsdiemcham.eof  then
				  		Imax=	rsdiemcham("Imax")
						Imin=	rsdiemcham("Imin")
				  	else
						Imax=	"1"
						Imin=	"1"
					end if
					rsdiemcham.close
				end if
				  %>
					<input type="hidden" id="IminID<%=i%>" name="IminID<%=i%>" size="3" value="<%=RsMaChiTietThongTin(0)%>"/>
					<input type="text" id="Imin<%=i%>" name="Imin<%=i%>" align="right"  size="3" value="<%=Imin %>" onblur="if ((this.value>=10)||(this.value<1) || isNaN(this.value) || this.value>Imax<%=i%>.value){alert('Imin phải là kiểu số, không được nhỏ hơn 1 hoặc lớn hơn 10 và Imin phải nhỏ hơn IMax.'); this.value='1'; this.focus();this.select();};"/>				</td>
				<td>
					<input type="text" id="Imax<%=i%>" name="Imax<%=i%>" align="right"   size="3" value="<%=Imax %>" onblur="if ((this.value>=10)||(this.value<1) || isNaN(this.value)  || this.value<Imin<%=i%>.value){alert('Imax phải là kiểu số, không được nhỏ hơn 1 hoặc lớn hơn 10 và Imax phải lớn hơn IMin.'); this.value='1'; this.focus();this.select();};"/>				</td>
<%
				if(i=0) then
				%>
          <td rowspan="<%=RsMaChiTietThongTinCount%>" align="left">
            <ul>
		              <li>Đầy đủ: 7,8,9</li>
					    <li>Bình thường: 6,7,8</li>
					    <li>Kém không đáp ứng cơ chế thị trường: 4,5,6</li>
					    </ul></td>
				  <%
				end if
				%>
			</tr>
		<% 
			i=i+1	
			RsMaChiTietThongTin.moveNext()
			Wend	
		%>
			<input name="IminCount" type="hidden" value="<%=i%> " />
	  </div></td>
      <td colspan="2"><div align="center"></div></td>
      <td><div align="center"></div></td>
    </tr>
    <tr>
      <td><div align="center"><strong>O T&#7893; ch&#7913;c </strong></div></td>
      <td><div align="center">O min </div></td>
      <td><div align="center">O max </div></td>
      <td><div align="center">Theo tr&igrave;nh &#273;&#7897; </div></td>
    </tr>
    <tr>
      <td><div align="center">
	   <% o=0 %>	  	
	  	<% while(not RsMaChiTietToChuc.EOF) %>
	  		<tr>
				<td>

					<%=RsMaChiTietToChuc(1) %>				</td>
				<td>
				<%
				if (cint(Request.QueryString("ma_tv"))>0) then  
				 Sqldiem="Select Omax,Omin From DiemTieuChuanToChuc where MaThanhVien=" & Request.QueryString("ma_tv") & " and MaChiTietToChuc=" & RsMaChiTietToChuc(0)
'				 Response.Write(Sqldiem)
				 rsdiemcham.open SqlDiem,conn
				   if not rsdiemcham.eof  then
				  		Omax=	rsdiemcham("Omax")
						Omin=	rsdiemcham("Omin")
				  	else
						Omax=	"1"
						Omin=	"1"
					end if
					rsdiemcham.close
				end if
				  %>	
					<input type="hidden" id="OminID<%=o%>" name="OminID<%=o%>" size="3" value="<%=RsMaChiTietToChuc(0)%>"/>
					<input type="text" id="Omin<%=o%>" name="Omin<%=o%>" align="right"  size="3" value="<%=Omin %>" onblur="if ((this.value>=10)||(this.value<1) || isNaN(this.value) ||  this.value>Omax<%=o%>.value){alert('Omin phải là kiểu số, không được nhỏ hơn 1 hoặc lớn hơn 10 và Omin phải nhỏ hơn Omax.'); this.value='1'; this.focus();this.select();};"/>				</td>
				<td>
					<input type="text" id="Omax<%=o%>" name="Omax<%=o%>" align="right"  size="3" value="<%=Omax %>" onblur="if ((this.value>=10)||(this.value<1) || isNaN(this.value)  ||  this.value<Omin<%=o%>.value ){alert('Omax phải là kiểu số, không được nhỏ hơn 1 hoặc lớn hơn 10 và Omax phải lớn hơn Omin.'); this.value='1'; this.focus();this.select();};"/>				</td>
				<%
				if(o=0) then
				%>
          <td rowspan="<%=RsMaChiTietToChucCount%>" align="left">
            <ul>
              <li><b> Trình độ văn hóa: </b></li>
					    <li>&nbsp;&nbsp;+ Cấp 2: 1,2,3</li>
					    <li>&nbsp;&nbsp;+ Cấp 3: 3,4,5</li>
			  <li><b>Tự động tổ hợp: 6,7,8</b></li>
					    <li>&nbsp;&nbsp;+ Đào tạo hoàn chỉnh ngoại ngữ, vi tính, chuyên môn quản lý: 7,8,9</li>
					    <li>&nbsp;&nbsp;+ Thành thạo: 6,7,8</li>
					    <li>&nbsp;&nbsp;+ Bình thường: 4,5,6</li>						
					    <li>&nbsp;&nbsp;+ Kém: 2,3,4</li>					
					    </ul></td>
				  <%
				end if
				%>
			</tr>
		<% 
			o=o+1
			RsMaChiTietToChuc.moveNext()
			Wend	
		%>
	  <input name="OminCount" type="hidden" value="<%=o%> " />
	  </div></td>
      <td colspan="2"><div align="center"></div></td>
      <td><div align="center"></div></td>
    </tr>
	<tr>
      <td>
        <input type="submit" name="Submit" value="Chấm điểm"  /></td>
    </tr>
	<%end if%>
  </table>
</form><%
'end if
%>
<br />
<br />
</div>
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
