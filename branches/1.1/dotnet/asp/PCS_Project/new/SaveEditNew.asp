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
var sql;	
										
%>
<!--#include file = "../Connections/Connection.inc" -->
<%		
			sql = "Update TINTUC set "
			sql = sql + "ma_nv='" + Request.Form("manv") + "',"
			sql = sql + "chu_de=N'" + Request.Form("chude") + "',"
			sql = sql + "tom_tat=N'" + Request.Form("tomtat") + "',"
			sql = sql + "noi_dung=N'" + Request.Form("noidung") + "',"
			sql = sql + "ngay_gui= getdate(),"
			sql = sql + "anh_url='" + Request.Form("anh") + "'"
			sql = sql + "where ma_tin_tuc=" +  Request.Form("matin");
			
			//Response.Write(sql);
			oConn.Execute(sql);
			
			Response.Redirect("new_manager.asp");
			%>
</body>
</html>
