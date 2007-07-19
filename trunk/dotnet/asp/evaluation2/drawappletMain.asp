<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/hinhmaunguoidung.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Xem đánh giá trình độ công nghệ</title>
<script language="javascript">
function messageWindow(title)

{
		url="InPhieuHoiDongNhanxetDN.asp?MaDoanhNghiep="+doanhnghiep.madoanhnghiep.value +"&MaSanPham="+doanhnghiep.masanpham.value ;
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
				  <!--#include file="connection.inc" -->
<form action="" method="post" name="doanhnghiep" id="doanhnghiep">         
<table border="0">
  <tr>
    <td align="right">Chọn doanh nghiệp cần xem</td>
	<td align="left">
      <select name="madoanhnghiep" onchange="window.location='drawappletMain.asp?ma_dn='+this.value">
        <option value="0">==Chọn một doanh nghiệp==</option>
         <%
		 	on error resume next
		  if session("ma_dn") >0 then
		 		rs.open "select * from doanhnghiep where status=1 and madoanhnghiep="& session("ma_dn") ,conn
		     else
		 		rs.open "select * from doanhnghiep where status=1",conn
			 end if
		 %>
        <% while not rs.eof%>
        <% if (rs(0)=cint(Request.QueryString("ma_dn"))) then %>
        <option value="<%=rs(0)%>" selected="selected"><%=rs("tendoanhnghiep")%></option>
        <% else %>
        <option value="<%=rs(0)%>"><%=rs("tendoanhnghiep")%></option>
        <% end if %>
        <% rs.movenext() %>
        <% wend %>
        <% rs.close()%>
      </select>	</td>
  </tr>
  <% if (cint(Request.QueryString("ma_dn"))>0)  then %>
  
  <tr>
    <td align="right">Chọn sản phẩm của doanh nghiệp </td>
	<td align="left">
      <select name="masanpham"  onchange="window.location='drawappletMain.asp?ma_dn='+doanhnghiep.madoanhnghiep.value+'&ma_sp='+this.value">
        <option value="0">==Chọn một sp==</option>
		 <% dim rssp
 	set rssp =server.CreateObject("adodb.recordset")
	rssp.open "select * from sanpham where madoanhnghiep="& Request.QueryString("ma_dn")&" and status=1",conn
 %>
        <% while not rssp.eof%>
        <% if (rssp(0)=cint(Request.QueryString("ma_sp"))) then %>
		 <option value="<%=rssp(0)%>" selected="selected"><%=rssp("tensanpham")%></option>
        <% else %>
         <option value="<%=rssp(0)%>"><%=rssp("tensanpham")%></option>
        <% end if %>
        <% rssp.movenext() %>
        <% wend %>
	   <%rssp.close()%>
      </select>	</td>
  </tr>
  </table>
  </form>
<p>
  <%if  (cint(Request.QueryString("ma_sp"))>0)  then%>
    <%
	dim Tmark 
	Hmark =0
	Imark =0
	Omark =0
	TongDoanhThuQ=0
	LamDa=0
	Tau=0
	BetaT=0
	BetaH=0
	BetaI=0
	BetaO=0
	TBT=1
	HBH=1
	IBI=1
	OBO=1
	TCN=1
	
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
	Dim RSLamda
	Set RSLamda= Server.CreateObject("ADODB.Recordset")
	Dim RSBeta
	Set RSBeta= Server.CreateObject("ADODB.Recordset")
	'Dim RSTongDoanhThu
	'Set RSTongDoanhThu= Server.CreateObject("ADODB.Recordset")
	
	'strTongDoanhThu="select Q from TieuChuanKinhTe where MaSanPham=" & Request.QueryString("ma_sp")
	'RSTongDoanhThu.Open strTongDoanhThu,conn
	'if(not RSTongDoanhThu.EOF)
	'{
	'	TongDoanhThuQ=RSTongDoanhThu(0)
	'}
'	Response.
	
	strBeta = "select Q, BetaT, BetaH, BetaI, BetaO from TieuChuanKyThuat where MaSanPham="&Request.QueryString("ma_sp")&""
	RSBeta.open strBeta, conn
	if not RSBeta.EOF then
		TongDoanhThuQ=RSBeta(0)
		BetaT=RSBeta(1)
		BetaH=RSBeta(2)
		BetaI=RSBeta(3)
		BetaO=RSBeta(4)
	end if
	
	
	strLamDa="Select avg(Lamda) from NhanToMoiTruong where MaSanPham=" & Request.QueryString("ma_sp")
	RSLamda.open strLamDa,conn
	if RSLamda(0)>0 then
		LamDa=RSLamda(0)
	end if
	
	
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
	
	TBT=Tmark^BetaT
	HBH=Hmark^BetaH
	IBI=Imark^BetaI
	OBO=Omark^BetaO
	Tau=TBT*HBH*IBI*OBO
	TCN=left(LamDa,4)*left(Tau,5)*TongDoanhThuQ
	dienTichTong=0
	dienTich1 = (Tmark * (Hmark + Omark ) )/2
	dienTich2 = (Imark * (Hmark + Omark ) )/2
	if isnumeric((dienTich1 + dienTich2)*100/2) then
		dienTichTong = cint((dienTich1 + dienTich2)*100/2)
		
	end if
%>
    <%
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
	  Response.Write(left(Tmark,4))
	  Response.Write(left(Hmark,4))
	  Response.Write(left(Imark,4))
	  Response.Write(left(Omark,4))
	'Hmark
	'Imark
	'Omark
%>

</p>
<!--
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
-->
<p>

<form action="test.asp" method="get" name="DanhGia" id="DanhGia">
  <table width="100%" height="261" border="1" >
    <tr >
      <td height="30" align="center" bgcolor="#246291"><span class="style5"> Công nghệ (T) </span></td>
      <td align="center" bgcolor="#246291"><span class="style5"> Con người (H) </span></td>
      <td align="center" bgcolor="#246291"><span class="style5"> Thông tin (I) </span></td>
      <td align="center" bgcolor="#246291"><span class="style5"> Tổ chức (0) </span></td>
    </tr>
    <tr>
      <td height="34" align="center"><b> &beta;<sub>T  </sub>= <% =BetaT %></b></td>
      <td align="center"><b> &beta;<sub>H  </sub>= <% =BetaH %></b></td>
      <td align="center"><b> &beta;<sub>I  </sub>= <% =BetaI %></b></td>
      <td align="center"><b> &beta;<sub>O  </sub>= <% =BetaO %></b></td>
    </tr>
    <tr>
      <td height="30" align="center"><b> T = <% =left(Tmark,4) %></b></td>
      <td align="center"><b> H = <% =left(Hmark,4) %></b></td>
      <td align="center"><b> I = <% =left(Imark,4) %></b></td>
      <td align="center"><b> O = <% =left(Omark,4) %></b></td>
    </tr>
    <tr>
      <td height="27" colspan="4"><b>Tổng doanh thu bình quân: Q= 
          <% =FormatNumber(TongDoanhThuQ) %> VNĐ</b></td>
    </tr>
    <tr>
      <td height="26" colspan="4"><b>Hệ số đặc trưng môi trường: &lambda; = <% =left(LamDa,4) %></b></td>
    </tr>
    <tr>
      <td height="28" colspan="4"><b>Giá trị 4 thành phần công nghệ: &tau;= T<sup>&beta;T </sup> . H<sup>&beta;H </sup> . I<sup>&beta;I </sup> . O<sup>&beta;O   </sup>= <%=left(Tau,5) %></b></td>
    </tr>
    <tr>
      <td height="33" colspan="4"><b>        Chỉ tiêu công nghệ: T<sub>CN</sub>= &lambda; .&tau; . Q = <% =FormatNumber(TCN) %> VNĐ</b></td>
      </tr>
    <tr>
      <td height="33" colspan="4"><strong>Giới thiệu về công ty: 
	      <%
	  dim rsdn
	  set rsdn =server.CreateObject("adodb.recordset")
	  rsdn.open "select * from doanhnghiep where madoanhnghiep='"& Request.QueryString("ma_dn")&"'",conn
	  
	  %>
	      <a href="<% =rsdn("http")%>" target="_blank" ><% if len(rsdn("http"))>0 then %><%=right(rsdn("http"),len(rsdn("http"))-10)%> <% end if%></a>
	      <%
	  rsdn.close()
	  %>
	  </strong></td>
    </tr>
  </table>
<table>
  <tr>
    <td align="center">
<applet code="DrawApplet.class" codebase = "classes" width="450" height="220" alt="Info" title="Draw Applet">
  <param name="T" value="<%=left(Tmark,4)%>">
  <param name="H" value="<%=left(Hmark,4)%>">
  <param name="I" value="<%=left(Imark,4)%>">
  <param name="O" value="<%=left(Omark,4)%>">
</applet>	</td>
    </tr>
	<tr>
	  <td style="display:none" align="left"><b>Diện tích hình thoi : <%=dienTichTong%>%</b></td>
	</tr>
	<tr><td>&nbsp;</td></tr>
	<tr>
	  <td align="center">Lưu ý,hình vẽ trên chỉ có thể hiện ra khi máy bạn đã cài đặt JRE 1.4.2_09 trở lên.Để tải gói cài về,mời bạn vào địa chỉ <a href="http://www.java.sun.com/j2se/1.5.0/download.jsp">www.java.sun.com</a> để download, hoặc bạn có tải từ đây <a href="ftp://www.bkmech.com.vn:321/jre15.exe">www.bkmech.com.vn/download/JRE5.0</a>.</td>
	</tr>
	<tr>
       <td align="left" bgcolor="#99CCFF">Chú thích</td>
	  </tr>
	  <tr align="left">
          <td align="left"><strong>Technoware</strong> : Điểm Công nghệ</td>
        </tr>
        <tr align="left">
          <td align="left"><strong>Humanware</strong> : Điểm con người</td>
        </tr>
        <tr align="left">
          <td align="left"><strong>Infoware</strong> : Điểm thông tin</td>
        </tr>
        <tr align="left">
          <td align="left"><strong>Orgaware</strong> : Điểm tổ chức
            </td>
        </tr>
        <tr align="left">
          <td align="left"><strong>Percentage</strong> : Tỷ lệ phần trăm công nghệ so với tiêu chuẩn            </td>
        </tr>
        <tr>
          <td colspan="2" align="left" bgcolor="#FFFFFF"></td>
		  <input type="hidden" name="T" value="<%=Tmark%>" />
		  <input type="hidden" name="H" value="<%=Hmark%>" />
		  <input type="hidden" name="I" value="<%=Imark%>" />
		  <input type="hidden" name="O" value="<%=Omark%>" />
        </tr>
</table>
<Br>
<%
	if(Session("quyen")=2 and Session("ma_dn") >0) then
%>
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
	  <tr>
		<td><b><font face="Verdana, Arial, Helvetica, sans-serif" size="2"><a href="NhapNhanXet.asp?MaDoanhNghiep=<%=Request.QueryString("ma_dn")%>&amp;MaSanPham=<%=Request.QueryString("ma_sp")%>">Thành viên nhập nhận xét</a></font></b></td></h5>
	  </tr>
	  <tr>
		<td><B><font face="Verdana, Arial, Helvetica, sans-serif" size="2"><a href="HoiDongNhanxetDN.asp?MaDoanhNghiep=<%=Request.QueryString("ma_dn")%>&amp;MaSanPham=<%=Request.QueryString("ma_sp")%>">Hội đồng nhập nhận xét</a><a href="InPhieuHoiDongNhanxetDN.asp?MaDoanhNghiep=<%=Request.QueryString("ma_dn")%>&amp;MaSanPham=<%=Request.QueryString("ma_sp")%>"></a></font></B></td>
	  </tr>
	</table>
<%
	else
%>
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
	  <tr>
		<td><b><font face="Verdana, Arial, Helvetica, sans-serif" size="2"><a href="NhapNhanXet.asp?MaDoanhNghiep=<%=Request.QueryString("ma_dn")%>&amp;MaSanPham=<%=Request.QueryString("ma_sp")%>">Xem nhận xét của thành viên</a></font></b></td></h5>
	  </tr>
	  <tr>
		<td><B><font face="Verdana, Arial, Helvetica, sans-serif" size="2"><a href="HoiDongNhanxetDN.asp?MaDoanhNghiep=<%=Request.QueryString("ma_dn")%>&amp;MaSanPham=<%=Request.QueryString("ma_sp")%>">Xem nhận xét của Hội đồng</a><a href="InPhieuHoiDongNhanxetDN.asp?MaDoanhNghiep=<%=Request.QueryString("ma_dn")%>&amp;MaSanPham=<%=Request.QueryString("ma_sp")%>"></a></font></B></td>
	  </tr>
	</table>
<%
	end if
%>
</form>
<% 
else
%>
<p align="center">Bạn phải chọn một sản phẩm để xem đánh giá!</p>
<%
end if %>

<% 
else
%>
<p align="center">Bạn phải chọn một doanh nghiệp để xem đánh giá!</p>
<%
end if %>
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
