<%@LANGUAGE="JAVASCRIPT" CODEPAGE="1252"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Untitled Document</title>
</head>

<body>
<!--#include file = "../Connections/Connection.inc"-->
<%
	var sql;
	sql = "Insert into LOAITHIETBI (ten_loai_tb,ky_hieu,mo_ta) values ("
	sql = sql + "N'" + Request.Form("loaitb") + "',"
	sql = sql + "'" + Request.Form("kyhieu") + "',"
	sql = sql + "N'" + Request.Form("mota") + "')";
	oConn.Execute(sql);
	Response.Redirect("admin.asp");
%>
</body>
</html>
