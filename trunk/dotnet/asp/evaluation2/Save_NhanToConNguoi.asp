<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!-- #include file = connection.inc-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Xử lý sửa hiệu quả công nghệ thông ti</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>

<body>
<%
		dim RsSua
		dim strSql
		dim strMa
  		dim strTen
		dim stralphah
		strMa = Request.Form("mantcn")
		strTen = Request.Form("tenntcn")
		stralphah = Request.Form("alphah")
		set RsSua = Server.CreateObject("ADODB.Recordset")
		
strSql = "update NhanToConNguoi set TenNhanToConNguoi = N'" + strTen + "', AlphaH = '" + stralphah + "' where MaNhanToConNguoi = '" + strMa + "'"
	'Response.Write(strSql)
		RsSua.Open strSql,conn	
		Response.Redirect("DanhSach_NhanToConNguoi.asp")
	%>
</body>
</html>

