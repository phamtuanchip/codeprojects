<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/hinhmaunguoidung.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Quản trị tài khoản người sử dụng</title>
<!-- InstanceEndEditable -->
<!-- InstanceBeginEditable name="head" -->
<!-- InstanceEndEditable -->
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
				  <p>Trang quản lý các tài khoản đăng nhập hệ thống.<br />
				  Bạn có thể tạo tài khoản đăng nhập bằng cách điền đầy đủ thông tin vào mẫu dưới và nhấn nút &quot;Thêm&quot; để tạo. Xin lưu ý nếu bạn tạo tài khoản là &quot;Quản Trị&quot; và không chọn doanh nghiệp nào thì có nghĩa là bạn tạo tài khoản để quản lý toàn bộ hệ thống ! </p>
				  <!--#include file="connection.inc" -->
				  <script type="text/JavaScript">
<!--
function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_validateForm() { //v4.0
  var i,p,q,nm,test,num,min,max,errors='',args=MM_validateForm.arguments;
  for (i=0; i<(args.length-2); i+=3) { test=args[i+2]; val=MM_findObj(args[i]);
    if (val) { nm=val.name; if ((val=val.value)!="") {
      if (test.indexOf('isEmail')!=-1) { p=val.indexOf('@');
        if (p<1 || p==(val.length-1)) errors+='- '+nm+' must contain an e-mail address.\n';
      } else if (test!='R') { num = parseFloat(val);
        if (isNaN(val)) errors+='- '+nm+' must contain a number.\n';
        if (test.indexOf('inRange') != -1) { p=test.indexOf(':');
          min=test.substring(8,p); max=test.substring(p+1);
          if (num<min || max<num) errors+='- '+nm+' must contain a number between '+min+' and '+max+'.\n';
    } } } else if (test.charAt(0) == 'R') errors += '- '+nm+' chưa nhập.\n'; }
  } if (errors) alert('Có những lỗi sau xảy ra:\n'+errors);
  document.MM_returnValue = (errors == '');
}
//-->

</script>
				  <form action="themnguoidung.asp" method="post" name="themnguoidung" id="themnguoidung" onsubmit="MM_validateForm('Tên đăng nhập','','R','Mật khẩu','','R','Mật khẩu gõ lại','','R');return document.MM_returnValue">
				    <table width="100%" border="0" onfocus="MM_validateForm('Tên đăng nhập','','R','Mật khẩu','','R','Mật khẩu ghõ lại','','R');return document.MM_returnValue">

                      <tr>
                        <td width="267">Tên đăng nhập </td>
                        <td width="277"><input name="Tên đăng nhập" type="text" id="Tên đăng nhập" size="18" /></td>
                      </tr>
                      <tr>
                        <td>Mật khẩu </td>
                        <td><input name="Mật khẩu" type="password" id="Mật khẩu" size="20" /></td>
                      </tr>
                      <tr>
                        <td>Gõ lại mật khẩu </td>
                        <td><input name="Mật khẩu gõ lại" type="password" id="Mật khẩu gõ lại" size="20" /></td>
                      </tr>
                      <tr>
                        <td>Quyền</td>
                        <td>
						<select name="quyen" id="quyen" >
						  <option value="1"> Quản trị</option>
						  <option value="2"> Người dùng</option>
						  <option value="3"> Khách</option>
						 </select >
						&nbsp;</td>
                      </tr>
                      <tr>
                        <td>Chọn một doanh nghiệp cho thành viên <br /> Nếu không chọn sẽ là cho toàn bộ hệ thống: </td>
                        <td><select name="chondn" id="chondn"  onchange="window.location='quantri_taikhoan.asp?madoanhnghiep='+this.value">
                          <%rs.open "select * from doanhnghiep where status=1",conn%>
						  <option value="0" >---Toàn bộ hệ thống---</option>
                          <% while not rs.eof %>
                          
						  <% if (cint(Request.QueryString("madoanhnghiep"))=rs(0))then %>
						     <option value="<%=rs(0)%>"  selected="selected" ><%=rs(1)%></option>
						  <% else %>
						     <option value="<%=rs(0)%>" ><%=rs(1)%></option>
						  <% end if %>
                          <%rs.movenext()%>
                          <% wend %>
                          <%rs.close()%>
                        </select></td>
                      </tr>
                      <tr>
                        <td><div align="right">
                          <input type="submit" name="Submit" value="Thêm"  onmouseover=" if ( document.themnguoidung.quyen.value==2){ if (document.themnguoidung.chondn.value==0) alert('Bạn phải chọn doanh nghiệp cho người dùng này')  } " />
                        </div></td>
                        <td><input name="cancel" type="reset" id="cancel" value="Hủy" /></td>
                      </tr>
                    </table>
                      </form>
				  <p>&nbsp;</p>
				  <script language="javascript" >
				    function bao()
					{
					return confirm("Bạn thực sự muốn xoá người này ? nếu muốn chọn OK, nếu không chọn Cancel");
					}
				  </script>
				  
				  <% 'rs.open "select * from users " ,conn %>

				   <%' BAT DAU PHAN TRANG THU 1 %>
				  <% sqlStr="select * from doanhnghiep " %>
				  <script language="JavaScript" type="text/javascript">
						function setValue(page) 
						{
							viewFrm.page.value=page; 
							viewFrm.submit();
						}
				   </script>
				  
				  <%
				  		Dim rsCurrentPage
						Dim rsPageCount
						'Dim i
						'Dim j
						Dim p
						
						'Phan trang--------------------------------------------------------------------------------------
						RS.CursorLocation = 3
						'2 nhan vien 1 trang
						RS.PageSize =10
						if Request.QueryString("madoanhnghiep")>0 then
						RS.Open " select * from users  where madoanhnghiep='"&Request.QueryString("madoanhnghiep")&"' order by quyen,madoanhnghiep", conn
						stringinfo="Danh sách thành viên hiện có của doanh nghiệp này"
						else
						 RS.Open " select * from users order by quyen,madoanhnghiep ", conn
						end if
						
							If Request.QueryString("page") = null or Request.QueryString("page") = "" Then
								rsCurrentPage = 1
							Else
								rsCurrentPage = CLng(Request.QueryString("page"))
							End If
							' Kiem tra tinh hop le cua so trang
							If rsCurrentPage < 1 Then
								rsCurrentPage = 1 
							End If
							rsPageCount = rs.PageCount
							If rsCurrentPage > rsPageCount Then
								rsCurrentPage = rsPageCount
							End If
							if (rsCurrentPage > 0 and rsCurrentPage <= rsPageCount) then
								' Dinh vi trang hien hanh
								RS.absolutePage = rsCurrentPage
							End If
						'KET TUC PHAN PHAN TRANG TU 1
				  %>
				  
				  
				  <% if not rs.eof  then %>
				  <%=stringinfo%>
				  <table width="100%" border="0" cellpadding="0" cellspacing="0" id="bangnguoidung">
                    <tr>
                      <td width="24%"><strong>Tên người dùng </strong></td>
                      <td width="12%"><strong>Mật khẩu </strong></td>
                      <td width="15%"><strong>Quyền hạn</strong> </td>
                      <td width="25%"><strong>Thuộc DN </strong></td>
                      <td width="24%"><strong>Kiến tạo</strong> </td>
                      </tr>
                    <% 'while not rs.eof %>
					<% while(( not RS.EOF) and RS.AbsolutePage = rsCurrentPage) ' PHAN NAY CUNG DUNG CHO PHAN TRANG%>
					<tr>
					  <td><% =rs(1) %>&nbsp;</td>
                      <td><% =rs(2) %>&nbsp;</td>
                      <td><% if rs(3)=1 then
					         Response.Write "Quản trị"
							 end if
							 if rs(3)=2 then
					         Response.Write "Người dùng"
							 end if  
							 if rs(3)=3 then
					         Response.Write "Khách "
							 end if  
					    %></td>
                      <td>
					  <% 
					  	if rs("madoanhnghiep")>0 then  
						dim rstendn
						set rstendn = Server.CreateObject("adodb.recordset")
						rstendn.open " select tendoanhnghiep from doanhnghiep where madoanhnghiep="&rs("madoanhnghiep")&" and status=1",conn
						if not rstendn.eof then
						 Response.Write rstendn(0)
						 else
						 %>
						 Doanh nghiệp đã xóa, xóa tài khoản này đi
						 <%
						 
						end if
						rstendn.close()
						else
						Response.Write "Toàn bộ hệ thống"
						end if
					  %>&nbsp;</td>
                      <td>
					  	<%if (rs("tentruycap")<> session("ten")) then %>
						<a href="suathongtinnguoidung.asp?n=<% =rs(1) %>">Sửa</a>|<a href="Xoa_taikhoan.asp?tendn=<% =rs(1) %>" onclick="return bao();">Xoá&nbsp;</a>
					    <%else %>
						<a href="suathongtinnguoidung.asp?n=<% =rs(1) %>">Sửa</a>|
						<%end if%>					 </td>
					  </tr>
                    <% rs.moveNext %>
                      <% wend%>
                  </table>
				  <% else %>
				  Chưa có người dùng nào !
				  <% end if%>
				  
				  <% 'PHAN PHAN TRANG THU 2
			' Hien thi phan duyet phan trang
			  ShowPageNavigation rsCurrentPage, rsPageCount
			' rs.Open;
			%>     </p>     <form action="quantri_taikhoan.asp" method="get" name="viewFrm" id="viewFrm">
				
			  <p>
				  <input type="hidden" name="page" value="<%=rsCurrentPage%>" />
				  <!-- input type="hidden" name="loai" value="HoiDong" DUNG DE TRUYEN THAM SO CHO CHUOI TRUY VAN -->
			  </p>
			</form>     
			<%	
				'Ham su dung cho phan trang
				function ShowPageNavigation(rsCurrentPage, rsPageCount) 
					Response.Write("<center><table><tr><td><strong><font color=#cccccc>")
					' link toi trang dau va trang truoc
					if ((rsCurrentPage <> 1) and (rsCurrentPage <> 0)) then
						Response.Write("<a href=JavaScript:setValue(1);>Trang &#273;&#7847;u</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
						Response.Write("<a href=JavaScript:setValue(" & (Cint(rsCurrentPage) - Cint(1)) & ");>Tr&#432;&#7899;c</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
					else		
						Response.Write("Trang &#273;&#7847;u&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tr&#432;&#7899;c&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
					end if
					'link toi trang ke tiep va trang cuoi
					if (rsCurrentPage < rsPageCount) then
						Response.Write("<a href=JavaScript:setValue(" & (CInt(rsCurrentPage) + CInt(1)) & ");>Sau</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
						Response.Write("<a href=JavaScript:setValue(" & Cint(rsPageCount) & ");>Trang cu&#7889;i</a>")
					else
						Response.Write("Sau&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
						Response.Write("Trang cu&#7889;i")
					end if
					
					Response.Write("</font></strong></td></tr><tr><td><strong><center><font color=#cccccc>")
					Response.Write("| ")
					'link toi tung trang
					for p = 1 to rsPageCount
						if (rsCurrentPage <> p) then
							Response.Write("<a href=JavaScript:setValue(" & p & ");>" & p & "</a> | ")
						else
							Response.Write("<b>" & p & "</b>" & " | ")
						end if
					next
					Response.Write("</font></center></strong></td></tr></table></center>")
				end function'het ham su dung cho phan trang
				RS.Close
				'KET THUC PHAN PHAN TRANG THU 2%>
				  <p>&nbsp; </p>
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
