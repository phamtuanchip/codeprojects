<%@LANGUAGE="JAVASCRIPT" CODEPAGE="65001"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cap nhat thong tin khach hang</title>
</head>
<body>
<!--#include file = "../Connections/Connection.inc" -->
				   <% var 
						  makhachhang=Request.Form("makhachhang");
						  tenkhachhang=Request.Form("tenkhachhang");
						  diachi=Request.Form("diachikhachhang");
						  dienthoai=Request.Form("dienthoaikhachhang");
						  email=Request.Form("emailkhachhang");
				          sqltext="update KHACHHANG set "
						          +"ten_kh=N'"+tenkhachhang+"'"
						          +",dia_chi_kh=N'"+diachi+"'"
								  +",dien_thoai_kh=N'"+dienthoai+"'"
								  +",email_kh=N'"+email+"'"
								  +" where ma_kh='"+makhachhang+"'";
						   oConn.Execute(sqltext);
                           Response.Redirect("show_all_customer.asp");
				   %>
</body>
</html>
