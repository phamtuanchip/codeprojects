<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!-- #include file = connection.inc-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Xử lý nhập chi tiết thông tin</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>

<body>
<%
	Dim run
	run = "Execute nhapchitietthongtin N'"+Request.Form("tencttt")+"','"+Request.Form("slSanPham")+"','"+Request.Form("slHoiDong")+"',"+Request.Form("alphai")+",N'"+Request.Form("ghichu")+"'"
	conn.Execute(run)
	Response.Redirect("DanhSach_ChiTietThongTin.asp")
	
%>
</body>
</html>
