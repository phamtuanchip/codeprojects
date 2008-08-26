<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/hinhmaunguoidung.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Cấp quyền đăng nhập cho người dùng</title>
<!-- InstanceEndEditable -->
<!-- InstanceBeginEditable name="head" --><!-- InstanceEndEditable -->
</head>
<STYLE>
TD {
	FONT-SIZE: 11px; COLOR: #000000; FONT-FAMILY: Tahoma
}
A {
	COLOR: #184970
}
.cap1 {
	FONT-SIZE: 10px; COLOR: #22608e; FONT-FAMILY: HeliosExtBlack
}
#Layer1 {
	position:absolute;
	left:65px;
	top:523px;
	width:99px;
	height:18px;
	z-index:1;
}
.style1 {
	font-family: Georgia, "Times New Roman", Times, serif;
	font-size: 18px;
	color: #FFFFFF;
}
</STYLE>
<body>
<table height="100%" cellspacing="0" cellpadding="0" border="0">
  <tbody>
    <tr>
      <td style="BACKGROUND-POSITION: right top; BACKGROUND-REPEAT: repeat-y" 
    width="50%" background="images/bg1222.jpg" height="100%" 
    rowspan="10"></td>
      <td width="1" bgcolor="#000000" rowspan="10"></td>
      <td colspan="2"><table cellspacing="0" cellpadding="0" border="0">
        <tbody>
          <tr>
            <td><a href="trangchu.asp"><img src="images/banner.jpg" width="780" height="141" border="0" /></a></td>
          </tr>
          <tr>
            <td height="37"><a 
            href="#"></a><a 
            href="#"></a><a 
            href="#"></a><img src="images/menu.jpg" width="780" height="37" border="0" usemap="#Map" /></td>
          </tr>
        </tbody>
      </table></td>
      <td width="1" bgcolor="#000000" rowspan="10"></td>
      <td style="BACKGROUND-POSITION: left top; BACKGROUND-REPEAT: repeat-y" 
    width="50%" background="images/bg1223.jpg" height="100%" 
    rowspan="10"></td>
    </tr>
    <tr>
      <td valign="top" bgcolor="#32aca8" height="100%"><table height="100%" cellspacing="0" cellpadding="0" border="0">
        <tbody>
          <tr>
            <td><img src="images/cap01.jpg" /></td>
          </tr>
          <tr>
            <td width="200" valign="top" style="PADDING-LEFT: 28px; PADDING-TOP: 14px"></td>
          </tr>
          <tr>
            <%if (session("trangthai")<>true) then  ' form dang nhap he thong %>
            <form action="kiemtra.asp" method="post" name="login" id="login" >
              <td style="PADDING-LEFT: 28px; PADDING-TOP: 14px" valign="top" 
height="70"><table cellspacing="0" cellpadding="0" border="0">
                  <tbody>
                    <tr>
                      <td colspan="2"><input name="user" type="text" id="user" style="WIDTH: 88px; HEIGHT: 20px" /></td>
                    </tr>
                    <tr>
                      <td height="8"></td>
                    </tr>
                    <tr>
                      <td><input name="password" type="password" id="password" style="WIDTH: 88px; HEIGHT: 20px" /></td>
                      <td><input name="image" type="image" src="images/go.jpg" hspace="5" 
                  border="0" /></td>
                    </tr>
                  </tbody>
              </table></td>
            </form>
          </tr>
          <tr>
            <td 
          style="PADDING-RIGHT: 15px; PADDING-LEFT: 30px; PADDING-BOTTOM: 10px; PADDING-TOP: 10px" 
          width="200" height="20"><p>B&#7841;n c&oacute; th&#7875; &#273;&#259;ng k&yacute; v&#7899;i ch&uacute;ng t&ocirc;i b&#7857;ng c&aacute;ch <a href="Dangky_taikhoan.asp">b&#7845;m v&agrave;o &#273;&acirc;y</a></p></td>
          </tr>
          <tr>
            <td 
          style="PADDING-RIGHT: 15px; PADDING-LEFT: 30px; PADDING-BOTTOM: 10px; PADDING-TOP: 10px" height="20">N&#7871;u l&agrave; th&agrave;nh vi&ecirc;n b&#7841;n c&oacute; quy&#7873;n:</td>
          </tr>
          <tr>
            <td 
          style="PADDING-RIGHT: 15px; PADDING-LEFT: 30px; PADDING-BOTTOM: 10px; PADDING-TOP: 10px" height="20">- Xem h&#7879; th&#7889;ng &#273;&aacute;nh gi&aacute; ch&#7845;t l&#432;&#432;&#7907;ng </td>
          </tr>
          <tr>
            <td 
          style="PADDING-RIGHT: 15px; PADDING-LEFT: 30px; PADDING-BOTTOM: 10px; PADDING-TOP: 10px" height="20">- Xem th&ocirc;ng tin v&#7873; c&aacute;c doanh nghi&#7879;p </td>
          </tr>
          <tr>
            <td 
          style="PADDING-RIGHT: 15px; PADDING-LEFT: 30px; PADDING-BOTTOM: 10px; PADDING-TOP: 10px" height="20">- Xem s&#417; &#273;&#7891; ph&aacute;t tri&#7875;n</td>
            <%end if 'kiem tra quyen dang nhap%>
          </tr>
          <tr>
            <td><img src="images/pl01.jpg" /><br />
              <a 
            href="danhsachdoanhnghiep.asp"><img 
            src="images/thongtindn.jpg" width="200" height="20" border="0" /></a></td>
          </tr>
          <tr>
		     
            <% if ((session("quyen")=1)) then 
				'session("tentruycap")="ADMIN"
				'kiem tra quyen cua nguoi dung se dua ra menu tuong ung
			%>
            <%if (session("ma_doanhnghiep")=0) then ' kiem tra xem  co thuoc doanh nghiep hay khong%>
            <td><a href="quantri_taikhoan.asp"><img 
            src="images/quanlytaikhoan.jpg" width="200" height="20" border="0" /></a><br />
                <a 
            href="XemDanhSach.asp?loai=DoanhNghiep"><img 
            src="images/doanhnghiep.jpg" width="200" height="20" border="0" /></a><br />
                <a href="XemDanhSach.asp?loai=HoiDong"><img 
            src="images/danhsachhoidong.jpg" width="200" height="20" border="0" /></a><br />
                <a 
            href="DrawAppletMain.asp"><img 
            src="images/xemdanhgiadn.jpg" width="200" height="20" border="0" /></a><br />
                <a 
            href="quantri.asp"><img 
            src="images/thongke.jpg" width="200" height="20" border="0" /></a><br />
              <a 
            href="dangxuat.asp"><img 
            src="images/dangxuat.jpg" width="200" height="20" border="0" /></a></td>
            <% else ' khet thuc menu cua nha quan tri / den phan menu cua quan ly doanh nghiep %>
            <td><a href="suathongtinnguoidunghienthoi.asp"><img 
            src="images/admindn.jpg" width="200" height="20" border="0" /></a><br />
                <a 
            href="Tao_Moi_chodoanhnghiep.asp"><img 
            src="images/taomoichodn.jpg" width="200" height="20" border="0" /></a><br />
                <a href="Sua.asp?loai=DoanhNghiep&MaDoanhNghiep=<%=session("ma_dn")%>"><img 
            src="images/suathongtindoanhnghiep.jpg" width="200" height="20" border="0" /></a><br />
                <a href="XemDanhSach.asp?loai=SanPham&kieu=all"><img 
            src="images/danhsachsanpham.jpg" width="200" height="20" border="0" /></a><br />
                <a href="XemDanhSach.asp?loai=ThietBi&kieu=all"><img 
            src="images/danhsachthietbi.jpg" width="200" height="20" border="0" /></a><br />
                <a href="XemDanhSach.asp?loai=HoiDong"><img 
            src="images/danhsachhoidong.jpg" width="200" height="20" border="0" /></a><br />
                <a href="XemDanhSach.asp?loai=ThanhVien"><img 
            src="images/danhsachthanhvien.jpg" width="200" height="20" border="0" /></a><br />
                <a href="danhsachdiem.asp"><img 
            src="images/danhsachdiem.jpg" width="200" height="20" border="0" /></a><br />
                <a href="DanhSachHeSoTrongLuong.asp"><img 
            src="images/hesotrongluong.jpg" width="200" height="20" border="0" /></a><br />
                <a href="DrawAppletMain.asp"><img 
            src="images/xemdanhgiadn.jpg" width="200" height="20" border="0" /></a><br />
              <a 
            href="dangxuat.asp"><img 
            src="images/dangxuat.jpg" width="200" height="20" border="0" /></a></td>
            <%end if ' ket thuc phan menu cua doanh nghiep quan tri %>
            <% else ' ket thuc quyen quan tri cua he thong va doanh nghiep 
	   if session("quyen")=2 then  ' quyen la nguoi dung cua doanh nghiep	  %>
            <td><a href="suathongtinnguoidunghienthoi.asp"><img 
            src="images/taikhoannguoidung.jpg" width="200" height="20" border="0" /></a><br />
                <a href="nguoidungdangnhap.asp"><img 
            src="images/nhapdiemchosp.jpg" width="200" height="20" border="0" /></a><br />
                <a href="DrawAppletMain.asp"><img 
            src="images/xemdanhgiadn.jpg" width="200" height="20" border="0" /></a><br />
                <a href="DanhSachPhieuDiem.asp"><img 
            src="images/danhsachphieudiem.jpg" width="200" height="20" border="0" /></a><br />
              <a 
            href="dangxuat.asp"><img 
            src="images/dangxuat.jpg" width="200" height="20" border="0" /></a></td>
            <% else  'ket thuc quyen  la nguoi dung cua doanh nghiep 
			if session("quyen")=3 then ' khach hang dang nhap  %>
            <td><a href="suathongtinnguoidunghienthoi.asp"><img 
            src="images/khach.jpg" width="200" height="20" border="0" /></a><br />
                <a 
            href="DanhSach_doanhnghiep.asp"><img 
            src="images/thongtindn.jpg" width="200" height="20" border="0" /></a><br />
                <a 
            href="DrawAppletMain.asp"><img 
            src="images/xemdanhgiadn.jpg" width="200" height="20" border="0" /></a><br />
                <a 
            href="dangxuat.asp"><img 
            src="images/dangxuat.jpg" width="200" height="20" border="0" /></a><br /></td>
            <% else ' ket thuc khach hang  quyen 3 
			   'Response.Redirect("trangchu.asp") co the la oi o day !
			end if ' khong co quyen dang nhap %>
            <%end if ' ket thuc nguoi dung doanh nghiep  quyen 2 %>
            <%end if ' quyen 1%>
          </tr>
          <tr>
            <td 
          style="PADDING-RIGHT: 10px; PADDING-LEFT: 15px; PADDING-BOTTOM: 10px; COLOR: #ffffff; PADDING-TOP: 10px" 
          width="200" bgcolor="#236393" height="100%">&nbsp;</td>
          </tr>
          <tr>
            <td><img src="images/pl02.jpg" /></td>
          </tr>
          <tr>
            <td style="COLOR: #ffffff" align="middle" width="200" 
            height="81">Copyright &copy; 2005.<br />
              BKMECH.COM.VN<br />
              All rights 
              reserved</td>
          </tr>
        </tbody>
      </table></td>
      <td valign="top" background="images/bg04.jpg" height="100%"><table height="100%" cellspacing="0" cellpadding="0" border="0">
        <tbody>
          <tr>
            <td><img src="images/cap02.jpg" /></td>
            <td width="278"><img src="images/cap03.jpg" /></td>
          </tr>
          <tr>
            <td style="PADDING-LEFT: 10px; PADDING-TOP: 15px" valign="top" width="580" 
          colspan="2" height="100%"><table width="554" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="554">
				  <% if (session("trangthai")=true )then		   %>
				  Bạn đang đăng nhập với tài khoản:
				  <a href="suathongtinnguoidunghienthoi.asp"><% =session("ten")				  
				  %></a>
				  <%end if%>
				  <br />
				  <!-- InstanceBeginEditable name="noidungcuanguoidung " -->
				  <p>
				    <!--#include file="connection.inc" -->
				     <%if (cint(Request.QueryString("ma_khach"))>1) then %>
				  </p>
				  <script language="javascript" >
				   function validate ()
				   {
				   if (window.captaikhoan.iUser.checked ) 
				   {
				     if ( document.getElementById("Tên truy cập").value=="" )
					 {alert ("Tên đăng nhập không được để trống !");
					 document.getElementById("Tên truy cập").focus();
					 return false
					  }
					 else					 
					 if ( document.getElementById("Mật khẩu").value=="" ) 
					 {
					  alert ("Mật khẩu không được để trống !");
					  document.getElementById("Mật khẩu").focus();
					  return false
					 }
					 else
					 {
					 if (window.captaikhoan.iCompany.checked )
					 {
					  return true
					 }
					 else 
					 {
					 alert ("Bạn phải tạo doanh nghiệp hoặc tạo tài khoản !");
					 return false }
					 }
				   }
				   
				   
				   }
				  </script>
<script language="javascript">
function del() 
{
	/*if(confirm("Bạn thật sự muốn xóa người này?")) 
	{
		delFrm.idguest.value=n;
		delFrm.submit();
	}*/
	//delFrm.idguest.value=n;
	alert("Vào");
}
</script>
				  <% 
				  'rsedit = server.CreateObject("adodb.recordset")
				  rs.open " select * from [guest] where tentruycap is null and idguest="& Request.QueryString("ma_khach"),conn%>
				  <form action="capquyendangnhap.asp" method="post" name="captaikhoan" id="captaikhoan" onsubmit="return validate();">
				    <table width="100%" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td><div align="right">Logo của công ty </div></td>
                        <td> <img src="<%=rs("logo")%>" width="150" height="150"  />                        </td>
                      </tr>
                      <tr>
                        <td width="40%"><div align="right">Tên của khách </div></td>
                        <td width="60%"><input name="Họ và tên" type="text" id="Họ và tên" value="<%=rs("hovaten")%>" size="40"/></td>
                      </tr>
                      <tr>
                        <td><div align="right">Tên công ty </div></td>
                        <td><input name="tencongty" type="text" id="tencongty" value="<%=rs("tencongty")%>" size="40"/></td>
                      </tr>
                      <tr>
                        <td><div align="right">Lĩnh vực ngành nghề kinh doanh </div></td>
                        <td><textarea name="linhvuckinhdoanh" cols="35" id="linhvuckinhdoanh"><%=rs("linhvuckinhdoanh")%>
                    </textarea></td>
                      </tr>

                      <tr>
                        <td><div align="right">Thư điện tử </div></td>
                        <td><input name="Thư điện tử" type="text" id="Thư điện tử" value="<%=rs("hopthu")%>" size="40"/></td>
                      </tr>
                      <tr>
                        <td><div align="right">Điện thoại </div></td>
                        <td><input name="dienthoai" type="text" id="dienthoai" value="<%=rs("dienthoai")%>" size="40"/></td>
                      </tr>
                      <tr>
                        <td><div align="right">Năm thành lập </div></td>
                        <td><input name="textfield" type="text" value="<%=rs("namthanhlap")%>" size="40" /></td>
                      </tr>
                      <tr>
                        <td><div align="right">Địa chỉ </div></td>
                        <td><textarea name="diachi" cols="35" id="diachi"><%=rs("diachi")%></textarea></td>
                      </tr>
                      <tr>
                        <td><div align="right">Tên đăng nhập </div></td>
                        <td><input name="Tên truy cập" type="text" id="Tên truy cập"  value="<%=lcase (replace(rs("hovaten")," ",""))%>" size="40" /></td>
                      </tr>
                      <tr>
                        <td><div align="right">Mật khẩu </div></td>
                        <td><input name="Mật khẩu" type="text" id="Mật khẩu"  size="40"  value="" /></td>
                      </tr>
                      <tr>
                        <td><label>
                          <input name="iCompany" type="checkbox" value="true" checked="checked" />
                          Tạo doanh nghiệp<br />
                          <input name="iUser" type="checkbox" value="true" checked="checked" />
                          Tạo tài khoản khách<br />
                        </label></td>
                        <td><input type="submit" name="Submit" value="Lưu lại" />
                          <input type="reset" name="Submit2" value="Hủy" /></td>
                      </tr>
                    </table>
                      </form>
				      <p>
					  <%  
					     sqlinsert ="insert into doanhnghiep (tendoanhnghiep,namthanhlap,diachi,sodienthoai_fax,email,chucnang,website,logo) values ("
						 sqlinsert = sqlinsert & "'"& Request.Form("tencongty") &"'"
						 'Response.Write(sqlinsert)
						 if Request.Form("iCompany")="true" then
					     end if
					   %>
				        <% 	
					  	if (len(Request.Form("tentruycap"))>1) then
						dim rscount
						set rscount=server.CreateObject("adodb.recordset")
							rscount.open "select count(*) as kiemtra from [users] where tentruycap='"&Request.Form("tentruycap")&"'",conn
							 if (rscount("kiemtra")=0 )then
							 	thongbao="thong bao"
								sqlinsertu=" insert into [users]  (tentruycap,matkhau,quyen ) values( "
								sqlinsertu=sqlinsertu+" N'"&Request.Form("tentruycap")&"',N'"&Request.Form("matkhau")&"',3)"
								sqlupdateg="update [guest]  set tentruycap=N'"&Request.Form("tentruycap")&"' where idguest="&Request.QueryString("ma_khach")
								conn.execute sqlinsertu
								conn.execute sqlupdateg
								Response.Redirect("capquyendangnhap.asp")
								'Response.Write sqlupdateg
								'Response.Write "<br>"
								'Response.Write sqlupdateg
							    if (Request.Form("taodoanhnghep") ) then
								sqlinsertdn = "insert into doanhnghiep "
								end if
							  
							  else %> 
				        <span class="heading"><strong>Tên đăng nhập này đã có yêu cầu nhập tên khác</strong></span>
	                    <%
							 end if
							rscount.close()
						'else
							'Response.Write "Danh sách chờ cấp tài khoản"
						end if
						
					   %>
	                    <% rs.close() %>
	                    <%end if %>
			          </p>
				      <p class="style1">Danh sách chờ cấp tài khoản			          </p>
				      <table width="100%" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="4%"><span class="style5"><strong>Stt</strong></span></td>
                        <td width="31%"><span class="style5"><strong>Họ và tên </strong></span></td>
                        <td width="43%"><span class="style5"><strong>Tên công ty </strong></span></td>
                        <td width="22%"><span class="style5"><strong>Thao tác </strong></span></td>
                      </tr>
					  <% rs.open "select * from [guest] where tentruycap is null",conn%>
					  <% while not rs.eof %>
                      <tr>
                        <td>&nbsp;</td>
                        <td><%=rs("hovaten")%>&nbsp;</td>
                        <td><%=rs("tencongty")%>&nbsp;</td>
                        <td><a href="capquyendangnhap.asp?ma_khach=<%=rs(0)%>"> Cấp tài khoản</a> / 
						<a href="delguest.asp?idguest=<%=rs(0)%>"> Xóa </a>
						</td>
                      </tr>
					  <% rs.movenext() %>
					  <% wend %>
					  <% rs.close() %>
                    </table>
					
					  <p>Danh sách khách đã đăng ký 
				      </p>
					  <table width="100%" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="4%"><strong>Stt</strong></td>
                        <td width="31%"><span class="style5"><strong>Họ và tên </strong></span></td>
                        <td width="51%"><span class="style5"><strong>Tên công ty </strong></span></td>
                        <td width="14%"><span class="style5"><strong>Thao tác </strong></span></td>
                      </tr>
					   <% rs.open "select * from [guest] ",conn%>
					  <% while not rs.eof %>
                      <tr>
                        <td>&nbsp;</td>
                        <td><%=rs("hovaten")%>&nbsp;</td>
                        <td><%=rs("tencongty")%>&nbsp;</td>
                        <td><a href="capquyendangnhap.asp?ma_khach=<%=rs(0)%>"></a></td>
                      </tr>
					  <% rs.movenext() %>
					  <% wend %>
					  <% rs.close() %>
					  <form action="delguest.asp" name="delFrm" method="get">
     <input type="hidden" name="idguest" />
</form>

                    </table>
				  <!-- InstanceEndEditable -->				  </td>
                </tr>
              </table></td>
          </tr>
          <tr>
            <td colspan="2"><img src="images/bot041.jpg" /></td>
          </tr>
          <tr>
            <td colspan="2"><img 
            src="images/f01.jpg" border="0" /><img 
            src="images/f02.jpg" border="0" /><img 
            src="images/f03.jpg" border="0" /><img 
            src="images/f04.jpg" border="0" /><img 
            src="images/f05.jpg" border="0" /><img 
            src="images/f06.jpg" border="0" /><img 
            src="images/f07.jpg" border="0" /><img 
            src="images/f08.jpg" border="0" /><img 
            src="images/f09.jpg" 
  border="0" /></td>
          </tr>
        </tbody>
      </table></td>
    </tr>
  </tbody>
</table>

<map name="Map" id="Map">
  <area shape="rect" coords="646,2,768,39" href="#" />
  <area shape="rect" coords="174,1,296,38" href="gioithieu.asp" />
  <area shape="rect" coords="326,-1,448,36" href="huongdan.htm" target="_blank" />
  <area shape="rect" coords="16,1,138,38" href="trangchu.asp" />
  <area shape="rect" coords="487,1,609,38" href="Dangky_taikhoan.asp" />
</map>
</body>
<!-- InstanceEnd --></html>
