</script>
<script language="JavaScript" type="text/javascript">
function setValue(page) 
{
	viewFrm.page.value=page; 
	viewFrm.submit();
}
</script>
'Phan trang--------------------------------------------------------------------------------------
		RS.CursorLocation = 3
		'15 nhan vien 1 trang
		RS.PageSize =7
		RS.Open sqlStr, conn
		
			If Request.QueryString("page") = null or Request.QueryString("page") = "" Then
				rsCurrentPage = 1
			Else
				rsCurrentPage = CLng(Request.QueryString("page"))
			End If
			' Kiem tra tinh hop le cua so trang
			If rsCurrentPage < 1 Then
				rsCurrentPage = 1 
			End If
			rsPageCount = rs.PageCount
			If rsCurrentPage > rsPageCount Then
				rsCurrentPage = rsPageCount
			End If
			if (rsCurrentPage > 0 and rsCurrentPage <= rsPageCount) then
				' Dinh vi trang hien hanh
				RS.absolutePage = rsCurrentPage
			End If
		
			'create button and table:
			%>
			<h3 align="center">Danh sách các H?i d?ng</h3>
<ul>
<li>?n vào "S?a" d? thay d?i thông tin c?a H?i Ð?ng dó.</li>
<li>?n vào "Xóa" d? xóa H?i Ð?ng dó.</li>
<li>?n vào "Thêm thành viên" d? thêm thành viên vào H?i Ð?ng dó.</li>
</ul>
<form action="XemDanhsach.asp" method="get" name="form7" id="form7">
  Tìm theo tên H?i Ð?ng : <input type="text" name="TenHoiDong" />
  <input type="hidden" name="loai" value="HoiDong" />
  <input type="hidden" name="PhanLoai" value="ChonLoc" />
  <input type="submit" name="Submit" value="  Tìm  " />
</form>
<table width="100%" border="1" cellpadding="5">
			  <tr align="center" >
				<td><b>Tên H?i Ð?ng</b></td>
				<td><b>Ch?m di?m cho Doanh Nghi?p</b></td>
				<td><b>Ngày Thành l?p</b></td>
				<td colspan="3"><b>Ch?c nang </b><b></b></td>
			  </tr>
			<%		
			while( (NOT RS.EOF) and RS.AbsolutePage = rsCurrentPage)
			%>
				<tr>
					<td><a title="S?a thông tin c?a H?i Ð?ng này" href="Sua.asp?loai=HoiDong&amp;MaHoiDong=<%=RS(0)%>")><%=RS(1)%></a>&nbsp;</td>
					<td><%=RS(2)%>&nbsp;</td>
					<td><%=RS(3)%>&nbsp;</td>
					<td><a title="S?a thông tin c?a H?i Ð?ng này" href="Sua.asp?loai=HoiDong&amp;MaHoiDong=<%=RS(0)%>")>S?a</a></td>
					<td><a title="Xóa H?i Ð?ng này" onclick="return baoHD()" href="Xoa.asp?loai=HoiDong&amp;MaHoiDong=<%=RS(0)%>")>Xóa</a></td>
					<td><a title="Thêm thành viên vào H?i Ð?ng này" href="ThemThanhVien.asp?MaHoiDong=<%=RS(0)%>&TenHoiDong=<%=RS(1)%>")>Thêm thành viên</a></td>
				</tr>
			<%	
			RS.MoveNext
			wend
			%>
</table>
		   </p>	 <p>&nbsp;</p>	 <%
			' Hien thi phan duyet phan trang
			  ShowPageNavigation rsCurrentPage, rsPageCount
			' rs.Open;
			%>     </p>     <form action="XemDanhSach.asp" method="get" name="viewFrm" id="viewFrm">
				
			  <p>
				  <input type="hidden" name="page" value="<%=rsCurrentPage%>" />
				  <input type="hidden" name="loai" value="HoiDong" />
			  </p>
			</form>     
			<%	
				'Ham su dung cho phan trang
				function ShowPageNavigation(rsCurrentPage, rsPageCount) 
					Response.Write("<center><table><tr><td><strong><font color=#cccccc>")
					' link toi trang dau va trang truoc
					if ((rsCurrentPage <> 1) and (rsCurrentPage <> 0)) then
						Response.Write("<a href=JavaScript:setValue(1);>Trang &#273;&#7847;u</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
						Response.Write("<a href=JavaScript:setValue(" & (Cint(rsCurrentPage) - Cint(1)) & ");>Tr&#432;&#7899;c</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
					else		
						Response.Write("Trang &#273;&#7847;u&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tr&#432;&#7899;c&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
					end if
					'link toi trang ke tiep va trang cuoi
					if (rsCurrentPage < rsPageCount) then
						Response.Write("<a href=JavaScript:setValue(" & (CInt(rsCurrentPage) + CInt(1)) & ");>Sau</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
						Response.Write("<a href=JavaScript:setValue(" & Cint(rsPageCount) & ");>Trang cu&#7889;i</a>")
					else
						Response.Write("Sau&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
						Response.Write("Trang cu&#7889;i")
					end if
					
					Response.Write("</font></strong></td></tr><tr><td><strong><center><font color=#cccccc>")
					Response.Write("| ")
					'link toi tung trang
					for p = 1 to rsPageCount
						if (rsCurrentPage <> p) then
							Response.Write("<a href=JavaScript:setValue(" & p & ");>" & p & "</a> | ")
						else
							Response.Write("<b>" & p & "</b>" & " | ")
						end if
					next
					Response.Write("</font></center></strong></td></tr></table></center>")
				end function'het ham su dung cho phan trang