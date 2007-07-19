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
            <% var maphieu= Request.QueryString("maphieu")
				sqltext="select * from PHIEUNHAN_TB "
						+" inner join KHACHHANG on KHACHHANG.ma_kh=PHIEUNHAN_TB.ma_kh"
						+" inner join NHANVIEN on NHANVIEN.ma_nv=PHIEUNHAN_TB.nguoi_lap" 
						+" inner join TRANGTHAI_PH on TRANGTHAI_PH.ma_trang_thai=PHIEUNHAN_TB.trang_thai_phieu"
						+" where PHIEUNHAN_TB.ma_phieu_nhan ='"+maphieu+"'" ;
						  rs=oConn.Execute(sqltext);%>
            <fieldset>
            <div >
              <legend align="center">Thông tin chi tiết của phiếu: <%=maphieu%></legend>
              <table width="100%" border="0" cellpadding="0" cellspacing="0" rules="none">
                <tr bgcolor="#00CCCC">
                  <td width="128"><div align="center">Mã khách hàng</div></td>
                  <td width="164"><div align="center">Tên khách hàng</div></td>
                  <td width="121"><div align="center">Người lập</div></td>
                  <td width="152"><div align="center">Ngày lập</div></td>
                </tr>
                <tr>
                  <td><div align="center"><%=rs("ma_kh")%></div></td>
                  <td><div align="center"><%=rs("ten_kh")%></div></td>
                  <td><div align="center"><%=rs("ten_nv")%></div></td>
                  <td><div align="center"><%=rs("ngay_lap_phieu")%></div></td>
                </tr>
                <tr>
                  <td><div align="center">Địa chỉ</div></td>
                  <td colspan="3"><div align="center"><%=rs("dia_chi_kh")%>&nbsp;</div></td>
                </tr>
                <tr>
                  <td><div align="center">Điện thoại</div></td>
                  <td><div align="center"><%=rs("dien_thoai_kh")%>&nbsp;</div></td>
                  <td><div align="center">Email&nbsp;</div></td>
                  <td><div align="center"><%=rs("email_kh")%></div></td>
                </tr>
              </table>
              <fieldset>
			  <legend align="center">Danh sách thiết bị</legend>
              <%
	         	sqltext2=" select * from KHOTHIETBI_KH where ma_phieu_nhan ='"+maphieu+"'" ;%>
              <%rs2=oConn.Execute(sqltext2)%>
              <table width="100%" border="1" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="18"><div align="center">Stt</div></td>
                  <td width="116"><div align="center">Tên Thiết bị</div></td>
                  <td width="146"><div align="center">Số lượng gửi</div></td>
                  <td width="134"><div align="center">Số lượng trả</div></td>
                  <td colspan="2"><div align="center">Thao Tác</div></td>
                </tr>
                <% dem=1;
   while (!rs2.EOF){%>
                <tr>
                  <td><%=dem%></td>
                  <td><%=rs2("ten_tb")%>&nbsp;</td>
                  <td><%=rs2("so_luong_nhan")%>&nbsp;</td>
                  <td><%=rs2("so_luong_tra")%>&nbsp;</td>
                  <td width="56" nowrap><a href="../items/item_detail.asp?mathietbi=<%=rs2("ma_tb_kh")%>">Chi tiết</a></td>
                  <td width="55" nowrap><a href="../items/edit_item.asp?mathietbi=<%=rs2("ma_tb_kh")%>">Sửa</a></td>
                </tr>
                <%rs2.MoveNext;dem=dem+1}rs2.Close%>
              </table>
			  </fieldset>
              <table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr bgcolor="#00CFCE">
                  <td width="117"><div align="right">Trạng thái:</div></td>
                  <td width="88" bgcolor="#00CFCE"><%=rs("ten_trang_thai")%></td>
                  <td width="154" bgcolor="#00CFCE"><div align="right">Tổng tiền dịch vụ:</div></td>
                  <td width="206">|<%=rs("tong_tien_dv")%>|VNĐ</td>
                </tr>
                <tr>
                  <td colspan="4"><input type="button" name="Button" value="In phiếu này" onClick="window.open('../print/print_ticket.asp?maphieu=<%=maphieu%>','printicket','toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=no,copyhistory=no,width=596,height=830')">
                      <input type="button" name="Button" value="Sửa phiếu">
                      <input type="button" name="Button" value="In hóa đơn" onClick="window.open('../print/print_ticket.asp?maphieu=<%=maphieu%>','printicket','toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=no,copyhistory=no,width=596,height=830')">
                      <input type="button" name="Button" value="Thanh toán" onClick="window.open('../print/print_ticket.asp?maphieu=<%=maphieu%>','printicket','toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=no,copyhistory=no,width=596,height=830')">
                      <input type="button" name="Button" value="<<<Quay lại" onClick="history.back()"></td>
                </tr>
              </table>
            </div>
            </fieldset>
			<% rs.Close;%>		  
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