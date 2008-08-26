<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Xử lý nhập điểm tiêu chuẩn thông tin</title>
</head>

<body>
<!--#include file = connection.inc-->
<%
	dim run
	run = "execute NhapDiemTieuChuanThongTin_Proc "
	conn.execute(run)
	Response.Redirect()
%>
</body>
</html>
