<%@LANGUAGE="JAVASCRIPT" CODEPAGE="65001"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cap nhat thong tin thiet bi</title>

</head>
<!--#include file = "../Connections/Connection.inc" -->
				   <% var maphieu =Request.Form("maphieu")
						  serial=Request.Form("serial")
						  maloaitb=Request.Form("maloaitb")
						  soluong=Request.Form("soluong")
						  tenthietbi=Request.Form("tenthietbi")
						  tinhtrang=Request.Form("tinhtrang")
						  
						 
				    /*sqltext= "update KHO_DV set serial='"+serial+"' where ma_phieu='"+maphieu+"'";
					oConn.Execute (sqltext);
					sqltext= "update KHO_DV set ma_loai_tb="+maloaitb+" where ma_phieu='"+maphieu+"'";
					oConn.Execute (sqltext);
					sqltext= "update  KHO_DV set so_luong="+soluong+" where ma_phieu='"+maphieu+"'";
					oConn.Execute (sqltext);
					sqltext= "update KHO_DV set ten_tb=upper(N'"+tenthietbi+"') where ma_phieu='"+maphieu+"'";
					oConn.Execute (sqltext);
					sqltext= "update KHO_DV set tinh_trang=upper(N'"+tinhtrang+"') where ma_phieu='"+maphieu+"'";
					oConn.Execute (sqltext);
					Response.Redirect("edit_ticket.asp?maphieu="+maphieu);		*/
				   
				   %>
				   
				  
<body>
<pre>

<%=Request.Form("maloaitb")%>
maphieu: <%Response.Write(maphieu)%>
serial   <%Response.Write(serial)%>
maloaitb <%Response.Write(maloaitb)%>
tenthietbi <%Response.Write(tenthietbi)%>
tinhtrang <%Response.Write(tinhtrang)%>
</pre>
</body>
</html>
