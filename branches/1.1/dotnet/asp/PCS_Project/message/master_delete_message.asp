<%@LANGUAGE="JAVASCRIPT" CODEPAGE="1252"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>luu tin nhan</title>
</head>
<!-- #include file="../connections/connection.inc" -->
<%  
  chusohuu=Request.QueryString("cua")
  matintuc=Request.QueryString("matintuc")
  
  %>
 <%
oConn.Execute("master_delete_message /*of*/ '"+chusohuu+"'/*with tin tuc*/,"+matintuc)%>
<%Response.Redirect("../customers/default_customers.asp?madangnhap="+chusohuu)%>
<body>

</body>
</html>
