<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!-- #include file = connection.inc-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Xử lý sửa hiệu quả công nghệ thông tin</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>

<body>
<%
		dim RsSua
		dim strSql
		dim strMa
  		dim strTen
		dim ghichu
		strMa = Request.Form("mahqcntc")
		strTen = Request.Form("tenhqcntc")
		strghichu = Request.Form("ghichu")
		set RsSua = Server.CreateObject("ADODB.Recordset")
		
strSql = "update HieuQuaCongNghe_ToChuc set TenHieuQuaCongNghe_ToChuc = N'" + strTen + "', GhiChu = N'" + strghichu + "' where MaHieuQuaCongNghe_ToChuc = '" + strMa + "'"
	'Response.Write(strSql)
		RsSua.Open strSql,conn	
		Response.Redirect("DanhSach_HieuQuaCongNgheToChuc.asp")
	%>
</body>
</html>

