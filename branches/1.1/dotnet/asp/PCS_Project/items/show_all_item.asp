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
  <p class="textcoppyright">&nbsp;</p>
  <table width="301" height="100" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td width="301"><div align="center">
      </div></td>
    </tr>
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
            <!-- #include file="../customers/menu.asp"-->
		  </fieldset> 
		    </th>
          <td width="79%"><table width="98%"  border="0" cellpadding="00" cellspacing="0">
            <tr>
              <td width="4%">&nbsp;</td>
              <td width="96%" valign="top">
			<!-- #include file ="../connections/connection.inc"-->
			<!-- #include file ="../customers/style.css" -->
			<!--#include file = "../customers/javascript.js"-->
			<form name="hienngay" id="hienngay">
                   <div align="right">Hôm nay ngày: 
                       <input name="ngay" type="text" id="ngay" size="8">              
                   </div>
            </form>
			<%tendangnhap=Session("username");
	         	   madangnhap=Session("ma_nv") ;
	        	   tennhanvien=Session("ten_nv");
		     %><!-- InstanceBeginEditable name="Noidung" -->
              <% 
						
				   rs=oConn.Execute("Select *,datepart(dd,ngay_lap_phieu) ngay,datepart(mm,ngay_lap_phieu) thang, datepart(yyyy,ngay_lap_phieu) nam from THONGKE order by tinh_trang_tb desc, ngay_ghi_nk desc");
				   rscount=oConn.Execute("select count(ma_tb_kh) dem, sum(so_luong_nhan) tongnhan, sum(so_luong_tra) tongtra from KHOTHIETBI_KH");
				 %>
            <fieldset>
            <legend align="center">Chào mừng:<%=Session("ten_nv")%> đến với thống kê thiết bị của khách.</legend>
			<center>Hiện nay có (<%=rscount("dem")%>) thiết bị với tổng số lượn nhận(<%=rscount("tongnhan")%>) và đã trả <%=rscount("tongtra")%></center>
			<%rscount.Close;%>
            <%if (rs.EOF) {%>
Chưa có thiết bị nào trong kho!<a href="search_items.asp"><%="<<<<"%>Quay lại</a>
<%}else {%>
<table width="100%" border="1">
  <tr>
    <td width="5%">Stt</td>
    <td width="11%">Mã TB </td>
    <td width="29%">Tên thiế bị:</td>
    <td width="14%">Ngày gửi</td>
    <td width="12%">Trạng Thái</td>
    <td colspan="2">Thao tác</td>
  </tr>
  <% var dem=1;
					  while (!rs.EOF) {%>
  <tr>
    <td><%=dem%></td>
    <td><a href="item_detail.asp?mathietbi=<%=rs("ma_tb_kh")%>" title="Xem chi tiết phiếu"><%=rs("ma_tb_kh")%></a></td>
    <td><%=rs("ten_tb")%>&nbsp;</td>
    <td valign="middle"><%=rs("ngay")%>/<%=rs("thang")%>/<%=rs("nam")%></td>
    <td valign="middle"><%=rs("ten_trang_thai_tb")%></td>
    <td width="4%"><a href="item_detail.asp?mathietbi=<%=rs("ma_tb_kh")%>">xem</a></td>
    <td width="4%"><a href="#?mathietbi=<%=rs("ma_tb_kh")%>">trả tb</a></td>
    </tr>
  <%rs.MoveNext;dem=dem+1;}rs.Close;%>
</table>
<%}%>
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