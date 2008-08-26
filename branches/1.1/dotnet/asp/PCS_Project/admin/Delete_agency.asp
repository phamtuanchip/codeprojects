<%@LANGUAGE="JAVASCRIPT" CODEPAGE="1252"%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>

<!--#include file = "../Connections/Connection.inc" -->

<%			
	 oConn.Execute("DELETE from HANGSANXUAT where ma_hang_sx=" + Request.QueryString("masx")) ;
	 Response.Redirect("agency.asp");
%>

</body>
</html>
