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
<% mathietbi=Request.QueryString("mathietbi");		 %>
<%rs=oConn.Execute("select * from KHOTHIETBI_KH where ma_tb_kh='"+mathietbi+"'")%>
          <fieldset>
		  <legend align="center">Chào mừng:<%=Session("ten_nv")%> sửa thông tin thiết bị</legend>
<form action="save_item_edit.asp" method="post" name="suatb" id="suatb">
                    <table width="89%" height="238" border="1" cellpadding="0" cellspacing="0" >
                      <tr bgcolor="#319AFF">
                        <td colspan="6" bgcolor="#009933"><div align="center"> &nbsp;</div></td>
                      </tr>
                      <tr>
                        <td width="142" nowrap>Mã thiết bị</td>
                        <td width="110" colspan="-1">Loại thiết bị</td>
                        <td colspan="2">Loại dịch vụ</td>
                      </tr>
                      <tr>
                        <td nowrap>
                          <input name="mathietbi" type="text" id="mathietbi" size="10"  readonly="1"value="<%=mathietbi%>"></td>
                        <td colspan="-1"><select name="maloaithietbi" id="maloaithietbi" >
                          <% rs3=oConn.Execute("select * from LOAITHIETBI");%>
                          <option >Chọn một</option>
                          <% while(!rs3.EOF){%>
                          <option  value="<%=rs3("ma_loai_tb")%>"><%=rs3("ten_loai_tb")%> </option>
                          <%rs3.MoveNext;}%>
                        </select></td>
                        <td colspan="2"><select name="maloaidicvu" id="maloaidicvu" >
                          <%rs4=oConn.Execute("select * from DICHVU")%>
                          <option  value="">Chọn một</option>
                          <%while(!rs4.EOF){%>
                          <option value="<%=rs4("ma_loai_dv")%>"><%=rs4("ten_loai_dv")%></option>
                          <%rs4.MoveNext;} rs4.Close;%>
                        </select></td>
                      </tr>
                      <tr>
                        <td nowrap>&nbsp;</td>
                        <td colspan="2">&nbsp;                        </td>
                      </tr>
                      <tr>
                        <td nowrap>Tên thiết bị</td>
                        <td colspan="2"><input name="tenthietbi" type="text" id="tenthietbi" size="48"  value="<%=rs("ten_tb")%>"></td>
                      </tr>
                      <tr>
                        <td nowrap>Chi tiết</td>
                        <td colspan="2"><textarea name="chitietthietbi" cols="40" id="chitietthietbi" <%=rs("chi_tiet")%>></textarea></td>
                      </tr>
                      <tr>
                        <td nowrap>Serial</td>
                        <td colspan="-1"><input name="serial" type="text" id="serial" size="10" value="<%=rs("serial")%>">
                          Số lượng</td>
                        <td width="146" colspan="-1">
						<input name="soluongthietbi" type="text" id="soluongthietbi" size="4" value="<%=rs("so_luong_nhan")%>"></td>
                        <td width="167">&nbsp;</td>
                      </tr>
                      <tr bgcolor="#31AEAD">
                        <td colspan="5" bgcolor="#009A31"><div align="center">
                            <input type="submit" name="Submit" value="Cập nhật">
                            <input type="reset" name="Reset" value="Làm lại">
                            <input type="button" name="Button" value="In phiếu này" onClick="window.open('../print/print_ticket.asp?maphieu=','printicket','toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=no,copyhistory=no,width=600,height=500')">
                            <input type="button" name="Button" value="Hoàn tất" onClick="window.location='default_customers.asp'">
                        </div></td>
                      </tr>
                    </table>
</form>
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