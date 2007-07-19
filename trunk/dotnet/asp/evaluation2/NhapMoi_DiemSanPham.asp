<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Nhập mới điểm sản phẩm</title>
</head>

<body>
<p>
  <!--#include file = connection.inc-->
  <%
	dim RSSanPham
	dim RSThanhVien
	dim RSHSTL
	
	Set RSSanPham = Server.CreateObject("ADODB.Recordset")
	Set RSThanhVien = Server.CreateObject("ADODB.Recordset")
	Set RSHSTL = Server.CreateObject("ADODB.Recordset")
	
	strSanPham = "Select MaSanPham, TenSanPham from SanPham"
	strThanhVien = "select MaThanhVien, TenThanhVien from ThanhVien"
	strHSTL = "select MaHeSoTrongLuong_SanPham, TenHeSoTrongLuong from HeSoTrongLuong"
	
	RSSanPham.open strSanPham, conn
	RSThanhVien.open strThanhVien, conn
	RSHSTL.open strHSTL, conn
%>
</p>
<h3 align="center"><font face="Courier New, Courier, monospace">Nhập mới điểm sản phẩm</font></h3>
<form name="form1" method="post" action="XuLyNhap_DiemSanPham.asp">
<table width="100%" border="1">
  <tr>
    <td><div align="right">Tên sản phẩm </div></td>
    <td>
		<select name="MaSanPham" >
			<%
				while not (RSSanPham.EOF)
			%>
			<option value="<%=RSSanPham("MaSanPham")%>"><%=RSSanPham("TenSanPham")%></option>
			<%
				RSSanPham.MoveNext
				wend
			%>
		</select>	</td>
  </tr>
  <tr>
    <td><div align="right">Tên thành viên chấm điểm </div></td>
    <td>
		<select name="MaThanhVien">
			<%
				while not (RSThanhVien.EOF)
			%>
			<option value="<%=RSThanhVien("MaThanhVien")%>"><%=RSThanhVien("TenThanhVien")%></option>
			<%
				RSThanhVien.MoveNext
				wend
			%>
		</select>	</td>
  </tr>
  <tr>
    <td><div align="right">Điểm gốc </div></td>
    <td><input type="text" name="DiemGoc" /></td>
  </tr>
  <tr>
    <td><div align="right">Hệ số trọng lượng </div></td>
    <td>
		<select name="MaHeSoTrongLuong_SanPham">
			<%
				while not (RSHSTL.EOF)
			%>
			<option value="<%=RSHSTL("MaHeSoTrongLuong_SanPham")%>"><%=RSHSTL("TenHeSoTrongLuong")%></option>
			<%
				RSHSTL.MoveNext
				wend
			%>
		</select>	</td>
  </tr>
  <tr>
    <td><div align="right">
      <input type="submit" name="Submit" value="Đồng ý" />
    </div></td>
    <td><input type="reset" name="Reset" value="Bỏ qua" /></td>
  </tr>
</table>
</form>
<p>&nbsp; </p>
</body>
</html>