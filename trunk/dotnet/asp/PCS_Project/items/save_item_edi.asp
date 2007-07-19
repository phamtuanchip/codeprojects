<%@LANGUAGE="JAVASCRIPT" CODEPAGE="65001"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sua thiet bi</title>
</head>
<!--#include file = "../Connections/Connection.inc" -->

<body>
<Script></Script>
<%var mathietbi=Request.QueryString("mathietbi")
      sqltext= "select * from KHO_DV "
	  sqltext=sqltext+"inner join LOAITHIETBI on KHO_DV.ma_loai_tb=LOAITHIETBI.ma_loai_tb "
	  sqltext=sqltext+"where ma_tb='"+mathietbi+"'"
%>
<%rs=oConn.Execute(sqltext)%>
<form action="save_edit_item.asp" name="add" id="add" additem >
<table width="526" border="1">
  <tr>
    <td width="199">Ten TB      
      <input name="mahieu"  type="hidden" id="mahieu" value="<%=rs("ma_phieu")%>"></td>
    <td colspan="2">Serial</td>
    <td colspan="2">Loai TB
      <%var rs1=Server.CreateObject('ADODB.Recordset')
		   rs1=oConn.Execute("select * from LOAITHIETBI")
	  %>      
	 </td>
    </tr>
  <tr>
    <td rowspan="2"><textarea name="tenthietbi" id="tenthietbi"><%=rs("ten_tb")%></textarea></td>
    <td colspan="2" rowspan="2"><input name="serial" type="text" id="serial" value="<%=rs("serial")%>" size="10"></td>
    <td width="74">Hien thoi 
	</td>
    <td width="104">Doi thanh</td>
  </tr>
  <tr>
    <td><input name="mathietbi" type="text" id="mathietbi" value="<%=rs("ten_loai_tb")%>" size="4"></td>
  <td><select name="maloaitb" id="maloaitb" >
    <option value="<%=rs("ma_loai_tb")%>">Chọn một</option>
    <%while (!rs1.EOF) {%>
    <option value="<%=rs1("ma_loai_tb")%>"><%=rs1("ten_loai_tb")%></option>
    <%rs1.MoveNext}%>
  </select></td>
  </tr>
  <tr>
    <td>So luong </td>
    <td colspan="2">Tinh trang </td>
    <td colspan="2">&nbsp;</td>
    </tr>
  <tr>
    <td rowspan="2"><input name="soluong" type="text" id="soluong" value="<%=rs("so_luong")%>"></td>
    <td>Current</td>
    <td>Change</td>
    <td colspan="2" rowspan="2"><input type="submit" name="Submit" value="Cập nhật">
      <input type="reset" name="Reset" value="Làm lại"></td>
    </tr>
  <tr>
    <td width="75"><input name="tinhtranghienthoi" type="text" id="tinhtranghienthoi" value="<%=rs("tinh_trang_tb")%>" size="5"></td>
  <td width="40"><select name="tinhtrang" id="tinhtrang" >
    <option>Chọn một</option>
    <option value="Chưa sửa">Chưa sửa</option>
    <option value="Chờ TB">Chờ TB</option>
    <option value="Đã sửa">Đã sửa</option>
  </select></td>
  </tr>
</table>
</form>
</body>
</html>
