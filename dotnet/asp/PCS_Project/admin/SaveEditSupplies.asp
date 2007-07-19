<%@LANGUAGE="JAVASCRIPT" CODEPAGE="1252"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Untitled Document</title>
</head>

<body>
<p>&nbsp;</p>
<p>
  <!--#include file = "../Connections/Connection.inc"-->
  <%
			sql = "Update NHACUNGCAP set "
			sql = sql + "ma_nha_cc='" + Request.Form("mancc") + "',"
			sql = sql + "ten_nha_cc=N'" + Request.Form("tenncc") + "',"
			sql = sql + "dia_chi_ncc=N'" + Request.Form("diachi") + "',"
			sql = sql + "quoc_tich_ncc=N'" + Request.Form("quoctich") + "',"
			sql = sql + "dien_thoai_ncc='" + Request.Form("dienthoai") + "',"
			sql = sql + "email_ncc='" + Request.Form("email") + "',"
			sql = sql + "ghi_chu=N'" + Request.Form("ghichu") + "'"
			sql = sql + "where ma_nha_cc='" +  Request.Form("macc") + "'";
			
			oConn.Execute(sql);
			
			Response.Redirect("Supplies.asp");
			%>
</p>

</body>
</html>
