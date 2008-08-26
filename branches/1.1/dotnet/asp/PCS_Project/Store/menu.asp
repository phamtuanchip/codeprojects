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
                          onclick="sommaire_showhide('sommaire-2','nok','sommaireupdown-2');sommaire_showhide('sommaire-3','nok','sommaireupdown-3');sommaire_showhide('sommaire-4','nok','sommaireupdown-4');sommaire_showhide('sommaire-5','nok','sommaireupdown-5');sommaire_showhide('sommaire-6','nok','sommaireupdown-6'); sommaire_showhide('sommaire-1','ok','sommaireupdown-1');">
              <TD><IMG 
                              src="../images/icon_community.gif" width="20" height="20" 
                              border=0>&nbsp;
                <%
					  	var MaNhanVien = Session("ma_nv");
						RS = oConn.Execute("SELECT ten_dang_nhap FROM NHANVIEN WHERE ma_nv = '"+MaNhanVien+"'");
						var TenDangNhap = RS("ten_dang_nhap");
				%>                
              				  <%=TenDangNhap%> <IMG 
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
                  <td><a href="../store/Store.asp">Về trang quản lý</a></td>
                </tr>
              </table></TD>
            </TR>
            <TR style="CURSOR: pointer" 
                          onclick="sommaire_showhide('sommaire-1','nok','sommaireupdown-1');sommaire_showhide('sommaire-3','nok','sommaireupdown-3');sommaire_showhide('sommaire-4','nok','sommaireupdown-4');sommaire_showhide('sommaire-5','nok','sommaireupdown-5');sommaire_showhide('sommaire-6','nok','sommaireupdown-6'); sommaire_showhide('sommaire-2','ok','sommaireupdown-2');">
              <TD><IMG 
                              src="../images/som_downloads.gif" 
                              border=0>&nbsp;Chức n&#259;ng <IMG 
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
                  <td width="121"><a href="../store/add_tb_kho.asp">Nhập TB</a></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><img src="../images/tree-T.gif" width="7" height="14"  border=0></td>
                  <td><a href="../store/search_items_instore.asp">Tìm kiếm</a></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><img src="../images/tree-T.gif" width="7" height="14"  border=0></td>
                  <td><a href="../store/OutDevice.asp">Xuất thiết bị</a></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><img src="../images/tree-T.gif" width="7" height="14"  border=0></td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><img src="../images/tree-T.gif" width="7" height="14"  border=0></td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><img src="../images/tree-T.gif" width="7" height="14"  border=0></td>
                  <td>&nbsp;</td>
                </tr>
              </table></TD>
            </TR>
            <TR style="CURSOR: pointer" 
                          onclick="sommaire_showhide('sommaire-1','nok','sommaireupdown-1');sommaire_showhide('sommaire-2','nok','sommaireupdown-2');sommaire_showhide('sommaire-4','nok','sommaireupdown-4'); sommaire_showhide('sommaire-5','nok','sommaireupdown-5');sommaire_showhide('sommaire-6','nok','sommaireupdown-6');sommaire_showhide('sommaire-3','ok','sommaireupdown-3');">
              <TD><IMG 
                              src="../images/favoritos.gif" 
                              border=0> Thống kê TB <IMG 
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
                  <!--Thêm chúc năng--->
                  <td width="25">&nbsp;</td>
                  <td width="9"><img src="../images/tree-T.gif" width="7" height="14"  border=0></td>
                  <td width="121"><a href="../store/ListView.asp">Hiện tất cả TB </a></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><img src="../images/tree-T.gif" width="7" height="14"  border=0></td>
                  <td><a href="#">TB hết</a></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><img src="../images/tree-T.gif" width="7" height="14"  border=0></td>
                  <td><a href="#">TB tồn</a></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><img src="../images/tree-T.gif" width="7" height="14"  border=0></td>
                  <td>TB</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><img src="../images/tree-T.gif" width="7" height="14"  border=0></td>
                  <td><a href="../store/VOrder.asp?MaNhaCungCap=all">Nhập trong tháng</a></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><img src="../images/tree-T.gif" width="7" height="14"  border=0></td>
                  <td><a href="#">Xuất trong tháng</a></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
              </table></TD>
            </TR>
            <TR style="CURSOR: pointer" 
                          onclick="sommaire_showhide('sommaire-1','nok','sommaireupdown-1');sommaire_showhide('sommaire-2','nok','sommaireupdown-2');sommaire_showhide('sommaire-3','nok','sommaireupdown-3'); sommaire_showhide('sommaire-5','nok','sommaireupdown-5');sommaire_showhide('sommaire-6','nok','sommaireupdown-6');sommaire_showhide('sommaire-4','ok','sommaireupdown-4');">
              <TD><IMG 
                              src="../images/icon_members.gif" 
                              border=0>&nbsp;Ph&acirc;n loại TB <IMG 
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
<!--Hiện danh sách thiết bị-->
<table width="100%" border="0" cellpadding="0" cellspacing="0">
<%
	RS = oConn.Execute("SELECT ma_loai_tb,ten_loai_tb FROM LOAITHIETBI");
%>
<%
while(!RS.EOF){
%>	
  <tr>
    <td width="13%">&nbsp;</td>
    <td width="4%"><img src="../images/tree-T.gif" width="7" height="14"  border=0></td>
    <td width="83%"><a href="../store/Vdevice.asp?MaLoaiThietBi=<%=RS("ma_loai_tb")%>"><%=RS("ten_loai_tb")%></a></td>
  </tr>
<%RS.MoveNext}%>  
</table>
<!--Hiện danh sách thiết bị-->			  
			  </TD>
            </TR>
<!--Mới-->
            <TR style="CURSOR: pointer" 
                          onclick="sommaire_showhide('sommaire-1','nok','sommaireupdown-1');sommaire_showhide('sommaire-2','nok','sommaireupdown-2');sommaire_showhide('sommaire-4','nok','sommaireupdown-4'); sommaire_showhide('sommaire-3','nok','sommaireupdown-3');sommaire_showhide('sommaire-6','nok','sommaireupdown-6');sommaire_showhide('sommaire-5','ok','sommaireupdown-5');">
              <TD><IMG 
                              src="../images/favoritos.gif" 
                              border=0> Nhà cung cấp <IMG 
                              src="../images/down.gif" name=sommaireupdown-3 width="9" height="4" border=0 
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
              <TD><table width="155" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <!--Thêm chúc năng--->
                  <td width="25">&nbsp;</td>
                  <td width="9"><img src="../images/tree-T.gif" width="7" height="14"  border=0></td>
                  <td width="121"><a href="#">Thêm</a></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><img src="../images/tree-T.gif" width="7" height="14"  border=0></td>
                  <td><a href="#">Xóa</a></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><img src="../images/tree-T.gif" width="7" height="14"  border=0></td>
                  <td><a href="#">Xửa</a></td>
                </tr>
              </table></TD>
            </TR>

<!--Mới-->
<!--Hãng sản xuât-->
            <TR style="CURSOR: pointer" 
                          onclick="sommaire_showhide('sommaire-1','nok','sommaireupdown-1');sommaire_showhide('sommaire-2','nok','sommaireupdown-2');sommaire_showhide('sommaire-4','nok','sommaireupdown-4'); sommaire_showhide('sommaire-3','nok','sommaireupdown-3');sommaire_showhide('sommaire-5','nok','sommaireupdown-5');sommaire_showhide('sommaire-6','ok','sommaireupdown-6');">
              <TD><IMG 
                              src="../images/favoritos.gif" 
                              border=0> Hãng sản xuất <IMG 
                              src="../images/down.gif" name=sommaireupdown-3 width="9" height="4" border=0 
                              align=bottom 
                              id=sommaireupdown-6></TD>
            </TR>

           	 <TR height=4>
	             <TD></TD>
   	         </TR>
    	     <TR height=4>
  	              <TD></TD>
   	        </TR>

            <TR id=sommaire-6 name="sommaire-6">
              <TD><table width="155" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <!--Thêm chúc năng--->
                  <td width="25">&nbsp;</td>
                  <td width="9"><img src="../images/tree-T.gif" width="7" height="14"  border=0></td>
                  <td width="121"><a href="#">Thêm</a></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><img src="../images/tree-T.gif" width="7" height="14"  border=0></td>
                  <td><a href="#">Xóa</a></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><img src="../images/tree-T.gif" width="7" height="14"  border=0></td>
                  <td><a href="3">Xửa</a></td>
                </tr>
              </table></TD>
            </TR>
 <!--Mới-->
 </TR>
			<!--ket thuc-->
			
			
            <TR>
			<TD><IMG src="../images/logout.ico" width="21" height="21"  border=0><a href="../logout.asp">Đăng xuất</a></TD>
            </TR>
</TABLE>

            
<SCRIPT language=JavaScript type=text/javascript>sommaire_showhide('sommaire-1','nok','sommaireupdown-1');sommaire_showhide('sommaire-2','nok','sommaireupdown-2');sommaire_showhide('sommaire-3','nok','sommaireupdown-3');sommaire_showhide('sommaire-4','nok','sommaireupdown-4');sommaire_showhide('sommaire-5','nok','sommaireupdown-5');sommaire_showhide('sommaire-6','nok','sommaireupdown-6');</SCRIPT>

