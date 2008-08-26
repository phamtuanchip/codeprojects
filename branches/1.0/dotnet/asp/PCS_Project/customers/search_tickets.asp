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
                    <!--#include file = "../Connections/Connection.inc"-->
                    <form action="search_tickets_result.asp" method="post" name="timphieu" id="timphieu">
                      <table width="100%" border="1">
                        <tr> 
                          <td colspan="2"><div align="center">Tìm kiếm chi tiết</div></td>
                        </tr>
                        <tr> 
                          <td width="29%">Mã phiếu</td>
                          <td width="71%"><input name="maphieu" type="text" id="maphieu" size="10"></td>
                        </tr>
                        <tr> 
                          <td>Tên khách hàng</td>
                          <td><input name="tenkh" type="text" id="tenkh"></td>
                        </tr>
                        <tr> 
                          <%rs = oConn.Execute("select * from LOAITHIETBI")%>
                          <td>Loại thiết bị</td>
                          <td><select name="loaitb" id="loaitb">
                              <option selected value="0">--Chọn loại thiết bị--</option>
                              <%while(!rs.EOF) {%>
                              <option value="<%=rs("ma_loai_tb")%>">
                              <%=rs("ten_loai_tb")%>
                              </option>
                              <%rs.MoveNext; } rs.Close;%>
                            </select></td>
                        </tr>
                        <tr> 
                          <%rs = oConn.Execute("select * from DICHVU")%>
                          <td>Loại dịch vụ</td>
                          <td><select name="loaidv" id="loaidv">
                              <option value="0" selected>--Chọn loại dịch vụ--</option>
                              <%while(!rs.EOF){%>
                              <option value="<%=rs("ma_loai_dv")%>">
                              <%=rs("ten_loai_dv")%>
                              </option>
                              <%rs.MoveNext;} rs.Close;%>
                            </select></td>
                        </tr>
                        <tr> 
                          <td>&nbsp;</td>
                          <td><input type="submit" name="Submit2" value="Tìm"> 
                            <input type="reset" name="Submit2" value="Làm lại"></td>
                        </tr>
                      </table>
                    </form>
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