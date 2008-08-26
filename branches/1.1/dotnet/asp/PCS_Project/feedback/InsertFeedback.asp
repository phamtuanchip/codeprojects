<%@LANGUAGE="JAVASCRIPT" CODEPAGE="1252"%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<!--#include file = "../Connections/Connection.inc"-->

<%
	var sql;
	sql= "insert into GOPY(nguoi_gop_y,email,tieu_de,noi_dung_gop_y,ngay_gop_y,trang_thai) values ("
	sql = sql + "N'" + Request.Form("ten") + "',"
	sql = sql + "'" + Request.Form("email_kh") + "',"
	sql = sql + "N'" + Request.Form("tieude") + "',"
	sql = sql + "N'" + Request.Form("noidung") + "',"
	sql = sql + "getdate(),"
	sql = sql + "N'Chua xem')"
	//Response.Write(sql);
	oConn.Execute(sql);
	Response.Redirect("../default.asp");
%>
</body>
</html>
