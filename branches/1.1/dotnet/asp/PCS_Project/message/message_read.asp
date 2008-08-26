<%@LANGUAGE="JAVASCRIPT" codepage="65001"%>
<html><!-- InstanceBegin template="/Templates/template_messager.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="content-type" content="text/html;charset=UTF-8">
<!-- InstanceBeginEditable name="doctitle" -->
<title>PCS-GROUP</title>
<!-- InstanceEndEditable -->
<!-- InstanceBeginEditable name="head" -->
<!-- InstanceEndEditable -->
</head>
<!-- #include file ="../connections/connection.inc"-->
			<!-- #include file ="../customers/style.css" -->
			<!--#include file = "../customers/javascript.js"-->
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
		  <legend  align="center"><%=Session("ten_nv")%></legend>
           <%if (Session("quyen")=="3"){%>
		    <!-- #include file="../customers/menu.asp"-->
			<%} else if (Session("quyen")=="2") {%>
			<!-- #include file="../store/menu.asp"-->
			<%} else if (Session("quyen")=="1"){%>
			<!-- #include file="../admin/menu.asp"-->
			<%} else{%>
			<%="Chưa có menu!"%>
			<%}%>
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
		     %><!-- InstanceBeginEditable name="Noidung" -->
<%// cac bien
    	var tendangnhap=Session("username");
	        madangnhap=Session("ma_nv") ;
	        tennhanvien=Session("ten_nv");
	  function trangthai()
	   {//tat ca tin nhan
	   rs=oConn.Execute("show_all_message_of '"+madangnhap+"'");
	  //nhung tin moi
	  rs1=oConn.Execute("show_new_message '"+madangnhap+"'");
	  //nhung tin da doc
	  rs2=oConn.Execute("show_read_message '"+madangnhap+"'");
	 //dem tin tat ca tin
	 rs3=oConn.Execute("count_all_message '"+madangnhap+"'");
	 //dem nhung tin moi
	 rs4=oConn.Execute("count_new_message '"+madangnhap+"'");
	 //dem nhung tin da doc
	 rs5=oConn.Execute("count_read_message '"+madangnhap+"'")
	 //setTimeout(trangthai(),100);
	 }
	 trangthai();
%> 
 <fieldset>
				 <legend align="center">
                 Chào mừng:--<%=Session("ten_nv")%>-- Bạn có(<%=rs4("dem")%>) tin nhắn mới trong số(<%=rs3("dem")%>) tin nhắn</legend>
                 <table width="100%" border="0" rules="rows">
                   <tr>
                     <td colspan="4"><div align="center" class="style1">Danh sách tin nhắn mới(<%=rs4("dem")%>)</div></td>
                     <td>&nbsp;</td>
                     <td>&nbsp;</td>
                     <td>&nbsp;</td>
                   </tr>
                   <tr bgcolor="#3399FF">
                     <td><div align="center"><span class="style21">Chủ đề</span></div></td>
                     <td><div align="center"><span class="style21">Nhóm gửi</span></div></td>
                     <td><div align="center"><span class="style21">Người gửi</span></div></td>
                     <td><div align="center"><span class="style21">Ngày gửi</span></div></td>
                   <td colspan="3"><div align="center" class="style21">
                     <div align="center">Thao tác</div>
                   </div></td>
                   </tr>
                   <%while (!rs1.EOF) {%>
				   <tr>
                     <td><span class="style23">
					 <a href="message_detail.asp?madangnhap=<%=madangnhap%>&matintuc=<%=rs1("ma_tin_tuc")%>" target="_self" class="style6" onMouseOver="this.title='<%=rs1("noi_dung")%>'">
					 <%=rs1("chu_de")%>
					 </a></span></td>
                   <td><span class="style23"><%=rs1("ten_chuc_vu")%></span></td>
                     <td><span class="style23"><%=rs1("ten_dang_nhap")%></span></td>
                     <td><span class="style23"><%=rs1("ngay_gui")%></span></td>
                   <td><a href="message_detail.asp?madangnhap=<%=madangnhap%>&matintuc=<%=rs1("ma_tin_tuc")%>" target="_self" class="style6">Đọc</a></td>
				   <td nowrap><a href="message_reply.asp?traloicho=<%=rs1("ma_nguoi_gui")%>" target="_self"  class="style5">Trả lời</a></td>
				   <td><a href="delete_message.asp?cua=<%=madangnhap%>&matintuc=<%=rs1("ma_tin_tuc")%>" target="_self" class="style6">Xóa</a></td>
				   </tr>
				   <%rs1.MoveNext}%>
				   <%rs1.Close%>
                   <tr>
                     <td colspan="4"><div align="center"><span class="style2"> Những tin nhắn đã đọc(<%=rs5("dem")%>)</span></div></td>
                     <td>&nbsp;</td>
                     <td>&nbsp;</td>
                     <td>&nbsp;</td>
                   </tr>
                   <%while (!rs2.EOF) {%>
				   <tr>
                     <td ><span class="style26">
					 <a href="message_detail.asp?madangnhap=<%=madangnhap%>&matintuc=<%=rs2("ma_tin_tuc")%>" target="_self" class="style6"onMouseOver="this.title='<%=rs2("noi_dung")%>'">
					 <%=rs2("chu_de")%>
					 </a></span></td>
                     <td><span class="style26"><%=rs2("ten_chuc_vu")%></span></td>
                     <td><span class="style26"><%=rs2("ten_dang_nhap")%></span></td>
                     <td><span class="style26"><%=rs2("ngay_gui")%></span></td>
                   <td class="style6"><a href="message_detail.asp?madangnhap=<%=madangnhap%>&matintuc=<%=rs2("ma_tin_tuc")%>" target="_self" class="style3">Đọc</a> </td>
				   <td nowrap><a href="message_reply.asp?traloicho=<%=rs2("ma_nguoi_gui")%>" target="_self" class="style5">Trả lời</a></td>
				   <td class="style6"><a href="delete_message.asp?cua=<%=madangnhap%>&matintuc=<%=rs2("ma_tin_tuc")%>" target="_self" class="style4" >Xóa</a></td>
				   </tr>
				    <%rs2.MoveNext}%>
					 <%rs2.Close%>
					 <%rs4.Close;rs3.Close;rs5.Close;%>
                 </table>
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