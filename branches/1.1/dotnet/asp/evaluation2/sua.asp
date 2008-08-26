<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/hinhmaunguoidung.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Sửa thông tin</title>
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
</script>
<!--#include file=connection.inc-->
<%
'Trang nay cho phep Sua cho nhieu loai,VD: hoi dong,thanh vien hoi dong...
Dim RS2
Set RS2 = Server.CreateObject("ADODB.Recordset")
Dim loai
dim sqlStr
Dim errorStr
myDNSession = Session("ma_dn")
errorStr = Request.QueryString("errorStr")
if(errorStr <> "" or errorStr <> null) then
	Response.Write("<h4 align=center>"&errorStr&"</h4>")
end if
Set loai = Request.QueryString("loai")'lay ra loai de sua
'-----------------------------------------Sua HoiDong---------------------------------------
if(loai = "HoiDong") then'Loai o day la loai Hoi Dong
if(myDNSession=0) then
	Response.Write("Bạn không có quyền sửa hội đồng.Xin vui lòng quay lại")
else
	TenHoiDong = Request.QueryString("TenHoiDong")
	'MaDoanhNghiep = Request.QueryString("MaDoanhNghiep")
	NgayThanhLap = Request.QueryString("NgayThanhLap")
	QuyetDinh = Request.QueryString("QuyetDinh")
	NguoiKy = Request.QueryString("NguoiKy")
	MaHoiDong = Request.QueryString("MaHoiDong")
	
	MaDoanhNghiep = Session("ma_dn")
	'sql2 = "SELECT TenDoanhNghiep FROM DoanhNghiep WHERE Status = 1 AND MaDoanhNghiep = " & MaDoanhNghiep
	sql2 = "SELECT TenDoanhNghiep FROM DoanhNghiep"
	Dim RS7
	Set RS7 = Server.CreateObject("ADODB.Recordset")
	RS7.Open sql2, conn
	TenDoanhNghiep = RS7(0)
	RS7.Close
	
	'lay ra thong tin cua hoidong nay:
	sqlStr = "SELECT * FROM HoiDong WHERE MaHoiDong="&MaHoiDong
	RS2.Open sqlStr, conn
	
	'Truoc tien se hien ra form cho ho sua thong tin
	'Sau do se sua thong tin cung ngay tai trang nay
	'de biet la se hien ra form sua hay se sua thong tin
	'thi ta kiem tra xem cac bien sau co rong hay ko:
	
	if(TenHoiDong="" or MaDoanhNghiep="" or NgayThanhLap="" or errorStr <> "" or errorStr <> null ) then
		'tao ra form cho ho sua:
%>
<link href="Calendar.css" rel="stylesheet" type="text/css">
<script language="javascript" src="Script.js">
</script>
<script language="javascript" src="Calendar.js">
</script>
					  <script type="text/javascript">
	<!--
	function MM_findObj(n, d) { //v4.01
	  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
		d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
	  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
	  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
	  if(!x && d.getElementById) x=d.getElementById(n); return x;
	}
	
	function MM_validateForm() { //v4.0
	  var i,p,q,nm,test,num,min,max,errors='',args=MM_validateForm.arguments;
	  for (i=0; i<(args.length-2); i+=3) { test=args[i+2]; val=MM_findObj(args[i]);
		if (val) { nm=val.name; if ((val=val.value)!="") {
		  if (test.indexOf('isEmail')!=-1) { p=val.indexOf('@');
			if (p<1 || p==(val.length-1)) errors+='- '+nm+' must contain an e-mail address.\n';
		  } else if (test!='R') { num = parseFloat(val);
			if (isNaN(val)) errors+='- '+nm+' must contain a number.\n';
			if (test.indexOf('inRange') != -1) { p=test.indexOf(':');
			  min=test.substring(8,p); max=test.substring(p+1);
			  if (num<min || max<num) errors+='- '+nm+' must contain a number between '+min+' and '+max+'.\n';
		} } } else if (test.charAt(0) == 'R') errors += '- '+nm+' \n'; }
	  } if (errors) alert('Bạn phải nhập đầy đủ các thông tin sau đây:\n'+errors);
	  document.MM_returnValue = (errors == '');
	}
	//-->
					  </script>
<script language="JavaScript" type="text/javascript">
function setValue(page) 
{
	viewFrm.page.value=page; 
	viewFrm.submit();
}
</script>
<h3 align="center">Sửa thông tin Hội đồng:<%=RS2(1)%></h3>
<p align="center"><a>Mời bạn điền đầy đủ thông tin và ấn vào nút Sửa để hoàn tất việc thay đổi thông tin hoặc ấn vào nút Bỏ qua để phục hồi lại trạng thái ban đầu.</a></p>
<%
%>
<form action="Sua.asp" method="get" name="form2" onSubmit="MM_validateForm('TenHoiDong','','R','NgayThanhLap','','R');return document.MM_returnValue">
  <table width="95%" border="0" align="center">
    <tr>
      <td width="50%" align="right">T&ecirc;n hội &#273;ồng</td>
      <td><input name="TenHoiDong" title="Tên của Hội Đồng" size="47" type="text" id="TenHoiDong" value="<%=RS2(1)%>">
	  	<input name="MaDoanhNghiep" title="Tên của Doanh Nghiệp" size="47" type="hidden" disabled="disabled" id="MaDoanhNghiep" value="<%=TenDoanhNghiep%>">	  </td>
    </tr>
    <tr>
      <td align="right">Ngày thành lập</td>
      <td><input readonly="1" name="NgayThanhLap" title="Ngày thành lập hội đồng" type="text" id="NgayThanhLap" value="<%=RS2(3)%>">      
      <input name="btnExpiryDate" type="button" value="Ngày" onclick="return showCalendar('NgayThanhLap')">	  </td>
    </tr>
		  <tr>
		  <td align="right">Ngày ký quyết định thành lập</td>
		  	<td><input type="text" name="QuyetDinh" value="<%=RS2(5)%>" /></td>
			</tr>
		  <tr>
		  <td align="right">Người ký</td>
		  <td><input type="text" name="NguoiKy" value="<%=RS2(6)%>" /></td>
		  </tr>
    <tr>
      <td align="right"><input type="submit" name="Submit" value="Sửa"></td>
      <td><input name="Reset" type="reset" id="Reset" value="Bỏ qua">
	  	<input type="hidden" name="loai" style="display:none " value="HoiDong">
		<input type="hidden" name="MaHoiDong" style="display:none " value="<% Response.Write(MaHoiDong) %>">      </td>
    </tr>
  </table>
</form>
<%
sqlStr = "SELECT * FROM XemDSHoiDong WHERE MaDoanhNghiep="& Session("ma_doanhnghiep")
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
<h3 align="center">Danh sách các Hội đồng:</h3>
<table width="100%" border="1" cellpadding="5">
			  <tr align="center" >
				<td width="16%"><b>Tên hội đồng</b></td>
				<td width="36%"><b>Chấm điểm cho doanh nghiệp</b></td>
				<td width="14%"><b>Ngày thành lập</b></td>
				<%
				if(Session("ma_dn")>0) then
				%>
					<td><b>Chức năng </b><b></b></td>
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
			%>     </p>     <form action="Sua.asp" method="get" name="viewFrm" id="viewFrm">
				
			  <p>
				  <input type="hidden" name="page" value="<%=rsCurrentPage%>" />
				  <input type="hidden" name="loai" value="HoiDong" />
				  <input type="hidden" name="MaHoiDong" value="MaHoiDong" />
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
						Response.Write("<a href=JavaScript:setValue(" & (CInt(rsCurrentPage) & CInt(1)) & ");>Sau</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
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
<br />
<%
Dim RS3
Set RS3 = Server.CreateObject("ADODB.Recordset")
sqlStr3 = "SELECT * FROM XemDSThanhVienTheoHoiDong WHERE MaHoiDong = '"&MaHoiDong&"'"
RS3.Open sqlStr3, conn
%>
<br />
					<h3 align="center">Danh sách các Thành viên hiện đang ở trong Hội đồng này: </h3>
                    <ul>
<li>Ấn vào "Sửa" để thay đổi thông tin của Thành Viên này.</li>
<li>Ấn vào "Bỏ ra khỏi Hội Đồng" để bỏ Thành Viên này ra khỏi Hội Đồng.</li>
</ul>
					<table width="100%" border="1" cellpadding="5">
					  <tr align="center" >
						<td><b>Tên Thành Viên</b></td>
						<td><b>Tên Doanh Nghiệp</b></td>
						<td><b>Chức danh </b></td>
						<td colspan="2"><b>Chức năng </b><b></b></td>
					  </tr>
					<%		
					while( (NOT RS3.EOF))
					%>
						<tr>
							<td><%=RS3(1)%>&nbsp;</td>
							<td><%=RS3(3)%>&nbsp;</td>
							<td><%=RS3(2)%>&nbsp;</td>
							<td><a title="Sửa thông tin của Thàn Viên này" href="Sua.asp?loai=ThanhVien&amp;MaThanhVien=<%=RS3(0)%>")>Sửa</a></td>
							<td><a title="Loại Thành Viên này ra khỏi Hội Đồng" onclick="return bao()" href="Xoa.asp?loai=ThanhVien&amp;MaThanhVien=<%=RS3(0)%>&kieu=LoaiTvRaKhoiHD")>Bỏ ra khỏi Hội Đồng</a></td>
						</tr>
					<%	
					RS3.MoveNext
					wend
					RS3.Close
					%>
		</table>
		<p align="center"><input type="button" onclick="window.location='ThemThanhVien.asp?MaHoiDong=<%=RS2(0)%>&TenHoiDong=<%=RS2(1)%>'" value="Thêm thành viên vào Hội Đồng")></p>
<input type="button" onclick="history.back()" value=" Quay lại " />
<%
	else 
		'kiem tra xem thanh vien nay co trung voi thanh vien khac khong:
		sqlStr = "SELECT COUNT(MaHoiDong) FROM HoiDong WHERE TenHoiDong = N'"&TenHoiDong&"' AND MaDoanhNghiep = '"&MaDoanhNghiep&"' AND NgayThanhLap = '"&NgayThanhLap&"' AND MaHoiDong <> '"&MaHoiDong&"'"
		RS2.Close
		RS2.Open sqlStr, conn
		if(RS2(0)>0) then
			errorStr = "Bạn nhập trùng với thông tin của một Hội Đồng khác,xin bạn vui lòng nhập lại."
			RS2.Close
			Response.Write("if")
			Response.Redirect("Sua.asp?loai=HoiDong&errorStr="&errorStr&"&MaHoiDong="&MaHoiDong)
		else
			'bat dau sua:
			'chay procedure:
			'Response.Write(MaDoanhNghiep)
			sqlStr = "EXECUTE SuaHoiDong_PROC @MaHoiDong = "&MaHoiDong&" , "
			sqlStr = sqlStr&"@TenHoiDong=N'"&TenHoiDong&"', @MaDoanhNghiep="&MaDoanhNghiep&", "
			sqlStr = sqlStr&"@NgayThanhLap='"&NgayThanhLap&"', @QuyetDinh=N'"&QuyetDinh&"', @NguoiKy=N'"&NguoiKy&"'"
			conn.Execute(sqlStr)
			'Response.Write(sqlStr)
			'Response.Write("Completed")
			Response.Redirect("XemDanhSach.asp?loai=HoiDong")
		end if
	end if
end if
'-----------------------------------------Sua ThanhVien---------------------------------------
else if(loai = "ThanhVien") then
if(myDNSession=0) then
	Response.Write("Bạn không có quyền sửa thành viên.Xin vui lòng quay lại")
else
	MaThanhVien = Request.QueryString("MaThanhVien")
	
	MaHoiDong = Request.QueryString("MaHoiDong")
	TenThanhVien = Request.QueryString("TenThanhVien")
	MaViTri = Request.QueryString("MaViTri")
	TenViTri = Request.QueryString("TenViTri")
	MaDoanhNghiep = Request.QueryString("MaDoanhNghiep")
	
	if(MaDoanhNghiep="" or errorStr <> "" or errorStr <> null ) then
		'lấy ra thông tin của thành viên này:
		sqlStr = "SELECT * FROM XemDSThanhVien WHERE MaThanhVien = '"&MaThanhVien&"'"
		RS2.Open sqlStr, conn
		'hien ra form de sua:
		%>
<script language="JavaScript" type="text/javascript">
function setValue(page) 
{
	viewFrm.page.value=page; 
	viewFrm.submit();
}
</script>
<script language="JavaScript" type="text/javascript">
<!--
function showIt(value)
{
	if(value=="-1")
	{
		form1.MaViTri.style.display="none";
		form1.TenViTri.style.display="block";
	}
}
function showItHD(value)
{
	if(value=="-1")
	{
		window.location = "TaoMoiHoiDong.asp";
	}
}
	function setValue(page) 
	{
		viewFrm.page.value=page; 
		viewFrm.submit();
	}
function showItDN(value)
{
	if(value=="-1")
	{
		window.location = "TaoMoiDoanhNghiep.asp";
	}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_validateForm() { //v4.0
  var i,p,q,nm,test,num,min,max,errors='',args=MM_validateForm.arguments;
  for (i=0; i<(args.length-2); i+=3) { test=args[i+2]; val=MM_findObj(args[i]);
    if (val) { nm=val.name; if ((val=val.value)!="") {
      if (test.indexOf('isEmail')!=-1) { p=val.indexOf('@');
        if (p<1 || p==(val.length-1)) errors+='- '+nm+' phải là địa chỉ thư điện tử.\n';
      } else if (test!='R') { num = parseFloat(val);
        if (isNaN(val)) errors+='- '+nm+' phải là số.\n';
        if (test.indexOf('inRange') != -1) { p=test.indexOf(':');
          min=test.substring(8,p); max=test.substring(p+1);
          if (num<min || max<num) errors+='- '+nm+' must contain a number between '+min+' and '+max+'.\n';
    } } } else if (test.charAt(0) == 'R') errors += '- '+nm+' \n'; 
	}
  } 
  if(form1.MaViTri.style.display=="none" && form1.TenViTri.style.display=="block" && form1.TenViTri.value == "")
  {
  		errors+='- TenViTri.\n';
  }
	else if(form1.MaViTri.value == 0 && form1.TenViTri.style.display=="none")
	{
		errors+='- Xin bạn vui lòng chọn chức danh. \n'; 
	}
	
  if (errors) alert('Bạn phải điền đầy đủ các thông tin sau đây:\n'+errors);
  document.MM_returnValue = (errors == '');
}
//-->
                  </script>
		<h3 align="center">Sửa thông tin Thành viên:<%=RS2(1)%></h3>
		<p align="center"><a>Mời bạn điền đầy đủ thông tin và ấn vào nút Sửa để hoàn tất việc thay đổi thông tin hoặc ấn vào nút Bỏ qua để phục hồi lại trạng thái ban đầu.</a></p>
		<form action="Sua.asp" method="get" name="form1" onSubmit="MM_validateForm('TenThanhVien','','R');return document.MM_returnValue">
		  <table width="100%" border="0" align="center">
			<tr>
			  <td width="50%" align="right">T&ecirc;n thành vi&ecirc;n</td>
			  <td width="50%"><input type="text" name="TenThanhVien" title="Tên thành viên" value="<%=RS2(1)%>">
								<input type="hidden" style="display:none " name="loai" value="ThanhVien">
								<input type="hidden" style="display:none " name="MaThanhVien" value="<%=RS2(0)%>">  </td>
			</tr>
			<tr>
			  <td align="right">Chức danh </td>
			  <td><select name="MaViTri" onChange="showIt(this.value)">
			  <%
			  sqlStr = "SELECT * FROM ViTri ORDER BY TenViTri"
			  RS.Open sqlStr,conn
			  while(not RS.EOF)
			  %>
				<option value="<%=RS(0)%>" <% if(RS(0)=RS2(5)) then Response.Write("selected") %> ><%=RS(1)%></option>
			  <%
			  RS.MoveNext
			  wend
			  RS.Close
			  %>
				<option value="-1">Thêm mới chức danh...</option>
			  </select>
			  <input type="text" name="TenViTri" style="display:none">	  </td>
			</tr>
			<tr>
			  <td align="right">Tên Doanh Nghiệp hiện đang công tác </td>
			  <td><select name="MaDoanhNghiep" onChange="showItDN(this.value)">
			  <%
			  sqlStr = "SELECT MaDoanhNghiep, TenDoanhNghiep FROM DoanhNghiep WHERE Status = 1 ORDER BY TenDoanhNghiep"
			  RS.Open sqlStr,conn
			  while(not RS.EOF)
			  %>
				<option value="<%=RS(0)%>" <% if(RS(0)=RS2(2)) then Response.Write("selected") %>  ><%=RS(1)%></option>
			  <%
			  RS.MoveNext
			  wend
			  RS.Close
			  %>
				<option value="-1">Thêm mới Doanh Nghiệp...</option>
			  </select>			  </td>
			</tr>
			<tr>
			  <td align="right"><input type="submit" name="Submit" value="Sửa"></td>
			  <td><input type="reset" name="Submit2" value="Bỏ qua"></td>
			</tr>
		  </table>
		</form>
<h3 align="center">Danh sách các thành viên:</h3>
<%
sqlStr = "SELECT * FROM XemDsTVChamDiemChoTungDN WHERE MaDoanhNghiep="& Session("ma_dn")
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
<table width="100%" border="1" cellpadding="5">
			  <tr align="center" >
				<td><b>Tên thành viên</b></td>
				<td><b>Tên hội đồng</b></td>
				<td><b>Chức danh </b></td>
			  </tr>
			<%		
			while( (NOT RS.EOF) and RS.AbsolutePage = rsCurrentPage)
			%>
				<tr>
					<td><%=RS(1)%>&nbsp;</td>
					<td><%=RS(6)%>&nbsp;</td>
					<td><%=RS(4)%>&nbsp;</td>
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
			%>     </p>     <form action="Sua.asp" method="get" name="viewFrm" id="viewFrm">
				
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
						Response.Write("<a href=JavaScript:setValue(" & (CInt(rsCurrentPage) & CInt(1)) & ");>Sau</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
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
		<input type="button" onclick="history.back()" value=" Quay lại " />
		<%
	else
		'kiem tra xem thanh vien nay co trung voi thanh vien khac khong:
		sqlStr = "SELECT COUNT(MaThanhVien) FROM ThanhVien WHERE TenThanhVien = N'"&TenThanhVien&"' AND MaViTri = '"&MaViTri&"' AND MaDoanhNghiep = '"&MaDoanhNghiep&"' AND MaThanhVien <> '"&MaThanhVien&"'"
		RS2.Open sqlStr, conn
	if(RS2(0)>0) then
		errorStr = "Bạn nhập trùng với thông tin của một thành viên khác,xin bạn vui lòng nhập lại."
		RS2.Close
		Response.Redirect("Sua.asp?loai=ThanhVien&errorStr="&errorStr&"&MaThanhVien="&MaThanhVien)
	else
		'bat dau sua:
		'chay procedure:
		sqlStr = "EXECUTE SuaThanhVien_PROC @MaThanhVien='"&MaThanhVien&"', "
		sqlStr = sqlStr&"@TenThanhVien=N'"&TenThanhVien&"' , @MaViTri='"&MaViTri&"' , @TenViTri=N'"&TenViTri&"' , "
		sqlStr = sqlStr&"@MaDoanhNghiep='"&MaDoanhNghiep&"'"
		conn.Execute(sqlStr)
		
		Response.Redirect("XemDanhSach.asp?loai=ThanhVien")
		
	'	Response.Write("else")
	end if
end if
end if
'-----------------------------------------Sua DoanhNghiep---------------------------------------
else if(loai = "DoanhNghiep") then
	MaDoanhNghiep = Request.QueryString("MaDoanhNghiep")
	TenDoanhNghiep = Request.QueryString("TenDoanhNghiep")
	ChucNang = Request.QueryString("ChucNang")
	DiaChi = Request.QueryString("DiaChi")
	SoDienThoai_Fax = Request.QueryString("SoDienThoai_Fax")
	Email = Request.QueryString("Email")
	Website = Request.QueryString("Website")
	NamThanhLap = Request.QueryString("NamThanhLap")
	Info = Request.QueryString("Info")
	
	if(Email= "") then
		Email = ""
	end if
	if(Website = "") then
		Website = "Không có"
	end if

	if(TenDoanhNghiep="" or errorStr <> "" or errorStr <> null) then
		'lay ra thong tin cua doanh nghiep nay:
		sqlStr = "SELECT * FROM XemDSDoanhNghiep WHERE MaDoanhNghiep='"&MaDoanhNghiep&"'"
		RS2.Open sqlStr, conn
		'hien ra form de thay doi thong tin:
%>
	<script type="text/javascript">
	<!--
function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_validateForm() { //v4.0
  var i,p,q,nm,test,num,min,max,errors='',args=MM_validateForm.arguments;
  for (i=0; i<(args.length-2); i+=3) { test=args[i+2]; val=MM_findObj(args[i]);
    if (val) { nm=val.name; if ((val=val.value)!="") {
      if (test.indexOf('isEmail')!=-1) { p=val.indexOf('@');
        if (p<1 || p==(val.length-1)) errors+='- '+nm+' phải là địa chỉ thư điện tử.\n';
      } else if (test!='R') { num = parseFloat(val);
        if (isNaN(val)) errors+='- '+nm+' phải là số.\n';
        if (test.indexOf('inRange') != -1) { p=test.indexOf(':');
          min=test.substring(8,p); max=test.substring(p+1);
          if (num<min || max<num) errors+='- Năm thành lập phải nằm trong khoảng từ năm '+min+' đến năm '+max+'.\n';
    } } } else if (test.charAt(0) == 'R') errors += '- '+nm+' is required.\n'; }
  } if (errors) alert('Bạn phải điền đầy đủ các thông tin sau đây:\n'+errors);
  document.MM_returnValue = (errors == '');
}
	//-->
	</script>
<h3 align="center">Sửa thông tin Doanh nghiệp:<%=RS2(0)%></h3>
<p align="center"><a>Mời bạn điền đầy đủ thông tin và ấn vào nút Sửa để hoàn tất việc thay đổi thông tin hoặc ấn vào nút Bỏ qua để phục hồi lại trạng thái ban đầu.</a></p>
<form action="Sua.asp" method="get" name="form1" id="form1" onsubmit="MM_validateForm('TenDoanhNghiep','','R','ChucNang','','R','Email','','NisEmail','NamThanhLap','','NinRange1900:2500','DiaChi','','R');return document.MM_returnValue">
  <table width="95%" border="0" align="center">
    <tr>
      <td width="25%" align="right">Tên Doanh Nghiệp</td>
      <td width="75%"><input name="TenDoanhNghiep" type="text" id="TenDoanhNghiep" value="<%=RS2(0)%>" size="60" /></td>
    </tr>
    <tr>
      <td align="right">Ch&#7913;c n&#259;ng</td>
      <td><input name="ChucNang" type="text" id="ChucNang" value="<%=RS2(1)%>" size="60" /></td>
    </tr>
    <tr>
      <td align="right">&#272;&#7883;a ch&#7881;</td>
      <td><textarea name="DiaChi" cols="47" id="DiaChi"><%=RS2(2)%></textarea></td>
    </tr>
    <tr>
      <td align="right">S&#7889; &#273;i&#7879;n tho&#7841;i - Fax</td>
      <td><input name="SoDienThoai_Fax" type="text" id="SoDienThoai_Fax" value="<%=RS2(4)%>" size="60" /></td>
    </tr>
    <tr>
      <td align="right">Email</td>
      <td><input name="Email" type="text" id="Email" value="<%=RS2(5)%>" size="60" /></td>
    </tr>
    <tr>
      <td align="right">Website</td>
      <td><input name="Website" type="text" id="Website" value="<%=RS2(6)%>" size="60" /></td>
    </tr>
    <tr>
      <td align="right">N&#259;m th&agrave;nh l&#7853;p</td>
      <td><input name="NamThanhLap" type="text" id="NamThanhLap" value="<%=RS2(3)%>" size="60" />
	  		<input type="hidden" name="loai" style="display:none" value="DoanhNghiep" />
			<input type="hidden" name="MaDoanhNghiep" style="display:none" value="<%=RS2(7)%>" />	  </td>
    </tr>
	<tr>
		<td align="right">Giới thiệu</td>
		<td><textarea name="Info" cols="47" rows="4" id="Info" ><%=RS2(10)%></textarea></td>
	</tr>
    <tr>
      <td align="right">Trang giới thiệu </td>
      <td><a href="<% =RS2("http")%>" target="_blank" ><% if len(RS2("http"))>0 then %><%=right(RS2("http"),len(RS2("http"))-10)%> <% end if%></a>&nbsp;</td>
    </tr>
    <tr>
      <td align="right">&nbsp;</td>
      <td>
        <div align="right">
          <input type="submit" name="Submit4" value=" Sửa " />
          <input name="Reset" type="reset" id="Reset" value="Bỏ qua" />      
          </div></td>
    </tr>
  </table>
</form>

<form action="ToFileSystem.asp" method="post" enctype="multipart/form-data" name="uploadwebsite" target="_self" id="uploadwebsite">
  <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td><label>Cập nhật trang chủ của công ty(Chú ý, bạn chỉ được cập nhật 01 trang có định dạng .htm, hoặc .html và không có ảnh)<span class="style2"><%=session("error")%></span></label></td>
      </tr>
    <tr>
      <td><input name="file1" type="file" id="file1" size="45" />
        <input type="submit" name="Submit3" value="Submit" /></td>
    </tr>
  </table>
</form>

<form action="uploadlogo.asp?idcp=<%=FName%>" method="post" enctype="multipart/form-data" name="uploadlogo" target="_self" id="uploadlogo">
  <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td><label>Cập nhật logo của công ty(Chú ý, bạn chỉ được cập nhật 01 ảnh có định dạng .gif, png hoặc .jpg )<span class="style2"><%=session("error2")%></span></label></td>
    </tr>
    <tr>
      <td><input name="file12" type="file" id="file12" size="45" />
          <input type="submit" name="Submit32" value="Submit" /></td>
    </tr>
  </table>
</form>
<%
if(myDNSession=0) then
%>
	<h3 align="center">Danh sách các Doanh nghiệp:</h3>
			<table width="100%" border="1" cellpadding="5">
						  <tr align="center" >
							<td width="21%"><b>Tên doanh nghiệp</b></td>
							<td width="23%"><b>Hội Đồng chấm điểm</b></td>
							<td colspan="5"><b>Chức năng </b><b></b></td>
						  </tr>
						<%		
					'Phan trang--------------------------------------------------------------------------------------
					sqlStr = "SELECT DISTINCT TenDoanhNghiep, DiaChi, SoDienThoai_Fax, MaDoanhNghiep FROM XemDSDoanhNghiep"
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
										DSHoiDong = DSHoiDong & RSnew(0) & " <br> "
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
				%>
	</table>
			   </p>	 <p>&nbsp;</p>	 <%
				' Hien thi phan duyet phan trang
				  ShowPageNavigation rsCurrentPage, rsPageCount
				' rs.Open;
				%>     </p>     <form action="Sua.asp" method="get" name="viewFrm" id="viewFrm">
					
				  <p>
					  <input type="hidden" name="page" value="<%=rsCurrentPage%>" />
					  <input type="hidden" name="loai" value="DoanhNghiep" />
					  <input type="hidden" name="MaDoanhNghiep" value="MaDoanhNghiep" />
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
							Response.Write("<a href=JavaScript:setValue(" & (CInt(rsCurrentPage) & CInt(1)) & ");>Sau</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
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
				end if
	%>
<input type="button" onclick="history.back()" value=" Quay lại " />
<%
	else
		'kiem tra xem DoanhNghiep nay co trung voi DoanhNghiep khac khong:
		sqlStr = "SELECT COUNT(MaDoanhNghiep) FROM XemDSDoanhNghiep WHERE TenDoanhNghiep = N'"&TenDoanhNghiep&"' AND ChucNang = '"&ChucNang&"' AND SoDienThoai_Fax = '"&SoDienThoai_Fax&"' AND MaDoanhNghiep <> '"&MaDoanhNghiep&"'"
		RS2.Open sqlStr, conn
	if(RS2(0)>0) then
		errorStr = "Bạn nhập trùng với thông tin của một doanh nghiệp khác,xin bạn vui lòng nhập lại."
		RS2.Close
		Response.Redirect("Sua.asp?loai=DoanhNghiep&errorStr="&errorStr&"&MaDoanhNghiep="&MaDoanhNghiep)
	else
		'bat dau sua:
		'chay procedure:
		sqlStr = "EXECUTE SuaDoanhNghiep_PROC @MaDoanhNghiep='"&MaDoanhNghiep&"', @TenDoanhNghiep=N'"&TenDoanhNghiep&"' , "
		sqlStr = sqlStr&"@NamThanhLap='"&NamThanhLap&"' , @DiaChi=N'"&DiaChi&"' , @SoDienThoai_Fax='"&SoDienThoai_Fax&"' , "
		sqlStr = sqlStr&"@Email=N'"&Email&"' , @ChucNang=N'"&ChucNang&"' , @WebSite = N'"&WebSite&"', @Info = N'"&Info&"'"
		conn.Execute(sqlStr)
		if session("ma_dn")>0  then ' admin doanh nghiep
			Response.Redirect("Tao_Moi_chodoanhnghiep.asp")
		else
			Response.Redirect("XemDanhSach.asp?loai=DoanhNghiep")
		end if
	end if
	end if
'else o day
'-----------------------------------------------Sua San Pham------------------------------------
else if(loai = "SanPham") then
if(myDNSession=0) then
	Response.Write("Bạn không có quyền sửa sản phẩm.Xin vui lòng quay lại")
else
	TenDoanhNghiep = Request.QueryString("TenDoanhNghiep")
	MaDoanhNghiep = Request.QueryString("MaDoanhNghiep")
	MaSanPham = Request.QueryString("MaSanPham")
	TenSanPham = Request.QueryString("TenSanPham")
	KyThuatSanXuat = Request.QueryString("KyThuatSanXuat")
	ThiTruong = Request.QueryString("ThiTruong")
	TieuChuanSanPham = Request.QueryString("TieuChuanSanPham")
	NamSanXuat = Request.QueryString("NamSanXuat")
	
	
	if(TenSanPham = "" or errorStr <> "" or errorStr <> null) then
		'lay ra thong tin cua san pham nay:
		sqlStr = "SELECT * FROM XemDSSanPham WHERE MaSanPham="&MaSanPham
		RS.Open sqlStr, conn
		%>
				<script type="text/JavaScript">
		<!--
		function MM_findObj(n, d) { //v4.01
		  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
			d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
		  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
		  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
		  if(!x && d.getElementById) x=d.getElementById(n); return x;
		}
		
		function MM_validateForm() { //v4.0
		  var i,p,q,nm,test,num,min,max,errors='',args=MM_validateForm.arguments;
		  for (i=0; i<(args.length-2); i+=3) { test=args[i+2]; val=MM_findObj(args[i]);
			if (val) { nm=val.name; if ((val=val.value)!="") {
			  if (test.indexOf('isEmail')!=-1) { p=val.indexOf('@');
				if (p<1 || p==(val.length-1)) errors+='- '+nm+' must contain an e-mail address.\n';
			  } else if (test!='R') { num = parseFloat(val);
				if (isNaN(val)) errors+='- '+nm+' phải là số.\n';
				if (test.indexOf('inRange') != -1) { p=test.indexOf(':');
				  min=test.substring(8,p); max=test.substring(p+1);
				  if (num<min || max<num) errors+='- '+nm+' must contain a number between '+min+' and '+max+'.\n';
			} } } else if (test.charAt(0) == 'R') errors += '- '+nm+' \n'; }
		  } if (errors) alert('Bạn phải điền đầy đủ các thông tin sau:\n'+errors);
		  document.MM_returnValue = (errors == '');
		}
		//-->
				</script>
		<h3 align="center">Sửa thông tin Sản phẩm:<%=RS(3)%></h3>
		<p align="center"><a>Mời bạn điền đầy đủ thông tin và ấn vào nút Tạo mới để hoàn tất việc tạo mới Hội Đồng hoặc ấn vào nút Bỏ qua để xóa các thông tin đã điền và nhập lại.</a></p>
		
		<form action="Sua.asp" method="get" name="form2" id="form2" onsubmit="MM_validateForm('TenSanPham','','R','KyThuatSanXuat','','R','ThiTruong','','R','TieuChuanSanPham','','R');return document.MM_returnValue">
		  <table width="93%" border="0" align="center">
			<tr>
			  <td width="50%" align="right">Tên Sản Phẩm</td>
			  <td><input name="TenSanPham" title="Tên của sản phẩm" size="40" type="text" id="TenSanPham" value="<%=RS(3)%>" /></td>
			</tr>
			<tr>
			  <td width="50%" align="right">Kỹ thuật sản xuất</td>
			  <td><input name="KyThuatSanXuat" title="Kỹ thuật sản xuất" size="40" type="text" id="KyThuatSanXuat" value="<%=RS(4)%>" /></td>
			</tr>
			<tr>
			  <td width="50%" align="right">Thị Trường</td>
			  <td><input name="ThiTruong" title="Tên Thị Trường" size="40" type="text" id="ThiTruong" value="<%=RS(5)%>" /></td>
			</tr>
			<tr>
			  <td width="50%" align="right">Tiêu Chuẩn Sản Phẩm</td>
			  <td><input name="TieuChuanSanPham" title="Tiêu Chuẩn của Sản Phẩm" size="40" type="text" id="TieuChuanSanPham" value="<%=RS(6)%>" /></td>
			</tr>
			<tr>
			  <td width="50%" align="right">Năm sản xuất</td>
			  <td><input name="NamSanXuat" title="Năm sản xuất" size="40" type="text" id="NamSanXuat" value="<%=RS(7)%>" /></td>
			</tr>
			<tr>
			  <td align="right"><input type="submit" name="Submit" value=" Sửa " /></td>
			  <td><input name="Reset" type="reset" id="Reset" value="B&#7887; qua" />
			  <input type="hidden" name="loai" value="SanPham" />
			  <input type="hidden" name="MaSanPham" value="<%=MaSanPham%>" />
			  <input type="hidden" name="MaDoanhNghiep" value="<%=MaDoanhNghiep%>" />
			  <input type="hidden" name="TenDoanhNghiep" value="<%=TenDoanhNghiep%>" />			  </td>
			</tr>
		  </table>
		</form>
		<%
		sqlStr = "SELECT * FROM XemDSSanPham WHERE MaDoanhNghiep="&session("ma_dn")
				'Phan trang--------------------------------------------------------------------------------------
				RS.Close
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
		%>
		<h3 align="center">Danh sách sản phẩm</h3>
		<table width="100%" border="1" cellpadding="5">
					  <tr align="center" >
						<td><b>Tên sản phẩm</b></td>
						<td><b>Kỹ thuật sản xuất</b></td>
						<td><b>Thị trường</b></td>
						<td><b>Tiêu chuẩn sản phẩm</b></td>
						<td><b>Năm sản xuất</b></td>
						<td><b>Chức năng </b><b></b></td>
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
					%>     </p>     <form action="Sua.asp" method="get" name="viewFrm" id="viewFrm">
						
					  <p>
						  <input type="hidden" name="page" value="<%=rsCurrentPage%>" />
						  <input type="hidden" name="loai" value="SanPham" />
						  <input type="hidden" name="MaDoanhNghiep" value="<%=MaDoanhNghiep%>" />
						  <input type="hidden" name="TenDoanhNghiep" value="<%=TenDoanhNghiep%>" />
						  <input type="hidden" name="kieu" value="<%=kieu%>" />
						  <input type="hidden" name="MaSanPham" value="<%=MaSanPham%>" />
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
								Response.Write("<a href=JavaScript:setValue(" & (CInt(rsCurrentPage) & CInt(1)) & ");>Sau</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
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
<input type="button" onclick="history.back()" value=" Quay lại " />
		<%
	else
		'bat dau sua:
		'chay procedure:
		sqlStr = "EXECUTE SuaSanPham_PROC @MaSanPham='"&MaSanPham&"', @TenSanPham=N'"&TenSanPham&"' , "
		sqlStr = sqlStr&"@KyThuatSanXuat=N'"&KyThuatSanXuat&"' , @ThiTruong=N'"&ThiTruong&"' , @TieuChuanSanPham=N'"&TieuChuanSanPham&"' , "
		sqlStr = sqlStr&"@NamSanXuat='"&NamSanXuat&"'"
		conn.Execute(sqlStr)
		url = "XemDanhSach.asp?loai=SanPham&MaDoanhNghiep="&MaDoanhNghiep&"&TenDoanhNghiep="&TenDoanhNghiep
		Response.Redirect(url)
	end if
end if
'------------------------------------------------sua buoc gia cong------------------------
else if(loai = "BuocGiaCong")then
if(myDNSession=0) then
	Response.Write("Bạn không có quyền sửa bước gia công.Xin vui lòng quay lại")
else
	MaBuocGiaCong = Request.QueryString("MaBuocGiaCong")
	TenBuocGiaCong = Request.QueryString("TenBuocGiaCong")
	AlphaT = Request.QueryString("AlphaT")
	GhiChu = Request.QueryString("GhiChu")
	
	if(TenBuocGiaCong="" or errorStr <> "" or errorStr <> null) then
		'lay ra thong tin cua buoc gia cong nay:
		sqlStr = "SELECT MaBuocGiaCong, TenBuocGiaCong, AlphaT, GhiChu FROM XemDSBuocGiaCong WHERE MaBuocGiaCong="&MaBuocGiaCong
		RS.Open sqlStr, conn
		'Response.Write("Form Sua")
%>
				<script type="text/JavaScript">
		<!--
		function MM_findObj(n, d) { //v4.01
		  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
			d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
		  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
		  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
		  if(!x && d.getElementById) x=d.getElementById(n); return x;
		}
		
		function MM_validateForm() { //v4.0
		  var i,p,q,nm,test,num,min,max,errors='',args=MM_validateForm.arguments;
		  for (i=0; i<(args.length-2); i+=3) { test=args[i+2]; val=MM_findObj(args[i]);
			if (val) { nm=val.name; if ((val=val.value)!="") {
			  if (test.indexOf('isEmail')!=-1) { p=val.indexOf('@');
				if (p<1 || p==(val.length-1)) errors+='- '+nm+' must contain an e-mail address.\n';
			  } else if (test!='R') { num = parseFloat(val);
				if (isNaN(val)) errors+='- '+nm+' phải là số.\n';
				if (test.indexOf('inRange') != -1) { p=test.indexOf(':');
				  min=test.substring(8,p); max=test.substring(p+1);
				  if (num<min || max<num) errors+='- '+nm+' must contain a number between '+min+' and '+max+'.\n';
			} } } else if (test.charAt(0) == 'R') errors += '- '+nm+' \n'; }
		  } if (errors) alert('Bạn phải điền đầy đủ các thông tin sau:\n'+errors);
		  document.MM_returnValue = (errors == '');
		}
		//-->
				</script>
		<h3 align="center">Sửa thông tin Bước gia công:<%=RS(1)%></h3>
		<p align="center"><a>Mời bạn điền đầy đủ thông tin và ấn vào nút Tạo mới để hoàn tất việc tạo mới Hội Đồng hoặc ấn vào nút Bỏ qua để xóa các thông tin đã điền và nhập lại.</a></p>
<form action="Sua.asp" method="get" name="form1" id="form1" onsubmit="MM_validateForm('TenBuocGiaCong','','R','AlphaT','','NisNum');return document.MM_returnValue">
  <table width="93%" border="0" align="center">
    <tr>
      <td width="50%" align="right">Tên bước gia công</td>
      <td><input name="TenBuocGiaCong" title="Tên bước gia công" size="40" type="text" id="TenBuocGiaCong" value="<%=RS(1)%>" /></td>
    </tr>
    <tr>
      <td width="50%" align="right"></td>
      <td><input name="AlphaT" title="Alpha T" size="40" type="hidden" id="AlphaT" value="<%=RS(2)%>" /></td>
    </tr>
    <tr>
      <td width="50%" align="right"></td>
      <td><input name="GhiChu" title="Ghi chú" size="40" type="hidden" id="GhiChu" value="<%=RS(3)%>" /></td>
    </tr>
    <tr>
      <td align="right"><input type="submit" name="Submit" value=" Sửa " /></td>
      <td><input name="Reset" type="reset" id="Reset" value="B&#7887; qua" />
	  	<input type="hidden" name="loai" style="display:none " value="BuocGiaCong" />
		<input type="hidden" name="MaBuocGiaCong" style="display:none " value="<%=RS(0)%>" />      </td>
    </tr>
  </table>
</form>
<input type="button" onclick="history.back()" value=" Quay lại " />
<%
	else
		'chay procedure:
		sqlStr = "EXECUTE SuaBuocGiaCong_PROC @MaBuocGiaCong='"&MaBuocGiaCong&"', @TenBuocGiaCong=N'"&TenBuocGiaCong&"' , "
		sqlStr = sqlStr&"@AlPhaT="&AlPhaT&" , @GhiChu=N'"&GhiChu&"'"
		conn.Execute(sqlStr)
		errorStr = "Sửa bước gia công thành công."
		url = "XemDanhSach.asp?loai=BuocGiaCong&kieu=all&errorStr="&errorStr
		Response.Redirect(url)
	end if
end if
'------------------------------------------------sua thiet bi------------------------
else if(loai = "ThietBi")then
if(myDNSession=0) then
	Response.Write("Bạn không có quyền sửa thiết bị.Xin vui lòng quay lại")
else
	MaThietBi = Request.QueryString("MaThietBi")
	TenThietBi = Request.QueryString("TenThietBi")
	NamSanXuat = Request.QueryString("NamSanXuat")
	NoiSanXuat = Request.QueryString("NoiSanXuat")
	NangSuat = Request.QueryString("NangSuat")
	LacHau = Request.QueryString("LacHau")
	Myimage = Request.QueryString("Myimage")

	if( NangSuat = "" ) then
		NangSuat = ""
	end if	
	
	if(TenThietBi="" or errorStr <> "" or errorStr <> null) then
		'lay ra thong tin cua buoc gia cong nay:
		sqlStr = "SELECT * FROM XemDSThietBi WHERE MaThietBi="&MaThietBi
		RS.Open sqlStr, conn
		'Response.Write("Form Sua")
%>
		<script type="text/JavaScript">
		<!--
		function MM_findObj(n, d) { //v4.01
		  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
			d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
		  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
		  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
		  if(!x && d.getElementById) x=d.getElementById(n); return x;
		}
		
		function MM_validateForm() { //v4.0
		  var i,p,q,nm,test,num,min,max,errors='',args=MM_validateForm.arguments;
		  for (i=0; i<(args.length-2); i+=3) { test=args[i+2]; val=MM_findObj(args[i]);
			if (val) { nm=val.name; if ((val=val.value)!="") {
			  if (test.indexOf('isEmail')!=-1) { p=val.indexOf('@');
				if (p<1 || p==(val.length-1)) errors+='- '+nm+' must contain an e-mail address.\n';
			  } else if (test!='R') { num = parseFloat(val);
				if (isNaN(val)) errors+='- '+nm+' phải là ký tự số.\n';
				if (test.indexOf('inRange') != -1) { p=test.indexOf(':');
				  min=test.substring(8,p); max=test.substring(p+1);
				  if (num<min || max<num) errors+='- '+nm+' là thông tin về năm sản xuất,phải gồm 4 số,ví dụ:2005.\n';
			} } } else if (test.charAt(0) == 'R') errors += '- '+nm+' \n'; }
		  } if (errors) alert('Bạn phải điền đầy đủ các thông tin sau:\n'+errors);
		  document.MM_returnValue = (errors == '');
		}
		//-->
		</script>
		<h3 align="center">Sửa thông tin Thiết bị:<%=TenThietBi%></h3>
		<p align="center"><a>Mời bạn điền đầy đủ thông tin và ấn vào nút Tạo mới để hoàn tất việc tạo mới Thiết Bị hoặc ấn vào nút Bỏ qua để xóa các thông tin đã điền và nhập lại.</a><br />
		</p>
        <form   method="post" enctype="multipart/form-data" name="pictureupload" id="pictureupload" onsubmit="action='ToFileSystem.asp?MaThietBi=<%=Request.QueryString("MaThietBi")%>'">
          <table width="93%" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td>Ảnh của thiết bị (Xin lưu ý, nếu bạn muốn đưa ảnh thiết bị lên thì phải chọn 'Browse..' và chọn một ảnh rồi nhấn nút 'cập nhật' trước khi nhập thông tin cho thiết bị !)</td>
            </tr>
            <tr>
              <td width="326"><div align="center">
                  <input type="image" name="imageField" width="160" height="160"  src="<%=rs("MyImage")%>"/>
              </div></td>
            </tr>
            <tr>
              <td><input name="file1" type="file" id="file1" size="45" />
                  <label>
                  <input type="submit" name="Submit22" value="Cập nhật" />
                </label></td>
            </tr>
          </table>
          <script type="text/javascript">
		<!--
		function MM_findObj(n, d) { //v4.01
		  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
			d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
		  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
		  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
		  if(!x && d.getElementById) x=d.getElementById(n); return x;
		}
		
		function MM_validateForm() { //v4.0
		  var i,p,q,nm,test,num,min,max,errors='',args=MM_validateForm.arguments;
		  for (i=0; i<(args.length-2); i+=3) { test=args[i+2]; val=MM_findObj(args[i]);
			if (val) { nm=val.name; if ((val=val.value)!="") {
			  if (test.indexOf('isEmail')!=-1) { p=val.indexOf('@');
				if (p<1 || p==(val.length-1)) errors+='- '+nm+' must contain an e-mail address.\n';
			  } else if (test!='R') { num = parseFloat(val);
				if (isNaN(val)) errors+='- '+nm+' phải là ký tự số.\n';
				if (test.indexOf('inRange') != -1) { p=test.indexOf(':');
				  min=test.substring(8,p); max=test.substring(p+1);
				  if (num<min || max<num) errors+='- '+nm+' là thông tin về năm sản xuất,phải gồm 4 số,ví dụ:2005.\n';
			} } } else if (test.charAt(0) == 'R') errors += '- '+nm+' \n'; }
		  } if (errors) alert('Bạn phải điền đầy đủ các thông tin sau:\n'+errors);
		  document.MM_returnValue = (errors == '');
		}
		//-->
		  </script>
        </form>
        <form action="Sua.asp" method="get" name="form2" id="form2" onsubmit="MM_validateForm('TenThietBi','','R');return document.MM_returnValue">
		  <table width="93%" border="0" align="center">
			<tr>
			  <td align="right"><div align="left"></div></td>
			  <td><div align="left">
			    <input name="MyImage" type="hidden" id="MyImage" value="images\thietbi\<%=session("filename")%>" />
			    </div></td>
			  </tr>
			<tr>
			  <td width="25%" align="right"><div align="left">Tên Thiết Bị</div></td>
			  <td width="75"><div align="left">
			    <input name="TenThietBi" title="Tên Thiết Bị" size="60" type="text" id="TenThietBi" value="<%=RS(1)%>" />
			    </div></td>
			</tr>
			<tr>
			  <td  align="right"><div align="left">Năm Sản Xuất</div></td>
			  <td><div align="left">
			    <input name="NamSanXuat" title="Năm Sản Xuất" size="60" type="text" id="NamSanXuat" value="<%=RS(2)%>" />
			    </div></td>
			</tr>
			<tr>
			  <td  align="right"><div align="left">Nơi sản xuất</div></td>
			  <td><div align="left">
			    <input name="NoiSanXuat" title="Nơi sản xuất" size="60" type="text" id="NoiSanXuat" value="<%=RS(3)%>" />
			    </div></td>
			</tr>
			<tr>
			  <td align="right"><div align="left">Năng suất</div></td>
			  <td><div align="left">
			    <input name="NangSuat" title="Năng suất sản xuất" size="60" type="text" id="NangSuat" value="<%=RS(15)%>" />
			    </div></td>
			</tr>
			<tr>
			  <td  align="right"><div align="left">Tình trạng thiết bị </div></td>
			  <td><div align="left">
			    <select title="Lạc hậu" name="LacHau">
			            <option value="0">Mới 100%</option>	  
			            <option value="1">Lạc hậu một đời về điện tử tin học</option>
			            <option value="2">Lạc hậu về model và phụ tùng</option>
			            <option value="3">Lạc hậu hai đời về điện tử và tin học</option>
			            <option value="4">Chế tạo từ 10 đến 20 năm</option>
			            </select>
			    </div></td>
			</tr>
			
			<tr>
			  <td align="right">
			    <div align="right">
			      <input type="submit" name="Submit" value=" Sửa " />
			      </div></td>
			  <td><div align="left">
			    <input name="Reset" type="reset" id="Reset" value="B&#7887; qua" />
			    <input type="hidden" name="loai" value="ThietBi" />
			    <input type="hidden" name="MaThietBi" value="<%=MaThietBi%>" />			  
			    </div></td>
			</tr>
		  </table>
</form>
		<h3 align="center">Danh sách các thiết bị:</h3>
<%
sqlStr = "SELECT MaThietBi, TenThietBi, NamSanXuat, NoiSanXuat, T, H, N, C, k, Kt, Kh, Kn, Kc, Q, Status, NangSuat, MaDoanhNghiep, CASE ThietBi.LacHau WHEN 0 THEN N'Mới 100%' WHEN 1 THEN N'Lạc hậu 1 đời' WHEN 2 THEN N'Lạc hậu 2 đời' WHEN 3 THEN N'Lạc hậu về Model' WHEN 4 THEN N'Không có phụ tùng thay thế' END AS LacHau FROM dbo.ThietBi WHERE status=1 And MaDoanhNghiep="&session("ma_doanhnghiep")
		'Phan trang--------------------------------------------------------------------------------------
		RS.Close
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
					<td><%=RS("Lachau")%>&nbsp;</td>
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
			%>     </p>     <form action="Sua.asp" method="get" name="viewFrm" id="viewFrm">
				
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
						Response.Write("<a href=JavaScript:setValue(" & (CInt(rsCurrentPage) & CInt(1)) & ");>Sau</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
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
<input type="button" onclick="history.back()" value=" Quay lại " />
<%
	else
		'chay procedure:
		sqlStr = "EXECUTE SuaThietBi_PROC @MaThietBi='"&MaThietBi&"', @TenThietBi=N'"&TenThietBi&"' , "
		sqlStr = sqlStr & "@NamSanXuat='"&NamSanXuat&"' , @NoiSanXuat=N'"&NoiSanXuat&"', "
		sqlStr = sqlStr & "@NangSuat = N'"&NangSuat&"', @Myimage=N'"&MyImage&"', "
		sqlStr = sqlStr & "@LacHau = "&LacHau
		conn.Execute(sqlStr)
		errorStr = "Sửa thiết bị thành công."
		url = "XemDanhSach.asp?loai=ThietBi&kieu=all&errorStr="&errorStr
		Response.Redirect(url)
	end if
end if
else
%>
<h3 align="center">Bạn muốn sửa thông tin nào?</h3>
<ul>
<li><a href="XemDanhSach.asp?loai=HoiDong" title="Sửa thông tin của Hội Đồng">Sửa thông tin của Hội Đồng.</a></li>
<li><a href="XemDanhSach.asp?loai=ThanhVien" title="Sửa thông tin của Thành Viên">Sửa thông tin của Thành Viên.</a></li>
<li><a href="XemDanhSach.asp?loai=DoanhNghiep" title="Sửa thông tin của Doanh Nghiệp">Sửa thông tin của Doanh Nghiệp.</a></li>
<li><a href="XemDanhSach.asp?loai=SanPham&kieu=all" title="Sửa thông tin của Sản Phẩm">Sửa thông tin của Sản Phẩm.</a></li>
<li><a href="XemDanhSach.asp?loai=BuocGiaCong&kieu=all" title="Sửa thông tin của các Bước Gia Công">Sửa thông tin của các Bước Gia Công.</a></li>
<li><a href="XemDanhSach.asp?loai=ThietBi&kieu=all" title="Sửa thông tin của Thiết Bị">Sửa thông tin của Thiết Bị.</a></li>
<li><a href="XemDanhSach.asp?loai=HoiDong" title="Thêm Thành Viên vào Hội Đồng">Thêm Thành Viên vào Hội Đồng.</a></li>
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
