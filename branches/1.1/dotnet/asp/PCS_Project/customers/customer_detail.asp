<%@LANGUAGE="JAVASCRIPT" codepage="65001"%>
<html><!-- InstanceBegin template="/Templates/template_customers.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="content-type" content="text/html;charset=UTF-8">
<!-- InstanceBeginEditable name="doctitle" -->
<title>PCS-GROUP</title>
<!-- InstanceEndEditable -->
<!-- InstanceBeginEditable name="head" -->
<style type="text/css">
<!--
.tex_de_muc {	font-family: "Times New Roman", Times, serif;
	color: #FF8000;
	font-size: 16px;
	font-style: normal;
	text-decoration: none;
	border: 10;
}
-->
</style>
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
            <p>
              <%
		makhachhang=  Request.QueryString("makhachhang")
%>
            </p>
            <p>Chào mừng:<%=Session("ten_nv")%> </p>
            <p>
              <%  rs=oConn.Execute("select * from KHACHHANG where ma_kh='"+makhachhang+"'");
				       rs2=oConn.Execute("select count(ma_phieu_nhan) dem from PHIEUNHAN_TB where ma_kh='"+makhachhang+"'");
					   
				   %>
            </p>
            <form >
              <table width="564" border="1" cellpadding="5">
                <tr>
                  <td height="37" colspan="4"><div align="center" class="tex_de_muc">Thông tin chi tiết khách hàng</div></td>
                </tr>
                <tr>
                  <td width="144" height="31">Mã khách hàng</td>
                  <td width="360" colspan="3"><%=rs("ma_kh")%></td>
                </tr>
                <tr>
                  <td>Họ và tên</td>
                  <td colspan="3"><%=rs("ten_kh")%> </td>
                </tr>
                <tr>
                  <td>Địa chỉ</td>
                  <td colspan="3"><%=rs("dia_chi_kh")%></td>
                </tr>
                <tr>
                  <td height="35">Điện thoại</td>
                  <td colspan="3"><%=rs("dien_thoai_kh")%> </td>
                </tr>
                <tr>
                  <td height="31">Email</td>
                  <td height="31" colspan="3"><%=rs("email_kh")%></td>
                </tr>
                <tr>
                  <td height="31"><input type="button" name="Button" value="Sửa thông tin" onClick="window.location='edit_customer_info.asp?makhachhang=<%=rs("ma_kh")%>'">                          </td>
                  <td height="31"><input type="button" name="Button" value="<<<Quay lại" onClick=""></td>
                  <td height="31">&nbsp;</td>
                  <td height="31">&nbsp;</td>
                  <%rs.Close;%>
                </tr>
              </table>
            </form>
            <p>&nbsp; </p>
            <p></p>		  
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