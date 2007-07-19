<%@LANGUAGE="JAVASCRIPT" codepage ="65001"%>
<html >
<head>
<!--<meta  http-equiv="refresh" content="100,message_detail.asp"> -->
<meta http-equiv="content-type" content="text/html;charset=UTF-8">
<title>PCS</title>
<!--#include file="style.css" -->
<!--#include file = "../Connections/Connection.inc"-->
<!--#include file = "javascript.js"-->
<style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-size: 18px;
}
.style2 {
	color: #336699;
	font-size: 18px;
}
.style3 {color: #31659C}
.style4 {color: #FF0000}
.style5 {font-size: 12px}
.style6 {color: #FF0000; font-size: 12px; }
.style21 {color: #FFFFFF; font-size: 16; font-weight: bold; }
.style23 {color: #FF0000; font-size: 12; }
.style26 {color: #31659C; font-size: 12; }
-->
</style>
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
            <table width="100%" border="1" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><div align="center"></div></td>
                  </tr>
                  <tr>
                    <td><div align="center">Đổi mật khẩu</div></td>
                  </tr>
                   <%	var madangnhap=Request.Form("tendangnhap");%>

                  <tr>
                    <td><div align="center"><a href="../message/message_send.asp">Gui  tin nhắn</a></div></td>
                  </tr>
                  <tr>
                    <td><div align="center"><a href="../customers/default_customers.asp" target="_self">Đọc tin nhắn</a></div></td>
                  </tr>
                </table>
				
              </div>
			<div align="center">
			  <legend  align="center"><a href="../logout.asp">Đăng Xuất</a></legend>
			  </div>
		  </fieldset> 
        
		  <fieldset>
		  <div align="center">
            <legend align="center">Bảng chọn</legend>
              <table border="1" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="0"><div align="center">*Sử lý phiếu </div></td>
                </tr>
                <tr>
                  <td height="0"><div align="left"><a href="search_ticket.asp" target="_blank">Tìm kiếm phiếu</a></div></td>
                </tr>
                <tr>
                  <td height="0"><div align="left"><a href="search_customers.asp">Lập phiếu mới </a></div></td>
                </tr>
                <tr>
                  <td height="0"><div align="left"><a href="total_of_ticket.asp">Thống kê phiếu</a></div></td>
                </tr>
                <tr>
                  <td height="0"><div align="center">*Khách hàng</div></td>
                </tr>
                <tr>
                  <td height="0"><div align="left"><a href="search_customers_adv.asp">Tìm kiếm khách hàng</a></div></td>
                </tr>
                <tr>
                  <td height="0"><div align="left">Ý kiến khách hàng</div></td>
                </tr>
                <tr>
                  <td height="0"><div align="left"><a href="show_all_customer.asp">Thống kê khách hàng</a></div></td>
                </tr>
                <tr>
                  <td height="0"><div align="center">*Thiết Bị</div></td>
                </tr>
                <tr>
                  <td height="0"><div align="left"><a href="../items/search_items.asp">Tìm kiếm thiết bị</a></div></td>
                </tr>
                <tr>
                  <td height="0"><div align="left">Ghi nhật ký</div></td>
                </tr>
                <tr>
                  <td height="0"><div align="left">Thống kê</div></td>
                </tr>
              </table>
              <table width="100%" border="1" cellpadding="0" cellspacing="0">
              <tr>
                <td height="3">????</td>
              </tr>
              <tr>
                <td height="2">&nbsp;</td>
              </tr>
              <tr>
                <td height="2">                
              </tr>
              <tr>
                <td height="8">&nbsp;</td>
              </tr>
              <tr>
                <td height="15">&nbsp;</td>
              </tr>
            </table>
        </div>
      </fieldset>

</th>
          <td width="79%"><table width="98%"  border="0" cellpadding="00" cellspacing="0">
            <tr>
              <td width="4%">&nbsp;</td>
              <td width="96%" valign="top">
                 <p>
                     <%
	var tendangnhap=Session("username");
	     madangnhap=Session("ma_nv") ;
		
%> 
                 </p>

                 <form action="default_customers.asp" method="post" name="hienngay" id="hienngay">
                   <div align="right">Hôm nay ngày
                     <input name="ngay" type="text" id="ngay" size="8">              
                   </div>
                 </form>
                 <p>&nbsp;</p>
                 <p>Chào mừng:<%=Session("ten_nv")%> </p>
                 <p>&nbsp; </p>
                 <p></p>
                 <form action="" method="post" name="trungtam" id="trungtam">
				 <%rs=oConn.Execute("select * from PHIEUNHAN_TB")%>
				 <%while (!rs.EOF) { %>
				 <%=rs("ma_phieu_nhan")%>
				 <%rs.MoveNext;}rs.Close;%>
				 
                 </form>
				 
                 <p>&nbsp;</p>
                 <p>
                    </p>
   
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
</html>
