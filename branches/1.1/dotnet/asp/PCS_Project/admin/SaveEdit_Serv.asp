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
			sql = "Update DICHVU set "
			sql = sql + "ten_loai_dv = N'" + Request.Form("tendv") + "',"
			sql = sql + "ky_hieu='" + Request.Form("kyhieu") + "',"
			sql = sql + "mo_ta = N'" + Request.Form("mota") + "',"
			sql = sql + "gia_dv = " + Request.Form("giadv")
			sql = sql + "where ma_loai_dv=" +  Request.Form("madv");		
			oConn.Execute(sql);
			
			Response.Redirect("Services.asp");
%>
</body>
</html>
