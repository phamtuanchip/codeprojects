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
           <link href="../stylesheet/store.css" rel="stylesheet" type="text/css">
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
          <TBODY>
             <TR>
                  <TD>
				  	  <A  href="../default.asp"><IMG src="../images/icon_home.gif"  border=0></A>&nbsp;
					  <A href="../default.asp">Trang chủ</A>
				  </TD>
            </TR>
            
           	 <TR height=4>
	             <TD></TD>
   	         </TR>
    	     <TR height=4>
  	              <TD></TD>
   	        </TR>
			
			<TR style="CURSOR: pointer" 
                          onclick="sommaire_showhide('sommaire-2','nok','sommaireupdown-2');sommaire_showhide('sommaire-3','nok','sommaireupdown-3');sommaire_showhide('sommaire-4','nok','sommaireupdown-4'); sommaire_showhide('sommaire-1','ok','sommaireupdown-1');sommaire_showhide('sommaire-5','nok','sommaireupdown-5');">
              
      <TD><IMG 
                              src="../images/icon_community.gif" width="20" height="20" 
                              border=0>---<b><%=Session("username")%></b>---<IMG 
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
            <td width="232"><a href="../admin/Changepass.asp">Đổi mật khẩu</a></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><img src="../images/tree-T.gif" width="8" height="15"  border=0></td>
            <td><a href="../message/message_send.asp">Gửi tin nhắn</a></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><img src="../images/tree-T.gif" width="8" height="15"  border=0></td>
            <td><a href="../message/message_read.asp">Đọc tin nhắn</a></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><img src="../images/tree-T.gif" width="8" height="15"  border=0></td>
            <td><a href="../new/new_manager.asp">Cập nhật tin tức</a></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><img src="../images/tree-T.gif" width="8" height="15"  border=0></td>
            <td><a href="../customers/default_customers.asp">Về trang quản lý</a></td>
          </tr>
        </table></TD>
            </TR>
            <TR style="CURSOR: pointer" 
                          onclick="sommaire_showhide('sommaire-1','nok','sommaireupdown-1');sommaire_showhide('sommaire-3','nok','sommaireupdown-3');sommaire_showhide('sommaire-4','nok','sommaireupdown-4'); sommaire_showhide('sommaire-2','ok','sommaireupdown-2');sommaire_showhide('sommaire-5','nok','sommaireupdown-5');">
              
      <TD><IMG 
                              src="../images/ticket.ico" 
                              border=0 width="21" height="21">&nbsp;Xử lý phiếu<IMG 
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
            <td width="121"><a href="../customers/search_tickets.asp">Tìm kiếm 
              phiếu</a></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><img src="../images/tree-T.gif" width="7" height="14"  border=0></td>
            <td><a href="../customers/search_customers.asp">Lập phiếu mới</a></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><img src="../images/tree-T.gif" width="7" height="14"  border=0></td>
            <td><a href="#">Trả phiếu</a></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
        </table></TD>
            </TR>
            <TR style="CURSOR: pointer" 
                          onclick="sommaire_showhide('sommaire-1','nok','sommaireupdown-1');sommaire_showhide('sommaire-2','nok','sommaireupdown-2');sommaire_showhide('sommaire-4','nok','sommaireupdown-4'); sommaire_showhide('sommaire-3','ok','sommaireupdown-3');sommaire_showhide('sommaire-5','nok','sommaireupdown-5');">
              
      <TD><IMG 
                              src="../images/icon_members.gif" 
                              border=0> Khách hàng<IMG 
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
            <td width="121"><a href="../customers/search_customers_adv.asp">Tìm kiếm khách hàng</a></td>
          </tr>
          <tr> 
            <td>&nbsp;</td>
            <td><img src="../images/tree-T.gif" width="7" height="14"  border=0></td>
            <td><a href="#">Ý kiến khách hàng</a></td>
          </tr>
          <tr> 
            <td>&nbsp;</td>
            <td><img src="../images/tree-T.gif" width="7" height="14"  border=0></td>
            <td><a href="../customers/show_all_customer.asp">Thốn kê khách hàng</a></td>
          </tr>
        </table></TD>
            </TR>
			<!--Thiet bi cua  khach-->
            <TR style="CURSOR: pointer" 
                          onclick="sommaire_showhide('sommaire-1','nok','sommaireupdown-1');sommaire_showhide('sommaire-2','nok','sommaireupdown-2');sommaire_showhide('sommaire-3','nok','sommaireupdown-3'); sommaire_showhide('sommaire-4','ok','sommaireupdown-4');sommaire_showhide('sommaire-5','nok','sommaireupdown-5');">
              
      <TD><IMG 
                              src="../images/item.ico"  width="21" height="21"
                              border=0>Thiết bị <IMG 
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
            <td width="83%"><a href="../items/search_items.asp">Tìm kiếm thiết bị gửi</a></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><img src="../images/tree-T.gif" width="7" height="14"  border=0></td>
            <td><a href="../store/search_items_instore.asp">Tìm kiếm thiết bị kho</a></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><img src="../images/tree-T.gif" width="7" height="14"  border=0></td>
            <td><a href="#">Ghi nhật ký</a></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><img src="../images/tree-T.gif" width="7" height="14"  border=0></td>
            <td><a href="#">Trả thiết bị</a></td>
          </tr>
		  
        </table>      </TD>
            </TR>
			<!--ket thuc-->
			<!--Me nu moi-->
            <TR style="CURSOR: pointer" 
                          onclick="sommaire_showhide('sommaire-1','nok','sommaireupdown-1');sommaire_showhide('sommaire-2','nok','sommaireupdown-2');sommaire_showhide('sommaire-3','nok','sommaireupdown-3'); sommaire_showhide('sommaire-4','nok','sommaireupdown-4');sommaire_showhide('sommaire-5','ok','sommaireupdown-5');">
              
      <TD><IMG 
                              src="../images/icon_poll.gif" 
                              border=0>Thống kê<IMG 
                              src="../images/down.gif" name=sommaireupdown-5 width="9" height="4" border=0 
                              align=bottom 
                              id=sommaireupdown-5></TD>
            </TR>

           	 <TR height=4>
	             <TD></TD>
   	         </TR>
    	     <TR height=4>
  	              <TD></TD>
   	        </TR>

            <TR id=sommaire-5 name="sommaire-5">
              
      <TD> 
        <table width="155" border="0" cellpadding="0" cellspacing="0">
          <tr> 
            <td width="13%">&nbsp;</td>
            <td width="4%"><img src="../images/tree-T.gif" width="7" height="14"  border=0></td>
            <td width="83%"><a href="../customers/show_all_ticket.asp">Thống kê phiếu</a></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><img src="../images/tree-T.gif" width="7" height="14"  border=0></td>
            <td><a href="../items/show_all_item.asp">Thống kê thiết bị</a></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><img src="../images/tree-T.gif" width="7" height="14"  border=0></td>
            <td><a href="../customers/show_all_customer.asp">Thống kê khách hàng</a></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
		  
        </table>      </TD>
            </TR>
			<!--ket thuc-->
			
			
            <TR>
			<TD><IMG src="../images/logout.ico" width="21" height="21"  border=0><a href="../logout.asp">Đăng xuất</a></TD>
            </TR>
          </TBODY>
</TABLE>
      
<SCRIPT language=JavaScript type=text/javascript>sommaire_showhide('sommaire-1','nok','sommaireupdown-1');sommaire_showhide('sommaire-2','nok','sommaireupdown-2');sommaire_showhide('sommaire-3','nok','sommaireupdown-3');sommaire_showhide('sommaire-4','nok','sommaireupdown-4');sommaire_showhide('sommaire-5','nok','sommaireupdown-5');</SCRIPT>

