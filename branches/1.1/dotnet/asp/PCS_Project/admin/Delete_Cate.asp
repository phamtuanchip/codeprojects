<%@LANGUAGE="JAVASCRIPT" CODEPAGE="65001"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Untitled Document</title>
</head>

<body>
<!--#include file = "../Connections/Connection.inc" -->

<%			
	 oConn.Execute("DELETE from LOAITHIETBI where ma_loai_tb=" + Request.QueryString("matl")) ;
	 Response.Redirect("Categories.asp");
%>
</body>
</html>
