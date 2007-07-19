<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!-- #include file = connection.inc-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Xử lý nhập hiệu quả công nghệ kỹ thuật</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>

<body>
<%
	Dim run
	run = "Execute nhaphieuquacongnghekythuat N'"+Request.Form("tenhqcnkt")+"','"+Request.Form("slSanPham")+"','"+Request.Form("slHoiDong")+"','"+Request.Form("ghichu")+"'"
	conn.Execute(run)
	Response.Redirect("DanhSach_HieuQuaCongNgheKyThuat.asp")
	
%>
</body>
</html>
