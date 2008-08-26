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
         <% maphieu=Request.QueryString("maphieu");
		    makhachhang=Request.QueryString("makhachhang");
		 %>
          <fieldset>
		  <legend align="center">Chào mừng:<%=Session("ten_nv")%>đã lập xong phiếu !</legend>
<form action="save_add_item_in_ticket.asp" method="post" name="lapphieu" id="lapphieu">
  <table width="100%" border="0" cellpadding="0" cellspacing="0" >
    <tr bgcolor="#FFCC33">
      <td colspan="7"><div align="center">Thông tin phiếu</div></td>
      </tr>
	<tr>
	  <%
	   rs=oConn.Execute("detail_ticket_of '"+maphieu+"','"+makhachhang+"'")%>
      <td colspan="2">Mã phiếu:&nbsp;</td><td width="54"><%=rs("ma_phieu_nhan")%>
        <input name="maphieu" type="hidden" id="maphieu" value="<%=rs("ma_phieu_nhan")%>"></td>
     <td width="93"><div align="right">Người lập:&nbsp;</div></td>
	<td colspan="3"><%=tennhanvien%>
	  <input name="khachquen" type="hidden" id="khachquen" value="1"></td>
	</tr>
    <tr>
      <td colspan="3">Mã khách hàng
	    </td>
      <td colspan="4"><%=rs("ma_kh")%><input name="makhachhang" type="hidden" id="makhachhang" value="<%=rs("ma_kh")%>"></td>
      </tr>
    <tr>
      <td colspan="3">Tên khách hàng</td>
      <td colspan="4"><%=rs("ten_kh")%></td>
    </tr>
    <tr>
      <td colspan="3">Địa chỉ</td>
      <td colspan="4"><%=rs("dia_chi_kh")%></td>
      </tr>
    <tr>
      <td colspan="3">Điện thoại</td>
      <td colspan="4"><%=rs("dien_thoai_kh")%></td>
      </tr>
    <tr>
      <td colspan="3">Email</td>
      <td colspan="4"><%=rs("email_kh")%></td>
    </tr>
	 <%rs.Close%>
    <tr bgcolor="#319AFF">
      <td colspan="7"><div align="center">Thông tin thiết bị</div></td>
      </tr>
	  <%rs=oConn.Execute("detail_ticket '"+maphieu+"','"+makhachhang+"'")%>
    <tr>
      <td width="99">Stt</td>
      <td colspan="4">Tên thiết bị</td>
      <td width="118"><div align="center">Số lượng</div></td>
      <td width="97"><div align="center">Kiến tạo</div></td>
    </tr>
    <%dem=1;
	while (!rs.EOF) {%>
	<tr>
      <td><%=dem%></td>
      <td colspan="4"><%=rs("ten_tb")%></td>
      <td><div align="center"><%=rs("so_luong_nhan")%></div></td>
	  <td ><div align="center"><a href="../items/edit_item.asp?mathietbi=<%=rs("ma_tb_kh")%>">Sửa</a></div></td>
	</tr>
	<%rs.MoveNext;dem=dem+1;}rs.Close%>
	<tr bgcolor="#319AFF">
      <td colspan="8" bgcolor="#009933"><div align="center">Nếu muốn thêm thiết bị vào phiếu xin mời nhập thông tin bên dưới</div></td>
	  </tr>
    <tr>
      <td colspan="3">Loại thiết bị
        <% 
		  rs3=oConn.Execute("select * from LOAITHIETBI");%>        
		</td>
      <td><select name="loaithietbi" id="loaithietbi" onChange="mathietbi.value=this.value.substr(0,3)">
        <option >Chọn một</option>
        <% while(!rs3.EOF){%>
        <option  value="<%=rs3("ky_hieu")%><%=rs3("ma_loai_tb")%>"><%=rs3("ten_loai_tb")%> </option>
        <%rs3.MoveNext;}rs3=oConn.Execute("getmax_thietbi 4,6");%>
      </select></td>
    <td>Loại dịch vụ</td>
      <td colspan="2"><select name="maloaidvtb" id="maloaidvtb" >
        <%rs4=oConn.Execute("select * from DICHVU")%>
		<option  value="">Chọn một</option>
        <%while(!rs4.EOF){%>
        <option value="<%=rs4("ma_loai_dv")%>"><%=rs4("ten_loai_dv")%></option>
        <%rs4.MoveNext;} rs4.Close;%>
      </select></td>
    </tr>
    <tr>
      <td colspan="3">Mã thiết bị</td>
      <td colspan="4"><input name="mathietbi" readonly="1"type="text" id="mathietbi" size="6">
        <input name="sohieuthietbi" type="text" readonly="1"id="sohieuthietbi" size="3" value="<%=rs3("max_add_1")%>">
		 <%rs3.Close;%>
		</td>
    </tr>
    <tr>
      <td colspan="3">Tên thiết bị</td>
      <td colspan="4"><input name="tenthietbi" type="text" id="tenthietbi" size="48"></td>
      </tr>
    <tr>
      <td colspan="3">Chi tiết</td>
      <td colspan="4"><textarea name="chitietthietbi" cols="40" id="chitietthietbi"></textarea></td>
      </tr>
    <tr>
      <td colspan="3">Serial</td>
      <td><input name="serial" type="text" id="serial" size="10"></td>
      <td width="96">Số lượng</td>
    <td colspan="2"><input name="soluongthietbi" type="text" id="soluongthietbi" size="4"></td>
    </tr>
    <tr bgcolor="#31AEAD">
      <td colspan="7" bgcolor="#009A31"><div align="center">
            <input type="submit" name="Submit" value="Cập nhật"> 
            <input type="reset" name="Reset" value="Làm lại">                               
            <input type="button" name="Button" value="In phiếu này" onClick="window.open('../print/print_ticket.asp?maphieu=<%=maphieu%>','printicket','toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=no,copyhistory=no,width=600,height=500')">        
            <input type="button" name="Button" value="Hoàn tất" onClick="window.location='default_customers.asp'">
      </div></td>
      </tr>
  </table>
</form>
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