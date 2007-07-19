<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%><!--MMDW 1 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/hinhmaunguoidung.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Xem đánh giá trình độ công nghệ</title>
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
				  <!--MMDW 32 --><!--#include file="connection.inc" --><!--MMDW 33 -->
<form mmdw="104"  action="" method="post" name="doanhnghiep" id="doanhnghiep">         
<table mmdw="105"  border="0">
  <tr>
    <td mmdw="106"  align="right">Chọn doanh nghiệp cần xem</td>
	<td mmdw="107"  align="left">
      <select mmdw="108"  name="madoanhnghiep" onchange="window.location='drawappletMain.asp?ma_dn='+this.value">
        <option mmdw="109"  value="0">==Chọn một doanh nghiệp==</option>
         <!--MMDW 34 --><% if session("ma_dn") >0 then
		 		rs.open "select * from doanhnghiep where status=1 and madoanhnghiep="& session("ma_dn") ,conn
		     else
		 		rs.open "select * from doanhnghiep where status=1",conn
			 end if
		 %><!--MMDW 35 -->
        <!--MMDW 36 --><% while not rs.eof%><!--MMDW 37 -->
        <!--MMDW 38 --><% if (rs(0)=cint(Request.QueryString("ma_dn"))) then %><!--MMDW 39 -->
        <option mmdw="110"  value="<%=rs(0)%>" selected="selected"><!--MMDW 40 --><%=rs("tendoanhnghiep")%><!--MMDW 41 --></option>
        <!--MMDW 42 --><% else %><!--MMDW 43 -->
        <option mmdw="111"  value="<%=rs(0)%>"><!--MMDW 44 --><%=rs("tendoanhnghiep")%><!--MMDW 45 --></option>
        <!--MMDW 46 --><% end if %><!--MMDW 47 -->
        <!--MMDW 48 --><% rs.movenext() %><!--MMDW 49 -->
        <!--MMDW 50 --><% wend %><!--MMDW 51 -->
        <!--MMDW 52 --><% rs.close()%><!--MMDW 53 -->
      </select>	</td>
  </tr>
  <!--MMDW 54 --><% if (cint(Request.QueryString("ma_dn"))>0)  then %><!--MMDW 55 -->
  
  <tr>
    <td mmdw="112"  align="right">Chọn sản phẩm của doanh nghiệp </td>
	<td mmdw="113"  align="left">
      <select mmdw="114"  name="masanpham"  onchange="window.location='drawappletMain.asp?ma_dn='+doanhnghiep.madoanhnghiep.value+'&ma_sp='+this.value">
        <option mmdw="115"  value="0">==Chọn một sp==</option>
		 <!--MMDW 56 --><% dim rssp
 	set rssp =server.CreateObject("adodb.recordset")
	rssp.open "select * from sanpham where madoanhnghiep="& Request.QueryString("ma_dn")&" and status=1",conn
 %><!--MMDW 57 -->
        <!--MMDW 58 --><% while not rssp.eof%><!--MMDW 59 -->
        <!--MMDW 60 --><% if (rssp(0)=cint(Request.QueryString("ma_sp"))) then %><!--MMDW 61 -->
		 <option mmdw="116"  value="<%=rssp(0)%>" selected="selected"><!--MMDW 62 --><%=rssp("tensanpham")%><!--MMDW 63 --></option>
        <!--MMDW 64 --><% else %><!--MMDW 65 -->
         <option mmdw="117"  value="<%=rssp(0)%>"><!--MMDW 66 --><%=rssp("tensanpham")%><!--MMDW 67 --></option>
        <!--MMDW 68 --><% end if %><!--MMDW 69 -->
        <!--MMDW 70 --><% rssp.movenext() %><!--MMDW 71 -->
        <!--MMDW 72 --><% wend %><!--MMDW 73 -->
	   <!--MMDW 74 --><%rssp.close()%><!--MMDW 75 -->
      </select>	</td>
  </tr>
  </table>
  </form>
<p>
  <!--MMDW 76 --><%if  (cint(Request.QueryString("ma_sp"))>0)  then%><!--MMDW 77 -->
    <!--MMDW 78 --><%
	dim Tmark 
	Hmark =0
	Imark =0
	Omark =0

	Dim RST
	Set RST= Server.CreateObject("ADODB.Recordset")
	Dim RSH
	Set RSH= Server.CreateObject("ADODB.Recordset")
	Dim RSI
	Set RSI= Server.CreateObject("ADODB.Recordset")
	Dim RSO
	Set RSO= Server.CreateObject("ADODB.Recordset")
	Dim RS9
	Set RS9= Server.CreateObject("ADODB.Recordset")
	strBeta = "select Q, BetaT, BetaH, BetaI, BetaO from TieuChuanKyThuat where MaSanPham="&Request.QueryString("ma_sp")&""
	RS9.open strBeta, conn
	
	sql ="TinhTForDoanhNghiep " & Request.QueryString("ma_dn")  & "," & Request.QueryString("ma_sp")
	RST.open sql,conn
	Tmark=RST(0)
	sqlH ="TinhHForDoanhNghiep " & Request.QueryString("ma_dn")  & "," & Request.QueryString("ma_sp")
	RSH.open sqlH,conn
	Hmark=RSH(0)
	sqlO ="TinhOForDoanhNghiep " & Request.QueryString("ma_dn")  & "," & Request.QueryString("ma_sp")
	RSO.open sqlO,conn
	Omark=RSO(0)
	sqlI ="TinhIForDoanhNghiep " & Request.QueryString("ma_dn")  & "," & Request.QueryString("ma_sp")
	RSI.open sqlI,conn
	Imark=RSI(0)
%><!--MMDW 79 -->
    <!--MMDW 80 --><%
	if(Tmark <> "" AND Hmark <> "" AND Imark <> "" AND Omark <> "" ) then
			Dim RS1
			Set RS1= Server.CreateObject("ADODB.Recordset")
			Dim RS2
			Set RS2 = Server.CreateObject("ADODB.Recordset")
			Dim RS3
			Set RS3 = Server.CreateObject("ADODB.Recordset")
			
			sql = "SELECT COUNT(NhanXetID) FROM XemNhanXet"
			RS3.Open sql,conn
			j = RS3(0)
			RS3.Close
			
			for i = 1 to j
				strsql = "SELECT NX2.NhanXetID,TieuChi, SoSanh, GiaTri,newCount "
				strsql=strsql+"FROM XemNhanXet as NX2 inner join (Select NhanXetID,COUNT(NhanXetID) as newCount from XemNhanXet "
				strsql=strsql+"WHERE NhanXetID='"&i&"' group by NhanXetID ) NX on NX2.NhanXetID=NX.NHanXetID"
				
				RS1.Open strsql,conn
				
				while(NOT RS1.EOF)
					if(RS1(4)=2) then
						TieuChi1 = RS1(1)
						SoSanh1 = RS1(2)
						GiaTri1 = RS1(3)
						RS1.MoveNext
						TieuChi2 = RS1(1)
						SoSanh2 = RS1(2)
						GiaTri2 = RS1(3)
		
						if(TieuChi="T") then
							sql2 = "SELECT DISTINCT NhanXet FROM XemNhanXet WHERE NhanXetID = "&i&" AND "&Tmark&" "&SoSanh1&" "&GiaTri1&" AND "&Tmark&" "&SoSanh2&" "&GiaTri2
						else if(TieuChi="H") then
							sql2 = "SELECT DISTINCT NhanXet FROM XemNhanXet WHERE NhanXetID = "&i&" AND "&Hmark&" "&SoSanh1&" "&GiaTri1&" AND "&Hmark&" "&SoSanh2&" "&GiaTri2
						else if(TieuChi="I") then
							sql2 = "SELECT DISTINCT NhanXet FROM XemNhanXet WHERE NhanXetID = "&i&" AND "&Imark&" "&SoSanh1&" "&GiaTri1&" AND "&Imark&" "&SoSanh2&" "&GiaTri2
						else
							sql2 = "SELECT DISTINCT NhanXet FROM XemNhanXet WHERE NhanXetID = "&i&" AND "&Omark&" "&SoSanh1&" "&GiaTri1&" AND "&Omark&" "&SoSanh2&" "&GiaTri2
						end if
						end if
						end if
						
					else
						TieuChi = RS1(1)
						TieuChiCu = TieuChi
						SoSanh = RS1(2)
						'GiaTri = RS1(3)
						
						if(TieuChi="T") then
							sql2 = "SELECT NhanXet FROM XemNhanXet WHERE "&Tmark&" "&SoSanh&" GiaTri AND TieuChi='T' AND NhanXetID="&i
						else if(TieuChi="H") then
							sql2 = "SELECT NhanXet FROM XemNhanXet WHERE "&Hmark&" "&SoSanh&" GiaTri AND TieuChi='H' AND NhanXetID="&i
						else if(TieuChi="I") then
							sql2 = "SELECT NhanXet FROM XemNhanXet WHERE "&Imark&" "&SoSanh&" GiaTri AND TieuChi='I' AND NhanXetID="&i
						else
							sql2 = "SELECT NhanXet FROM XemNhanXet WHERE "&Omark&" "&SoSanh&" GiaTri AND TieuChi='O' AND NhanXetID="&i
						end if
						end if
						end if
						
					end if
					
					RS2.Open sql2,conn
					while(NOT RS2.EOF)
						nhanxet = nhanxet & "- " & RS2(0) & chr(13) & chr(10)& chr(13) & chr(10)
						RS2.MoveNext
					wend
					RS2.Close	
					
					RS1.MoveNext
				wend
				RS1.Close
			next
	end if
	  'Response.Write(left(Tmark,4))
	'Hmark
	'Imark
	'Omark
%><!--MMDW 81 -->

</p>
<!--MMDW 82 --><!--
<table width="100%" border="1">
  <tr>
    <th scope="col">Công nghệ (T)</th>
    <th scope="col">Con người (H)</th>
    <th scope="col">Thông tin (I)</th>
    <th scope="col">Tổ chức (O)</th>
  </tr>
  <tr>
    <td><font face="Symbol" size="+1">b</font><sub>T</sub>=<%'=RS9("BetaT")%></td>
    <td><font face="Symbol" size="+1">b</font><sub>H</sub>=<%'=RS9("BetaH")%></td>
    <td><font face="Symbol" size="+1">b</font><sub>I</sub>=<%'=RS9("BetaI")%></td>
    <td><font face="Symbol" size="+1">b</font><sub>O</sub>=<%'=RS9("BetaO")%></td>
  </tr>
</table>
<p>&nbsp;</p>
--><!--MMDW 83 -->
<p>

<form mmdw="118"  action="test.asp" method="get" name="DanhGia" id="DanhGia">
<table>
  <tr>
    <td mmdw="119"  align="center">
<applet mmdw="120"  code="DrawApplet.class" codebase = "classes" width="450" height="220" alt="Info" title="Draw Applet">
  <param mmdw="121"  name="T" value="<%=left(Tmark,4)%>">
  <param mmdw="122"  name="H" value="<%=left(Hmark,4)%>">
  <param mmdw="123"  name="I" value="<%=left(Imark,4)%>">
  <param mmdw="124"  name="O" value="<%=left(Omark,4)%>">
</applet>	</td>
    </tr>
	<tr>
	  <td mmdw="125"  align="center">Lưu ý,hình vẽ trên chỉ có thể hiện ra khi máy bạn đã cài đặt JRE 1.4.2_09 trở lên.Để tải gói cài về,mời bạn vào địa chỉ <a mmdw="126"  href="http://www.java.sun.com/j2se/1.5.0/download.jsp">www.java.sun.com</a> để download, hoặc bạn có tải từ đây <a mmdw="127"  href="ftp://www.bkmech.com.vn/jre15.exe">www.bkmech.com.vn/download/JRE5.0</a>.</td>
	</tr>
	<tr>
       <td mmdw="128"  align="left" bgcolor="#99CCFF">Chú thích</td>
	  </tr>
	  <tr mmdw="129"  align="left">
          <td mmdw="130"  align="left"><strong>Technoware</strong> : Điểm Công nghệ</td>
        </tr>
        <tr mmdw="131"  align="left">
          <td mmdw="132"  align="left"><strong>Humanware</strong> : Điểm con người</td>
        </tr>
        <tr mmdw="133"  align="left">
          <td mmdw="134"  align="left"><strong>Infoware</strong> : Điểm thông tin</td>
        </tr>
        <tr mmdw="135"  align="left">
          <td mmdw="136"  align="left"><strong>Orgaware</strong> : Điểm tổ chức
            </td>
        </tr>
        <tr>
          <td mmdw="137"  colspan="2" align="left" bgcolor="#FFFFFF"></td>
		  <input mmdw="138"  type="hidden" name="T" value="<%=Tmark%>" />
		  <input mmdw="139"  type="hidden" name="H" value="<%=Hmark%>" />
		  <input mmdw="140"  type="hidden" name="I" value="<%=Imark%>" />
		  <input mmdw="141"  type="hidden" name="O" value="<%=Omark%>" />
        </tr>
</table>
<p mmdw="142"  align="center">
<input mmdw="143"  type="button" name="TVNhapNhanXet" value="Thành viên nhập nhận xét" onclick="window.location='NhapNhanXet.asp?MaDoanhNghiep=<%=Session("ma_dn")%>&MaSanPham=<%=Request.QueryString("ma_sp")%>'" />
<input mmdw="144"  type="button" name="HDNhapNhanXet" value="Hội đồng nhập nhận xét" onclick="window.location='HoiDongNhanxetDN.asp?MaDoanhNghiep=<%=Session("ma_dn")%>&MaSanPham=<%=Request.QueryString("ma_sp")%>'" />
<input mmdw="145"  type="button" name="Print" value=" In Phiếu Điểm " />
</p>
</form>
<!--MMDW 84 --><% 
else
%><!--MMDW 85 -->
<p mmdw="146"  align="center">Bạn phải chọn một sản phẩm để xem đánh giá!</p>
<!--MMDW 86 --><%
end if %><!--MMDW 87 -->

<!--MMDW 88 --><% 
else
%><!--MMDW 89 -->
<p mmdw="147"  align="center">Bạn phải chọn một doanh nghiệp để xem đánh giá!</p>
<!--MMDW 90 --><%
end if %><!--MMDW 91 -->
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
<!-- MMDW:success -->