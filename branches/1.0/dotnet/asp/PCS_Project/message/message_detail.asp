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
<%var madangnhap=Request.QueryString("madangnhap");
  var matintuc=Request.QueryString("matintuc");
   rs=oConn.Execute("read_message '"+madangnhap+"',"+matintuc);
   rs=oConn.Execute("message_detail '"+madangnhap+"',"+matintuc);
%>
                    <fieldset>
                    <legend align="center">Tin nhắn từ nhóm:
                    <%=rs("ten_chuc_vu")%>
                    của :
                    <%=rs("ma_nguoi_gui")%>
                    tới :
                    <%=madangnhap%>
                    </legend>
                    <div align="center"> 
                      <table width="99%" border="1" cellpadding="0" cellspacing="0" bgcolor="#009ACE" >
                        <tr> 
                          <td width="96" nowrap>Chủ đề</td>
                          <td bgcolor="#FFFFFF"> <%=rs("chu_de")%> </td>
                        <td nowrap bgcolor="#009ACE"><div align="center">Thao tác</div></td>
                        </tr>
                        <tr> 
                          <td nowrap>Nội dung  </td>
                        <td bgcolor="#FFFFFF"><%=rs("noi_dung")%></td>
                        <td bgcolor="#009ACE"><div align="center"><a href="delete_message.asp?cua=<%=madangnhap%>&matintuc=<%=matintuc%>" target="_self" class="style6">Xóa</a></div></td>
                        </tr>
                        <tr> 
                          <td nowrap>Ngày gửi:</td>
                          <td nowrap bgcolor="#FFFFFF"><%=rs("ngay_gui")%>                            <div align="right"></div></td>
                          <td width="53" nowrap bgcolor="#009ACE"><div align="center"><a href="message_reply.asp?traloicho=<%=rs("ma_nguoi_gui")%>" target="_self"  class="style5">Trả lời</a> </div></td>
                        </tr>
                      </table>
                    </div>
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