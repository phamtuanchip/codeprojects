<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Phiếu cho điểm sản phẩm</title>

</head>
<STYLE>
TD {
	FONT-SIZE: 11px; COLOR: #000000; FONT-FAMILY: Tahoma
}
A {
	COLOR: #184970
}
.cap1 {
	FONT-SIZE: 10px; COLOR: #22608e; FONT-FAMILY: HeliosExtBlack
}
#Layer1 {
	position:absolute;
	left:65px;
	top:523px;
	width:99px;
	height:18px;
	z-index:1;
}
.style1 {
	font-family: Georgia, "Times New Roman", Times, serif;
	font-size: 18px;
	color: #FFFFFF;
}
</STYLE>
<body>

<style type="text/css">
<!--
.style1 {
	font-size: medium;
	font-weight: bold;
}
-->
</style>
<script language="JavaScript">

<!--

function tinh()
{
	var d=parseInt(document.phieudiem.dem.value),tong=0,i=1;
	while (i<d )
	{
		document.getElementById("miai"+i).value=parseFloat(document.getElementById("mi"+i).value)*parseFloat(document.getElementById("ai"+i).value);
		tong=parseFloat(tong)+parseFloat(document.getElementById("miai"+i).value);
		i=i+1;
		//alert("");
	}
	document.phieudiem.ma.value=tong;
}

function kiemtra(id)

{
 var d=parseInt(document.phieudiem.dem.value),tongmi=0,i=1;
 while (i<d )
	{
		tongmi=parseFloat(tongmi)+parseFloat(document.getElementById("mi"+i).value);
		i=i+1;
	}
 
	if (tongmi>1)
		{
			alert("Tổng mi không được lớn hơn 1");
	    }
  
}
   


//-->

</script> 
<!--#include file = connection.inc-->
<%
		MaSanPham=Session("ma_sp")
  	 	MaHoiDong=Session("ma_hd")
	  	MaDoanhNghiep=Session("ma_dn")
		MaThanhVien=Request.QueryString("MaThanhVien")
	strSQL = "Select ThanhVien.MaThanhVien,TenThanhVien From ThanhVien inner join HoiDongChamDiem  on ThanhVien.MaThanhVien=HoiDongChamDiem.MathanhVien where MahoiDong=" & MaHoiDong
	RS.open strSQL, conn
	
	strSP = "select TenSanPham from SanPham where MaSanPham = " & Session("ma_sp")
	dim RSSP
	Set RSSP = Server.CreateObject("ADODB.Recordset")
	
	RSSP.open strSP, conn
	
	strDN = "select TenDoanhNghiep from DoanhNghiep where MaDoanhNghiep = " &Session("ma_dn")
	dim RSDN
	Set RSDN = Server.CreateObject("ADODB.Recordset")
	RSDN.open strDN, conn
	
	dim RSThanhVien
	Set RSThanhVien = Server.CreateObject("ADODB.Recordset")
	RSThanhVien.Open "Select ThanhVien.MaThanhVien,TenThanhVien From ThanhVien where MaThanhVien=" & MaThanhVien,conn
%>



<h3 align="center">PHIẾU CHO ĐIỂM SẢN PHẨM</h3><form action="Ghi_PhieuDiemSanPham.asp" method="post" name="phieudiem" id="phieudiem" onmousemove="tinh();">
  <table width="100%" border="0">
    <tr>
      <td width="23%">Tên sản phẩm:</td>
      <td width="77%"><strong><%=RSSP("TenSanPham")%>
        <input name="masp" type="hidden" id="masp" value="<%=session("ma_sp")%>" />
        </strong></td>
    </tr>
    
    <tr>
      <td>Cơ sở sản xuất:</td>
      <td><strong><%=RSDN("TenDoanhNghiep")%>
        <input name="madn" type="hidden" id="madn" value="<%=session("ma_dn")%>" />
  </strong></td>
    </tr>
    <tr>
      <td>Họ tên người chấm điểm:</td>
      <td style="border:hidden"><b><%=RSThanhVien(1)%></b>
       
        <strong>
          <input name="mahd" type="hidden" id="mahd" value="<%=session("ma_hd")%>" />
        </strong></td>
    </tr>
  </table>
  <%if (cint(MaThanhVien)>1)  then %>
  <p align="center">NỘI DUNG CHO ĐIỂM </p>
    <table width="99%" border="1">
      <tr>
        <th width="7%" scope="col">Thứ tự </th>
        <th width="67%" scope="col">Tên nội dung cho điểm </th>
        <th width="9%" scope="col">Hệ số trọng lượng mi </th>
        <th width="9%" scope="col">Điểm gốc ai </th>
        <th width="9%" scope="col">Tổng số mi x ai </th>
      </tr>
      <%
	  	rs.close()
		rs.open "select * from hesotrongluong where mahoidong="&session("ma_hd"),conn
		dem=1
	%>
      <% while not rs.eof %>
      <tr height="20">
        <td><div align="center"><%=dem%>
          <input name="mahesotrongluong<%=dem%>" type="hidden" id="mahesotrongluong<%=dem%>" value="<%=rs("mahesotrongluong_sanpham")%>" />
          </div></td>
        <td title="<%=rs("GhiChu")%>"><%=rs("TenHeSoTrongLuong")%></td>
        <td><div align="left">
          &nbsp;
          </div></td>
        <td>
          <%
	    dim rsdiemgoc 
	  	set rsdiemgoc = server.CreateObject("adodb.recordset")
		rsdiemgoc.open "select * from diemsanpham  where mahesotrongluong_sanpham="& rs("mahesotrongluong_sanpham") & " and MaThanhVien=" & MaThanhVien& " and MaSanPham=" & MaSanPham,conn
	  %>
          <% 
	  	if (not rsdiemgoc.eof) then 
		diem = rsdiemgoc("diemgoc")
		else
		diem=0
		end if
	  %>
          <div align="left">
&nbsp;            </div>
	    <% rsdiemgoc.close() %>          </td>
        <td>
          <div align="left">
&nbsp;            </div></td>
      </tr>
      <% dem=dem+1 %>
      <% rs.movenext()%>
      <% wend %>
      <% rs.close()%>
      </table>
    <br />
    <table width="303" height="68" border="0" align="right">
      <tr align="right">
        <td align="right">&nbsp;</td>
        <td align="center"><h5><i><b>Hà Nội ngày.......tháng.......năm.........</b></i> </h5></td>
      </tr>
      <tr>
        <td  align="right">&nbsp;</td>
        <td align="center" valign="top"><h5><b>NGƯỜI CHO ĐIỂM </b><br />
        </h5></td>
      </tr>
    </table>
    <strong>Ghi chú: điểm hệ số trọng lượng mi không được vượt quá 1, tổng các điểm thành phần Σmi = 1<br />
Điểm gốc ai nằm trong khoảng 1 đến 10
<p>&nbsp;</p>
   <%end if%>
</form>				 

</body>
</html>
