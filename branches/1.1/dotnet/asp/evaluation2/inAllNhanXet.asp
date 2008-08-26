<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Nhận xét của thành viên</title>
</head>
<body>
<!--#include file="connection.inc" -->
<% 
		MaDoanhNghiep = Request.QueryString("MaDoanhNghiep")
		MaSanPham = Request.QueryString("MaSanPham")
		MaHoiDong = Request.QueryString("MaHoiDong")
		
		Dim RSDoanhNghiep
		Set RSDoanhNghiep = Server.CreateObject("ADODB.Recordset")
		Dim RSSanPham
		Set RSSanPham = Server.CreateObject("ADODB.Recordset")
		Dim RSNhanXet
		Set RSNhanXet = Server.CreateObject("ADODB.Recordset")
		Dim RSHoiDong
		Set RSHoiDong = Server.CreateObject("ADODB.Recordset")
		Dim RSThanhVien
		Set RSThanhVien = Server.CreateObject("ADODB.Recordset")
		Dim RSNX
		Set RSNX = Server.CreateObject("ADODB.Recordset")
		
		sql = "SELECT TenDoanhNghiep FROM DoanhNghiep WHERE MaDoanhNghiep="&MaDoanhNghiep
		RSDoanhNghiep.Open sql,conn
		
		TenDoanhNghiep = RSDoanhNghiep(0)
		RSDoanhNghiep.Close
		
		sql = "SELECT TenSanPham,MaHoiDong FROM SanPham WHERE MaSanPham="&MaSanPham
		RSSanPham.Open sql,conn
		TenSanPham = RSSanPham(0)
		
		MaHoiDong = RSSanPham(1)
		sql = "SELECT TenHoiDong FROM HoiDong WHERE MaHoiDong="&MaHoiDong
		RSHoiDong.Open sql,conn
		TenHoiDong = RSHoiDong(0)
		
		RSThanhVien.open "select MaThanhVien, TenThanhVien FROM XemDsTVChamDiemChoTungDN where MaDoanhNghiep="& MaDoanhNghiep& " and MaHoiDong="& MaHoiDong ,conn
		
		while not RSThanhVien.eof
			MaThanhVien = RSThanhVien(0)
			currentTV = RSThanhVien(1)
			
			sql = "SELECT ID, NhanXet FROM ThanhVienNhanXetDoanhNghiep WHERE MaDoanhNghiep="&MaDoanhNghiep&" AND MaSanPham="&MaSanPham&" AND MaHoiDong="&MaHoiDong&" AND MaThanhVien="&MaThanhVien
			currentText = ""
			RSNX.Open sql, conn
				if(not RSNX.eof) then
					currentText = RSNX(1)
				end if
			RSNX.Close
%>
				      <table width="100%" align="center" border="1" bordercolor="#FFFFFF">
				        <tr>
				          <td colspan="2"><h3 align="center">Nhận xét của thành viên <b><%=currentTV%> </b></h3><br /></td>
                        </tr>
						
				        <tr>
				          <td align="left">Hội đồng chấm điểm: </td>
                          <td align="left"><strong>&nbsp;<%=TenHoiDong %></strong></td>
                        </tr>
						
				        <tr>
				          <td  align="left">Doanh nghiệp: </td>
                          <td  align="left"><strong>&nbsp;<%=TenDoanhNghiep%></strong></td>
                        </tr>
						
				        <tr>
				          <td align="left">Sản phẩm chấm điểm: </td>
                          <td align="left"><strong>&nbsp;<%=TenSanPham  %></strong></td>
                        </tr>
						
				        <tr>
				          <td colspan="2"><u>Nhận xét:<u> </td>
                        </tr>
						
				        <tr valign="top">
				          <td bordercolor="#CCCCCC" valign="top" colspan="2"><%=currentText%>&nbsp;<br /></td>
                        </tr>
						</table>
						<br /><br /><br />
						<br />
<%
		RSThanhVien.movenext()
		wend
		RSThanhVien.Close
%>
</body>
</html>
