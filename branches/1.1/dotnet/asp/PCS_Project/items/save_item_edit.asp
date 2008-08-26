<%@LANGUAGE="JAVASCRIPT" CODEPAGE="65001"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sua thiet bi</title>
</head>
<!--#include file = "../Connections/Connection.inc" -->
<% mathietbi=Request.Form("mathietbi");
   maloaithietbi=Request.Form("maloaithietbi"); 
   maloaidicvu=Request.Form("maloaidicvu");
   tenthietbi=Request.Form("tenthietbi");
   chitiet=Request.Form("chitietthietbi");
   serial=Request.Form("serial");
   soluong=Request.Form("soluongthietbi");
   oConn.Execute("update KHOTHIETBI_KH set ma_loai_tb="+maloaithietbi+",ten_tb=N'"+tenthietbi+"',chi_tiet=N'"+chitiet+"',serial='"+serial+"',so_luong_nhan="+soluong+" where ma_tb_kh='"+mathietbi+"'");
   oConn.Execute("update NHATKY_TB set ma_loai_dv="+maloaidicvu+" where ma_tb_kh='"+mathietbi+"'")
   
   
   Response.Redirect("../items/show_all_item.asp");
%>
<body>

</body>
</html>
