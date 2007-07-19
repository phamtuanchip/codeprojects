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
			sql = "Update HANGSANXUAT set "
			sql = sql + "ten_hang_sx = N'" + Request.Form("tentl") + "'"
			sql = sql + "where ma_hang_sx=" +  Request.Form("masx") ;		
			oConn.Execute(sql);
			
			Response.Redirect("agency.asp");
%>
</body>
</html>
