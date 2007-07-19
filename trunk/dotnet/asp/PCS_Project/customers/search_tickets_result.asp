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
                    <%
	var maphieu = Request.Form("maphieu");
	var tenkh = Request.Form("tenkh");
	subsql1="";
	subsql2="";
	var loaitb = parseInt(Request.Form("loaitb"));
	var loaidv = parseInt(Request.Form("loaidv"));
	//var sql ="exec Search '"+maphieu+"'," + loaitb + ",'" + tenkh + "'," + loaidv
	//Response.Write(sql);
	       if (loaitb!=0)  subsql1=" and LOAITHIETBI.ma_loai_tb ="+loaitb;
           if (loaidv!=0) subsql2=" and PHIEUNHAN_TB.ma_loai_dv ="+loaidv;
	sqltext="SELECT TRANGTHAI_PH.ten_trang_thai,PHIEUNHAN_TB.ma_loai_dv,PHIEUNHAN_TB.ma_phieu_nhan, PHIEUNHAN_TB.ten_phieu, LOAITHIETBI.ten_loai_tb,LOAITHIETBI.ma_loai_tb, "
	       +" TRANGTHAI_TB.ten_trang_thai_tb , DICHVU.ten_loai_dv, KHACHHANG.ten_kh"
		   +" FROM  KHOTHIETBI_KH INNER JOIN TRANGTHAI_PH INNER JOIN "
		   +" PHIEUNHAN_TB ON TRANGTHAI_PH.ma_trang_thai = PHIEUNHAN_TB.trang_thai_phieu ON "
		   +" KHOTHIETBI_KH.ma_phieu_nhan = PHIEUNHAN_TB.ma_phieu_nhan INNER JOIN"
		   +" TRANGTHAI_TB ON KHOTHIETBI_KH.tinh_trang_tb = TRANGTHAI_TB.ma_trang_thai_tb INNER JOIN"
		   +"  LOAITHIETBI ON KHOTHIETBI_KH.ma_loai_tb = LOAITHIETBI.ma_loai_tb INNER JOIN"
		   +" KHACHHANG ON PHIEUNHAN_TB.ma_kh = KHACHHANG.ma_kh INNER JOIN" 
		   +" DICHVU ON PHIEUNHAN_TB.ma_loai_dv = DICHVU.ma_loai_dv"
		   +" Where PHIEUNHAN_TB.ma_phieu_nhan like upper('%"+maphieu+"%')"
		   +" and KHACHHANG.ten_kh like  N'%"+tenkh+"%'";
	rs = oConn.Execute(sqltext+subsql1+subsql2);
	
%>
                    <form name="form1" method="post" action="">
                      <table width="100%" border="1">
                        <tr> 
                          <td colspan="5"><div align="center">Kết quả tìm kiếm</div></td>
                        </tr>
                        <% if (rs.EOF){
		Response.Write("Không tìm thấy <a href =search_tickets.asp>Click vao đây để thử lại</a>")
	}else{ %>
                        <tr> 
                          <td width="14%">Mã phiếu</td>
                          <td width="25%">Tên khách hàng</td>
                          <td width="20%">Loại dịch vụ</td>
                          <td width="18%">Loại thiết bị</td>
                          <td width="15%">Trạng thái</td>
                        </tr>
                        <% while(!rs.EOF) {
			%>
                        <tr> 
                          <td><a href="ticket_detail.asp?maphieu=<%=rs("ma_phieu_nhan")%>" title="Xemm chi tiết">
                            <%=rs("ma_phieu_nhan")%></a>
                          </td>
                          <td>
                            <%=rs("ten_kh")%>
                          </td>
                          <td>
                            <%=rs("ten_loai_dv")%>
                          </td>
                          <td>
                            <%=rs("ten_loai_tb")%>
                          </td>
                          <td>
                            <%=rs("ten_trang_thai")%>
                          </td>
                        </tr>
                        <%rs.MoveNext; }
	}%>
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