<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/hinhmaunguoidung.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Phiếu điểm sản phẩm theo công đoạn sản xuất</title>
<!-- InstanceEndEditable -->
<!-- InstanceBeginEditable name="head" -->
<script language="javascript">
function messageWindow(title)
{
  //if(document.all.PhieuTrong.checked)
  //{
  	//alert("True");
  //}
  if(document.all.PhieuTrong.checked)
  {
  	url="InAllPhieuDiemSanPhamTheoCongDoanSanXuat.asp";  
	var height=screen.height;
  	var width=screen.width;
	//content="status,menubar,scrollbars,height=" + height + ",width=" + width +")";
	//var newWindow = window.open(url,"msgWindow",content);
	var newWindow = window.open(url,"msgWindow", "status,menubar,scrollbars,height=600,width=800");
  	newWindow.focus( );
  }
  else
  {
	if(document.form1.MaThanhVien.value>0)  
	{
	  url="InPhieuDiemSanPhamTheoCongDoanSanXuat.asp?MaThanhVien="+form1.MaThanhVien.value;
	  var height=screen.height;
	  var width=screen.width;
		//content="status,menubar,scrollbars,height=" + height + ",width=" + width +")";
		//var newWindow = window.open(url,"msgWindow",content);
	  var newWindow = window.open(url,"msgWindow", "status,menubar,scrollbars,height=600,width=800");
	  newWindow.focus( );
	 }
	 else
	 {
	 	alert("Bạn chưa chọn thành viên để in phiếu điểm trống.");
		document.form1.MaThanhVien.focus();
		return false;
	 }
	 
  }
}
function checkValue()
{
	if(document.form1.MaThanhVien.value=0)
	{
		alert("Bạn chưa chọn thành viên để chấm điểm.");
		document.form1.MaThanhVien.focus();
		return false;
	}
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
				  <!-- InstanceBeginEditable name="noidungcuanguoidung " --><!--#include file=connection.inc-->
<%
		MaSanPham=Session("ma_sp")
		MaHoiDong=Session("ma_hd")
	  MaDoanhNghiep=Session("ma_dn")
	  errorStr = Request.QueryString("errorStr")
	  
	  sql = "SELECT TenDoanhNghiep, TenSanPham FROM DoanhNghiep inner join SanPham on DoanhNghiep.MaDoanhNghiep=SanPham.MaDoanhNghiep WHERE DoanhNghiep.MaDoanhNghiep=" & MaDoanhNghiep & " and MaHoiDong=" & MaHoiDong & " and MaSanPham=" & MaSanPham
	  RS.Open sql,conn
	  
		Dim RS2
		Set RS2 = Server.CreateObject("ADODB.Recordset")
		strSQL = "Select ThanhVien.MaThanhVien,TenThanhVien From ThanhVien inner join HoiDongChamDiem  on ThanhVien.MaThanhVien=HoiDongChamDiem.MathanhVien where ThanhVien.Status=1 and MahoiDong=" & MaHoiDong & "and HoiDongChamDiem.Status=1"
		RS2.Open strSQL,conn
		
		Dim RsMaChiTieu
		Set RsMaChiTieu = Server.CreateObject("ADODB.Recordset")
		sql = "SELECT BangChiTieu.MaChiTieu, TenChiTieu,GhiChu FROM BangChiTieu inner join ChiTietChiTieu on BangChiTieu.MaChiTieu=ChiTietChiTieu.MaChiTieu WHERE MaDoanhNghiep="&MaDoanhNghiep
		RsMaChiTieu.Open sql,conn
		
		Dim RsMaBuocGiaCong
		Set RsMaBuocGiaCong = Server.CreateObject("ADODB.Recordset")
		sql = "SELECT MaBuocGiaCong, TenBuocGiaCong FROM BuocGiaCong WHERE MaSanPham="&MaSanPham&" AND MaHoiDong="&MaHoiDong
		'RsMaBuocGiaCong.Open sql,conn
		
		CongDoanSize = 0
		HieuQuaSize = 0
	
	dim rsdiemcham
	  	set rsdiemcham= server.CreateObject("adodb.recordset")
	'if(RS2.EOF or RsMaChiTieu.EOF or RS.EOF) then
	'	Response.Write("Bạn chưa nhập đủ các thông số,Xin vui lòng quay lại")
	'else
%>&nbsp;&nbsp;&nbsp;
<h4 align="center"><%=errorStr%></h4>
		<form action="CapNhatDiemSanPhamTheoCongDoanSanXuat.asp" method="post" name="form1"  id="form1">
		<% if len(Request.QueryString("outStr"))>0 then %>
			<H3 align="center"><%=Request.QueryString("outStr") %></H3>
		    <p>
		      <% end if %>
		      </p>
		    <table width="490" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td><div align="center">
                  <h3>PHIẾU CHO ĐIỂM SẢN PHẨM THEO CÔNG ĐOẠN SẢN XUẤT</h3>
                </div></td>
                </tr>
              <tr>
                <td><div align="left">Cơ sở sản xuất:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=RS(0) %></div></td>
                </tr>
              <tr>
                <td>Chủng loại sản phẩm:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=RS(1)%></td>
                </tr>
              <tr>
                <td><div align="left">Người cho điểm:&nbsp;
                      <select name="MaThanhVien" onchange="window.location='PhieuDiemSanPhamTheoCongDoanSanXuat.asp?ma_tv='+this.value">
                        <option value="0">Chọn một thành viên</option>
                        <% while (not RS2.EOF) %>
                        <%if (cint(Request.QueryString("ma_tv"))=RS2("MaThanhVien")) then  %>
                        <option value="<%=RS2(0)%>" selected="selected"><%=RS2(1)%></option>
                        <%else %>
                        <option value="<%=RS2(0)%>" ><%=RS2(1)%></option>
                        <%end if%>
                        <%
						RS2.moveNext
						Wend
				  %>
                      </select>
                </div></td>
              </tr>
            </table>
		    <p>&nbsp;</p>
		    <table width="100%" border="1">
			<tr>
			  <td height="45" colspan="4"><input name="button" type="button" onclick="history.back()" value=" Quay lại " />
			    <input name="InPhieuDiem" type="button" id="InPhieuDiem" value="In phiếu điểm" onclick="messageWindow('Phiếu cho điểm sản phẩm')" />
			    &nbsp;
                <input type="checkbox" name="PhieuTrong">
                <label>In tất cả phiếu điểm đã chấm</label></td>
			</tr>
			<%if (cint(Request.QueryString("ma_tv"))>1)  then %>
			<tr>
			
			  <td rowspan="2"><div align="center">Các chỉ tiêu kỹ thuật </div></td>
				  <td colspan="2"><div align="center">Điểm cho </div></td>
				  <td width="106" rowspan="2">Tiêu chuẩn điểm <br />
					m</td>
					</tr>
			<tr>
			  <td width="51" height="23"><div align="center">Min</div></td>
				  <td width="133"><div align="center">Max</div></td>
				  </tr>
			<tr>
			  <td height="23"><div align="center"><strong>T Thiết Bị </strong></div></td>
				  <td><div align="center">Tamin </div></td>
				  <td><div align="center">Tamax </div></td>
				  <td><div align="center">Theo chuẩn điểm<br />
					m
					</div></td>
				</tr>
			<tr>
			  <td><div align="center"> 	
				<% while(not RsMaChiTieu.EOF) 
					HieuQuaSize = 0
					RsMaBuocGiaCong.Open sql,conn,3
					rowCount=RsMaBuocGiaCong.RecordCount
				%>
				<tr rowspan="4">
				  <td colspan="3" align="center">
					<input type="hidden" name="MaGiaCong<%=CongDoanSize%>" id = "MaGiaCong<%=CongDoanSize%>"  size="3" value="<%=RsMaChiTieu(0)%>"/>
					<b><%=RsMaChiTieu(1) %></b>            </td>
					  <td rowspan="<%=rowCount+1%>">
						<textarea name="" cols="20" rows="7"><%=RsMaChiTieu(2) %></textarea>           </td>
					</tr>
				  <% 
						while(not RsMaBuocGiaCong.EOF)
					%>
				  <tr>
					<td width="108">
					  <%=RsMaBuocGiaCong(1)%>
					  <% 
						if (cint(Request.QueryString("ma_tv"))>0) then  
						  	SqlDiem="Select Tamin,Tamax from DiemChiTieu_KyThuat where MaThanhVien=" & Request.QueryString("ma_tv") & " and MaBuocGiaCong=" & RsMaBuocGiaCong(0) & " and MaChiTieu=" & RsMaChiTieu(0)
					  rsdiemcham.open SqlDiem,conn
					 ' Response.Write(SqlDiem)
						   if not rsdiemcham.eof  then
						  		diemTamin=	rsdiemcham("Tamin")
								diemTamax=	rsdiemcham("Tamax")
						  	else
								diemTamin=	"1"
								diemTamax=	"1"
							end if
							rsdiemcham.close
						end if
					  %>
					  <input type="hidden" name="MaHieuQua<%=CongDoanSize%><%=HieuQuaSize%>" value="<%=RsMaBuocGiaCong(0)%>" />              </td>
								<td width="122">
								  <input type="text" onblur="if ((this.value>=10)||(this.value<1) || isNaN(this.value) || (this.value > Pmax<%=CongDoanSize%><%=HieuQuaSize%>.value)){alert('Tamin phải là kiểu số ,không được nhỏ hơn 1 hoặc lớn hơn 10 và không được lớn hơn Tamax tương ứng.'); this.value='1'; this.focus(); this.select();};"  name="Pmin<%=CongDoanSize%><%=HieuQuaSize%>" size="3" value="<%=diemTamin %>"/>					    </td>
								<td>
								  <input type="text" onblur="if ((this.value>=10)||(this.value<1) || isNaN(this.value) || (this.value < Pmin<%=CongDoanSize%><%=HieuQuaSize%>.value)){alert('Tamax phải là kiểu số ,không được nhỏ hơn 1 hoặc lớn hơn 10 và không được nhỏ hơn Tamin tương ứng.'); this.value='1'; this.focus(); this.select();};" name="Pmax<%=CongDoanSize%><%=HieuQuaSize%>" size="3" value="<%=diemTamax %>"/>					    </td>
							</tr>
					<%
						
						HieuQuaSize = HieuQuaSize + 1
						RsMaBuocGiaCong.moveNext()
						Wend
						RsMaBuocGiaCong.Close
						
					%>
					<% 
					CongDoanSize = CongDoanSize + 1
					RsMaChiTieu.moveNext()
					Wend	
				%>
					
					</div></td>
				</tr>
			<br />
			<br />
			<br />
			<tr>
			  <td height="47"><input type="submit" name="Submit" value="Chấm điểm"  />
				<input type="hidden" name="CongDoanSize" value="<%=CongDoanSize%>" />
				<input type="hidden" name="HieuQuaSize" value="<%=HieuQuaSize%>" /></td>
				</tr>
				<%end if%>
			</table>
		</form><%'end if	%>
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
