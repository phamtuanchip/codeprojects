<%@LANGUAGE="JAVASCRIPT" codepage = 65001%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Untitled Document</title>
</head>
<body>
<%
	var oConn;
	var sql;
	var bien;
	
%>
<!--#include file = "../Connections/Connection.inc" -->
<%				
				var rs = oConn.Execute("select ma_nv from NHANVIEN where ten_nv = N'" + Session("ten_nv") + "'");
				//Response.Write("select ma_nv from NHANVIEN where ten_nv = '" + Session("ten_nv") + "'");
				var manv =  rs("ma_nv");
				sql= "insert into TINTUC(ma_nv,chu_de,tom_tat,noi_dung,ngay_gui,anh_url) values("
				//sql = sql + "'" + bien + "'," 
				sql = sql + "'" + manv + "'," 
				sql = sql + "N'" + Request.Form("chude") + "',"
				sql = sql + "N'" + Request.Form("tomtat") + "',"
				sql = sql + "N'" + Request.Form("noidung") + "',"
				sql = sql + "getdate(),"
				sql = sql + "'" + Request.Form("anh") + "')";
				oConn.Execute (sql);
				Response.Redirect("new_manager.asp");			
						
%> 



</body>
</html>
