<%@LANGUAGE="JAVASCRIPT" CODEPAGE="65001"%>
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
	sql = "Insert into DICHVU (ten_loai_dv,mo_ta,gia_dv,ky_hieu) values ("
	sql = sql + "N'" + Request.Form("tendv") + "',"
	sql = sql + "N'" + Request.Form("mota") + "',"
	sql = sql +  Request.Form("gia") + ","
	sql = sql + "'" + Request.Form("kyhieu") + "')";	
	
	oConn.Execute(sql);
	Response.Redirect("admin.asp");
%>
</body>
</html>
