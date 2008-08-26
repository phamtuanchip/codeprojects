<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Sửa điểm tiêu chuẩn tổ chức</title>
</head>

<body>
<p>
  <!--#include file =  connetion.inc-->
  <%
	dim MaChiTietToChuc
	dim MaThanhVien
	
	dim RSThanhVien
	dim RSToChuc
	
	Set RSThanhVien = Server.CreateObject("ADODB.Recordset")
	Set RSToChuc = Server.CreateObject("ADODB.Recordset")
	
	MaChiTietToChuc = Request.QueryString("MaChiTietToChuc")
	MaThanhVien = Request.QueryString("MaThanhVien")
	
	strThanhVien = "Select MaThanhVien, TenThanhVien from ThanhVien"
	strToChuc = "Select MaChiTietToChuc, TenChiTietToChuc from ChiTietToChuc"
%>
</p>
<form id="form1" name="form1" method="post" action="">
  <table width="100%" border="1">
    <tr>
      <td><div align="right">Bạn muốn tìm theo </div></td>
      <td><p>
        <label>
          <input type="radio" name="PhanLoai" value="radio" />
          Tên thành viên hội đồng</label>
        <br />
        <label>
          <input type="radio" name="PhanLoai" value="radio" />
          Tên chi tiết tổ chức</label>
        <br />
      </p></td>
    </tr>
    <tr>
      <td><div align="right">
        <input type="submit" name="Submit" value="Đồng ý" />
      </div></td>
      <td><input type="reset" name="Submit2" value="Hủy bỏ" /></td>
    </tr>
  </table>
</form>
<p>&nbsp; </p>
</body>
</html>
