<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Phiếu điểm thành phần công nghệ theo công đoạn</title>
<style type="text/css">
<!--
.style2 {font-size: 13px}
.style4 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 13px;
}
-->
</style>
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
.style6 {font-size: 15px}
</STYLE>
<body>

<p class="style2">
  <!--#include file=connection.inc-->
  <%
		MaSanPham=Session("ma_sp")
		MaHoiDong=Session("ma_hd")
	    MaDoanhNghiep=Session("ma_dn")
	    errorStr = Request.QueryString("errorStr")
		MaThanhVien=Request.QueryString("MaThanhVien")
	    
		sql = "SELECT TenDoanhNghiep, TenSanPham FROM DoanhNghiep inner join SanPham on DoanhNghiep.MaDoanhNghiep=SanPham.MaDoanhNghiep WHERE DoanhNghiep.MaDoanhNghiep=" & MaDoanhNghiep & " and MaHoiDong=" & MaHoiDong & " and MaSanPham=" & MaSanPham
	    RS.Open sql,conn
		
		Dim RS2
		Set RS2 = Server.CreateObject("ADODB.Recordset")
		sql = "SELECT ThanhVien.MaThanhVien, ThanhVien.TenThanhVien FROM ThanhVien  WHERE MaThanhVien = "&MaThanhVien
		RS2.Open sql,conn
		
		Dim RsMaChiTieu
		Set RsMaChiTieu = Server.CreateObject("ADODB.Recordset")
		sql = "SELECT BangChiTieu.MaChiTieu, TenChiTieu,GhiChu FROM BangChiTieu inner join ChiTietChiTieu on BangChiTieu.MaChiTieu=ChiTietChiTieu.MaChiTieu WHERE MaDoanhNghiep="&MaDoanhNghiep
		RsMaChiTieu.Open sql,conn
		
		Dim RsMaBuocGiaCong
		Set RsMaBuocGiaCong = Server.CreateObject("ADODB.Recordset")
		sql = "SELECT MaBuocGiaCong, TenBuocGiaCong FROM BuocGiaCong WHERE MaSanPham="&MaSanPham&" AND MaHoiDong="&MaHoiDong
		'RsMaBuocGiaCong.Open sql,conn
		CongDoanSize = 0
		HieuQuaSize = 0
%>
<form action="CapNhatDiemSanPhamTheoCongDoanSanXuat.asp" method="post" name="form1" id="form1">
<div align="center" class="style2 style4"><span class="style6"><br />
  <br />
  <strong>PHIẾU CHO ĐIỂM SẢN PHẨM THEO CÔNG ĐOẠN SẢN XUẤT</strong></span><br />
  <br />
  <br />
  </div>
  <table width="528" border="0">
    <tr>
      <td width="147"><span class="style2">Cơ sở sản xuất:</span></td>
      <td width="371"><span class="style2"><strong><%=RS(0)%></strong></span></td>
    </tr>
    <tr>
      <td><span class="style2">Chủng loại sản phẩm:</span></td>
      <td><span class="style2"><strong><%=RS(1)%></strong></span></td>
    </tr>
    <tr>
      <td><span class="style2">Người cho điểm:</span></td>
      <td><span class="style2"><strong><%=RS2(1)%></strong></span></td>
    </tr>
  </table>
  <table width="100%" border="1">
    <tr>
      <td width="345" rowspan="2"><div align="center">Các chỉ tiêu kỹ thuật </div></td>
          <td colspan="2"><div align="center">Điểm cho </div></td>
          <td width="201" rowspan="3"><div align="center">Theo chuẩn điểm<br />
            m
          </div></td>
    </tr>
    <tr>
      <td width="48" height="17"><div align="center">Min</div></td>
          <td width="48"><div align="center">Max</div></td>
    </tr>
    <tr height="20">
      <td height="23"><div align="center"><strong>T Thiết Bị </strong></div></td>
          <td><div align="center">Tamin </div></td>
          <td><div align="center">Tamax </div></td>
    </tr>
    <tr>
      <td><div align="center"> 	
        <% while(not RsMaChiTieu.EOF) 
			HieuQuaSize = 0
			RsMaBuocGiaCong.Open sql,conn,3
			rowCount=RsMaBuocGiaCong.RecordCount
		%>
        <tr rowspan="4" height="20">
          <td colspan="3" align="center">
            <input type="hidden" name="MaGiaCong<%=CongDoanSize%>" id = "MaGiaCong<%=CongDoanSize%>"  size="3" value="<%=RsMaChiTieu(0)%>"/>
            <b><%=RsMaChiTieu(1) %></b>            </td>
			  <td rowspan="<%=rowCount+1%>">
			    <textarea name="" style="border:none" cols="25" rows="9" ><%=RsMaChiTieu(2) %></textarea>			    </td>
            </tr>
          <% 
				while(not RsMaBuocGiaCong.EOF)
			%>
          <tr height="20">
            <td>
              <%=RsMaBuocGiaCong(1)%>
              <input type="hidden" name="MaHieuQua<%=CongDoanSize%><%=HieuQuaSize%>" value="<%=RsMaBuocGiaCong(0)%>" />              </td>
					    <td>
					      <input type="hidden" name="Pmin<%=CongDoanSize%><%=HieuQuaSize%>" size="3" />					    </td>
					    <td>
					      <input type="hidden" name="Pmax<%=CongDoanSize%><%=HieuQuaSize%>" size="3" />					    </td>
		    </tr>
            <%
				HieuQuaSize = HieuQuaSize + 1
				RsMaBuocGiaCong.moveNext()
				Wend
				RsMaBuocGiaCong.Close
			%>
            <% 
			CongDoanSize = CongDoanSize + 1
			RsMaChiTieu.moveNext()
			Wend	
		%>
            
            </div></td>
    </tr>
    <br />
    <br />
    <br />
 </table>
  <br />
  <table width="303" border="0" align="right">
    <tr align="right">
      <td align="right">&nbsp;</td>
      <td align="center"><h5><i><b>Hà Nội ngày.......tháng.......năm.........</b></i> </h5></td>
    </tr>
    <tr>
      <td  align="right">&nbsp;</td>
      <td align="center"><h5><b>NGƯỜI CHO ĐIỂM </b><br />
      </h5></td>
    </tr>
  </table>
  <br />
    <br />  <br />
</form>
</body>
</html>
