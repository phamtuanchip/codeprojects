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
<fieldset>
<legend align="center" >Chào mừng:<%=Session("ten_nv")%>&nbsp; đến với lập phiếu mới</legend>
 		<% tenkhachhang=Request.QueryString("tenkhachhang")%>
 	    <%rs=oConn.Execute("select * from DICHVU")%>
		<%rs2=oConn.Execute("select * from SOHUU")%> 
		<%rs3=oConn.Execute("select * from LOAITHIETBI")%>
		<%rs4=oConn.Execute("select * from DICHVU")%>
 <form action="save_new_ticket.asp" method="post" name="lapphieu" id="lapphieu">
  <table width="100%" border="0" cellpadding="0" cellspacing="0" rules="none">
    <tr bgcolor="#FFCC33">
      <td colspan="4"><div align="center">Thông tin phiếu</div></td>
      </tr>
    <tr bgcolor="#FFCC33">
      <td width="21%" nowrap><div align="right">Loại dịch vụ </div></td>
    <td nowrap bgcolor="#FFCC33"><select name="loaidichvu" id="loaidichvu" onChange="lapphieu.maphieu.value=this.value.substr(0,4)">
      <option  value="">Chọn một</option>
      <% 
			while(!rs.EOF)
	   {%>
      <option value="<%=rs("ky_hieu")%><%=rs("ma_loai_dv")%>"><%=rs("ten_loai_dv")%></option>
      <%	
			rs.MoveNext;
			} rs=oConn.Execute("getmax_phieu 5,5");%>
    </select>
      </td>
    <td nowrap bgcolor="#FFCC33"><div align="right">Người lập phiếu</div></td>
    <td nowrap bgcolor="#FFCC33"><input name="nguoilap" type="text" readonly="1" id="nguoilap" value="<%=madangnhap%>" size="10"></td>
    </tr>
	<tr>
      <td><div align="right">Mã phiếu:          </div></td>
      <td width="15%"><input name="maphieu" type="text" readonly="1" id="maphieu" size="6">
        <input name="sohieuphieu" type="text" readonly="1" id="sohieuphieu" size="3" value="<%=rs("max_add_1")%>">
        <%rs.Close;%></td>
		<td colspan="2">&nbsp;</td>
		</tr>
    <tr bgcolor="#32ACA8">
      <td colspan="4" bgcolor="#32ACA8"><div align="center">Thông tin khách hàng</div></td>
      </tr>
    <tr bgcolor="#32ACA8">
      <td><div align="right">Loại KH</div></td>
      <td colspan="3" bgcolor="#32ACA8">        <select name="loaikhachhang" id="loaikhachhang" onChange="lapphieu.makhachhang.value=this.value">
          <option value="">Chọn một</option>
          <%while(!rs2.EOF){%>
          <option value="<%=rs2("ky_hieu")%>"><%=rs2("ten_loai_so_huu_tb")%></option>
          <%rs2.MoveNext;}
		    rs2=oConn.Execute("getmax_khachhang 3,7");
		  %>
        </select>
        <input name="khachquen" type="hidden" id="khachquen" value="0"></td>
      </tr>
    <tr>
      <td><div align="right">Mã khách hàng:
	      </div></td>
      <td colspan="3"><input type="text" name="makhachhang" readonly="1" id="makhachhang" size="6">
        
		<input name="sohieukhach" type="text" readonly="1" id="sohieukhach" size="3" value="<%=rs2("max_add_1")%>"></td>
		<%rs2.Close;%>
      </tr>
    <tr>
      <td><div align="right">Tên khách hàng:</div></td>
      <td colspan="3"><input name="tenkhachhang" type="text" id="tenkhachhang" value="<%=tenkhachhang%>" size="48"></td>
    </tr>
    <tr>
      <td><div align="right">Địa chỉ:</div></td>
      <td colspan="3"><textarea name="diachikhachhang" cols="40" id="diachikhachhang"></textarea></td>
      </tr>
    <tr>
      <td><div align="right">Điện thoại:</div></td>
      <td colspan="3"><input name="dienthoaikhachhang" type="text" id="dienthoaikhachhang" size="48"></td>
      </tr>
    <tr>
      <td><div align="right">Email</div></td>
      <td colspan="3"><input name="emailkhachhang" type="text" id="emailkhachhang" size="48"></td>
    </tr>
    <tr bgcolor="#32ACA8">
      <td colspan="4" bgcolor="#32ACA8"><div align="center">Thông tin về thiết bị</div></td>
      </tr>
    <tr bgcolor="#32ACA8">
      <td><div align="right">Loại thiết bị</div></td>
      <td bgcolor="#32ACA8"><select name="loaithietbi" id="loaithietbi" onChange="lapphieu.mathietbi.value=this.value.substr(0,3)">
        <option value=>Chọn một</option>
        <%while(!rs3.EOF) {%>
        <option value="<%=rs3("ky_hieu")%><%=rs3("ma_loai_tb")%>"><%=rs3("ten_loai_tb")%></option>
        <%rs3.MoveNext;}rs3=oConn.Execute("getmax_thietbi 4,6");%>
      </select></td>
      <td width="13%" nowrap bgcolor="#32ACA8">Loại dịch vụ</td>
      <td bgcolor="#32ACA8"><select name="maloaidvtb" id="maloaidvtb" >
        <option  value="">Chọn một</option>
		<%while(!rs4.EOF){%>
        <option value="<%=rs4("ma_loai_dv")%>"><%=rs4("ten_loai_dv")%></option>
        <%rs4.MoveNext;} rs4.Close;%>
      </select></td>
    </tr>
    <tr>
      <td><div align="right">Mã thiết bị:</div></td>
	   <td colspan="3">
        <input name="mathietbi" type="text" readonly="1" id="mathietbi" size="5">
        <input name="sohieuthietbi" type="text" readonly="1"id="sohieuthietbi" size="3" value="<%=rs3("max_add_1")%>">
          <%rs3.Close;%>
		  </td>
    </tr>
    <tr>
      <td><div align="right">Tên thiết bị:</div></td>
      <td colspan="3"><input name="tenthietbi" type="text" id="tenthietbi" size="48"></td>
      </tr>
    <tr>
      <td><div align="right">Mô tả chi tiết:</div></td>
      <td colspan="3"><textarea name="chitietthietbi" cols="40" id="chitietthietbi"></textarea></td>
      </tr>
    <tr>
      <td><div align="right">Serial</div></td>
      <td><input name="serial" type="text" id="serial" size="14"></td>
      <td>Số lượng:</td>
    <td><input name="soluongthietbi" type="text" id="soluongthietbi" size="4"></td>
    </tr>
    <tr bgcolor="#FFCC33">
      <td colspan="4">
          <div align="center">
            <input type="submit" name="Submit" value="Lưu phiếu">
            <input type="reset" name="Reset" value="Làm lại">        
            <input type="button" name="Button" value="Bỏ qua" onclick="window.location='default_customers.asp'">
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