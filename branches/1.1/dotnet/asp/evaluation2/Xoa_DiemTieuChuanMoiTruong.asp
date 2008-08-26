<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file=connection.inc-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Xóa điểm tiêu chuẩn môi trường</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>

<body>
<%
	Dim ma
	Dim RsMoiTruong
	ma = Request.QueryString("ma")
	set RsMoiTruong = Server.CreateObject("ADODB.Recordset")
	conn.Execute("DELETE from DiemTieuChuanMoiTruong where MaNhanToMoiTruong='" + ma + "'")
	Response.Redirect("DanhSach_DiemTieuChuanMoiTruong.asp")
	
	
%>
</body>
</html>





</body>
</html>
