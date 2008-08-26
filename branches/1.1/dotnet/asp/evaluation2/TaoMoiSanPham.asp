<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/hinhmaunguoidung.dwt.asp" codeOutsideHTMLIsLocked="false" -->
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
<input type="button" onclick="history.back()" value=" Quay lại " />
<!--#include file=connection.inc-->
<%
myDNSession = Session("ma_dn")
if(myDNSession=0) then
	Response.Write("Bạn không có quyền tạo mới sản phẩm hoặc bước gia công.Xin vui lòng quay lại")
else
%>
<script language="JavaScript" type="text/javascript">
function setValue(page) 
{
	viewFrm.page.value=page; 
	viewFrm.submit();
}
</script>
<%
		Dim errorStr
		errorStr = Request.QueryString("errorStr")
		if(errorStr <> "" or errorStr <> null) then
			Response.Write("<h4 align=center>"+errorStr+"</h4>")
		end if
		MaSanPham = Request.QueryString("MaSanPham")
		'-----------------------------phan loai---------------------------------------------------
		loai = Request.QueryString("loai")
		'-----------------------------tao moi Buoc Gia Cong---------------------------------------------------
		if(loai = "BuocGiaCong") then
			'Response.Write("Tao Moi buoc gia cong dang thuc hien,line 291")
		%>
				<h3 align="center">Tạo mới Bước Gia Công</h3>
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
				<p align="center">&nbsp;</p>
				<p align="center"><a>Mời bạn điền đầy đủ thông tin và ấn vào nút Tạo mới để hoàn tất việc tạo mới Bước Gia Công hoặc ấn vào nút Bỏ qua để xóa các thông tin đã điền và nhập lại.</a></p>
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
				<form action="Tao_Moi.asp" method="post" name="form1" id="form1" onsubmit="MM_validateForm('TenBuocGiaCong','','R');return document.MM_returnValue">
				  <table width="93%" border="0" align="center">
					<tr>
					  <td width="27%" align="right"><div align="left">Tên bước gia công</div></td>
				<td width="73%"><input name="TenBuocGiaCong" title="Tên bước gia công" size="40" type="text" id="TenBuocGiaCong" value="<%=Request.QueryString("TenBuocGiaCong")%>" /></td>
			  </tr>
					<tr>
					  <td align="right"><div align="left">Tên sản phẩm</div></td>
				<td><select onchange="window.location='TaoMoiSanPham.asp?loai=BuocGiaCong&MaSanPham='+this.value" title="Tên sản phẩm có bước gia công này" name="MaSanPham">
				  <option value="0">----- Chọn Sản Phẩm -----</option>
				  <%
			  if(Session("Ma_DoanhNghiep")=0) then
					sqlStr = "SELECT TenSanPham, MaSanPham FROM XemDSSanPham"
			else
					sqlStr = "SELECT TenSanPham, MaSanPham FROM XemDSSanPham WHERE MaDoanhNghiep="&Session("Ma_DoanhNghiep")
			end if
			  RS.Open sqlStr,conn
			  while(not RS.EOF)
			  %>
				  <option <% if(RS(1)=cint(MaSanPham)) then %>selected="1"<% end if %> value="<%=RS(1)%>"><%=RS(0)%></option>
				  <%
			  RS.MoveNext
			  wend
			  RS.close
			  %>
				  </select></td>
			  </tr>
					<tr>
					  <td align="right"><div align="left">Tên Hội Đồng</div></td>
						<td><select title="Tên Hội Đồng" name="MaHoiDong">
							<option value="0">----- Chọn Hội Đồng -----</option>
						  <%
					  if(Session("Ma_DoanhNghiep")=0) then
							sqlStr = "SELECT DISTINCT TenHoiDong, MaHoiDong FROM XemDSHoiDong"
					else
						if(MaSanPham <> "" and MaSanPham <> "0") then
							sqlStr = "Select X.TenHoiDong, X.MaHoiDong from XemDSHoiDong as X INNER JOIN SanPham as S ON X.MaHoiDong=S.MaHoiDong WHERE S.MaSanPham="&MaSanPham&" AND X.MaDoanhNghiep="&Session("ma_dn")
						else
							sqlStr = "Select TenHoiDong,MaHoiDong from XemDSHoiDong where MaDoanhNghiep="&Session("ma_dn")
						end if
					end if
					  RS.Open sqlStr,conn
					  while(not RS.EOF)
					  %>
						  <option value="<%=RS(1)%>"><%=RS(0)%></option>
						  <%
					  RS.MoveNext
					  wend
					  RS.Close
					  %>
						  </select>			      </td>
					  </tr>
					<tr>
					  <td align="right"><div align="left">Tên thiết bị</div></td>
				<td><select title="Tên thiết bị" name="MaThietBi">
				  <%
			  if(Session("Ma_DoanhNghiep")=0) then
					sqlStr = "SELECT TenThietBi, MaThietBi FROM XemDSThietBi"
			else
					sqlStr = "SELECT TenThietBi, MaThietBi, NamSanXuat, NoiSanXuat, T, H, N, C, k, Kt, Kh, Kn, Kc, Q, Status, NangSuat, CASE ThietBi.LacHau WHEN 0 THEN N'Mới 100%' WHEN 1 THEN N'Lạc hậu 1 đời' WHEN 2 THEN N'Lạc hậu 2 đời' WHEN 3 THEN N'Lạc hậu về Model' WHEN 4 THEN N'Không có phụ tùng thay thế' END AS LacHau, MaDoanhNghiep FROM dbo.ThietBi WHERE MaDoanhNghiep="&Session("Ma_DoanhNghiep")
			end if
			  
			  RS.Open sqlStr,conn
			  while(not RS.EOF)
			  %>
				  <option value="<%=RS(1)%>"><%=RS(0)%></option>
				  <%
			  RS.MoveNext
			  wend
			  RS.Close
			  %>
				  </select></td>
			  </tr>
					<tr>
					  <td width="27%" align="right"><div align="left"></div></td>
				<td><input name="AlphaT" title="Alpha T" size="40" type="hidden" id="AlphaT" value="<%=Request.QueryString("AlphaT")%>" /></td>
			  </tr>
					<tr>
					  <td width="27%" align="right"><div align="left"></div></td>
				<td><input name="GhiChu" title="Ghi chú" size="40" type="hidden" id="GhiChu" value="<%=Request.QueryString("GhiChu")%>" /></td>
			  </tr>
					<tr>
					  <td align="right"><input type="submit" name="Submit" value="T&#7841;o m&#7899;i" /></td>
				<td><input name="Reset" type="reset" id="Reset" value="B&#7887; qua" />
				  <input type="hidden" name="loai" style="display:none " value="BuocGiaCong" />          </td>
			  </tr>
					</table>
				  </form>
				<h3 align="center">Danh sách các bước gia công:</h3>
				
<%
sqlStr = "SELECT MaBuocGiaCong, TenBuocGiaCong, TenSanPham, TenHoiDong, TenThietBi, TenDoanhNghiep,AlphaT, GhiChu FROM XemDSBuocGiaCong WHERE MaDoanhNghiep="&session("ma_doanhnghiep")				

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
				<td><b>Tên bước gia công</b></td>
				<td><b>Tên sản phẩm</b></td>
				<td><b>Tên thiết bị</b></td>
				<td><b>Alpha T</b></td>
				<td><b>Ghi chú</b></td>
			  </tr>
			<%		
			while( (NOT RS.EOF) and RS.AbsolutePage = rsCurrentPage)
			%>
				<tr>
					<td><%=RS(1)%>&nbsp;</td>
					<td><%=RS(2)%>&nbsp;</td>
					<td><%=RS(4)%>&nbsp;</td>
					<td><%=RS(6)%>&nbsp;</td>
					<td><%=RS(7)%>&nbsp;</td>
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
			%>     </p>     <form action="TaoMoiSanPham.asp" method="get" name="viewFrm" id="viewFrm">
				
			  <p>
				  <input type="hidden" name="page" value="<%=rsCurrentPage%>" />
				  <input type="hidden" name="loai" value="BuocGiaCong" />
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
				RS.Close %>
				
				<input type="button" onclick="history.back()" value=" Quay lại " />
				<%
		'-----------------------------tao moi San Pham---------------------------------------------------
		else
				%>
				<h3 align="center">Tạo mới Sản Phẩm</h3>
				<fieldset >
				<% if session("ma_dn")> 0 then ' nếu đã chọn doanh nghiệp sẽ hiện ra%>
				<%
							dim rsdoanhnghiep
							set rsdoanhnghiep=server.CreateObject("adodb.recordset")
						 %>
				<%rsdoanhnghiep.open "select * from doanhnghiep where madoanhnghiep="& Session("ma_dn"),conn%>
				<%if not rsdoanhnghiep.eof then %>
				<legend align="center"><%=rsdoanhnghiep("tendoanhnghiep")%></legend>
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
				  <tr>
					<td width="45%">Năm thành lập </td>
					<td width="55%"><%=rsdoanhnghiep("namthanhlap")%></td>
				  </tr>
				  <tr>
					<td>Lĩnh vực ngành nghề kinh doanh</td>
					<td><%=rsdoanhnghiep("chucnang")%></td>
				  </tr>
				  <tr>
					<td>Địa chỉ</td>
					<td><%=rsdoanhnghiep("diachi")%></td>
				  </tr>
				  <tr>
					<td>Điện thoại</td>
					<td><%=rsdoanhnghiep("sodienthoai_fax")%></td>
				  </tr>
				  <tr>
					<td height="35">Địa chỉ thư điện tử <%=rsdoanhnghiep("email")%></td>
					<td>Trang chủ  :<a href="http://<%=rsdoanhnghiep("website")%>"><%=rsdoanhnghiep("website")%></a></td>
				  </tr>
				  <tr>
					<td colspan="2"><div align="justify"><%=rsdoanhnghiep("info")%>&nbsp;</div></td>
				  </tr>
				</table>
				<%rsdoanhnghiep.close()%>
				<%end if%>
				<%end if%>
				</fieldset>
				<p align="center">&nbsp;</p>
				<p align="center"><a>Mời bạn điền đầy đủ thông tin và ấn vào nút Tạo mới để hoàn tất việc tạo mới Sản Phẩm hoặc ấn vào nút Bỏ qua để xóa các thông tin đã điền và nhập lại.</a></p>
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
		  } if (errors) alert('Bạn phải nhập đầy đủ các thông tin sau đây:\n'+errors);
		  document.MM_returnValue = (errors == '');
		}
		//-->
				</script>
				<form action="Tao_Moi.asp" method="post" name="form2" id="form2" onsubmit="MM_validateForm('TenSanPham','','R','CongNgheSanXuat','','R','ThiTruong','','R','TieuChuanSanPham','','R','NamSanXuat','','RisNum');return document.MM_returnValue">
				  <table width="93%" border="0" align="center">
					<tr>
					  <td width="50%" align="right">Tên Sản Phẩm</td>
						<td><input name="TenSanPham" title="Tên của sản phẩm" size="40" type="text" id="TenSanPham" value="<%=Request.QueryString("TenSanPham")%>" /></td>
					  </tr>
					
					<%
					  if(Session("Ma_DoanhNghiep")=0) then
					  %>
					<tr>
					  <td align="right">Tên doanh nghiệp</td>
						<td>	
						  <select title="Tên Doanh Nghiệp" name="MaDoanhNghiep">
							<%
						  sqlStr = "SELECT TenDoanhNghiep, MaDoanhNghiep FROM DoanhNghiep WHERE Status = 1 ORDER BY TenDoanhNghiep"
						  RS.Open sqlStr,conn
						  while(not RS.EOF)
						  %>
							<option value="<%=RS(1)%>"><%=RS(0)%></option>
							<%
						  RS.MoveNext
						  wend
						  RS.Close
						  %>
							</select>			      </td>
					  </tr>
					<%else%>
					<input type="hidden" name="MaDoanhNghiep" value="<%=Session("Ma_DoanhNghiep")%>" />
					<%end if%>
					
					<tr>
					  <td align="right">Tên Hội Đồng</td>
						<td><select title="Tên Hội Đồng" name="MaHoiDong">
						  <%
					  if(Session("Ma_DoanhNghiep")=0) then
						sqlStr = "SELECT DISTINCT TenHoiDong, MaHoiDong FROM XemDSHoiDong"
					  else
						sqlStr = "SELECT DISTINCT TenHoiDong, MaHoiDong FROM XemDSHoiDong WHERE MaDoanhNghiep="&Session("Ma_DoanhNghiep")
					  end if
					  RS.Open sqlStr,conn
					  while(not RS.EOF)
					  %>
						  <option value="<%=RS(1)%>"><%=RS(0)%></option>
						  <%
					  RS.MoveNext
					  wend
					  RS.Close
					  %>
						  </select>			      </td>
					  </tr>
					<tr>
					  <td width="50%" align="right">Công nghệ sản xuất</td>
						<td><input name="CongNgheSanXuat" title="Kỹ thuật sản xuất" size="40" type="text" id="CongNgheSanXuat" value="<%=Request.QueryString("CongNgheSanXuat")%>" /></td>
					  </tr>
					<tr>
					  <td width="50%" align="right">Thị Trường</td>
						<td><input name="ThiTruong" title="Tên Thị Trường" size="40" type="text" id="ThiTruong" value="<%=Request.QueryString("ThiTruong")%>" /></td>
					  </tr>
					<tr>
					  <td width="50%" align="right">Tiêu Chuẩn Sản Phẩm</td>
						<td><input name="TieuChuanSanPham" title="Tiêu Chuẩn của Sản Phẩm" size="40" type="text" id="TieuChuanSanPham" value="<%=Request.QueryString("TieuChuanSanPham")%>" /></td>
					  </tr>
					<tr>
					  <td width="50%" align="right">Năm sản xuất</td>
						<td><input name="NamSanXuat" title="Năm sản xuất" size="40" type="text" id="NamSanXuat" value="<%=Request.QueryString("NamSanXuat")%>" /></td>
					  </tr>
					<tr>
					  <td align="right"><input type="submit" name="Submit" value="T&#7841;o m&#7899;i" /></td>
						<td><input name="Reset" type="reset" id="Reset" value="B&#7887; qua" />
						  <input type="hidden" name="loai" value="SanPham" />			      </td>
					  </tr>
					</table>
				  </form>
		<%
		sqlStr = "SELECT * FROM XemDSSanPham WHERE MaDoanhNghiep="&session("ma_dn")
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
		%>
		<h3 align="center">Danh sách sản phẩm</h3>
		<table width="100%" border="1" cellpadding="5">
					  <tr align="center" >
						<td><b>Tên sản phẩm</b></td>
						<td><b>Công nghệ sản xuất</b></td>
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
					%>     </p>     <form action="TaoMoiSanPham.asp" method="get" name="viewFrm" id="viewFrm">
						
					  <p>
						  <input type="hidden" name="page" value="<%=rsCurrentPage%>" />
						  <input type="hidden" name="loai" value="SanPham" />
						  <input type="hidden" name="MaDoanhNghiep" value="<%=MaDoanhNghiep%>" />
						  <input type="hidden" name="TenDoanhNghiep" value="<%=TenDoanhNghiep%>" />
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
								<input type="button" onclick="history.back()" value=" Quay lại " />
								<%
						end if
end if
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
