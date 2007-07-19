<%@LANGUAGE="JAVASCRIPT" CODEPAGE="65001"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Untitled Document</title>
</head>

<body>
<!--#include file = "../Connections/Connection.inc"-->
<%
			var sql;
			sql = "Update LOAITHIETBI set "
			sql = sql + "ten_loai_tb = N'" + Request.Form("tentl") + "',"
			sql = sql + "ky_hieu='" + Request.Form("kyhieu") + "',"
			sql = sql + "mo_ta = N'" + Request.Form("mota") + "'"
			sql = sql + "where ma_loai_tb=" +  Request.Form("matl") ;		
			oConn.Execute(sql);
			
			Response.Redirect("Categories.asp");
%>
</body>
</html>
