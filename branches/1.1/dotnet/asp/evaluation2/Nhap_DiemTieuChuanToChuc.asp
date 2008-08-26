<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Nhập điểm tiêu chuẩn tổ chức</title>
</head>

<body>
<p>
  <!--#include file = connection.inc-->
  <%
	dim RSToChuc
	dim RSThanhVien
	
	Set RSToChuc = Server.CreateObject("ADODB.Recordset")
	Set RSThanhVien = Server.CreateObject("ADODB.Recordset")
	
	strToChuc = "select MaChiTietToChuc, TenChiTietToChuc from ChiTietToChuc"
	strThanhVien = "select MaThanhVien, TenThanhVien from ThanhVien"
	
	RSToChuc.open strToChuc, conn
	RSThanhVien.open strThanhVien, conn
%>
</p>
<form id="form1" name="form1" method="post" action="XuLyNhap_DiemTieuChuanToChuc.asp">
  <table width="100%" border="1">
    <tr>
      <td><div align="right">Tên chi tiết tổ chức </div></td>
      <td>
	  	<select name="MaChiTietToChuc">
			<%
				while not (RSToChuc.EOF)
			%>
			<option value="<%=RSToChuc("MaChiTietToChuc")%>"><%=RSToChuc("TenChiTietToChuc")%></option>
			<%
				RSToChuc.MoveNext
				wend
			%>
		</select>
	  </td>
    </tr>
    <tr>
      <td><div align="right">Tên thành viên hội đồng </div></td>
      <td>
	  	<select name="MaThanhVien">
			<%
				while not (RSThanhVien.EOF)
			%>
			<option value="<%=RSThanhVien("MaThanhVien")%>"><%=RSThanhVien("TenThanhVien")%></option>
			<%
				RSThanhVien.MoveNext
				wend
			%>
		</select>
	  </td>
    </tr>
    <tr>
      <td><div align="right">Omax</div></td>
      <td><input type="text" name="Omax" /></td>
    </tr>
    <tr>
      <td><div align="right">Omin</div></td>
      <td><input type="text" name="Omin" /></td>
    </tr>
    <tr>
      <td><div align="right">Ghi chú </div></td>
      <td><textarea name="GhiChu" rows="5" cols="45"></textarea></td>
    </tr>
    <tr>
      <td><div align="right">
        <input type="submit" name="Submit" value="Đồng ý" />
      </div></td>
      <td><input name="Reset" type="reset" id="Reset" value="Hủy bỏ" /></td>
    </tr>
  </table>
</form>
<p>&nbsp; </p>
</body>
</html>
