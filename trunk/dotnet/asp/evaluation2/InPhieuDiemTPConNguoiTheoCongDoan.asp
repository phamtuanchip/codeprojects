<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Phiếu điểm thành phần con người theo công đoạn</title>
<style type="text/css">
<!--
.style2 {font-size: 13px}
.style4 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 13px;
}
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
.style6 {font-size: 15px}
</STYLE>
<body>

<p class="style2">
  <!--#include file=connection.inc-->
  <%
					MaSanPham=Session("ma_sp")
					MaHoiDong=Session("ma_hd")
				  MaDoanhNghiep=Session("ma_dn")
				  errorStr = Request.QueryString("errorStr")
					MaThanhVien=Request.QueryString("MaThanhVien")
				  
				  sql = "SELECT TenDoanhNghiep, TenSanPham FROM DoanhNghiep inner join SanPham on DoanhNghiep.MaDoanhNghiep=SanPham.MaDoanhNghiep WHERE DoanhNghiep.MaDoanhNghiep=" & MaDoanhNghiep & " and MaHoiDong=" & MaHoiDong & " and MaSanPham=" & MaSanPham
				  RS.Open sql,conn
				  
					Dim RS2
					Set RS2 = Server.CreateObject("ADODB.Recordset")
					sql = "SELECT ThanhVien.MaThanhVien, ThanhVien.TenThanhVien FROM ThanhVien  WHERE MaThanhVien = "&MaThanhVien
					RS2.Open sql,conn
					
					Dim RS4
					Set RS4 = Server.CreateObject("ADODB.Recordset")
					sql = "SELECT ThanhVien.MaThanhVien, ThanhVien.TenThanhVien FROM ThanhVien INNER JOIN HoiDongChamDiem ON ThanhVien.MaThanhVien = HoiDongChamDiem.MaThanhVien WHERE MaHoiDong = "+MaHoiDong
					RS4.Open sql,conn
					
					Dim RsMaGiaCong
					Set RsMaGiaCong = Server.CreateObject("ADODB.Recordset")
					sql = "SELECT MaBuocGiaCong, TenBuocGiaCong FROM BuocGiaCong WHERE MaSanPham="+MaSanPham+" AND MaHoiDong="+MaHoiDong
					RsMaGiaCong.Open sql,conn,3
					size1 = RsMaGiaCong.RecordCount
					
					Dim RsMaHieuQua
					Set RsMaHieuQua = Server.CreateObject("ADODB.Recordset")
					sql = "SELECT MaNhanToConNguoi, TenNhanToConNguoi FROM NhanToConNguoi WHERE MaSanPham="+MaSanPham+" AND MaHoiDong="+MaHoiDong
					'RsMaHieuQua.Open sql,conn
					
					CongDoanSize = 0
					HieuQuaSize = 0
					
%>
<%=errorStr%> </p>

<form action="CapNhatDiemSanPhamTheoCongDoanSanXuat.asp" method="post" name="form1" id="form1">
<div align="center" class="style2 style4"><span class="style6"><br />
  <br />
  <strong>PHIẾU CHO ĐIỂM THÀNH PHẦN CON NGƯỜI THEO CÔNG ĐOẠN</strong></span><br />
    <br />
    <br />
</div>
<table border="0">
<tr>
<td align="left"><span class="style2">Cơ sở sản xuất:</span></td>
<td align="left"><span class="style2"><%=RS(0) %></span></td>
</tr>
<tr>
<td align="left"><span class="style2">Chủng loại sản phẩm:</span></td>
<td align="left"><span class="style2"><%=RS(1)%></span></td>
</tr>
<tr>
<td align="left"><span class="style2">Người cho điểm:</span></td>
<td align="left"><span class="style2"><%=RS2(1)%></span></td>
</tr>
</table>
  <table width="100%" border="1">
    <tr>
      <td width="350" rowspan="2"><div align="center">CÁC THÀNH PHẦN CÔNG NGHỆ </div></td>
        <td width="150" colspan="2"><div align="center">ĐIỂM CHO </div></td>
        <td rowspan="2" align="center">TIÊU CHUẨN ĐIỂM </td>
    </tr>
    <tr>
      <td width="58" height="20"><div align="center">min</div></td>
        <td width="56" height="20"><div align="center">max</div></td>
    </tr>
    <tr>
      <td height="20"><div align="center"><strong>T Thiết Bị </strong></div></td>
        <td height="20"><div align="center">Hmin </div></td>
        <td height="20"><div align="center">Hmax</div></td>
        <td height="20"><div align="center">Theo trình độ </div></td>
    </tr>
    <tr>
        <% while(not RsMaGiaCong.EOF) 
			HieuQuaSize = 0
			RsMaHieuQua.Open sql,conn,3
			size2 = RsMaHieuQua.RecordCount
			mysize = size1 * size2
		%>
          <td colspan="3" align="center" height="20">
            <input type="hidden" name="MaGiaCong<%=CongDoanSize%>" id = "MaGiaCong<%=CongDoanSize%>"  size="3" value="<%=RsMaGiaCong(0)%>"/>
            <b><%=RsMaGiaCong(1) %></b>            </td>
				  <%
				if(CongDoanSize=0) then
				%>
          <td rowspan="<%=mysize%>" height="20" valign="top" bordercolor="#FFFFFF">
            <ul>
              <b>Trình độ văn hóa</b>
					    <li>&nbsp;&nbsp;Cấp 2: 1,2,3</li>
					    <li>&nbsp;&nbsp;Cấp 3: 3,4,5</li>
						<br />
					    <b>Trình độ chuyên môn</b>
					    <li>&nbsp;&nbsp;Đào tạo hoàn chỉnh ngoại ngữ, vi tính, chuyên môn quản lý: 7,8,9</li>
					    <li>&nbsp;&nbsp;Thành thạo: 6,7,8</li>
					    <li>&nbsp;&nbsp;Bình thường: 4,5,6</li>
					    <li>&nbsp;&nbsp;Kém: 2,3,4</li>
			    </ul></td>
				  <%
				end if
				%>
          </tr>
          <% 
				while(not RsMaHieuQua.EOF)
			%>
          <tr>
            <td align="center" height="20">
              <%=RsMaHieuQua(1)%>
              <input type="hidden" name="MaHieuQua<%=CongDoanSize%><%=HieuQuaSize%>" value="<%=RsMaHieuQua(0)%>" />              </td>
					  <td height="20">&nbsp;</td>
					  <td height="20">&nbsp;</td>
		    </tr>
            <%
				HieuQuaSize = HieuQuaSize + 1
				RsMaHieuQua.moveNext()
				Wend
				RsMaHieuQua.Close
			%>
            <% 
			CongDoanSize = CongDoanSize + 1
			RsMaGiaCong.moveNext()
			Wend	
		%>
            
            </div></td>
    </tr>
    <br />
    <br />
    <br />
  </table>
  <br />
  <table width="303" border="0" align="right">
    <tr align="right">
      <td align="right">&nbsp;</td>
      <td align="center"><h5><i><b>Hà Nội ngày.......tháng.......năm.........</b></i> </h5></td>
    </tr>
    <tr>
      <td  align="right">&nbsp;</td>
      <td align="center"><h5><b>NGƯỜI CHO ĐIỂM </b><br />
      </h5></td>
    </tr>
  </table>
</form>
			  
</body>
</html>
