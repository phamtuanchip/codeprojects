<%@LANGUAGE="JAVASCRIPT" codepage = 65001%>
<html >
<head>
<!--<meta  http-equiv="refresh" content="100,message_detail.asp"> -->
<meta http-equiv="content-type" content="text/html;charset=UTF-8">
<title>PCS</title>
<!--#include file="../customers/style.css" -->
<!--#include file="../customers/javascript.js" -->
<!--#include file = "../Connections/Connection.inc"-->
<style type="text/css">
<!--
.style1 {color: #FF0000}
.style2 {color: #FFFFFF}
.style3 {color: #996633}
-->
</style>
</head>
<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="" onLoad="MM_preloadImages('../admin/images/menu_home_11.gif')" >
<div align="center"> 
  <p class="textcoppyright">&nbsp;</p>
  <table width="301" height="100" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td width="301"><div align="center">
        <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="770" height="178">
          <param name="movie" value="../admin/images/logo.swf">
          <param name="quality" value="high"><param name="LOOP" value="false">
          <embed src="../admin/images/logo.swf" width="770" height="178" loop="false" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash"></embed>
        </object>
      </div></td>
    </tr>
  </table>
  <table width="770" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="210" height="47" background="../admin/images/n-m02.jpg"><img src="../admin/images/vd.gif" width="180" height="47"></td>
      <td width="560" background="../admin/images/n-m02.jpg"><div align="left">
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
            <td width="2%"><div align="right"><img src="../admin/images/vd1.jpg" width="10" height="47"></div></td>
          </tr>
        </table>
      </div></td>
    </tr>
  </table>
  <table width="770" height="211" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td colspan="2" background="../admin/images/bg01.gif"><table width="100%" height="57" border="0" cellpadding="0" cellspacing="0">
        <tr valign="top">
          <th width="200">
		  
		  <fieldset ><div align="center">
		  <legend  align="center">TUANP</legend>
            <table width="100%" border="1" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><div align="center"></div></td>
                  </tr>
                  <tr>
                    <td><div align="center">Đổi mật khẩu</div></td>
                  </tr>
                   <%var madangnhap="kt001";%>
                  <tr>
                    <td><div align="center"><a href="message_send.asp?tu=<%=madangnhap%>">Gửi tin nhắn</a></div></td>
                  </tr>
                </table>
				
              </div>
			<legend  align="center">Đăng Xuất</legend>
             </fieldset> 
        
		  <fieldset>
		  <div align="center">
            <legend align="center">Bảng chọn</legend>
			<form action="../customers/search_tickets_result.asp" method="post" name="timmaphieu" id="timmaphieu">
              <table border="1" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="29">
				  <a href="../admin/default.asp" target="_top" onClick="MM_nbGroup('down','group1','menu_home','',1)" onMouseOver="MM_nbGroup('over','menu_home','../admin/images/menu_home_11.gif','',1)" onMouseOut="MM_nbGroup('out')"> 
				   <img src="../admin/images/menu_home_01.gif" alt="" name="menu_home" border="0" onload=""></a> 
				  </td>
                </tr>
                <tr>
                  <td height="30"><div align="center">Tìm kiếm phiếu</div></td>
                </tr>
                <tr>
                  <td height="59">
				    <div align="center">
				      <input name="maphieu" type="text" id="maphieu" size="14" value="Nhập Mã Phiếu" onFocus="value=''">                    
				      </div></td>
                </tr>
                <tr>
                  <td height="29"><div align="center">
                    <input name="timkh" type="submit" id="timkh" value="Tìm">
                  </div></td>
                </tr>
                <tr>
                  <td height="29"><div align="center"><a href="../customers/insert_new_ticket.asp">Lập phiếu mới</a></div></td>
                </tr>
              </table>
              </form>
	
<form action="../customers/search_customers_result.asp" method="post" name="timten" id="timten">
<table width="100%" border="1" cellpadding="0" cellspacing="0">
              <tr>
                <td height="3">
				<div align="center" title="Nhập thiết bị với những khách hàng quen">
				   Nhập thiết bị của..
				  </marquee>
				</div></td>
              </tr>
              <tr>
                <td height="2"><div align="center">
                  <input name="tenkhachhang" type="text" id="tenkhachhang" size="14" value="Nhập Tên Khách" onFocus="value=''">
                </div></td>
              </tr>
              <tr>
                <td height="2"><div align="center">
                  <div align="center">
                    <input name="timkh" type="submit" id="timkh" value="Tìm">
                  </div>
                </tr>
              <tr>
                <td height="8"><div align="center">
				<a href="../customers/default_customers.asp?trangthaitintuc=">nhung tin moi</a></div></td>
              </tr>
              <tr>
                <td height="15"><div align="center">nhung tin da doc </div></td>
              </tr>
            </table>
          </form>
        </div>
      </fieldset>

</th>
          <td width="79%"><table width="98%" height="100%" border="0" cellpadding="00" cellspacing="0">
            <tr>
              <td width="4%">&nbsp;</td>
              <td width="96%" valign="top">
                 <p>
                     <%// Phan trang
	rs.CursorLocation = 3;
	 //4 nhan vien 1 trang
	rs.PageSize = 2;
	//Thao tac voi tin nhan
	var tennhanvien="TuanP";
	//ma nhan vien khi dang nhap thanh cong
	var madangnhap="kt001";
	    madangnhap=Request.QueryString("tu")
	var sqltext1 ;
	var sqltext2 ;
	var rs1=Server.CreateObject("ADODB.Recordset");
	var rs2=Server.CreateObject("ADODB.Recordset");
	var rs3=Server.CreateObject("ADODB.Recordset");    
	var rs4=Server.CreateObject("ADODB.Recordset");  
	//tat ca tin nhan
	rs1=oConn.Execute("show_all_message_instore ");
	//nhung tin moi
	//rs1=oConn.Execute("select * from TINTUC '"+madangnhap+"'");
	//nhung tin da doc rs2=oConn.Execute("show_read_message '"+madangnhap+"'");
	//dem tin tat ca tin 	
	//dem nhung tin moi
	rs=oConn.Execute("count_new_message '"+madangnhap+"'");
	
	rs3=oConn.Execute("count_all_message '"+madangnhap+"'");
	rs4=oConn.Execute("count_new_message '"+madangnhap+"'");
	var rsCurrentPage;
	var rsPageCount;
	var i;
	var j;
	var p;

	rsCurrentPage = Request.QueryString("page");	
	if (isNaN(rsCurrentPage)) {
		rsCurrentPage = 1;
	}
	// Kiem tra tinh hop le cua so trang
		rsPageCount = rs.PageCount;
		if (rsCurrentPage > 0 && rsCurrentPage <= rsPageCount)
		{
			rs.AbsolutePage = rsCurrentPage;
		} 		
%> 
                    Chao mung:<%=madangnhap%> den voi phan Quan ly tin nhan</p>
                 <%rs1=oConn.Execute("select count(ma_tin_tuc) dem from TINTUC")%>
				 <p>Hien nay trong CSDL co (<%=rs1("dem")%>) tin nhan</p>
                 <%rs1=oConn.Execute("select count(ma_tin_tuc) dem  from TINTUC where trang_thai_tin=0")%>
				 <p>voi (<%=rs1("dem")%>) tin da doc</p>
				 <%rs1=oConn.Execute("select count(ma_tin_tuc)dem  from TINTUC where trang_thai_tin=1")%>
                 <p>va (<%=rs1("dem")%>) tin chua doc</p>
				 <%rs1=oConn.Execute("select count(ma_tin_tuc) dem from TINTUC where daxoa=0")%>
                 <p>cong them (<%=rs1("dem")%>) tin trong thung rac :D &gt;&gt;xoa khoi thung rac OK?</p>
                 <%rs1.Close%>
				 
				 <table width="100%" border="1">
                   <tr>
                     <td width="285">Ten cac nhom </td>
                     <td width="145">so luong gui </td>
                     <td width="113">&nbsp;</td>
                   </tr>
				   <%rs1=oConn.Execute("select * from CHUCVU")%>
                   <%while (!rs1.EOF){%>
				   <tr>
				     <%rs2=oConn.Execute("count_#message_of_group "+rs1("ma_chuc_vu"))%>
                     <td><%=rs1("ten_chuc_vu")%></td>
                     <td><%=rs2("dem")%><%rs2.Close%></td>
                     <td>&nbsp;</td>
                   </tr>
				   <%rs1.MoveNext}%>
				   <%rs1.Close%>
                   <tr>
                     <td>&nbsp;</td>
                     <td>&nbsp;</td>
                     <td>&nbsp;</td>
                   </tr>
                 </table>                 <p>&nbsp;</p>
                 
                 <table width="100%" border="0">
                   <tr bgcolor="#3366CC">
                     <td colspan="7"><span class="style2">nhung tin chua doc </span></td>
                   </tr>
                   <tr>
                     <td width="20%">chu de </td>
                     <td width="26%">nhom gui </td>
                     <td width="26%">nguoi gui </td>
                     <td width="28%">ngay gui </td>
                     <td colspan="3">Thao tac </td>
                   </tr>
                   <%rs1=oConn.Execute("show_all_message_ReadOrNot 1")%>
				   <%while (!rs1.EOF) {%>
                   <tr>
                     <td height="43"><%=rs1("chu_de")%></td>
                     <td><%=rs1("nhom_gui")%></td>
                     <td height="43"><%=rs1("bi_danh")%></td>
                     <td height="43"><%=rs1("ngay_gui")%></td>
                     <td width="12%" height="43"><a href="message_detail.asp?madangnhap=<%=madangnhap%>&matintuc=<%=rs1("ma_tin_tuc")%>" target="_blank">doc tin </a></td>
                     <td width="7%"><a href="message_send.asp?tu=<%=madangnhap%>&traloicho=<%=rs1("ma_nguoi_gui")%>" target="_blank">tra loi</a></td>
                     <td width="7%"><a href="delete_message.asp?cua=<%=madangnhap%>&matintuc=<%=rs1("ma_tin_tuc")%>" target="_self">xoa</a></td>
                   </tr>
                   <%rs1.MoveNext}%>
                   <%rs1.Close%>
                   <tr bgcolor="#FFCC99">
                     <td height="43" colspan="7"><span class="style3">nhung tin da doc </span></td>
                   </tr>
				   <%rs2=oConn.Execute("show_all_message_ReadOrNot 0")%>
                   <%while (!rs2.EOF) {%>
                   <tr>
                     <td ><%=rs2("chu_de")%></td>
                     <td><%=rs2("nhom_gui")%></td>
                     <td><%=rs2("bi_danh")%></td>
                     <td><%=rs2("ngay_gui")%></td>
                     <td><a href="message_detail.asp?madangnhap=<%=madangnhap%>&matintuc=<%=rs2("ma_tin_tuc")%>" target="_blank">doc tin</a> </td>
                     <td><a href="message_send.asp?tu=<%=madangnhap%>&traloicho=<%=rs2("ma_nguoi_gui")%>" target="_blank">tra loi</a></td>
                     <td><a href="delete_message.asp?cua=<%=madangnhap%>&matintuc=<%=rs2("ma_tin_tuc")%>" target="_self" >xoa</a></td>
                   </tr>
				    <%rs2.MoveNext}%>
					<%rs2.Close%>
                   <tr>
				    
                     <td colspan="7" bgcolor="#99CC99" ><span class="style1">nhung tin dan nam trong thung rac ! </span></td>
                     </tr>
					 <%rs2=oConn.Execute("show_all_message_ReadOrNot 1")%>
                   <%while (!rs2.EOF) {%>
                   <tr>
                     <td ><%=rs2("chu_de")%></td>
                     <td><%=rs2("nhom_gui")%></td>
                     <td><%=rs2("bi_danh")%></td>
                     <td><%=rs2("ngay_gui")%></td>
                     <td><a href="message_detail.asp?madangnhap=<%=madangnhap%>&matintuc=<%=rs2("ma_tin_tuc")%>" target="_blank">doc tin</a> </td>
                     <td><a href="message_send.asp?tu=<%=madangnhap%>&traloicho=<%=rs2("ma_nguoi_gui")%>" target="_blank">tra loi</a></td>
                     <td><a href="delete_message.asp?cua=<%=madangnhap%>&matintuc=<%=rs2("ma_tin_tuc")%>" target="_self" >xoa</a></td>
                   </tr>
                   <%rs2.MoveNext}%>
                   <%rs2.Close%>
                 </table>                 <p>&nbsp; </p>
                 <p>&nbsp;</p>
                 <p>&nbsp;</p>
                 <p>&nbsp;</p>
                 <p>
                      <%	// Hien thi phan duyet phan trang
	 ShowPageNavigation(rsCurrentPage, rsPageCount);
	// rs.Open;
%>
                    </p>
                 <form name="viewFrm" method="get" action="../customers/search_tickets.asp">
    <input type="hidden" name="page" value="<%=rsCurrentPage%>"/>
</form>
<%	
	function ShowPageNavigation(rsCurrentPage, rsPageCount) {
		Response.Write("<center><table><tr><td><strong><font color=#cccccc>");
		// link toi trang dau va trang truoc
		if ((rsCurrentPage != 1) && (rsCurrentPage != 0)) {
			Response.Write("<a href=JavaScript:setValue(1);>Trang &#273;&#7847;u</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
			Response.Write("<a href=JavaScript:setValue(" + (rsCurrentPage - 1) + ");>Tr&#432;&#7899;c</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
			}
		else		
		{
			Response.Write("Trang &#273;&#7847;u&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tr&#432;&#7899;c&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
		}
		//link toi trang ke tiep va trang cuoi
		if (rsCurrentPage < rsPageCount) {
			Response.Write("<a href=JavaScript:setValue(" + (parseInt(rsCurrentPage) + parseInt(1)) + ");>Sau</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
			Response.Write("<a href=JavaScript:setValue(" + rsPageCount + ");>Trang cu&#7889;i</a>");
			}
		else
		{
			Response.Write("Sau&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
			Response.Write("Trang cu&#7889;i");
		}
		
		Response.Write("</font></strong></td></tr><tr><td><strong><center><font color=#cccccc>");
		Response.Write("| ");
		// link toi tung trang
		for (p = 1; p <= rsPageCount; p++ ) {
			if (rsCurrentPage != p) {
				Response.Write("<a href=JavaScript:setValue(" + p + ");>" + p + "</a> | ");
			}
			else
			{
				Response.Write("<b>" + p + "</b>" + " | ");
			}
		}
		Response.Write("</font></center></strong></td></tr></table></center>");
	}
	rs.Close;
%>
<script language="JavaScript" type="text/JavaScript">
	function setValue(page) 
	{
			viewFrm.page.value=page; 
			viewFrm.submit();
	}
</script>
            </td>
              </tr>
          </table>
            </td>
        </tr>
      </table></td>
      <td width="10" bgcolor="#32aca8"><img src="../admin/images/d-p01.gif" width="10" height="30"></td>
    </tr>
  </table>
  <table width="770" height="74" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td height="74" background="../admin/images/n-d01.jpg"><div align="center" class="textcoppyright">COPYRIGHT @ PCS GROUP C0411G<img src="../admin/images/n-d01.jpg" width="10" height="70"></div></td>
    </tr>
  </table>
</div>
</body>
</html>
