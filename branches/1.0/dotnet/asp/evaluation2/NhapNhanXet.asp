<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/hinhmaunguoidung.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Bachkhoa mechatronics</title>
<!-- InstanceEndEditable -->
<!-- InstanceBeginEditable name="head" -->

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
        if (isNaN(val)) errors+='- '+nm+' must contain a number.\n';
        if (test.indexOf('inRange') != -1) { p=test.indexOf(':');
          min=test.substring(8,p); max=test.substring(p+1);
          if (num<min || max<num) errors+='- '+nm+' must contain a number between '+min+' and '+max+'.\n';
    } } } else if (test.charAt(0) == 'R') errors += '- '+nm+' is required.\n'; }
  } if (errors) alert('Xin bạn vui lòng nhập nhận xét.');
  document.MM_returnValue = (errors == '');
}
//-->
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
<!--#include file="connection.inc" -->
<% 
		MaDoanhNghiep = Request.QueryString("MaDoanhNghiep")
		MaSanPham = Request.QueryString("MaSanPham")
		'MaHoiDong = Request.QueryString("MaHoiDong")
		MaThanhVien = Request.QueryString("MaThanhVien")
		errorStr = Request.QueryString("errorStr")
		
		Dim RSDoanhNghiep
		Set RSDoanhNghiep = Server.CreateObject("ADODB.Recordset")
		Dim RSSanPham
		Set RSSanPham = Server.CreateObject("ADODB.Recordset")
		Dim RSNhanXet
		Set RSNhanXet = Server.CreateObject("ADODB.Recordset")
		Dim RSHoiDong
		Set RSHoiDong = Server.CreateObject("ADODB.Recordset")
		
		sql = "SELECT TenDoanhNghiep FROM DoanhNghiep WHERE MaDoanhNghiep="&MaDoanhNghiep
		RSDoanhNghiep.Open sql,conn
		
		TenDoanhNghiep = RSDoanhNghiep(0)
		RSDoanhNghiep.Close
		
		sql = "SELECT TenSanPham,MaHoiDong FROM SanPham WHERE MaSanPham="&MaSanPham
		RSSanPham.Open sql,conn
		
		MaHoiDong = RSSanPham(1)
		sql = "SELECT TenHoiDong FROM HoiDong WHERE MaHoiDong="&MaHoiDong
		RSHoiDong.Open sql,conn
		TenHoiDong = RSHoiDong(0)
		%>
<script language="javascript">
function BringMeToTheHeaven()
{
	url="inAllNhanXet.asp?MaDoanhNghiep=<%=MaDoanhNghiep%>&MaSanPham=<%=MaSanPham%>&MaHoiDong=<%=MaHoiDong%>";
	//content="status,menubar,scrollbars,height=" + height + ",width=" + width +")";
	//var newWindow = window.open(url,"msgWindow",content);
  var newWindow = window.open(url,"msgWindow", "status,menubar,scrollbars,height=600,width=800");
  newWindow.focus( );
}
</script>
<form name="chondnhdsp" id="chondnhdsp">
<table width="100%" border="0" align="center">
    <tr>
      <td width="26%"></td>
      <td width="74%">
	  <%rs.open "select * from doanhnghiep where madoanhnghiep="& Session("ma_dn")& "and status =1",conn%>
	  <input name="chondn" type="hidden" id="chondn"  value="<%=Session("ma_dn")%>"/>
	  <%rs.close()%>	  </td>
    </tr>
    <tr>
      <td align="right">Tên Hội đồng: </td>
      <td align="left"><b><%=TenHoiDong%></b></td>
    </tr>
	<tr>
		<td align="right">Doanh nghiệp: </td>
		<td align="left"><b><%=TenDoanhNghiep%></b></td>
	</tr>
	<tr>
		<td align="right">Sản phẩm chấm điểm: </td>
		<td align="left"><b><%=RSSanPham(0)%></b></td>
	</tr>
    <tr>
      <td align="right">Chọn thành viên: </td>
      <td align="left"><select name="chontv" id="chontv" onchange="window.location='NhapNhanXet.asp?MaHoiDong=<%=MaHoiDong%>&amp;MaThanhVien='+this.value+'&MaDoanhNghiep=<%=MaDoanhNghiep%>&MaSanPham=<%=MaSanPham%>'">
        <%
		if (len(MaHoiDong)>0)  then  %>
        	<%
			rs.open "select MaThanhVien, TenThanhVien FROM XemDsTVChamDiemChoTungDN where MaDoanhNghiep="& MaDoanhNghiep& " and MaHoiDong="& MaHoiDong ,conn
			'Response.Write("select MaThanhVien, TenThanhVien FROM XemDsTVChamDiemChoTungDN where MaDoanhNghiep="& Session("ma_dn")& " and MaHoiDong="& Request.QueryString("MaHoiDong"))
			%>
        <%else%>
        	<%rs.open "select MaThanhVien, TenThanhVien FROM XemDsTVChamDiemChoTungDN where MaDoanhNghiep="& Session("ma_dn") ,conn%>
        <%end if%>
		
        <option value="0" >--Chọn một thành viên--</option>
        <% while not rs.eof %>
        	<%if (cint(Request.QueryString("MaThanhVien"))=rs(0)) then %>
        		<option value="<%=rs(0)%>" selected="selected"><%=rs(1)%></option>
        	<%else%>
        		<option value="<%=rs(0)%>" ><%=rs(1)%></option>
        	<%end if%>
        	<%rs.movenext()%>
        <% wend %>
        <%rs.close()%>
      </select></td>
    </tr>
	  <tr>
		<td>&nbsp;</td>
		<td><input type="button" name="inAll" value="In tất cả các nhận xét" onclick="BringMeToTheHeaven()" /></td>
	  </tr>
  </table>
 </form>
		<%	
		if(MaDoanhNghiep > "0"and MaSanPham > "0" and MaHoiDong > "0" and MaThanhVien > "0" ) then
				sql = "SELECT ID, NhanXet FROM ThanhVienNhanXetDoanhNghiep WHERE MaDoanhNghiep="&MaDoanhNghiep&" AND MaSanPham="&MaSanPham&" AND MaHoiDong="&MaHoiDong&" AND MaThanhVien="&MaThanhVien
				RSNhanXet.Open sql,conn
				
				NhanXetStr = ""
				if(not RSNhanXet.eof ) then
					NhanXetStr = RSNhanXet(1)
				end if
				
				if(len(errorStr)<1) then
					errorStr="Nhận xét cho Doanh nghiệp "&TenDoanhNghiep
				end if
			%>
			<h3 align="center"><%=errorStr%></h3>
<%
	if(Session("quyen")=2 and Session("ma_dn") >0) then
%>
				<form action="XuLyNhanXet.asp" method="post" name="TVNhapNhanXet" id="TVNhapNhanXet" onsubmit="MM_validateForm('NhanXet','','R');return document.MM_returnValue">
					<input type="hidden" name="MaDoanhNghiep" value="<%=MaDoanhNghiep%>" />
					<input type="hidden" name="MaSanPham" value="<%=MaSanPham%>" />
					<input type="hidden" name="MaHoiDong" value="<%=MaHoiDong%>" />
					<input type="hidden" name="MaThanhVien" value="<%=MaThanhVien%>" />
			    <table width="71%" border="0">
                  <tr>
                    <td>Nhận xét: </td>
                  </tr>
                  <tr>
                    <td>
                      <textarea name="NhanXet" id="NhanXet" cols="60" rows="17"><%=NhanXetStr%></textarea>
                    </td>
                  </tr>
					  <tr>
						<td align="left"><input type="submit" name="Submit" value="  Nhập  " /></td>
					  </tr>
                </table>
				</form>
<%
	else
%>
			    <table width="71%" border="0">
                  <tr>
                    <td>Nhận xét: </td>
                  </tr>
                  <tr>
                    <td>
                      <textarea  readonly="readonly" name="NhanXet" id="NhanXet" cols="60" rows="17"><%=NhanXetStr%></textarea>
                    </td>
                  </tr>
                </table>
<%
	end if
%>

			    <%
		end if
		'sql = "SELECT DISTINCT TenDoanhNghiep,  FROM XemDSDoanhNghiep WHERE MaDoanhNghiep="&MaDoanhNghiep
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
