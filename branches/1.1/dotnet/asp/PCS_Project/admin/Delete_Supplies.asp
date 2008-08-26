<%@LANGUAGE="JAVASCRIPT" CODEPAGE="1252"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Untitled Document</title>
</head>

<body>
<p>&nbsp;</p>

<!--#include file = "../Connections/Connection.inc"-->
<%			
	 oConn.Execute("DELETE from NHACUNGCAP where ma_nha_cc='" + Request.QueryString("macc") + "'");
	 Response.Redirect("Supplies.asp");
%>

</body>
</html>
