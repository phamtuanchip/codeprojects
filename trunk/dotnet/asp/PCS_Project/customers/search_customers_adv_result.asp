<%@LANGUAGE="JAVASCRIPT" codepage="65001"%>
<html><!-- InstanceBegin template="/Templates/template_customers.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="content-type" content="text/html;charset=UTF-8">
<!-- InstanceBeginEditable name="doctitle" -->
<title>PCS-GROUP</title>
<!-- InstanceEndEditable -->
<!-- InstanceBeginEditable name="head" -->
<!-- InstanceEndEditable -->
</head>
<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="" onLoad="currentdate();" >
<div align="center">
  <table width="301" height="100" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td width="301"><div align="center">
	  <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="770" height="178">
          <param name="movie" value="../images/logo.swf">
          <param name="quality" value="high"><param name="LOOP" value="false"><param name="SCALE" value="noborder">
          <embed src="../images/logo.swf" width="770" height="178" loop="false" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" scale="noborder"></embed>
        </object>
      </div></td>
    </tr>
  <!-- #include file ="../connections/connection.inc"-->
  <!-- #include file ="style.css" -->
  <!--#include file = "javascript.js"-->    
  </table>
  <table width="770" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="210" height="47" background="../images/n-m02.jpg"><img src="../images/vd.gif" width="180" height="47"></td>
      <td width="560" background="../images/n-m02.jpg"><div align="left">
        <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="98%">              <div align="right">
              <table width="400" border="0" cellpadding="0" cellspacing="0" class="table">
                <tr>
                  <td><div align="right">
                    <input name="textfield" type="text" class="inputtext" size="30" value="Điền từ cần tìm" onfocus="if(this.value=='Điền từ cần tìm')this.value='';" >
                    <input name="Submit" type="submit" class="Buton" value="T&igrave;m ki&#7871;m">
                  </div></td>
                </tr>
              </table>
              </div></td>
            <td width="2%"><div align="right"><img src="../images/vd1.jpg" width="10" height="47"></div></td>
          </tr>
        </table>
      </div></td>
    </tr>
  </table>
  <table width="770" height="211" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td colspan="2" background="../images/bg01.gif"><table width="100%" height="57" border="0" cellpadding="0" cellspacing="0">
        <tr valign="top">
          <th width="200" align="right">
		  
		  <fieldset ><div align="center">
		  <legend  align="center"><%=Session("username")%></legend>
            <!-- #include file="menu.asp"-->
		  </fieldset> 
		    </th>
          <td width="79%"><table width="98%"  border="0" cellpadding="00" cellspacing="0">
            <tr>
              <td width="4%">&nbsp;</td>
              <td width="96%" valign="top">
			<form name="hienngay" id="hienngay">
                   <div align="right">Hôm nay ngày: 
                       <input name="ngay" type="text" id="ngay" size="8">              
                   </div>
            </form>
			<%tendangnhap=Session("username");
	         	   madangnhap=Session("ma_nv") ;
	        	   tennhanvien=Session("ten_nv");
		     %>
			 <!-- InstanceBeginEditable name="Noidung" -->
              <%
		 phuongthuc=Request.Form("phuongthuc");
		 ktt=" N'%";kts="%' ";
		 if (phuongthuc=="=") {ktt=" N'"; kts="' ";}
		 tenkhachhang=Request.Form("tenkhachhang");
		 dienthoai=Request.Form("dienthoai");
		 diachi=Request.Form("diachi");
		 email=Request.Form("email");
		 loaikhachhang=Request.Form("loaikhachhang");
%>
            <fieldset>
			<legend align="center">
			Chào mừng:<%=Session("ten_nv")%>&nbsp; Phần kết quả tìm kiếm nâng cao
            </legend>
            <%sqltext= " select * from KHACHHANG "
						 +" where ten_kh " +phuongthuc+ktt+tenkhachhang+kts 
						 +" and dien_thoai_kh like N'%"+dienthoai+"%'"
						 +" and dia_chi_kh like N'%"+diachi+"%'"
						 +" and email_kh like '%"+email+"%'"
						 +" and ma_kh like'%"+loaikhachhang+"%'"
						rs=oConn.Execute(sqltext);
				 if (rs.EOF) {Response.Write("<center>Không tìm thấy kết quả nào!<a href='search_customers_adv.asp' >bấm vào đây để quay lại</a></center>");}
					else {
				 %>
               <table width="100%" border="1" cellpadding="0" cellspacing="0" >
                <tr>
                <td width="11%">Stt</td>
                <td width="27%">Tên khách hàng</td>
                <td width="20%">Phiếu đã lập</td>
                <td width="16%">Email</td>
                <td width="7%">Điện thoại</td>
                <td colspan="2" nowrap>Kiến tạo</td>
               </tr>
              <% dem=1;
					   while (!rs.EOF){%>
              <tr>
                <td><%=dem%></td>
                <td><a  href="customer_detail.asp?makhachhang=<%=rs("ma_kh")%>"onMouseOver="this.title='Địa chỉ:<%=rs("dia_chi_kh")%>'"><%=rs("ten_kh")%></a></td>
                <td ><%
						makhachhang=rs("ma_kh");
						sqltext2="select * from PHIEUNHAN_TB "
						        +" inner join KHACHHANG on KHACHHANG.ma_kh=PHIEUNHAN_TB.ma_kh"
								+" where KHACHHANG.ma_kh='"+makhachhang+"'";
						rs2=oConn.Execute(sqltext2);
						dem2=1
						while (!rs2.EOF) { 
						%>
                    <%=dem2%>:[<a href="ticket_detail.asp?maphieu=<%=rs2("ma_phieu_nhan")%>" title="Ngày giao dịch: <%=rs2("ngay_lap_phieu")%>"><%=rs2("ma_phieu_nhan")%></a>]
					<br><%rs2.MoveNext;dem2=dem2+1;}rs2.Close;%>
					&nbsp;</td>
                <td>&nbsp;<%=rs("email_kh")%>
				</td>
                <td><%=rs("dien_thoai_kh")%>&nbsp;</td>
                <td width="7%"><a href="edit_customer_info.asp?makhachhang=<%=rs("ma_kh")%>">Sửa</a></td>
                <td width="12%"><a href="insert_new_ticket_of.asp?makhachhang=<%=rs("ma_kh")%>">Lập phiếu</a></td>
              </tr>
              <%rs.MoveNext;dem=dem+1;}%>
            </table>
            <%}rs.Close;%>		
			</fieldset>  
		   <!-- InstanceEndEditable -->
			
         </td>
              </tr>
          </table>
            </td>
        </tr>
      </table></td>
      <td width="10" bgcolor="#32aca8"><img src="../images/d-p01.gif" width="10" height="30"></td>
    </tr>
  </table>
  <table width="770" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td height="74" background="../images/n-d01.jpg"><div align="center" class="textcoppyright">COPYRIGHT @ PCS GROUP C0411G<img src="../images/n-d01.jpg" width="10" height="70"></div></td>
    </tr>
  </table>
</div>
</body>
<!-- InstanceEnd --></html>