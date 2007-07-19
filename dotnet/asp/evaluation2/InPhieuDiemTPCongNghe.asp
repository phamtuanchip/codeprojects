<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Phiếu điểm thành phần công nghệ theo công đoạn</title>
<style type="text/css">
<!--
.style2 {font-size: 13px}
.style4 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 13px;
}
.style5 {font-size: 13px; font-family: Verdana, Arial, Helvetica, sans-serif; }
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
				  errorStr = Request.Form("errorStr")
					MaThanhVien=Request.Form("MaThanhVien")
					inAll=Request.Form("inAll")
					CongDoanSize = Request.Form("CongDoanSize")
					HieuQuaSize = Request.Form("HieuQuaSize")
					'Response.Write(inAll)
				  
				  sql = "SELECT TenDoanhNghiep, TenSanPham FROM DoanhNghiep inner join SanPham on DoanhNghiep.MaDoanhNghiep=SanPham.MaDoanhNghiep WHERE DoanhNghiep.MaDoanhNghiep=" & MaDoanhNghiep & " and MaHoiDong=" & MaHoiDong & " and MaSanPham=" & MaSanPham
				  RS.Open sql,conn
				  
					Dim RS2
					Set RS2 = Server.CreateObject("ADODB.Recordset")
					if(inAll = "on") then
						sql2 = "SELECT DISTINCT MaThanhVien, TenThanhVien FROM XemDsTVChamDiemChoTungDN WHERE MaHoiDong = "&Session("ma_hd")&" AND MaDoanhNghiep = "&MaDoanhNghiep
						
					else
						sql2 = "SELECT ThanhVien.MaThanhVien, ThanhVien.TenThanhVien FROM ThanhVien WHERE MaThanhVien = "&MaThanhVien
					end if
					'RS2.Open sql2,conn
					
					Dim RS4
					Set RS4 = Server.CreateObject("ADODB.Recordset")
					sql3 = "SELECT ThanhVien.MaThanhVien, ThanhVien.TenThanhVien FROM ThanhVien INNER JOIN HoiDongChamDiem ON ThanhVien.MaThanhVien = HoiDongChamDiem.MaThanhVien WHERE ThanhVien.Status=1 and MaHoiDong = "+MaHoiDong & "and HoiDongChamDiem.Status=1"
					RS4.Open sql3,conn,3
					'MaCongDoanSize = RS4.RecordCount
					
					Dim RsMaGiaCong
					Set RsMaGiaCong = Server.CreateObject("ADODB.Recordset")
					sql4 = "SELECT MaBuocGiaCong, TenBuocGiaCong FROM BuocGiaCong WHERE MaSanPham="+MaSanPham+" AND MaHoiDong="+MaHoiDong
					'RsMaGiaCong.Open sql4,conn,3
					'MaGiaCongSize = RsMaGiaCong.RecordCount*MaCongDoanSize
					
					Dim RsMaHieuQua
					Set RsMaHieuQua = Server.CreateObject("ADODB.Recordset")
					sql5 = "SELECT MaHieuQuaCongNghe_KyThuat, TenHieuQuaCongNghe_KyThuat FROM HieuQuaCongNghe_KyThuat WHERE MaSanPham="+MaSanPham+" AND MaHoiDong="+MaHoiDong
					'RsMaHieuQua.Open sql,conn
					
					CongDoanSize = 0
					HieuQuaSize = 0
					
%>
<%=errorStr%> </p>
<%
	RS2.Open sql2,conn
	while(not RS2.EOF) 
		if(inAll="false") then
			currentMaThanhVien = MaThanhVien
		else
			currentMaThanhVien = RS2(0)
		end if
%>
<p align="center">
<div align="center" class="style2 style4"><span class="style6"><br />
  <br />
  <strong>PHIẾU CHO ĐIỂM THÀNH PHẦN CÔNG NGHỆ THEO CÔNG ĐOẠN</strong></span><br />
    <br />
    <br />
</div></p>
<table border="0">
<tr>
<td align="left">Cơ sở sản xuất:</td><td align="left"><b><%=RS(0) %></b></td>
</tr>
<tr>
<td align="left">Chủng loại sản phẩm:</td><td align="left"><b><%=RS(1)%></b></td>
</tr>
<tr>
<td align="left">Người cho điểm:</td><td align="left"><b><%=RS2(1)%></b></td>
</tr>
</table>
  <table width="100%" border="1">
    <tr>
      <td width="350" rowspan="2" align="center">Các thành phần Công Nghệ </td>
        <td width="150" colspan="2" align="center">Điểm cho </td>
        <td rowspan="2" align="center">Tiêu chuẩn điểm <br />
          m</td>
    </tr>
    <tr>
      <td width="58" height="23" align="center">min</td>
        <td width="56" align="center">max</td>
    </tr>
    <tr>
      <td align="center" height="20"><strong>T Thiết Bị </strong></td>
        <td align="center" height="20">P min </td>
        <td align="center" height="20">P max </td>
        <td align="center" height="20">Theo mức đạt trên mức thiết kế </td>
    </tr>
    <tr align="center">
        <% 
			RsMaGiaCong.Open sql4,conn,3
			
			i=0
			j=0
			
			while(not RsMaGiaCong.EOF) 
			HieuQuaSize = 0
			RsMaHieuQua.Open sql5,conn,3
			MaCongDoanSize = RsMaHieuQua.RecordCount + 1
			MaGiaCongSize = RsMaGiaCong.RecordCount*MaCongDoanSize
		%>
          <td colspan="3" align="center" height="20">
            <b><%=RsMaGiaCong(1) %></b>            </td>
				  <%
				if(CongDoanSize=0) then
				%>
          <td valign="top" height="20" align="left" rowspan="<%=MaGiaCongSize%>">
            <ul>
              <li>Trên 80% : 8,9</li>
					    <li>Từ 70%-80% : 7,8</li>
					    <li>Từ 60%-70% : 6,7</li>
					    <li>Từ 50%-60% : 5,6</li>
					    <li>Dưới 50% : 3,4,5</li>
		    </ul></td>
				  <%
				end if
				%>
    </tr>
			  <% 
					while(not RsMaHieuQua.EOF)
				%>
			  <tr>
				<td height="20" align="center">
				  <%=RsMaHieuQua(1)%></td>
				  <%if(inAll = "on") then%>
							  <%
									MaGiaCong = Request.Form("MaGiaCong"&i)
									MaHieuQua = Request.Form("MaHieuQua"&i&j)
									sql6 = "SELECT PCDmin, PCDmax FROM DiemCongNgheTheoCongDoan WHERE MaThanhVien = " & currentMaThanhVien & " AND MaBuocGiaCong=" & MaGiaCong & "AND MaHieuQuaCongNghe_KyThuat=" & MaHieuQua
									'Response.Write("currentMaThanhVien="&currentMaThanhVien)
									'Response.Write("MaGiaCong="&MaGiaCong)
									'Response.Write("MaHieuQua="&MaHieuQua)
									'sql6 = "SELECT PCDmin, PCDmax FROM DiemCongNgheTheoCongDoan"
									'Response.Write(sql6)
									Dim RSnew
									Set RSnew = Server.CreateObject("ADODB.Recordset")
									RSnew.Open sql6,conn
									if(not RSnew.EOF) then
							  %>
									  <td height="20">&nbsp;<%=RSnew(0)%></td>
									  <td height="20">&nbsp;<%=RSnew(1)%></td>
							<% else %>
									  <td height="20">&nbsp;0</td>
									  <td height="20">&nbsp;0</td>
							<% end if %>
					<%else%>
									  <td height="20">&nbsp;</td>
									  <td height="20">&nbsp;</td>
					<%end if%>
		</tr>
				<%
					j=j+1
					HieuQuaSize = HieuQuaSize + 1
					RsMaHieuQua.moveNext()
					Wend
					j=0
					RsMaHieuQua.Close
			i=i+1
			CongDoanSize = CongDoanSize + 1
			RsMaGiaCong.moveNext()
			Wend
			i=0
			RsMaGiaCong.Close
		%>
            
            </div></td>
      </tr>
    <br />
    <br />
    <br />
  </table>
  <br />
  <p>
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
  </p>
  <br />
  <br />
  <br />
  <br />
  <br />
  <br />
  <br />
<%
CongDoanSize = 0
RS2.moveNext()
wend
RS2.Close
%>	  
</body>
</html>
