<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>
<!--#include file=connection.inc-->
<%
	MaChiTieu = Request.QueryString("MaChiTieu")
	MaDoanhNghiep = Request.QueryString("MaDoanhNghiep")
	TenDoanhNghiep = Request.QueryString("TenDoanhNghiep")
	
	sql="DELETE FROM ChiTietChiTieu WHERE MaChiTieu="&MaChiTieu&" AND MaDoanhNghiep="+MaDoanhNghiep
	'Response.Write(sql)
	'Response.Write("ThemChiTieu.asp?MaDoanhNghiep="&MaDoanhNghiep&"TenDoanhNghiep="&TenDoanhNghiep)
	RS.Open sql,conn
	
	Response.Redirect("ThemChiTieu.asp?MaDoanhNghiep="&MaDoanhNghiep&"&TenDoanhNghiep="&TenDoanhNghiep)
%>
<body>
</body>
</html>
