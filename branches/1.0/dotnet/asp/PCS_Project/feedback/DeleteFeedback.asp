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
	rs = oConn.Execute("Delete from GOPY where ma_gop_y =" + Request.QueryString("magopy"));
	Response.Redirect("Feedback_manager.asp");
%>

</body>
</html>
