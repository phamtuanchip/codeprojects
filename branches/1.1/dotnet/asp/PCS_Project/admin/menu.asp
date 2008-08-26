<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	       <SCRIPT language=JavaScript type=text/javascript>
			function sommaire_showhide(tableau, trigger, somimagename) {
				if (document.getElementById(tableau).style.display == "none" && trigger!="nok") {
					document.getElementById(tableau).style.display = "block";
					document.images[somimagename].src="../images/up.gif";
				}
				else {
					var reg= new RegExp("../images/up.gif$","gi");
					if (reg.test(document.images[somimagename].src)) {
						document.images[somimagename].src="../images/down.gif";
					}
					document.getElementById(tableau).style.display = "none";
				}
			}
			</SCRIPT>
          
           <link href="/stylesheet/Default.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
body,td,th {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 12px;
}
-->
</style><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
          <TBODY>
             <TR>
                  <TD>
				  	  <A  href="../default.asp"><IMG src="../images/icon_home.gif"  border=0></A>&nbsp;
					  <A href="../default.asp" class="Link">Trang chủ</A>
				  </TD>
            </TR>
            
           	 <TR height=4>
	             <TD></TD>
   	         </TR>
    	     <TR height=4>
  	              <TD></TD>
   	        </TR>
			
			<TR style="CURSOR: pointer" 
                          onclick="sommaire_showhide('sommaire-2','nok','sommaireupdown-2');sommaire_showhide('sommaire-3','nok','sommaireupdown-3');sommaire_showhide('sommaire-4','nok','sommaireupdown-4'); sommaire_showhide('sommaire-1','ok','sommaireupdown-1')">
              
      <TD><IMG 
                              src="../images/icon_community.gif" width="20" height="20" 
                              border=0><%=Session("username")%><IMG 
                              src="../images/down.gif" name=sommaireupdown-1 width="9" height="4" border=0 
                              align=bottom 
                              id=sommaireupdown-1></TD>
            </TR>

           	 <TR height=4>
	             <TD></TD>
   	         </TR>
    	     <TR height=4>
  	              <TD></TD>
   	        </TR>

            <TR id=sommaire-1 name="sommaire-1">
              <TD><table width="159" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <!--Quản lý tài khoản--->
            <td width="26">&nbsp;</td>
            <td width="10"><img src="../images/tree-T.gif" width="8" height="15"  border=0></td>
            <td width="232"><a href="../admin/Changepass.asp" class="BoxTitle">Đổi mật khẩu</a></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><img src="../images/tree-T.gif" width="8" height="15"  border=0></td>
            <td><a href="../message/message_send.asp" class="BoxTitle">Gửi tin nhắn</a></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><img src="../images/tree-T.gif" width="8" height="15"  border=0></td>
            <td><a href="../message/message_read.asp" class="BoxTitle">Đọc tin nhắn</a></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><img src="../images/tree-T.gif" width="8" height="15"  border=0></td>
            <td><a href="../admin/admin.asp" class="BoxTitle">Về trang quản lý</a></td>
          </tr>
        </table></TD>
            </TR>
            <TR style="CURSOR: pointer" 
                          onclick="sommaire_showhide('sommaire-1','nok','sommaireupdown-1');sommaire_showhide('sommaire-3','nok','sommaireupdown-3');sommaire_showhide('sommaire-4','nok','sommaireupdown-4'); sommaire_showhide('sommaire-2','ok','sommaireupdown-2')">
              
      <TD><IMG 
                              src="../images/som_downloads.gif" 
                              border=0>&nbsp;<span class="Link">Quản lý nhân viên</span><IMG 
                              src="../images/down.gif" name=sommaireupdown-2 width="9" height="4" border=0 
                              align=bottom 
                              id=sommaireupdown-2></TD>
            </TR>

           	 <TR height=4>
	             <TD></TD>
   	         </TR>
    	     <TR height=4>
  	              <TD></TD>
   	        </TR>

            <TR id=sommaire-2 name="sommaire-2">
              <TD><table width="155" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <!--Thêm chúc năng--->
            <td width="25">&nbsp;</td>
            <td width="9"><img src="../images/tree-T.gif" width="7" height="14"  border=0></td>
            <td width="121"><a href="../admin/Addnv.asp" class="BoxTitle">Thêm nhân viên </a></td>
          </tr>
          <tr> 
            <td>&nbsp;</td>
            <td><img src="../images/tree-T.gif" width="7" height="14"  border=0></td>
            <td><a href="../admin/admin.asp" class="BoxTitle">Danh mục nhân viên</a></td>
          </tr>
          <tr> 
            <td>&nbsp;</td>
            <td><img src="../images/tree-T.gif" width="7" height="14"  border=0></td>
            <td><a href="../admin/Addquyen.asp" class="BoxTitle">Thêm quyền</a></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><img src="../images/tree-T.gif" width="7" height="14"  border=0></td>
            <td><a href="#" class="BoxTitle">Báo cáo doanh thu</a></td>
          </tr>
          <tr> 
            <td>&nbsp;</td>
            <td><img src="../images/tree-T.gif" width="7" height="14"  border=0></td>
            <td><a href="../admin/Report.asp" class="BoxTitle">Báo cáo tùy chọn</a></td>
          </tr>
        </table></TD>
            </TR>
            <TR style="CURSOR: pointer" 
                          onclick="sommaire_showhide('sommaire-1','nok','sommaireupdown-1');sommaire_showhide('sommaire-2','nok','sommaireupdown-2');sommaire_showhide('sommaire-4','nok','sommaireupdown-4'); sommaire_showhide('sommaire-3','ok','sommaireupdown-3')">
              
      <TD><IMG 
                              src="../images/favoritos.gif" 
                              border=0> <span class="Link">Quản lý tin tức</span><IMG 
                              src="../images/down.gif" name=sommaireupdown-3 width="9" height="4" border=0 
                              align=bottom 
                              id=sommaireupdown-3></TD>
            </TR>

           	 <TR height=4>
	             <TD></TD>
   	         </TR>
    	     <TR height=4>
  	              <TD></TD>
   	        </TR>

            <TR id=sommaire-3 name="sommaire-3">
              <TD><table width="155" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td width="25">&nbsp;</td>
            <td width="9"><img src="../images/tree-T.gif" width="7" height="14"  border=0></td>
            <td width="121"><a href="../new/new_manager.asp" class="BoxTitle">Danh sách tin tức</a></td>
          </tr>
          <tr> 
            <td>&nbsp;</td>
            <td><img src="../images/tree-T.gif" width="7" height="14"  border=0></td>
            <td><a href="../new/new_manager.asp" class="BoxTitle">Thêm tin tức mới</a></td>
          </tr>
          <tr> 
            <td>&nbsp;</td>
            <td><img src="../images/tree-T.gif" width="7" height="14"  border=0></td>
            <td><a href="../feedback/Feedback_manager.asp" class="BoxTitle">&Yacute; kiến khách hàng</a></td>
          </tr>
        </table></TD>
            </TR>
            <TR style="CURSOR: pointer" 
                          onclick="sommaire_showhide('sommaire-1','nok','sommaireupdown-1');sommaire_showhide('sommaire-2','nok','sommaireupdown-2');sommaire_showhide('sommaire-3','nok','sommaireupdown-3'); sommaire_showhide('sommaire-4','ok','sommaireupdown-4')">
              
      <TD><IMG 
                              src="../images/icon_members.gif" 
                              border=0><span class="Link">Quản lý dịch vụ</span><IMG 
                              src="../images/down.gif" name=sommaireupdown-4 width="9" height="4" border=0 
                              align=bottom 
                              id=sommaireupdown-4></TD>
            </TR>

           	 <TR height=4>
	             <TD></TD>
   	         </TR>
    	     <TR height=4>
  	              <TD></TD>
   	        </TR>

            <TR id=sommaire-4 name="sommaire-4">
              
      <TD> 
        <table width="155" border="0" cellpadding="0" cellspacing="0">
          <tr> 
            <td width="13%">&nbsp;</td>
            <td width="4%"><img src="../images/tree-T.gif" width="7" height="14"  border=0></td>
            <td width="83%"><a href="../admin/Services.asp" class="BoxTitle">Danh mục dich vụ</a></td>
          </tr>
          <tr> 
            <td>&nbsp;</td>
            <td><img src="../images/tree-T.gif" width="7" height="14"  border=0></td>
            <td><a href="../admin/AddServices.asp" class="BoxTitle">Thêm dịch vụ mới</a></td>
          </tr>
          <tr> 
            <td>&nbsp;</td>
            <td><img src="../images/tree-T.gif" width="7" height="14"  border=0></td>
            <td><a href="../admin/Categories.asp" class="BoxTitle">Danh mục loại tb</a></td>
          </tr>
          <tr> 
            <td>&nbsp;</td>
            <td><img src="../images/tree-T.gif" width="7" height="14"  border=0></td>
            <td><a href="../admin/AddCategories.asp" class="BoxTitle">Thêm loại tb mới</a></td>
          </tr>
          <tr> 
            <td>&nbsp;</td>
            <td><img src="../images/tree-T.gif" width="7" height="14"  border=0></td>
            <td><a href="../admin/agency.asp" class="BoxTitle">Danh mục hãng SX</a></td>
          </tr>
          <tr> 
            <td>&nbsp;</td>
            <td><img src="../images/tree-T.gif" width="7" height="14"  border=0></td>
            <td><a href="../admin/Add_agency.asp" class="BoxTitle">Thêm hãng SX</a></td>
          </tr>
          <tr> 
            <td>&nbsp;</td>
            <td><img src="../images/tree-T.gif" width="7" height="14"  border=0></td>
            <td><a href="../admin/Supplies.asp" class="BoxTitle">Danh mục nhà CC</a></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><img src="../images/tree-T.gif" width="7" height="14"  border=0></td>
            <td><a href="../admin/AddSupplies.asp" class="BoxTitle">Thêm nhà cung cấp</a></td>
          </tr>
        </table>      </TD>
            </TR>
          <TD><IMG src="../images/Stopsign.bmp" 
                              border=0><a href="../logout.asp" class="Link">Đăng xuất</a></TD>
            </TR>
          </TBODY>
</TABLE>
      
<SCRIPT language=JavaScript type=text/javascript>sommaire_showhide('sommaire-1','nok','sommaireupdown-1');sommaire_showhide('sommaire-2','nok','sommaireupdown-2');sommaire_showhide('sommaire-3','nok','sommaireupdown-3');sommaire_showhide('sommaire-4','nok','sommaireupdown-4');;</SCRIPT>

