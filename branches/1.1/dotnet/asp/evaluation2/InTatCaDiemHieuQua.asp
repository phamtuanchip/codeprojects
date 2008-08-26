<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file=connection.inc-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>In toàn bộ phiếu cho điểm công nghệ theo hiệu quả</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>

<body>
<% 
	errorStr = Request.QueryString("errorStr")
	MaSanPham=Session("ma_sp")
	MaHoiDong=Session("ma_hd")
	MaDoanhNghiep=Session("ma_dn")
	MaThanhVien=Request.QueryString("MaThanhVien")
		
	Dim rssql
	Dim strsql
	set rssql = Server.CreateObject("ADODB.Recordset")
	strsql = "Select ThanhVien.MaThanhVien,ThanhVien.TenThanhVien,ThanhVien.Status From ThanhVien inner join HoiDongChamDiem  on ThanhVien.MaThanhVien=HoiDongChamDiem.MathanhVien where ThanhVien.Status=1 and MahoiDong='" + Session("ma_hd") + "'" & "and HoiDongChamDiem.Status=1"
	rssql.Open strsql,conn
	
	Dim RsAll
	Set RsAll = Server.CreateObject("ADODB.Recordset")
	sql4 = "SELECT COUNT(ThanhVien.MaThanhVien) as Cao FROM ThanhVien INNER JOIN HoiDongChamDiem ON ThanhVien.MaThanhVien = HoiDongChamDiem.MaThanhVien WHERE MaHoiDong = "&MaHoiDong
	RsAll.Open sql4,conn
	
	dim strSP
	strSP = "select TenSanPham from SanPham where MaSanPham = '" + Session("ma_sp") + "'"
	dim RSSP
	Set RSSP = Server.CreateObject("ADODB.Recordset")
	RSSP.open strSP, conn
	
	dim strBGC
	strBGC = "select MaBuocGiaCong, TenBuocGiaCong,GhiChu from BuocGiaCong inner join SanPham on SanPham.MaSanPham = BuocGiaCong.MaSanPham inner join HoiDong on HoiDong.MaHoiDong = BuocGiaCong.MaHoiDong where SanPham.MaSanPham = '"+Session("ma_sp")+"' and HoiDong.MaHoiDong = '"+Session("ma_hd")+"'"
	dim RSBGC
	set RSBGC = Server.CreateObject("ADODB.Recordset")
	RSBGC.open strBGC, conn,3
	RsGiaCongCount = RSBGC.RecordCount
	
	dim strCN
	strCN = "select MaNhanToConNguoi,TenNhanToConNguoi from NhanToConNguoi inner join SanPham on SanPham.MaSanPham = NhanToConNguoi.MaSanPham inner join HoiDong on HoiDong.MaHoiDong = NhanToConNguoi.MaHoiDong where SanPham.MaSanPham = '"+Session("ma_sp")+"' and HoiDong.MaHoiDong = '"+Session("ma_hd")+"'"
	dim RSCN
	set RSCN = Server.CreateObject("ADODB.Recordset")
	RSCN.Open strCN,conn,3
	RsConNguoiCount = RSCN.RecordCount
	
	dim strTT
	strTT = "select MaHieuQuaCongNghe_ThongTin,TenHieuQuaCongnghe_ThongTin from HieuQuaCongNghe_ThongTin inner join SanPham on SanPham.MaSanPham = HieuQuaCongNghe_ThongTin.MaSanPham inner join HoiDong on HoiDong.MaHoiDong = HieuQuaCongNghe_ThongTin.MaHoiDong where SanPham.MaSanPham = '"+Session("ma_sp")+"' and HoiDong.MaHoiDong = '"+Session("ma_hd")+"'"
	dim RSTT
	set RSTT = Server.CreateObject("ADODB.Recordset")
	RSTT.Open strTT,conn,3
	RsThongTinCount = RSTT.RecordCount
	
	
	dim strTC
	strTC = "select MaHieuQuaCongNghe_ToChuc,TenHieuQuaCongnghe_ToChuc from HieuQuaCongNghe_ToChuc inner join SanPham on SanPham.MaSanPham = HieuQuaCongNghe_ToChuc.MaSanPham inner join HoiDong on HoiDong.MaHoiDong = HieuQuaCongNghe_ToChuc.MaHoiDong where SanPham.MaSanPham = '"+Session("ma_sp")+"' and HoiDong.MaHoiDong = '"+Session("ma_hd")+"'"
	dim RSTC
	set RSTC = Server.CreateObject("ADODB.Recordset")
	RSTC.Open strTC,conn,3
	RsToChucCount = RSTC.RecordCount
	
Dim RsDiemt
	Set RsDiemt = Server.CreateObject("ADODB.Recordset")
Dim RsDiemh
	Set RsDiemh = Server.CreateObject("ADODB.Recordset")
Dim RsDiemi
	Set RsDiemi = Server.CreateObject("ADODB.Recordset")
Dim RsDiemo
	Set RsDiemo = Server.CreateObject("ADODB.Recordset")

%>
 <% for i=1 to RsAll(0) %>
  <% while not (rssql.EOF) %>
  <form action="XuLy_NhapDiemHieuQuaCongNgheTheoHieuQua.asp" method="post" name="diemhieuqua" id="diemhieuqua">
<table width="100%" border="0" align="center">
    <tr>
      <td colspan="5"><div align="center"><strong>PHIẾU CHO &#272;IỂM THÀNH PHẦN C&Ocirc;NG NGH&#7878; THEO HIỆU QU&#7842;</strong></div></td>
    </tr>
    <tr>
      <td colspan="5">&nbsp;</td>
    </tr>
    <tr>
      <td width="162" align="left"><strong>Chủng loại sản phẩm : </strong></td>
      <td align="left" colspan="4"><%=RSSP("TenSanPham")%></td>
    </tr>
    <tr>
      <td align="left"><strong>Ng&#432;ời cho &#273;iểm : </strong></td>
      <td width="317"><%=rssql("TenThanhVien")%></td>
      <td width="65">&nbsp;</td>
      <td width="108">&nbsp;</td>
    </tr>
</table><p>
  </p><table width="100%" border="1">
    <tr>
      <td width="282" rowspan="2"><div align="center"><strong>CÁC THÀNH PHẦN C&Ocirc;NG NGH&#7878;</strong></div></td>
      <td colspan="2"><div align="center"><strong>&#272;IỂM CHO </strong></div></td>
      <td rowspan="2" align="right"><div align="center"><strong>TIÊU CHUẨN ĐIỂM</strong><br />
      m</div></td>
    </tr>
    <tr>
      <td width="67"><div align="center">min</div></td> 
      <td width="72"><div align="center">max</div></td>
    </tr>
    
	<!-- T Thiết Bị ------------------------------------------------------------------------------------------------------ -->
	
	
	<tr>
      <td><div align="center"><strong>T - Thiết b&#7883;</strong></div></td>
      <td><div align="center">Pmin</div></td>
      <td><div align="center">Pmax</div></td>
      <td><div align="center">Theo mức &#273;ạt tr&ecirc;n mức thiết k&#7871;</div></td>
    </tr>
     <%  
		
		dem =1
		if RSBGC.recordcount>0 then
		 	RSBGC.MoveFirst()
		 end if
			while (not RSBGC.EOF)
			
		%>
	<tr>
      <td align="center">
	  <input type="hidden" name="hiddengc<%=dem%>" value="<%=RSBGC("MaBuocGiaCong")%>"/>
        <label><%=RSBGC("TenBuocGiaCong")%></label>
	  </td>
	   <%
	sqlt = "SELECT Ptmax,Ptmin From DiemHieuQuaCongNghe_KyThuat where MaThanhVien=" & rssql(0) & " and MaBuocGiaCong=" & RSBGC(0) 
		RsDiemt.Open sqlt,conn 
		
		dim diemPtmax
		dim diemPtmin
		
		if (not RsDiemt.EOF) then 
			diemPtmax = RsDiemt("Ptmax")
			diemPtmin = RsDiemt("Ptmin")
		else
			diemPtmax = 0
			diemPtmin = 0
		end if
		RsDiemt.close
			  
			  %>
      <td><%=diemPtmax %>&nbsp;</td>
      <td><%=diemPtmin %>&nbsp;</td>
      <%if dem=1 then  %> 
	 <td rowspan="<%=RsGiaCongCount%>">- Trên 80% : 8,9<br>- Từ 70%-80% : 7,8<br>- Từ 60%-70% : 6,7<br>- Từ 50%-60% : 5,6<br>- Dưới 50% : 3,4,5</td>
	 <%end if %>
	 
    </tr>
	 <%
			dem=dem+1
			RSBGC.MoveNext
			wend
			
			
		%>
		  <input name="count" type="hidden" id="count" size="4" value="<%=dem%>" />
    
	<!-- Kết thúc phần T Thiết Bị ------------------------------------------------------------------------------------------ -->
	
    <!-- Phần O Con Người ------------------------------------------------------------------------------------------------- -->
	
	
	<tr>
      <td><div align="center"><strong>H - Con người</strong>(Số người)</div></td>
      <td><div align="center">Pmin</div></td>
      <td><div align="center">Pmax</div></td>
      <td><div align="center">Theo hiệu quả công việc</div></td>
    </tr>
     	<% 
		
		dem = 1
		if RSCN.recordcount>0 then
			RSCN.MoveFirst()
		end if 
			 while (not RSCN.EOF)
			  
		%>
	<tr>
	 <td align="center"> <input type="hidden" name="hiddencn<%=dem%>" value="<%=RSCN("MaNhanToConNguoi")%>"/><label><%=RSCN("TenNhanToConNguoi")%></label>
	  </td>
      <%
	sqlh = "SELECT Phmax,Phmin From DiemHieuQuaCongNghe_ConNguoi where MaThanhVien=" & rssql(0) & " and MaNhanToConNguoi=" & RSCN(0) 
		RsDiemh.Open sqlh,conn 
		
		dim diemPhmax
		dim diemPhmin
		
		if (not RsDiemh.EOF) then 
			diemPhmax = RsDiemh("Phmax")
			diemPhmin = RsDiemh("Phmin")
		else
			diemPhmax = 0
			diemPhmin = 0
		end if
		RsDiemh.close
			  
			  %>
      <td><%=diemPhmax %>&nbsp;</td>
      <td><%=diemPhmin %>&nbsp;</td>
      <% if dem =1 then %>
	 <td rowspan="<%=RsConNguoiCount%>">Năng suất, sáng tạo, năng động, chính xác, hợp lý hóa :<br>+ Tốt : 7,8,9<br>+ Khá : 6,7,8<br>+ Trung bình : 5,6,7<br>+ Kém : 4,5,6</td>
	 <% end if%>
    </tr>
	 <%
			dem = dem + 1
			RSCN.MoveNext
			wend
			
		%>
	  <input name="counth" type="hidden" id="counth" size="4" value="<%=dem%>" />
   
    
	<!-- Kết thúc phần O Con Người ------------------------------------------------------------------------------ -->
	
    <!-- Phần I Thông tin --------------------------------------------------------------------------------------- -->
	
	<tr>
      <td><div align="center"><strong>I - Thông tin</strong></div></td>
      <td><div align="center">Pmin</div></td>
      <td><div align="center">Pmax</div></td>
      <td><div align="center">Theo hiệu quả thực tế</div></td>
    </tr>
     	
		<%
		
		dem =1
		if RSTT.recordcount>0 then
			RSTT.MoveFirst()
		End if
			 while (not RSTT.EOF)

		%>
	<tr>
      <td align="center"> <input type="hidden" name="hiddentt<%=dem%>" value="<%=RSTT("MaHieuQuaCongNghe_ThongTin")%>"/>
	  <label><%=RSTT("TenHieuQuaCongNghe_ThongTin")%></label>
	   </td>
       <%
	sqli = "SELECT Pimax,Pimin From DiemHieuQuaCongNghe_ThongTin where MaThanhVien=" & rssql(0) & " and MaHieuQuaCongNghe_ThongTin=" & RSTT(0) 
		RsDiemi.Open sqli,conn 
		
		dim diemPimax
		dim diemPimin
		
		if (not RsDiemi.EOF) then 
			diemPimax = RsDiemi("Pimax")
			diemPimin = RsDiemi("Pimin")
		else
			diemPimax = 0
			diemPimin = 0
		end if
		RsDiemi.close
			  
			  %>
      <td><%=diemPimax %>&nbsp;</td>
      <td><%=diemPimin %>&nbsp;</td>
      <%if dem =1 then%>
	  <td rowspan="<%=RsThongTinCount%>">- Tốt : 7,8,9<br>- Khá : 6,7,8<br>- Trung bình : 4,5,6<br>- Kém : 3,4,5</td>
	 <%end if%>
    </tr>
	 <%
			dem = dem + 1
			RSTT.MoveNext
			wend
			
		%>
	  <input name="counti" type="hidden" id="counti" size="4" value="<%=dem%>" />
    
	<!-- Kết thúc phần I Thông tin -------------------------------------------------------------------------------- -->
	
	<!-- Phần O Tổ chức --------------------------------------------------------------------------------------- -->
    
	<tr>
      <td><div align="center"><strong>O - Tổ chức</strong></div></td>
      <td><div align="center">Pmin</div></td>
      <td><div align="center">Pmax</div></td>
      <td><div align="center">Theo hiệu quả thực tế</div></td>
    </tr>
     	<% 
		dem =1
		if RSTC.recordcount>0 then
			RSTC.MoveFirst()
		end if
			while (not RSTC.EOF)
			
		%>
	<tr>
      <td align="center"><input type="hidden" name="hiddentc<%=dem%>" value="<%=RSTC("MaHieuQuaCongNghe_ToChuc")%>"/>
	   <label><%=RSTC("TenHieuQuaCongNghe_ToChuc")%></label>
	  </td>
       <%
	sqlo = "SELECT Pomax,Pomin From DiemHieuQuaCongNghe_ToChuc where MaThanhVien=" & rssql(0) & " and MaHieuQuaCongNghe_ToChuc=" & RSTC(0) 
		RsDiemo.Open sqlo,conn 
		
		dim diemPomax
		dim diemPomin
		
		if (not RsDiemo.EOF) then 
			diemPomax = RsDiemo("Pomax")
			diemPomin = RsDiemo("Pomin")
		else
			diemPomax = 0
			diemPomin = 0
		end if
		RsDiemo.close
			  
			  %>
      <td><%=diemPomax %>&nbsp;</td>
      <td><%=diemPomin %>&nbsp;</td>
      <%if dem = 1 then %>
	 <td rowspan="<%=RsToChucCount%>">- Có hiệu lực, đạt kết quả sản xuất tốt : 7,8,9<br>- Khá : 5,6,7<br>- Bình thường : 4,5,6<br>- Kém : 3,4,5 </td>
	 <%end if%>
	 
    </tr>
	 <%
			dem = dem + 1
			RSTC.MoveNext
			wend
			
		%>
	  <input name="counto" type="hidden" id="counto" size="4" value="<%=dem%>" />
   
	<!-- Kết thúc phần O Tổ chức ------------------------------------------------------------------------------------- -->
  </table>
  <br>
  <table width="303" border="0" align="right">
    <tr align="right">
      <td align="right">&nbsp;</td>
      <td align="center"><h5><i><b>Hà Nội ngày.......tháng.......năm.........</b></i> </h5></td>
    </tr>
    <tr>
      <td  align="right">&nbsp;</td>
      <td align="center"><h5><b>NGƯỜI CHO ĐIỂM </b><br /><P><P>
      </h5></td>
    </tr>
  </table>
  <BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><HR width="400">
  </form>
<%rssql.MoveNext%>
<%wend%>
<%next%>
</body>
</html>
