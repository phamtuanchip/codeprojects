<%@LANGUAGE="JAVASCRIPT" CODEPAGE="65001"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Untitled Document</title>
<style type="text/css">
<!--
body,td,th {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 12px;
}
-->
</style></head>

<body>
<!--#include file = "../Connections/Connection.inc"-->
<%				
	sql= "insert into QUYEN (quyen) values"
	sql = sql + "(N'" + Request.Form("quyen_nv") + "')"; 
	oConn.Execute (sql);
	Response.Redirect("Addnv.asp");				
%>
</body>
</html>
