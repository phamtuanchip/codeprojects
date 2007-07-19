<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file=connection.inc-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Xóa nhân tố môi trường</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>

<body>
<%
	Dim ma
	Dim Rsmoitruong
	ma = Request.QueryString("ma")
	set Rsmoitruong = Server.CreateObject("ADODB.Recordset")
	Rsmoitruong = conn.Execute("Select count(*) from DiemTieuChuanMoiTruong where MaNhanToMoiTruong = '" + ma + "'")
	if (Rsmoitruong(0)>0) then
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
	
		 conn.Execute("DELETE from NhanToMoiTruong where MaNhanToMoiTruong='" + ma + "'")
		 Response.Redirect("DanhSach_NhanToMoiTruong.asp")
	end if

%>
</body>
</html>

