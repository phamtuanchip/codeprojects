<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!-- #include file = connection.inc-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Xử lý nhập nhân tố môi trường</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>

<body>
<%
	Dim run
	Dim strSql
	Dim RsSanPham
	Dim RsThanhVien
	set RsSanPham = Server.CreateObject("ADODB.Recordset")
	set RsThanhVien = Server.CreateObject("ADODB.Recordset")
	run = "Execute nhapnhantomoitruong N'"+Request.Form("tenntmt")+"','"+Request.Form("slSanPham")+"','"+Request.Form("slHoiDong")+"', '"+Request.Form("Lamda")+"' ,N'"+Request.Form("ghichu")+"'"
	'Response.Write(run)
	conn.Execute(run)
	Response.Redirect("DanhSach_NhanToMoiTruong.asp")
	
%>
</body>
</html>
