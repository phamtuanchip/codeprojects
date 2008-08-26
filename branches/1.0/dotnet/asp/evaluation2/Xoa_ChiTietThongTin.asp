<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file=connection.inc-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Xóa chi tiết thông tin</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>

<body>
<%
	Dim ma
	Dim Rsdiemthongtin
	ma = Request.QueryString("ma")
	set Rsdiemthongtin = Server.CreateObject("ADODB.Recordset")
	Rsdiemthongtin = conn.Execute("Select count(*) from DiemTieuChuanThongTin where MaChiTietThongTin = '" + ma + "'")
	if (Rsdiemthongtin(0)>0) then
	 %>
		<table border="0" align="center" cellpadding="10" cellspacing="1" bgcolor="#0077CC">
          <tr>
            <td align="center" valign="middle" bgcolor="#FFFFFF">
		<% Response.Write("Hiện tại bạn không thể xóa bản ghi này")%>
	</td>
          </tr>
        </table>
	<% 
	else
	
		 conn.Execute("DELETE from ChiTietThongTin where MaChiTietThongTin='" + ma + "'")
		 Response.Redirect("DanhSach_ChiTietThongTin.asp")
	end if

%>
</body>
</html>
