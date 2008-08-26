<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!-- #include file = connection.inc-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Xử lý điểm bước gia công</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>

<body>
<%
		dim RsSua
		dim strSql
		dim Tmax
  		dim Tmin
		dim strghichu
		strMa = Request.Form("mantmt")
		'strTen = Request.Form("tenntmt")
		Tmax = CDbl(Request.Form("Tmax"))
		Tmin = Cdbl(Request.Form("Tmin"))
		
		strghichu = Request.Form("ghichu")
		set RsSua = Server.CreateObject("ADODB.Recordset")
		
strSql = "update DiemBuocGiaCong set Tmax = " + Tmax + ", Tmin = " + Tmin + " where MaBuocGiaCong = '" + strMa + "'"
	'Response.Write(strSql)
		RsSua.Open strSql,conn	
		Response.Redirect("DanhSach_DiemBuocGiaCong.asp")
	%>
</body>
</html>


