<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!-- #include file = connection.inc-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Xử lý nhập điểm tiêu chuẩn môi trường</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>

<body>
 <%
 	Dim run
	Dim strSql
	Dim RsMoiTruong
	Dim RsGiaCong
	set RsMoiTruong = Server.CreateObject("ADODB.Recordset")
	set RsGiaCong = Server.CreateObject("ADODB.Recordset")
'strMoiTruong = "Select count(*) from NhanToMoiTruong where MaNhanToMoiTruong = '" + slMoiTruong + "'"
'strGiaCong = "Select count(*) from BuocGiaCong Where MaBuocGiaCong = '"+slGiaCong+"'"
	'RsMoiTruong.Open strMoiTruong,conn
	'RsGiaCong.Open strGiaCong,conn
		'if not RsMoiTruong.EOF and RsGiaCong.EOF then
			'Response.Write("Mã nhân tố môi trường hoặc Mã Gia Công này đã có rồi")
		'else
		
	run = "Execute nhapdiemtieuchuanmoitruong '"+Request.Form("slMoiTruong")+"','"+Request.Form("slGiaCong")+"','"+Request.Form("lamda")+"'"
	conn.Execute(run)
	Response.Redirect("DanhSach_DiemTieuChuanMoiTruong.asp")
	'end if
 %>
 
</body>
</html>
