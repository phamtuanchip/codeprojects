<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<!--#include file = connection.inc-->
<%
	dim run
	newDiemGoc = CInt(Request.Form("DiemGoc"))
	'run = "Execute NhapDiemSanPham_Proc '"+Request.Form("MaSanPham")+"','"+Request.Form("MaThanhVien")+"','"+newDiemGoc+"','"+Request.Form("MaHeSoTrongLuong_SanPham")+"'"
	'run = "Execute NhapDiemSanPham_Proc '"+Request.Form("MaSanPham")+"','"+Request.Form("MaThanhVien")+"','"+CInt(Request.Form("DiemGoc"))+"','"+Request.Form("MaHeSoTrongLuong_SanPham")+"'"
	'conn.Execute (run)
	'Response.Redirect("NhapMoi_DiemSanPham.asp")
	Response.Write(newDiemGoc)
%>
</body>
</html>