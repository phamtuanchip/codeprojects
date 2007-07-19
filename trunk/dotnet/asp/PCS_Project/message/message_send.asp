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
			%>
			<%rs=oConn.Execute("select * from CHUCVU");%>
			<%rs3=oConn.Execute("count_sent_message '"+madangnhap+"'");%>
			<%rs4=oConn.Execute("count_been_read_message '"+madangnhap+"'");%>
			<%rs5=oConn.Execute("count_delete_message '"+madangnhap+"'");%>
					  <form action="save_message.asp" method="post" name="guitin" id="guitin">
		      <fieldset>
			  <legend align="center">Chào mừng <%=tennhanvien%> đến với phần nhắn tin
			  </legend>
			   <center>Bạn đã gửi (<%=rs3("dem")%>) tin nhắn và có (<%=rs4("dem")%>) tin đã được đọc; (<%=rs5("dem")%>) tin đã vào thùng rác</center>
				 <%rs3.Close;rs4.Close;rs5.Close;%>
				<table width="100%"  border="1" cellpadding="0" cellspacing="0" bgcolor="#009ACE" rules="none">
                  <%var chuoi=Request.QueryString%>
                  <tr> 
                    <td width="22%">Gửi đến nhóm</td>
                    <td width="17%"><select name="nhomnhan" size="1" id="nhomnhan" tabindex="1" onChange="chon(guitin);">
                        <option value="" >----Theo Nhóm----</option>
                        <%while (!rs.EOF){
				        if(''+Request.QueryString==rs("ma_chuc_vu"))
			              {
				%>
                        <option value="<%=rs("ma_chuc_vu")%>"selected><%=rs("ten_chuc_vu")%></option>
                        <%}; else { %>
                        <option value="<%=rs("ma_chuc_vu")%>" ><%=rs("ten_chuc_vu")%></option>
                        <%}rs.MoveNext;}%>
                      </select></td>
                    <td width="24%">Tên người nhận</td>
                    <td width="37%"><select name="tennguoinhan" size="1"  id="tennguoinhan" tabindex="2"  onFocus="manguoinhan.value=this.value"  onChange="manguoinhan.value=this.value">
                        <%
	  				if(!(Request.QueryString==null))
	  					{rs.Close;
		  				 sql="select ma_nv,ten_nv from NHANVIEN where ma_chuc_vu='"+Request.QueryString+"'";
		  				 rs=oConn.Execute(sql);
		  				 if(rs.EOF) {
		         %>
                        <%rs=oConn.Execute("select * from NHANVIEN")%>
                        <option value=""  selected>----Chọn một----</option>
                        <%while (!rs.EOF){%>
                        <option value="<%=rs("ma_nv")%>"><%=rs("ten_nv")%></option>
                        <%rs.MoveNext;}%>
                        <%}else {%>
                        <option value=""  >----Chọn một----</option>
                        <%while (!rs.EOF){%>
                        <option value="<%=rs("ma_nv")%>"><%=rs("ten_nv")%></option>
                        <%rs.MoveNext;}}}rs.Close;%>
                      </select></td>
                  </tr>
                  <tr> 
                    <td>Mã người gửi</td>
                    <td><input name="manguoigui" type="text"id="manguoigui" value="<%=madangnhap%>" size="10"  readonly="1"></td>
                    <td>Mã người nhận</td>
                    <td><input name="manguoinhan"type="text" id="manguoinhan" size="10" readonly="1"></td>
                  </tr>
                  <tr> 
                    <td>Chủ đề </td>
                    <td colspan="3"><input name="chude" type="text" id="chude" size="52"tabindex="3"></td>
                  </tr>
                  <tr> 
                    <td>Nội dung</td>
                    <td colspan="3"><textarea name="noidung" cols="45" rows="8" id="noidung" tabindex="4"></textarea></td>
                  </tr>
                  <tr> 
                    <td>&nbsp;</td>
                    <td><input type="button" name="Button"  tabindex="5"value="Làm lại" onClick="window.location='message_send.asp'"></td>
                    <td><input type="submit" name="Submit" value="Gửi tin" tabindex="6" onMouseOver="kiemtra(guitin);"></td>
                    <td>&nbsp;</td>
                  </tr>
                </table>
		  </fieldset>
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