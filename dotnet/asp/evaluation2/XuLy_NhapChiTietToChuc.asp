<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!-- #include file = connection.inc-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Xử lý nhập chi tiết tổ chức</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>

<body>
<%
	Dim run
	run = "Execute nhapchitiettochuc N'"+Request.Form("tencttc")+"','"+Request.Form("slSanPham")+"','"+Request.Form("slHoiDong")+"', " + Request.Form("alphao") + ", N'"+Request.Form("ghichu")+"'"
	conn.Execute(run)
	Response.Redirect("DanhSach_ChiTietToChuc.asp")
	
%>
</body>
</html>
