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
  <!-- #include file ="../customers/style.css" -->
  <!--#include file = "../customers/javascript.js"-->    
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
            <% //mathietbi=Request.QueryString("mathietbi");
	  Session("ma_tb")=""+Request.QueryString("mathietbi");
	  mathietbi=Session("ma_tb");
	  mathietbi2=Request.QueryString("mathietbi");
      sqltext= "select * from KHOTHIETBI_KH "
	  sqltext=sqltext+"inner join LOAITHIETBI on KHOTHIETBI_KH.ma_loai_tb=LOAITHIETBI.ma_loai_tb "
	  sqltext=sqltext+"where ma_tb_kh='"+mathietbi+"'";
	  
%>
            <% 
  rs=oConn.Execute(sqltext);
  maphieu=rs("ma_phieu_nhan")
  sqltext2="select ten_kh, NHANVIEN.ten_nv from KHACHHANG"
          +" inner join PHIEUNHAN_TB on PHIEUNHAN_TB.ma_kh=KHACHHANG.ma_kh"
		  +" inner join NHANVIEN on NHANVIEN.ma_nv=PHIEUNHAN_TB.nguoi_lap"
		  +" where PHIEUNHAN_TB.ma_phieu_nhan='"+maphieu+"'";
  rs2=oConn.Execute(sqltext2);
  %>
            <%
  sqltext3="select * from NHATKY_TB inner join KHOTHIETBI_KH "
          +" on KHOTHIETBI_KH.ma_tb_kh = NHATKY_TB.ma_tb_kh"
		  +" inner join DICHVU on DICHVU.ma_loai_dv=NHATKY_TB.ma_loai_dv"
		  +" where KHOTHIETBI_KH.ma_tb_kh='"+mathietbi+"'";
  rs3=oConn.Execute(sqltext3);
  %>
            <fieldset>
            <div >
              <legend align="center">Nhật ký chi tiết thiết bị!<%=mathietbi%></legend>
              <table width="100%" border="1" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="136" bgcolor="#3399FF">Mã TB:</td>
                  <td colspan="2" bgcolor="#3399FF">Thuộc phiếu:</td>
                  <td colspan="2" bgcolor="#3399FF">S&#7903; hữu</td>
                  <td colspan="2" bgcolor="#3399FF">Loại thiết b&#7883;</td>
                </tr>
                <tr>
                  <td width="136"><%=mathietbi%></td>
                  <td colspan="2"><%=rs("ma_phieu_nhan")%></td>
                  <td colspan="2"><%=rs2("ten_kh")%></td>
                  <td colspan="2"><%=rs("ten_loai_tb")%></td>
                </tr>
                <tr>
                  <td>Tên thiết bị: 
                  <td colspan="4"><%=rs("ten_tb")%>                  
                  <td width="168"><div align="right">Serial:</div></td>
                <td width="27"><%=rs("serial")%></td>
                </tr>
                <tr>
                  <td height="45">Mô tả chi tiết:</td>
                  <td height="45" colspan="6"><%=rs("chi_tiet")%>&nbsp;</td>
                </tr>
                <tr>
                  <td>Số lượng gửi:</td>
                  <td width="82"><%=rs("so_luong_nhan")%></td>
                  <td colspan="3">Mô tả lỗi:</td>
                  <td colspan="2"><%=rs3("mo_ta_loi")%></td>
                </tr>
                <tr>
                  <td height="35">Ngày gửi:</td>
                  <td height="35">&nbsp;</td>
                  <td height="35" colspan="3">Người nhận</td>
                  <td height="35" colspan="2"><%=rs2("ten_nv")%></td>
                </tr>
                <tr>
                  <td height="35">Ngày ghi nhật k&yacute;:</td>
                  <td height="35"><%=rs3("ngay_ghi_nk")%></td>
                <td height="35" colspan="3">Người ghi nhật ký:</td>
                  <td height="35" colspan="2"><%=rs3("nguoi_lam")%></td>
                </tr>
                <tr>
                  <td>Ngày trả thiết bị:</td>
                  <td><%=rs3("ngay_tra_tb")%></td>
                  <td colspan="3">S&#7889; l&#432;ợng tr&#7843;</td>
                  <td colspan="2"><%=rs("so_luong_tra")%></td>
                </tr>
                <tr>
                  <td>S&#7889; l&#432;ợng </td>
                  <td colspan="4">M&ocirc; t&#7843; chi tiết</td>
                  <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                  <td> Sửa:<%=rs3("so_luong_sua")%></td>
                  <td colspan="4">&nbsp;</td>
                  <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                  <td>Không sửa được:<%=rs3("so_luong_0_sua")%></td>
                  <td colspan="4"><p>&nbsp;</p></td>
                  <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                  <td> Thay:<%=rs3("so_luong_thay")%></td>
                  <% mathietbithay="";
	if (!rs3("ma_tb_thay")==null)  mathietbithay=rs3("ma_tb_thay"); tenthietbithay="";giaxuat="";
	sqltext4="Select * from THIETBI inner join CHITIETNX on THIETBI.ma_tb=CHITIETNX.ma_tb"
	       +" where THIETBI.ma_tb='"+mathietbithay+"'";
    rs4=oConn.Execute(sqltext4);
	if (!rs4.EOF) {	   
	tenthietbithay=rs4("ten_tb");
	giaxuat=rs4("gia_xuat");
	}
	%>
                  <td colspan="2">Thiết bị thay:</td>
                  <td colspan="2"><%=tenthietbithay%></td>
                  <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                  <td>&#272;&atilde; làm:</td>
                  <td colspan="2">&nbsp;</td>
                  <td colspan="2">&nbsp;</td>
                  <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                  <td colspan="3">Thành tiền:</td>
                  <td colspan="2">&nbsp;</td>
                  <td colspan="2">&nbsp;</td>
                </tr>
                <tr bgcolor="#319AFF">
                  <td colspan="3" nowrap><input type="button" name="Button" value="Ghi nhật ký" onClick="window.location='../items/item_info.asp?0000'">
                      <input type="button" name="Button" value="Sửa thông tin" onClick="window.location='../items/item_edit.asp?mathietbi=<%=mathietbi2%>'">
                      <input type="button" name="Button" value="In tem" onClick="window.open('../print/print_stamp_ticket.asp?maphieu=<%=maphieu%>','printicket','toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=no,copyhistory=no,width=750,height=500')"></td>
                  <td colspan="2" nowrap>&nbsp;</td>
                  <td colspan="2" nowrap><input type="button" name="ngaylai" value="<<Quay lại" onClick="history.back()" ></td>
                </tr>
              </table>
            </div>
            </fieldset>
            <%rs.Close;rs2.Close;rs3.Close;%>
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