<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file=connection.inc-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/hinhmaunguoidung.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Phiếu cho điểm thành phần công nghệ theo hiệu quả</title>
<!-- InstanceEndEditable -->
<!-- InstanceBeginEditable name="head" -->
<script language="JavaScript" type="text/javascript">
	function tinhPT()
	{
		t=1;
     	tong1=0;
		tong2=0;
		d=parseInt(document.diemhieuqua.count.value)-1;
		while (t<=d) {
		tong1= (parseFloat(tong1) + parseFloat(document.getElementById("idpmin"+t).value));
		tong2 = (parseFloat(tong2) + parseFloat(document.getElementById("idpmax"+t).value));
		t++;
		}
     //document.diemhieuqua.mint.value=tong;
	    
 	document.diemhieuqua.mint.value = tong1/d;
	document.diemhieuqua.maxt.value = tong2/d;
	}
	function tinhPH()
	{
		t=1;
     	tong1=0;
		tong2=0;
		d=parseInt(document.diemhieuqua.counth.value)-1;
		while (t<=d) {
		tong1= (parseFloat(tong1) + parseFloat(document.getElementById("idhmin"+t).value));
		tong2 = (parseFloat(tong2) + parseFloat(document.getElementById("idhmax"+t).value));
		t++;
		}
     //document.diemhieuqua.mint.value=tong;
	    
 	document.diemhieuqua.minh.value = tong1/d;
	document.diemhieuqua.maxh.value = tong2/d;
	}
	function tinhPI()
	{
		t=1;
     	tong1=0;
		tong2=0;
		d=parseInt(document.diemhieuqua.counti.value)-1;
		while (t<=d) {
		tong1= (parseFloat(tong1) + parseFloat(document.getElementById("idimin"+t).value));
		tong2 = (parseFloat(tong2) + parseFloat(document.getElementById("idimax"+t).value));
		t++;
		}
     //document.diemhieuqua.mint.value=tong;
	    
 	document.diemhieuqua.mini.value = tong1/d;
	document.diemhieuqua.maxi.value = tong2/d;
	}
	function tinhPO()
	{
		t=1;
     	tong1=0;
		tong2=0;
		d=parseInt(document.diemhieuqua.counto.value)-1;
		while (t<=d) {
		tong1= (parseFloat(tong1) + parseFloat(document.getElementById("idomin"+t).value));
		tong2 = (parseFloat(tong2) + parseFloat(document.getElementById("idomax"+t).value));
		t++;
		}
     //document.diemhieuqua.mint.value=tong;
	    
 	document.diemhieuqua.mino.value = tong1/d;
	document.diemhieuqua.maxo.value = tong2/d;
	}
</script>

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
function messageWindow(title)
{
 if(document.all.PhieuTrong.checked)
  {
  	url="InTatCaDiemHieuQua.asp";  
	var height=screen.height;
  	var width=screen.width;
	//content="status,menubar,scrollbars,height=" + height + ",width=" + width +")";
	//var newWindow = window.open(url,"msgWindow",content);
	var newWindow = window.open(url,"msgWindow", "status,menubar,scrollbars,height=600,width=800");
  	newWindow.focus();
  }
else
{
  url="InDiemHieuQuaCuaTungThanhVien.asp?MaThanhVien="+diemhieuqua.MaThanhVien.value;
  var height=screen.height;
    var width=screen.width;

	//content="status,menubar,scrollbars,height=" + height + ",width=" + width +")";
	//var newWindow = window.open(url,"msgWindow",content);
  var newWindow = window.open(url,"msgWindow", "status,menubar,scrollbars,height=600,width=800");
	newWindow.focus( );
}
}
</script>
<script language="javascript">
function validateForm(f){

	if(!tenthanhvien(f))
		 return false
		
}
function tenthanhvien(diemhieuqua) {
      if ( 	diemhieuqua.mathanhvien.value == 0){
          alert("Bạn phải nhập tên người chấm điểm");
          return false;
       }
	   else {
          return true;
       }
    }
</script>

<% 
	errorStr = Request.QueryString("errorStr")
	Dim rssql
	Dim strsql
	set rssql = Server.CreateObject("ADODB.Recordset")
	MaSanPham=Session("ma_sp")
  	 	MaHoiDong=Session("ma_hd")
	  	MaDoanhNghiep=Session("ma_dn")
	strsql =  "Select ThanhVien.MaThanhVien,TenThanhVien From ThanhVien inner join HoiDongChamDiem  on ThanhVien.MaThanhVien=HoiDongChamDiem.MathanhVien where ThanhVien.Status=1 and MahoiDong=" & MaHoiDong & "and HoiDongChamDiem.Status=1"
	
'	SELECT MaThanhVien, TenThanhVien FROM ThanhVien INNER JOIN DoanhNghiep ON ThanhVien.MaDoanhNghiep = DoanhNghiep.MaDoanhNghiep INNER JOIN SanPham ON DoanhNghiep.MaDoanhNghiep = SanPham.MaDoanhNghiep where DoanhNghiep.MaDoanhNghiep = '" + Session("ma_dn") + "' and SanPham.MaSanPham = '"+ Session("ma_sp") + "'"
	rssql.Open strsql,conn
	
	dim strSP
	strSP = "select TenSanPham from SanPham where MaSanPham = '" + Session("ma_sp") + "'"
	dim RSSP
	Set RSSP = Server.CreateObject("ADODB.Recordset")
	RSSP.open strSP, conn
	
	dim strBGC
	strBGC = "select MaBuocGiaCong, TenBuocGiaCong,GhiChu from BuocGiaCong inner join SanPham on SanPham.MaSanPham = BuocGiaCong.MaSanPham inner join HoiDong on HoiDong.MaHoiDong = BuocGiaCong.MaHoiDong where SanPham.MaSanPham = '"+Session("ma_sp")+"' and HoiDong.MaHoiDong = '"+Session("ma_hd")+"'"
	dim RSBGC
	set RSBGC = Server.CreateObject("ADODB.Recordset")
	RSBGC.open strBGC, conn,3
	RsGiaCongCount = RSBGC.RecordCount
	
	dim strCN
	strCN = "select MaNhanToConNguoi,TenNhanToConNguoi from NhanToConNguoi inner join SanPham on SanPham.MaSanPham = NhanToConNguoi.MaSanPham inner join HoiDong on HoiDong.MaHoiDong = NhanToConNguoi.MaHoiDong where SanPham.MaSanPham = '"+Session("ma_sp")+"' and HoiDong.MaHoiDong = '"+Session("ma_hd")+"'"
	dim RSCN
	set RSCN = Server.CreateObject("ADODB.Recordset")
	RSCN.Open strCN,conn,3
	RsConNguoiCount = RSCN.RecordCount
	
	dim strTT
	strTT = "select MaHieuQuaCongNghe_ThongTin,TenHieuQuaCongnghe_ThongTin from HieuQuaCongNghe_ThongTin inner join SanPham on SanPham.MaSanPham = HieuQuaCongNghe_ThongTin.MaSanPham inner join HoiDong on HoiDong.MaHoiDong = HieuQuaCongNghe_ThongTin.MaHoiDong where SanPham.MaSanPham = '"+Session("ma_sp")+"' and HoiDong.MaHoiDong = '"+Session("ma_hd")+"'"
	dim RSTT
	set RSTT = Server.CreateObject("ADODB.Recordset")
	RSTT.Open strTT,conn,3
	RsThongTinCount = RSTT.RecordCount
	
	dim strTC
	strTC = "select MaHieuQuaCongNghe_ToChuc,TenHieuQuaCongnghe_ToChuc from HieuQuaCongNghe_ToChuc inner join SanPham on SanPham.MaSanPham = HieuQuaCongNghe_ToChuc.MaSanPham inner join HoiDong on HoiDong.MaHoiDong = HieuQuaCongNghe_ToChuc.MaHoiDong where SanPham.MaSanPham = '"+Session("ma_sp")+"' and HoiDong.MaHoiDong = '"+Session("ma_hd")+"'"
	dim RSTC
	set RSTC = Server.CreateObject("ADODB.Recordset")
	RSTC.Open strTC,conn,3
	RsToChucCount = RSTC.RecordCount
	
	
	Dim RsDiemt
	Set RsDiemt = Server.CreateObject("ADODB.Recordset")
Dim RsDiemh
	Set RsDiemh = Server.CreateObject("ADODB.Recordset")
Dim RsDiemi
	Set RsDiemi = Server.CreateObject("ADODB.Recordset")
Dim RsDiemo
	Set RsDiemo = Server.CreateObject("ADODB.Recordset")

	'if(rssql.EOF or RSSP.EOF or RSBGC.EOF or RSCN.EOF or RSTT.EOF or RSTC.EOF) then
	'	Response.Write("Bạn chưa nhập đủ các thông số,Xin vui lòng quay lại")
	'else
%>
<form action="XuLy_NhapDiemHieuQuaCongNgheTheoHieuQua.asp" method="post" name="diemhieuqua" id="diemhieuqua" onsubmit="return validateForm(this)">
  <table width="493" border="0" align="center">
    <tr>
      <td colspan="5"><div align="center"><strong>PHIẾU CHO &#272;IỂM THÀNH PHẦN C&Ocirc;NG NGH&#7878; THEO HIỆU QU&#7842;</strong></div></td>
    </tr>
    <tr>
      <td colspan="5">&nbsp;</td>
    </tr>
    <tr>
      <td width="160"><strong>Chủng loại sản phẩm : </strong></td>
      <td colspan="4"><%=RSSP("TenSanPham")%></td>
    </tr>
    <tr>
      <td><strong>Ng&#432;ời cho &#273;iểm : </strong></td>
      <td width="142"><select name="MaThanhVien" onchange="window.location='nhap_diemcongnghetheohieuqua.asp?ma_tv='+this.value">
      <option value="0" >--Chọn một thành viên--</option>
	  <%
	    
	while not (rssql.EOF)
     %>
	  <%if (cint(Request.QueryString("ma_tv"))=rssql("MaThanhVien")) then  %>
      <option value="<%=rssql("MaThanhVien")%>" selected="selected"><%=rssql("TenThanhVien")%></option>
	  <%else %>
	  <option value="<%=rssql("MaThanhVien")%>"><%=rssql("TenThanhVien")%></option>
	  <%end if%>
      <%
	rssql.MoveNext
	wend
%>
<%rssql.close()%>
    </select>
      <strong>
      <input name="mahd" type="hidden" id="mahd" value="<%=session("ma_hd")%>" />
      </strong>
        </td>
     
      <td width="108">&nbsp;</td>
    </tr>
	 </table>
	  <%if (cint(Request.QueryString("ma_tv"))>1)  then %>
	 <table align="center">
    <tr>
      <td colspan="4"><center><input type="checkbox" name="PhieuTrong"  /><label>In tất cả phiếu điểm đã chấm</label></td>
	   <td width="65"><label>
        <input type="button" name="Button" value="In Phiếu Điểm"  onclick="messageWindow('Nhập điểm hiệu quả')"/>
        </label></td>
      </tr>
  </table>
  <p>
  
 
  <table width="100%" border="1">
    <tr>
      <td width="282" rowspan="2"><div align="center"><strong>CÁC THÀNH PHẦN C&Ocirc;NG NGH&#7878;</strong></div></td>
      <td colspan="2"><div align="center"><strong>&#272;IỂM CHO </strong></div></td>
      <td width="105" rowspan="2" align="right"><div align="center"><strong>TIÊU CHUẨN ĐIỂM</strong><br />
      m</div></td>
    </tr>
    <tr>
      <td width="67"><div align="center">min</div></td> 
      <td width="72"><div align="center">max</div></td>
    </tr>
    
	<!-- T Thiết Bị ------------------------------------------------------------------------------------------------------ -->
	<tr>
      <td><div align="center"><strong>T - Thiết b&#7883;</strong></div></td>
      <td><div align="center">Pmin</div></td>
      <td><div align="center">Pmax</div></td>
      <td><div align="center">Theo mức &#273;ạt tr&ecirc;n mức thiết k&#7871;</div></td>
    </tr>
     	<%  dem =1
			while (not RSBGC.EOF)
		%>
	<tr>
      <td align="center"><label><%=RSBGC("TenBuocGiaCong")%></label>
        <input type="hidden" name="hiddengc<%=dem%>" value="<%=RSBGC("MaBuocGiaCong")%>"/></td>
		 <%
	sqlt = "SELECT Ptmax,Ptmin From DiemHieuQuaCongNghe_KyThuat where MaThanhVien=" & Request.QueryString("ma_tv") & " and MaBuocGiaCong=" & RSBGC(0) 
		RsDiemt.Open sqlt,conn 
		
		dim diemPtmax
		dim diemPtmin
		
		if (not RsDiemt.EOF) then 
			diemPtmax = RsDiemt("Ptmax")
			diemPtmin = RsDiemt("Ptmin")
		else
			diemPtmax = 0
			diemPtmin = 0
		end if
		RsDiemt.close
			  
			  %>
      <td><input name="idpmin<%=dem%>" type="text" id="idpmin<%=dem%>" size="5" value="<%=diemPtmin%>" onblur="if ((this.value>=10)||(this.value<1)){alert('Điểm không được nhỏ hơn 1 hoặc lớn hơn 10'); this.value='1';};"/></td>
      <td><input name="idpmax<%=dem%>" type="text" id="idpmax<%=dem%>" size="5" value="<%=diemPtmax%>" onblur="if ((this.value>=10)||(this.value<1)){alert('Điểm không được nhỏ hơn 1 hoặc lớn hơn 10'); this.value='1';};"/></td>
     <%if dem=1 then  %> 
	 <td rowspan="<%=RsGiaCongCount%>">- Trên 80% : 8,9<br>- Từ 70%-80% : 7,8<br>- Từ 60%-70% : 6,7<br>- Từ 50%-60% : 5,6<br>- Dưới 50% : 3,4,5</td>
	 <%end if %>
	 
    </tr>
	 <%
			dem=dem+1
			RSBGC.MoveNext
			
			wend
			
		%>
		  <input name="count" type="hidden" id="count" size="4" value="<%=dem%>" />
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
	   <td>&nbsp;</td>
	    <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center"><em>Tính trung bình cộng</em></div></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="left">Pmin = 
        &nbsp;<input name="mint" type="text" id="mint" />
      </div></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="left">Pmax =
          <input name="maxt" type="text" id="maxt" />
          <input type="button" name="tinhpmaxt" value="Tính" onclick="tinhPT();" />
      </div></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
       <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    <td>&nbsp;</td>
      
     
    </tr>
	<!-- Kết thúc phần T Thiết Bị ------------------------------------------------------------------------------------------ -->
	
    <!-- Phần O Con Người ------------------------------------------------------------------------------------------------- -->
	<tr>
      <td><div align="center"><strong>H - Con người</strong>(Số người)</div></td>
      <td><div align="center">Pmin</div></td>
      <td><div align="center">Pmax</div></td>
      <td><div align="center">Theo hiệu quả công việc</div></td>
    </tr>
     	<% dem = 1
			 while (not RSCN.EOF)
		%>
	<tr>
      <td align="center"> <label><%=RSCN("TenNhanToConNguoi")%></label>
	  <input type="hidden" name="hiddencn<%=dem%>" value="<%=RSCN("MaNhanToConNguoi")%>"/></td>
	   <%
	sqlh = "SELECT Phmax,Phmin From DiemHieuQuaCongNghe_ConNguoi where MaThanhVien=" & Request.QueryString("ma_tv") & " and MaNhanToConNguoi=" & RSCN(0) 
		RsDiemh.Open sqlh,conn 
		
		dim diemPhmax
		dim diemPhmin
		
		if (not RsDiemh.EOF) then 
			diemPhmax = RsDiemh("Phmax")
			diemPhmin = RsDiemh("Phmin")
		else
			diemPhmax = 0
			diemPhmin = 0
		end if
		RsDiemh.close
			  
			  %>
      <td><input name="idhmin<%=dem%>" type="text" id="idhmin<%=dem%>" size="5" value="<%=diemPhmin%>" onblur="if ((this.value>=10)||(this.value<1)){alert('Điểm không được nhỏ hơn 1 hoặc lớn hơn 10'); this.value='1';};"/></td>
      <td><input name="idhmax<%=dem%>" type="text" id="idhmax<%=dem%>" size="5" value="<%=diemPhmax%>"  onblur="if ((this.value>=10)||(this.value<1)){alert('Điểm không được nhỏ hơn 1 hoặc lớn hơn 10'); this.value='1';};"/></td>
     <% if dem =1 then %>
	 <td rowspan="<%=RsConNguoiCount%>">Năng suất, sáng tạo, năng động, chính xác, hợp lý hóa :<br>+ Tốt : 7,8,9<br>+ Khá : 6,7,8<br>+ Trung bình : 5,6,7<br>+ Kém : 4,5,6</td>
	 <% end if%>
    </tr>
	 <%
			RSCN.MoveNext
			dem = dem + 1
			wend
		%>
	  <input name="counth" type="hidden" id="counth" size="4" value="<%=dem%>" />
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
	   <td>&nbsp;</td>
	    <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center"><em>Tính trung bình cộng</em></div></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="left">Pmin = 
          &nbsp;<input name="minh" type="text" id="minh" />
      </div></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="left">Pmax =
          <input name="maxh" type="text" id="maxh" />
          <input type="button" name="tinhpmaxh" value="Tính" onclick="tinhPH();" />
      </div></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
	<!-- Kết thúc phần O Con Người ------------------------------------------------------------------------------ -->
	
    <!-- Phần I Thông tin --------------------------------------------------------------------------------------- -->
	<tr>
      <td><div align="center"><strong>I - Thông tin</strong></div></td>
      <td><div align="center">Pmin</div></td>
      <td><div align="center">Pmax</div></td>
      <td><div align="center">Theo hiệu quả thực tế</div></td>
    </tr>
     	<%dem =1
			 while (not RSTT.EOF)
		%>
	<tr>
      <td align="center"> <label><%=RSTT("TenHieuQuaCongNghe_ThongTin")%></label>
	   <input type="hidden" name="hiddentt<%=dem%>" value="<%=RSTT("MaHieuQuaCongNghe_ThongTin")%>"/></td>
     <%
	sqli = "SELECT Pimax,Pimin From DiemHieuQuaCongNghe_ThongTin where MaThanhVien=" & Request.QueryString("ma_tv") & " and MaHieuQuaCongNghe_ThongTin=" & RSTT(0) 
		RsDiemi.Open sqli,conn 
		
		dim diemPimax
		dim diemPimin
		
		if (not RsDiemi.EOF) then 
			diemPimax = RsDiemi("Pimax")
			diemPimin = RsDiemi("Pimin")
		else
			diemPimax = 0
			diemPimin = 0
		end if
		RsDiemi.close
			  
			  %>
	  <td><input name="idimin<%=dem%>" type="text" id="idimin<%=dem%>" size="5" value="<%=diemPimin%>" onblur="if ((this.value>=10)||(this.value<1)){alert('Điểm không được nhỏ hơn 1 hoặc lớn hơn 10'); this.value='1';};"/></td>
      <td><input name="idimax<%=dem%>" type="text" id="idimax<%=dem%>" size="5" value="<%=diemPimax%>"  onblur="if ((this.value>=10)||(this.value<1)){alert('Điểm không được nhỏ hơn 1 hoặc lớn hơn 10'); this.value='1';};"/></td>
      <%if dem =1 then%>
	  <td rowspan="<%=RsThongTinCount%>">- Tốt : 7,8,9<br>- Khá : 6,7,8<br>- Trung bình : 4,5,6<br>- Kém : 3,4,5</td>
	 <%end if%>
    </tr>
	 <%
			RSTT.MoveNext
			dem = dem + 1
			wend
		%>
	  <input name="counti" type="hidden" id="counti" size="4" value="<%=dem%>" />
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
	   <td>&nbsp;</td>
	    <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center"><em>Tính trung bình cộng</em></div></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="left">Pmin = 
          &nbsp;<input name="mini" type="text" id="mini" />
      </div></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="left">Pmax =
          <input name="maxi" type="text" id="maxi" />
          <input type="button" name="tinhpmaxi" value="Tính" onclick="tinhPI();" />
      </div></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
	<!-- Kết thúc phần I Thông tin -------------------------------------------------------------------------------- -->
	
	<!-- Phần O Tổ chức --------------------------------------------------------------------------------------- -->
    <tr>
      <td><div align="center"><strong>O - Tổ chức</strong></div></td>
      <td><div align="center">Pmin</div></td>
      <td><div align="center">Pmax</div></td>
      <td><div align="center">Theo hiệu quả thực tế</div></td>
    </tr>
     	<%dem = 1
			while (not RSTC.EOF)
		%>
	<tr>
      <td align="center"> <label><%=RSTC("TenHieuQuaCongNghe_ToChuc")%></label>
	  <input type="hidden" name="hiddentc<%=dem%>" value="<%=RSTC("MaHieuQuaCongNghe_ToChuc")%>"/></td>
     <%
	sqlo = "SELECT Pomax,Pomin From DiemHieuQuaCongNghe_ToChuc where MaThanhVien=" & Request.QueryString("ma_tv") & " and MaHieuQuaCongNghe_ToChuc=" & RSTC(0) 
		RsDiemo.Open sqlo,conn 
		
		dim diemPomax
		dim diemPomin
		
		if (not RsDiemo.EOF) then 
			diemPomax = RsDiemo("Pomax")
			diemPomin = RsDiemo("Pomin")
		else
			diemPomax = 0
			diemPomin = 0
		end if
		RsDiemo.close
			  
			  %>
	 
	  <td><input name="idomin<%=dem%>" type="text" id="idomin<%=dem%>" size="5" value="<%=diemPomin%>"  onblur="if ((this.value>=10)||(this.value<1)){alert('Điểm không được nhỏ hơn 1 hoặc lớn hơn 10'); this.value='1';};"/></td>
      <td><input name="idomax<%=dem%>" type="text" id="idomax<%=dem%>" size="5" value="<%=diemPomax%>"  onblur="if ((this.value>=10)||(this.value<1)){alert('Điểm không được nhỏ hơn 1 hoặc lớn hơn 10'); this.value='1';};"/></td>
     <%if dem = 1 then %>
	 <td rowspan="<%=RsToChucCount%>">- Có hiệu lực, đạt kết quả sản xuất tốt : 7,8,9<br>- Khá : 5,6,7<br>- Bình thường : 4,5,6<br>- Kém : 3,4,5 </td>
	 <%end if%>
	 
    </tr>
	 <%
			RSTC.MoveNext
			dem = dem + 1
			wend
		%>
	  <input name="counto" type="hidden" id="counto" size="4" value="<%=dem%>" />
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
	   <td>&nbsp;</td>
	    <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center"><em>Tính trung bình cộng</em></div></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="left">Pmin = 
          &nbsp;<input name="mino" type="text" id="mino" />
</div></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="left">Pmax =
          <input name="maxo" type="text" id="maxo" />
          <input type="button" name="tinhpmaxo" value="Tính" onclick="tinhPO();" />
      </div></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
	<!-- Kết thúc phần O Tổ chức ------------------------------------------------------------------------------------- -->
  </table>
  <p>  
<center><input type="submit" name="chapnhan" value="Chấp Nhận" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" name="huybo" value="Hủy Bỏ" /></center>
  </p>




  <input name="txtan" type="hidden" id="txtan" size="5" value="<%Response.Write dem %>" />
  <%end if%>
</form><%
'end if
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
