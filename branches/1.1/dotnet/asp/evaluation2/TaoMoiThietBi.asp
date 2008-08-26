<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/hinhmaunguoidung.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Tạo mới thiết bị</title>
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
<!--#include file=connection.inc-->
<script language="JavaScript" type="text/javascript">
function setValue(page) 
{
	viewFrm.page.value=page; 
	viewFrm.submit();
}
</script>
<%
myDNSession = Session("ma_dn")
if(myDNSession=0) then
	Response.Write("Bạn không có quyền tạo mới thiết bị.Xin vui lòng quay lại")
else
		Dim RS2
		Set RS2 = Server.CreateObject("ADODB.Recordset")
		Dim errorStr
		errorStr = Request.QueryString("errorStr")
		if(errorStr <> "" or errorStr <> null) then
			Response.Write("<h4 align=center>"+errorStr+"</h4>")
		end if
		'RS.Open "SELECT COUNT(MaBuocGiaCong) FROM XemDSBuocGiaCong", conn
		'if(RS(0) < 1) then
		'	errorStr="Chưa tồn tại một Bước gia công nào,xin bạn vui lòng tạo mới Bước gia công trước."
		'RS.Close
		'	Response.Redirect("TaoMoiSanPham.asp?loai=BuocGiaCong&errorStr="+errorStr)
		'else
		'	RS.Close
		'end if
		%>
		<h3 align="center">Tạo mới Thiết Bị</h3>
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
		<p align="center"><a>Mời bạn điền đầy đủ thông tin và ấn vào nút Tạo mới để hoàn tất việc tạo mới Hội Đồng hoặc ấn vào nút Bỏ qua để xóa các thông tin đã điền và nhập lại.</a></p>
		<form   method="post" enctype="multipart/form-data" name="pictureupload" id="pictureupload" onsubmit="action='ToFileSystem.asp?MaThietBi=0'" >
		  <table width="93%" border="0" align="center" cellpadding="0" cellspacing="0">
                          <tr>
                            <td>Ảnh của thiết bị (Xin lưu ý, nếu bạn muốn đưa ảnh thiết bị lên thì phải chọn 'Browse..' và chọn một ảnh rồi nhấn nút 'cập nhật' trước khi nhập thông tin cho thiết bị !) </td>
                          </tr>
                          <tr>
                            <td width="326">                              <div align="center">
                              <input type="image" name="imageField" width="160" height="160"  src="images/thietbi/<%=session("filename")%>"/>                            
                            </div></td>
                          </tr>
                          <tr>
                            <td><input name="file1" type="file" id="file1" size="45" />
                              <label>
                              <input type="submit" name="Submit2" value="Cập nhật" />
                            </label></td>
                          </tr>
                        </table>
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
		</form>
		<form action="Tao_Moi.asp" method="post" name="form2" id="form2" onsubmit="MM_validateForm('TenThietBi','','R','NamSanXuat','','RinRange1000:9999');return document.MM_returnValue">
		<table width="93%" border="0" align="center">
					<tr>
					  <td align="right"><div align="left"></div></td>
					  <td width="71%"><input name="MyImage" type="hidden" id="MyImage" value="images\thietbi\<%=session("filename")%>" /></td>
					  </tr>
					<tr>
					  <td width="29%" align="right"><div align="left">Tên Thiết Bị</div></td>
					  <td><input name="TenThietBi" title="Tên Thiết Bị" size="40" type="text" id="TenThietBi" value="<%=Request.QueryString("TenThietBi")%>" /></td>
					</tr>
					  <%
					  if(Session("Ma_DoanhNghiep")=0) then
					  %>
							<tr>
							  <td align="right"><div align="left">Tên Doanh Nghiệp</div></td>
							  <td>
								  <select title="Tên Doanh Nghiệp" name="MaDoanhNghiep">
								  <%
								  sqlStr = "SELECT TenDoanhNghiep, MaDoanhNghiep FROM DoanhNghiep WHERE Status = 1 ORDER BY TenDoanhNghiep"
								  RS2.Open sqlStr,conn
								  while(not RS2.EOF)
								  %>
									<option value="<%=RS2(1)%>"><%=RS2(0)%></option>
								  <%
								  RS2.MoveNext
								  wend
								  RS2.Close
								  %>
								  </select>						</td>
							</tr>
					<%else%>
						<input type="hidden" name="MaDoanhNghiep" value="<%=Session("Ma_DoanhNghiep")%>" />
					<%end if%>
		
					<tr>
					  <td width="29%" align="right"><div align="left">Năm Sản Xuất</div></td>
					  <td><input name="NamSanXuat" title="Năm Sản Xuất" size="40" type="text" id="NamSanXuat" value="<%=Request.QueryString("NamSanXuat")%>" /></td>
					</tr>
					<tr>
					  <td width="29%" align="right"><div align="left">Nơi sản xuất</div></td>
					  <td><input name="NoiSanXuat" title="Nơi sản xuất" size="40" type="text" id="NoiSanXuat" value="<%=Request.QueryString("NoiSanXuat")%>" /></td>
					</tr>
					<tr>
					  <td width="29%" align="right"><div align="left">Năng suất</div></td>
					  <td><input name="NangSuat" title="Năng suất sản xuất" size="40" type="text" id="NangSuat" value="<%=Request.QueryString("NangSuat")%>" /></td>
					</tr>
					<tr>
					  <td width="29%" align="right"><div align="left">Tình trạng thiết bị </div></td>
					  <td><select title="Lạc hậu" name="LacHau">
				<option value="0">Mới 100%</option>	  
				<option value="1">Lạc hậu một đời về điện tử tin học</option>
				<option value="2">Lạc hậu về model và phụ tùng</option>
				<option value="3">Lạc hậu hai đời về điện tử và tin học</option>
				<option value="4">Chế tạo từ 10 đến 20 năm</option>
				</select></td>
					</tr>
					<tr>
					  <td align="right">
					    <div align="right">
					      <input type="submit" name="Submit" value="T&#7841;o m&#7899;i" />
					      </div></td><td><input name="Reset" type="reset" id="Reset" value="B&#7887; qua" />
					  <input type="hidden" name="loai" value="ThietBi" />			  </td>
					</tr>
				  </table>
		</form>
		<h3 align="center">Danh sách các thiết bị:</h3>
<%
sqlStr = "SELECT MaThietBi, TenThietBi, NamSanXuat, NoiSanXuat, T, H, N, C, k, Kt, Kh, Kn, Kc, Q, Status, NangSuat, MaDoanhNghiep, CASE ThietBi.LacHau WHEN 0 THEN N'Mới 100%' WHEN 1 THEN N'Lạc hậu 1 đời' WHEN 2 THEN N'Lạc hậu 2 đời' WHEN 3 THEN N'Lạc hậu về Model' WHEN 4 THEN N'Không có phụ tùng thay thế' END AS LacHau FROM dbo.ThietBi WHERE  Status=1 AND MaDoanhNghiep="&session("ma_doanhnghiep")
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
					<td><%=RS(17)%>&nbsp;</td>
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
			%>     </p>     <form action="TaoMoiThietBi.asp" method="get" name="viewFrm" id="viewFrm">
				
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
