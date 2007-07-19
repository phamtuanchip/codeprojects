<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/hinhmaunguoidung.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Phiếu nhập điểm giá trị còn lại của thiết bị</title>
<script language="javascript">
function messageWindow(title)

{
  url="InPhieuDiemNhapGiaTriConLaiCuaThietBi.asp";
  var height=screen.height;
    var width=screen.width;

	//content="status,menubar,scrollbars,height=" + height + ",width=" + width +")";
	//var newWindow = window.open(url,"msgWindow",content);
  var newWindow = window.open(url,"msgWindow", "status,menubar,scrollbars,height=600,width=600");

	newWindow.focus( );
}
</script>
<script language="javascript">
function messageWindow1(title)

{
  url="InTatCaPhieuDiemGiaTriConLai.asp";
  var height=screen.height;
    var width=screen.width;

	//content="status,menubar,scrollbars,height=" + height + ",width=" + width +")";
	//var newWindow = window.open(url,"msgWindow",content);
  var newWindow = window.open(url,"msgWindow", "status,menubar,scrollbars,height=600,width=600");

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
				  <p>
  <!--#include file=connection.inc-->
  <%
					MaSanPham=Session("ma_sp")
					MaHoiDong=Session("ma_hd")
					MaDoanhNghiep=Session("ma_dn")
					Rs.open "Select TenDoanhNghiep From DoanhNghiep where MaDoanhNghiep=" & MaDoanhNghiep,conn,3
					
					strTB = "SELECT dbo.ThietBi.MaThietBi, dbo.ThietBi.TenThietBi, dbo.ThietBi.NamSanXuat, dbo.ThietBi.NoiSanXuat FROM dbo.ThietBi where dbo.ThietBi.MaDoanhNghiep = " & MaDoanhNghiep 
					dim RSTB
					set RSTB = Server.CreateObject("ADODB.Recordset")
					RSTB.open strTB,conn,3
					
					dim RSHD
					set RSHD = Server.CreateObject("ADODB.Recordset")
					RSHD.open "Select * from HoiDong where MaHoiDong="& MaHoiDong ,conn,3
					
					CongDoanSize = 0
					HieuQuaSize = 0
					
					dim RS2
					set RS2 = server.CreateObject("adodb.recordset")
					strCheck = "select * from ThietBi where MaDoanhNghiep="&Session("ma_dn")&""
					RS2.open strCheck, conn
					
%>
				    <input name="InPhieuDiem" type="button" id="InPhieuDiem" value="In phiếu điểm" onclick="messageWindow('Phiếu điểm giá trị còn lại của thiết bị');"/>
					<input name="inall" type="button" id="inall" value="In tất cả điểm giá trị còn lại" onclick="messageWindow1('In tất cả phiếu điểm giá trị còn lại của thiết bịị');">
				  </p>
				  <form id="form1" name="form1" method="post" action="CapNhatDiemConLaiCuaSanPham.asp">
				    <br />
<br /> 
&nbsp;&nbsp;<b>Lưu ý:</b> nếu cả 4 đại lượng T,H,N,C ảnh hưởng đều đến giá trị còn lại <br />&nbsp;&nbsp;của thiết bị thì k<sub>T</sub> = k<sub>N</sub> = k<sub>H</sub> = k<sub>C</sub> = 1, m = 4.
<br />
<table width="100%" border="1">
                      <tr>
                        <td colspan="2"><div align="center" class="style3">PHIẾU CHO ĐIỂM GIÁ TRỊ CÒN LẠI CỦA THIẾT BỊ</div></td>
                      </tr>
                      <tr>
                        <td colspan="2">Hội đồng:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=RSHD(1)%> </td>
                      </tr>
                      <tr>
                        <td colspan="2">Doanh nghiệp &nbsp;<%="<b>" & Rs(0) & "</b>"  %></td>
						<input name="CountTB" type="hidden" value="<%=RSTB.recordCount%>" />
                        </tr>
						<%if not (RS2.eof) then%>
					  <% i=1 %>
					<% while(not RSTB.EOF)
						dim RSLAY
						set RSLAY = server.CreateObject("adodb.recordset")
						strCheck = "select * from ThietBi where Mathietbi="&RSTB(0)
						RSLAY.open strCheck, conn	
					%>			  
                        <tr>
                          <td colspan="2">&nbsp;</td>
                        </tr>
                        <tr>
					  <input name="MaThietBi<%=i%>" type="hidden" value="<%= RSLAY(0)%>" />
                        <td colspan="2"><%="<center> <b>" & RSLAY(1) & "</b>" & ". Năm sản xuất: " & RSLAY(2) & ". Nơi sản xuất: " & RSLAY(3) & "</center>"%></td>
                      </tr>
					  <tr>
                        <td width="86%">Lạc hậu về đời T%</td>
                        <td width="14%" ><input name="T<%=i%>" id="T<%=i%>" type="text" size="3"  value="<%=RSLAY(4)%>"/>
                        %</td
                      >
					  </tr>
					  <tr>
                        <td>Hao mòn hữu hình H%</td>
                        <td ><input name="H<%=i%>" type="text" size="3"  value="<%=RSLAY(5)%>"/>
                          %</td
                      >
					  </tr>
					  <tr>
                        <td>Năng suất thực tế N%</td>
                        <td ><input name="N<%=i%>" id="N<%=i%>" type="text" size="3"  value="<%=RSLAY(6)%>"/>
%</td
                      ></tr>
					  <tr>
                        <td>Chất lượng C%</td>
                        <td ><input name="C<%=i%>" type="text" size="3"  value="<%=RSLAY(7)%>"/>
%</td
                      ></tr>
					  <tr>
                        <td>k (k nằm trong khoảng từ 0 đến 1) </td>
                        <td ><input name="K<%=i%>" type="text" size="3"  value="<%=RSLAY(8)%>"/></td
                      ></tr>
					  <tr>
                        <td>k<sub>T</sub> (k<sub>T</sub> là hệ số ảnh hưởng) </td>
                        <td ><input name="Kt<%=i%>" type="text" size="3"  value="<%=RSLAY(9)%>"/></td
                      ></tr>
					  <tr>
                        <td>k<sub>H</sub> (k<sub>H</sub>là hệ số ảnh hưởng)</td>
                        <td ><input name="Kh<%=i%>" type="text" size="3"  value="<%=RSLAY(10)%>"/></td
                      ></tr>
					  <tr>
                        <td>k<sub>N</sub> (k<sub>N</sub>là hệ số ảnh hưởng)</td>
                        <td ><input name="Kn<%=i%>" type="text" size="3"  value="<%=RSLAY(11)%>"/></td
                      ></tr>
					  <tr>
                        <td>k<sub>C</sub> (k<sub>C</sub>là hệ số ảnh hưởng)</td>
                        <td ><input name="Kc<%=i%>" type="text" size="3"  value="<%=RSLAY(12)%>"/></td
                      ></tr>
					  <%  RSLAY.close()
						  i=i+1
					  	RSTB.moveNext()
						Wend
						RSTB.close() ' khet thuc phan lay ra thiet bi cua doanh nghiep
					   %>
			
					   <%else%>
					    <% i=1 %>
						<%while not (RS2.eof)%>
                        <tr>
                          <td colspan="2">&nbsp;</td>
                        </tr>
                        <tr>
					  <input name="MaThietBi<%=i%>" type="hidden" value="<%= RSTB(0)%>" />
                        <td colspan="2"><%="<center> <b>" & RSTB(1) & "</b>" & ". Năm sản xuất: " & RSTB(2) & ". Nơi sản xuất: " & RSTB(3) & "</center>"%></td>
                      </tr>
					  <tr>
                        <td width="86%">Lạc hậu về đời T%</td>
                        <td width="14%" ><input name="T<%=i%>" type="text" size="3"  value="0"/>
                        %</td
                      >
					  </tr>
					  <tr>
                        <td>Hao mòn hữu hình H%</td>
                        <td ><input name="H<%=i%>" type="text" size="3"  value="0"/>
                          %</td
                      >
					  </tr>
					  <tr>
                        <td>Năng suất thực tế N%</td>
                        <td ><input name="N<%=i%>" type="text" size="3"  value="0"/>
%</td
                      ></tr>
					  <tr>
                        <td>Chất lượng C%</td>
                        <td ><input name="C<%=i%>" type="text" size="3"  value="0"/>
%</td
                      ></tr>
					  <tr>
                        <td>k (k nằm trong khoảng từ 0 đến 1) </td>
                        <td ><input name="K<%=i%>" type="text" size="3"  value="0"/></td
                      ></tr>
					  <tr>
                        <td>k<sub>T</sub> (k<sub>T</sub> là hệ số ảnh hưởng) </td>
                        <td ><input name="Kt<%=i%>" type="text" size="3"  value="0"/></td
                      ></tr>
					  <tr>
                        <td>k<sub>H</sub> (k<sub>H</sub>là hệ số ảnh hưởng)</td>
                        <td ><input name="Kh<%=i%>" type="text" size="3"  value="0"/></td
                      ></tr>
					  <tr>
                        <td>k<sub>N</sub> (k<sub>N</sub>là hệ số ảnh hưởng)</td>
                        <td ><input name="Kn<%=i%>" type="text" size="3"  value="0"/></td
                      ></tr>
					  <tr>
                        <td>k<sub>C</sub> (k<sub>C</sub>là hệ số ảnh hưởng)</td>
                        <td ><input name="Kc<%=i%>" type="text" size="3"  value="0"/></td
                      ></tr>

					  <% i=i+1
					  RSTB.movenext
					  wend
					  RSTB.close()
					  end if
                      %>
					   <tr>
                        <td ><input name="cmđNhapiem" type="submit"  value="Nhập điểm"/>
                          &nbsp;</td
                      >
					   </tr>
                    </table>
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
