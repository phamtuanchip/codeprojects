<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Kết quả tìm kiếm điểm tiêu chuẩn tổ chức</title>
</head>

<body>
<script language="javascript">
function show()
{
	alert("Bạn không thể xóa điểm của doanh nghiệp");
}
</script>
<p>
  <!--#include file = connection.inc-->
  <%
	dim MaThanhVien
	dim MaChiTietToChuc
	
	MaThanhVien = Request.QueryString("MaThanhVien")
	MaChiTietToChuc = Request.QueryString("MaChiTietToChuc")
	
	strTimThanhVien = "select * from DiemTieuChuanToChuc where MaThanhVien = " + MaThanhVien + ""
	strTimToChuc = "select * from DiemTieuChuanToChuc where MaChiTietToChuc = " + MaChiTietToChuc + ""
%>
</p>
<form id="form1" name="form1" method="post" action="">
  <table width="100%" border="1">
    <tr>
      <td width="51%">Kết quả tìm kiếm</td>
      <td colspan="2">Chức năng </td>
    </tr>
    <tr>
	  	<%
			while not (RSTimThanhVien.EOF)
		%>
		<td>
		</td>
		<%
			RSTimThanhVien.MoveNext
			wend
		%>
      <td width="25%"><a href="KQTK_DiemTieuChuanToChuc.asp?MaThanhVien=<%=RSTimThanhVien("MaThanhVien")%>">Sửa</a></td>
      <td width="24%"><a href="#" onclick="show()">Xóa</a></td>
    </tr>
  </table>
</form>
<p>&nbsp; </p>
</body>
</html>
