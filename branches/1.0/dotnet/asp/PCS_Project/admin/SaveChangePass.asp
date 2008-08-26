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
	//var pass_old = Request.Form("passcu");
	rs = oConn.Execute("Select count(*) from NHANVIEN where mat_khau = '" + Request.Form("passcu") + "'");
	//Response.Write(rs("mat_khau"));
	//Response.Write(pass_old);
	if(rs(0) == 0){
		Response.Write("Mật khẩu cũ không đúng");
	}else{
		oConn.Execute("Update NHANVIEN set mat_khau='" + Request.Form("passmoi") + "' where ten_dang_nhap = '" + Session("username") + "'");
		Response.Write("Đổi mật khẩu thành công <a href =../default.asp> Quay ve trang chu</a>");
		//Response.Redirect("../default.asp");
		
	}
	
%>

</body>
</html>
