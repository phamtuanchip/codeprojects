<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file=connection.inc-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Xóa chi tiết thông tin</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>

<body>
<%
	Dim ma
	Dim Rstochuc
	ma = Request.QueryString("ma")
	set Rstochuc = Server.CreateObject("ADODB.Recordset")
	conn.Execute("DELETE from ChiTietToChuc where MaChiTietToChuc='" + ma + "'")
	Response.Redirect("DanhSach_ChiTietToChuc.asp")
	
	
%>
</body>
</html>

