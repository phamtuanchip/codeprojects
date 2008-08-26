<%@LANGUAGE="JAVASCRIPT" CODEPAGE="65001"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>l&#432;u tin nh&#7855;n</title>
</head>
<!-- #include file="../connections/connection.inc" -->
<%  
  nguoigui=Request.Form("manguoigui")
  nguoinhan=Request.Form("manguoinhan")
  chude=Request.Form("chude")
  noidung=Request.Form("noidung")
  %>
  <%oConn.Execute("save_new_message /*from*/'"+nguoigui+"'/*to*/,'"+nguoinhan+"'/*chude*/,N'"+chude+"'/*noidung*/,N'"+noidung+"'" );
 %>
<%Response.Redirect("message_read.asp")%>
<body>

</body>
</html>
