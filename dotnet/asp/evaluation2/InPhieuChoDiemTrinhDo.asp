<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Phiếu cho điểm thành phần công nghệ theo trình độ hiện đại</title>
<style type="text/css">
<!--
.style1 {font-size: 13px}
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
</STYLE>
<body>

<div align="center">
<div align="center">
  <!--#include file="connection.inc" -->
  <br />
  <%  
  		MaSanPham=Session("ma_sp")
  	 	MaHoiDong=Session("ma_hd")
	  MaDoanhNghiep=Session("ma_dn")
	  MaThanhVien=Request.QueryString("MaThanhVien")
	  
		dim RsMaThanhVien
		Set RsMaThanhVien= Server.CreateObject("ADODB.Recordset")
		
		dim RsDiem
		Set RsDiem= Server.CreateObject("ADODB.Recordset")
	  
	  if(MaThanhVien="All") then
		sqlRsMaThanhVien = "SELECT DISTINCT MaThanhVien, TenThanhVien FROM XemDsTVChamDiemChoTungDN WHERE MaHoiDong = "&Session("ma_hd")&" AND MaDoanhNghiep = "&MaDoanhNghiep
		
	else
		sqlRsMaThanhVien = "SELECT MaThanhVien,TenThanhVien FROM XemDsTVChamDiemChoTungDN WHERE MaThanhVien="&MaThanhVien&" AND MaDoanhNghiep="&Session("ma_dn")
	end if
	
		RsMaThanhVien.Open sqlRsMaThanhVien,conn
		
'	  Response.Write(MaThanhVien)
		dim RsDoanhNghiep
		Set RsDoanhNghiep= Server.CreateObject("ADODB.Recordset")
		
	  'dim Rs1
	  'Set RS1 = Server.CreateObject("ADODB.Recordset")
  		Rs.open "Select TenSanPham from SanPham where MaSanPham=" & MaSanPham,conn
		'Rs1.open "Select ThanhVien.MaThanhVien,TenThanhVien From ThanhVien  where MaThanhVien=" & MaThanhVien,conn
		dim RsMaGiaCong 
		Set RsMaGiaCong = Server.CreateObject("ADODB.Recordset")

		
		dim RsMaNhanToConNguoi 
		Set RsMaNhanToConNguoi = Server.CreateObject("ADODB.Recordset")

		
		dim RsMaChiTietThongTin 
		Set RsMaChiTietThongTin = Server.CreateObject("ADODB.Recordset")

		
		dim RsMaChiTietToChuc 
		Set RsMaChiTietToChuc= Server.CreateObject("ADODB.Recordset")

'		Response.Write(RsMaChiTietThongTinCount)
   %>
<%
		RsDoanhNghiep.open "Select MaDoanhNghiep,TenDoanhNghiep from DoanhNghiep where MaDoanhNghiep=" & MaDoanhNghiep ,conn,3
while(not RsMaThanhVien.EOF)

		RsMaGiaCong.open "Select MaBuocGiaCong,TenBuocGiaCong from BuocGiaCong where MaSanPham=" & MaSanPham & " and MaHoiDong=" & MaHoiDong,conn,3
		RsMaGiaCongCount=RsMaGiaCong.RecordCount
		RsMaNhanToConNguoi.open "Select MaNhanToConNguoi,TenNhanToConNguoi from NhanToConNguoi where MaSanPham=" & MaSanPham & " and MaHoiDong=" & MaHoiDong,conn,3
		RsMaNhanToConNguoiCount=RsMaNhanToConNguoi.RecordCount
		RsMaChiTietThongTin.open "Select MaChiTietThongTin,TenChiTietThongTin from ChiTietThongTin where MaSanPham=" & MaSanPham & " and MaHoiDong=" & MaHoiDong,conn,3
		RsMaChiTietThongTinCount=RsMaChiTietThongTin.RecordCount
		RsMaChiTietToChuc.open "Select MaChiTietToChuc,TenChiTietToChuc from ChiTietToChuc where MaSanPham=" + MaSanPham & " and MaHoiDong=" & MaHoiDong,conn,3
		RsMaChiTietToChucCount=RsMaChiTietToChuc.RecordCount
%>
  <br />
 <div align="center">
  <span class="heading"><strong>PHI&#7870;U CHO &#272;I&#7874;M TH&Agrave;NH PH&#7846;N C&Ocirc;NG NGH&#7878; THEO TR&Igrave;NH &#272;&#7896; HI&#7878;N &#272;&#7840;I</strong></span><br />
  <br />
</div>
<table width="100%" border="0">
    <tr>
      <td width="140"><div align="left" class="style1">Cơ sở sản xuất:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div></td>
      <td width="520"><div align="left" class="style1"><b><%=RsDoanhNghiep(1) %></b></div></td>
    </tr>
    <tr>
      <td><div align="left"><span class="style1">Ch&#7911;ng lo&#7841;i s&#7843;n phẩm:</span></div></td>
      <td><div align="left"><span class="style1"><b><%=Rs(0) %></b></span></div></td>
    </tr>
    <tr>
      <td><div align="left"><span class="style1">Ng&#432;&#7901;i cho &#273;i&#7875;m:&nbsp;</span></div></td>
      <td><div align="left"><span class="style1"><b><%=RsMaThanhVien(1) %></b></span></div></td>
    </tr>
</table>
    <table width="100%" border="1">
      <tr>
        <td width="262" rowspan="2"><div align="center">CÁC THÀNH PHẦN CÔNG NGHỆ </div></td>
        <td colspan="2"><div align="center">&#272;I&#7874;M CHO </div></td>
        <td rowspan="2"><div align="center">TIÊU CHUẨN ĐIỂM<br />
          n</div></td>
      </tr>
      <tr>
        <td width="58" height="17"><div align="center">min</div></td>
        <td width="56"><div align="center">max</div></td>
      </tr>
      <tr height="20">
        <td><div align="center"><strong>T Thi&#7871;t b&#7883; </strong></div></td>
        <td><div align="center">T min </div></td>
        <td><div align="center">T max </div></td>
        <td><div align="center">Theo m&#7913;c &#273;&#7897; hi&#7879;n &#273;&#7841;i </div></td>
      </tr>
      <tr >
        <td><div align="center">
          <% t=0 %>	  	
          
          <% while(not RsMaGiaCong.EOF) %>
          <tr height="20">
            <td>
              
              <%=RsMaGiaCong(1) %>              </td>
				<%
					if(MaThanhVien="All") then
							sqlRsDiem = "SELECT Tmin,Tmax FROM DiemBuocGiaCong WHERE MaThanhVien="&RSMaThanhVien(0)&" AND MaBuocGiaCong="&RsMaGiaCong(0)
							RsDiem.Open sqlRsDiem,conn
							
							if(not RsDiem.EOF) then
							%>
								<td>&nbsp;<%=RsDiem(0)%> </td>
								<td>&nbsp;<%=RsDiem(1)%> </td>
							<%
							else
							%>
								<td>&nbsp;0 </td>
								<td>&nbsp;0 </td>
							<%
							end if
							RsDiem.Close
					else
					%>
								<td>&nbsp; </td>
								<td>&nbsp; </td>
					<%
					end if
				if(t=0) then
				%>
            <td rowspan="<%=RsMaGiaCongCount%>" align="left">
              <ul>
                <li>Thủ công: 1,2,3</li>
					      <li>Cơ khí: 2,3,4</li>
					      <li>Tự động từng thao tác: 5,6,7</li>
					      <li>Tự động tổ hợp: 6,7,8</li>
					      <li>Tự động cao, vi điện tử, CNC: 7,8,9</li>
		        </ul></td>
				    <%
				end if
				%>
            </tr>
            
            <% 
			t=t+1
			RsMaGiaCong.moveNext()
			Wend	
			RsMaGiaCong.Close
		%>
          </div></td>
  
      <td colspan="2"><div align="center"></div></td>
        <td><div align="center"></div></td>
      </tr>
      <tr height="20">
        <td><div align="center"><strong>H Con ng&#432;&#7901;i (S&#7889; ng&#432;&#7901;i) </strong></div></td>
        <td><div align="center">H min </div></td>
        <td><div align="center">H max </div></td>
        <td><div align="center">Theo tr&igrave;nh &#273;&#7897; </div></td>
      </tr>
      <tr>
        <td><div align="center">
          <% h=0 %>	  	
          <% while(not RsMaNhanToConNguoi.EOF) %>
          <tr height="20">
            <td>
              
              <%=RsMaNhanToConNguoi(1) %>              </td>
					<%
					if(MaThanhVien="All") then
							sqlRsDiem = "SELECT Hmin,Hmax FROM DiemTieuChuanConNguoi WHERE MaThanhVien="&RSMaThanhVien(0)&" AND MaNhanToConNguoi="&RsMaNhanToConNguoi(0)
							RsDiem.Open sqlRsDiem,conn
							
							if(not RsDiem.EOF) then
							%>
								<td>&nbsp;<%=RsDiem(0)%> </td>
								<td>&nbsp;<%=RsDiem(1)%> </td>
							<%
							else
							%>
								<td>&nbsp;0 </td>
								<td>&nbsp;0 </td>
							<%
							end if
							RsDiem.Close
					else
					%>
								<td>&nbsp; </td>
								<td>&nbsp; </td>
					<%
					end if
					
				if(h=0) then
				%>
            <td rowspan="<%=RsMaNhanToConNguoiCount%>" align="left">
              <ul>
                <li><b> Trình độ văn hóa: </b></li>
					      <li>&nbsp;&nbsp;+ Cấp 2: 1,2,3</li>
					      <li>&nbsp;&nbsp;+ Cấp 3: 3,4,5</li>
			    <li><b>Tự động tổ hợp: 6,7,8</b></li>
					      <li>&nbsp;&nbsp;+ Đào tạo hoàn chỉnh ngoại ngữ, vi tính, chuyên môn quản lý: 7,8,9</li>
					      <li>&nbsp;&nbsp;+ Thành thạo: 6,7,8</li>
					      <li>&nbsp;&nbsp;+ Bình thường: 4,5,6</li>						
					      <li>&nbsp;&nbsp;+ Kém: 2,3,4</li>					
		        </ul></td>
				    <%
				end if
				%>
            </tr>
            <% 
			h=h+1	
			RsMaNhanToConNguoi.moveNext()
			Wend	
			RsMaNhanToConNguoi.Close
		%>
          </div></td>
        <td colspan="2"><div align="center"></div></td>
        <td><div align="center"></div></td>
      </tr>
      <tr height="20">
        <td><div align="center"><strong>I Th&ocirc;ng tin </strong></div></td>
        <td><div align="center">I min </div></td>
        <td><div align="center">I max </div></td>
        <td><div align="center">&nbsp;</div></td>
      </tr>
      <tr>
        <td><div align="center">
          <% i=0 %>	  	
          <% while(not RsMaChiTietThongTin.EOF) %>
          <tr height="20">
            <td>
              
              <%=RsMaChiTietThongTin(1) %>              </td>
					<%
					if(MaThanhVien="All") then
							sqlRsDiem = "SELECT Imin,Imax FROM DiemTieuChuanThongTin WHERE MaThanhVien="&RSMaThanhVien(0)&" AND MaChiTietThongTin="&RsMaChiTietThongTin(0)
							RsDiem.Open sqlRsDiem,conn
							
							if(not RsDiem.EOF) then
							%>
								<td>&nbsp;<%=RsDiem(0)%> </td>
								<td>&nbsp;<%=RsDiem(1)%> </td>
							<%
							else
							%>
								<td>&nbsp;0 </td>
								<td>&nbsp;0 </td>
							<%
							end if
							RsDiem.Close
					else
					%>
								<td>&nbsp; </td>
								<td>&nbsp; </td>
					<%
					end if
				if(i=0) then
				%>
            <td rowspan="<%=RsMaChiTietThongTinCount%>" align="left">
              <ul>
                <li>Đầy đủ: 7,8,9</li>
					      <li>Bình thường: 6,7,8</li>
					      <li>Kém không đáp ứng cơ chế thị trường: 4,5,6</li>
		        </ul></td>
				    <%
				end if
				%>
            </tr>
            <% 
			i=i+1	
			RsMaChiTietThongTin.moveNext()
			Wend	
			RsMaChiTietThongTin.Close
		%>
          </div></td>
        <td colspan="2"><div align="center"></div></td>
        <td><div align="center"></div></td>
      </tr>
      <tr height="20">
        <td><div align="center"><strong>O T&#7893; ch&#7913;c </strong></div></td>
        <td><div align="center">O min </div></td>
        <td><div align="center">O max </div></td>
        <td><div align="center">Theo tr&igrave;nh &#273;&#7897; </div></td>
      </tr>
      <tr>
        <td><div align="center">
          <% o=0 %>	  	
          <% while(not RsMaChiTietToChuc.EOF) %>
          <tr height="20">
            <td>
              
              <%=RsMaChiTietToChuc(1) %>              </td>
					<%
					if(MaThanhVien="All") then
							sqlRsDiem = "SELECT Omin,Omax FROM DiemTieuChuanToChuc WHERE MaThanhVien="&RSMaThanhVien(0)&" AND MaChiTietToChuc="&RsMaChiTietToChuc(0)
							RsDiem.Open sqlRsDiem,conn
							
							if(not RsDiem.EOF) then
							%>
								<td>&nbsp;<%=RsDiem(0)%> </td>
								<td>&nbsp;<%=RsDiem(1)%> </td>
							<%
							else
							%>
								<td>&nbsp;0 </td>
								<td>&nbsp;0 </td>
							<%
							end if
							RsDiem.Close
					else
					%>
								<td>&nbsp; </td>
								<td>&nbsp; </td>
					<%
					end if
				if(o=0) then
				%>
            <td rowspan="<%=RsMaChiTietToChucCount%>" align="left">
              <ul>
                <li><b> Trình độ văn hóa: </b></li>
					      <li>&nbsp;&nbsp;+ Cấp 2: 1,2,3</li>
					      <li>&nbsp;&nbsp;+ Cấp 3: 3,4,5</li>
			    <li><b>Tự động tổ hợp: 6,7,8</b></li>
					      <li>&nbsp;&nbsp;+ Đào tạo hoàn chỉnh ngoại ngữ, vi tính, chuyên môn quản lý: 7,8,9</li>
					      <li>&nbsp;&nbsp;+ Thành thạo: 6,7,8</li>
					      <li>&nbsp;&nbsp;+ Bình thường: 4,5,6</li>						
					      <li>&nbsp;&nbsp;+ Kém: 2,3,4</li>					
		        </ul></td>
				    <%
				end if
				%>
            </tr>
            <% 
			o=o+1
			RsMaChiTietToChuc.moveNext()
			Wend	
			RsMaChiTietToChuc.Close
		%>
          </div></td>
        <td colspan="2"><div align="center"></div></td>
        <td><div align="center"></div></td>
      </tr>
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
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<%
RsMaThanhVien.movenext()
wend
%>
 
</body>
</html>
