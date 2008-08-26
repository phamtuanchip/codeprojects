<%@LANGUAGE="JAVASCRIPT" codepage = 65001%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Untitled Document</title>
</head>
<body>
<%
	var oConn;
	var RS;
%>
<!--#include file = "../Connections/Connection.inc" -->

<%			
	 oConn.Execute("DELETE from TINTUC where ma_tin_tuc=" + Request.QueryString("matin")) ;
	 Response.Redirect("new_manager.asp");
%>
</body>
</html>
