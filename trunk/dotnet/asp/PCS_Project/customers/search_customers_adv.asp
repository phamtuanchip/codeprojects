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
			   <legend align="center">Chào mừng:<%=Session("ten_nv")%>&nbsp;
                 Đến với phần tìm kiếm khách hàng nâng cao
				 </legend>
				 <form action="search_customers_adv_result.asp" method="post" name="timkiem" id="timkiem">
                      <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                       <td width="24%"><div align="right">Phuơng thức tìm tên:</div></td>
                       <td width="76%"><select name="phuongthuc" size="1" id="phuongthuc">
                         <option value="like" selected>Gần đúng</option>
                         <option value="=">Chính xác</option>
                         <option value="not like">Khác với</option>
                       </select></td>
                       </tr>
                     <tr>
                       <td><div align="right">Tên khách hàng                         </div>
                         <div align="right"></div></td>
                       <td><input name="tenkhachhang" type="text" id="tenkhachhang" size="45"></td>
                       </tr>
                     <tr>
                       <td><div align="right">Điện thoại:</div></td>
                       <td><input name="dienthoai" type="text" id="dienthoai" size="45"></td>
                       </tr>
                     <tr>
                       <td><div align="right">Địa chỉ</div></td>
                       <td><input name="diachi" type="text" id="diachi" size="45"  onFocus="this.value=''"></td>
                       </tr>
                     <tr>
                       <td><div align="right">Email:</div></td>
                       <td><input name="email" type="text" id="email" size="45"  onFocus="this.value=''"></td>
                       </tr>
                     <tr>
                       <td><div align="right">Loại khách hàng;</div></td>
                       <td><select name="loaikhachhang" size="1" id="loaikhachhang">
                         <%rs=oConn.Execute("select * from SOHUU")%>
                         <option value="">Chọn một</option>
                         <%while (!rs.EOF){%>
                         <option value="<%=rs("ky_hieu")%>"><%=rs("ten_loai_so_huu_tb")%></option>
                         <%rs.MoveNext;}rs.Close;%>
                       </select>
                         <input type="submit" name="Submit" value="Tìm">
                         <input type="reset" name="Reset" value="Nhập lại"></td>
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