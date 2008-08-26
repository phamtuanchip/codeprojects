<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Bachkhoa mechatronics P2</title>

<style type="text/css">
<!--
.style3 {font-size: 18px}
-->
</style>
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
				  <p align="center">
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
'					Response.Write(RSTB
%>
                    <br />
</p>
				  <p align="center"><span class="style3">PHIẾU CHO ĐIỂM GIÁ TRỊ CÒN LẠI CỦA THIẾT BỊ</span></p>
				  <p>Hội đồng: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><%=RSHD(1)  %></b><br />
Doanh nghiệp: &nbsp;<%="<b>" & Rs(0) & "</b>"  %></p>
<form id="form1" name="form1" method="post" >
				    <table width="100%" border="1">
				      
				      
				      <tr height="20">
				        <td width="86%"><div align="center">Tên thiết bị Năm sản xuất </div></td>
                          <td width="14%"><div align="center">Điểm</div></td>
                      </tr>
				      <% i=0 %>
				      <% while(not RSTB.EOF)%>				  
				      <tr height="20">
				        <input name="MaThietBi<%=i%>" type="hidden" value="<%= RSTB(0)%>" />
				        <td colspan="2"><%="<center> <b>" & RSTB(1) & "</b>" & ". Năm sản xuất: " & RSTB(2) & ". Nơi sản xuất: " & RSTB(3) & "</center>"%></td>
                      </tr>
				      <tr height="20">
				        <td><div align="center">Lạc hậu về đời T%</div></td>
                          <td >&nbsp;<input name="T<%=i%>" type="hidden" size="3"  value="0"/></td
                      ></tr>
				      <tr height="20">
				        <td><div align="center">Hao mòn hữu hình N%</div></td>
                          <td >&nbsp;<input name="N<%=i%>" type="hidden" size="3"  value="0"/></td
                      ></tr>
				      <tr height="20">
				        <td><div align="center">Năng suất thực tế N%</div></td>
                          <td >&nbsp;<input name="H<%=i%>" type="hidden" size="3"  value="0"/></td
                      ></tr>
				      <tr height="20">
				        <td><div align="center">Chất lượng C%</div></td>
                          <td >&nbsp;<input name="C<%=i%>" type="hidden" size="3"  value="0"/></td
                      ></tr>
				      <tr height="20">
				        <td><div align="center">K</div></td>
                          <td >&nbsp;<input name="K<%=i%>" type="hidden" size="3"  value="0"/></td
                      ></tr>
				      <tr height="20">
				        <td><div align="center">Kt</div></td>
                          <td >&nbsp;<input name="Kt<%=i%>" type="hidden" size="3"  value="0"/></td
                      ></tr>
				      <tr height="20">
				        <td><div align="center">Kh</div></td>
                          <td >&nbsp;<input name="Kh<%=i%>" type="hidden" size="3"  value="0"/></td
                      ></tr>
				      <tr height="20">
				        <td><div align="center">Kn</div></td>
                          <td >&nbsp;<input name="Kn<%=i%>" type="hidden" size="3"  value="0"/></td
                      ></tr>
				      <tr height="20">
				        <td><div align="center">Kc</div></td>
                          <td >&nbsp;<input name="Kc<%=i%>" type="hidden" size="3"  value="0"/></td
                      ></tr>
				      <tr height="20">
				        <td><div align="center">Q</div></td>
                          <td >&nbsp;<input name="Q<%=i%>" type="hidden" size="3"  value="0"/></td
                      ></tr>
				      
				      <% 
						  i=i+1
					  	RSTB.moveNext()
						Wend
					   %>
			        </table>
                    <br />
                    <table width="303" border="0" align="right">
                      <tr align="right">
                        <td align="right">&nbsp;</td>
                        <td align="center"><h5><i><b>Hà Nội ngày.......tháng.......năm.........</b></i> </h5></td>
                      </tr>
                      <tr>
                        <td  align="right">&nbsp;</td>
                        <td align="center"><h5><b>NGƯỜI CHO ĐIỂM </b><br /><br /><br />
                        </h5><br /><br /><br /></td>
                      </tr>
                    </table>
</form>				  
                  <br /><br /><br /><br />
</body>
</html>
