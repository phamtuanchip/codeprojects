<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/hinhmaunguoidung.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Bachkhoa mechatronics</title>
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
				 
				  <p align="center">Chào mừng đến với hệ thống đánh giá chất lượng doanh nghiệp theo phương pháp ATLAT<br />
</p>
				  <p align="center">&nbsp;</p>
				  <table width="97%" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td colspan="2"><div align="center"><strong>CƠ QUAN THẨM ĐỊNH VÀ ĐÁNH GIÁ CHẤT LƯỢNG DOANH NGHIỆP </strong></div></td>
                    </tr>
                    <tr>
                      <td colspan="2"><a href="http://www.quatest1.com.vn" target="_blank"></a>
                      <p align="justify">&nbsp;</p>
                      <p align="justify"><a href="http://WWW.QUATEST1.COM.VN" target="_blank"><strong>QUATEST1</strong></a></p>
                      <p align="justify">Trung tâm Kỹ thuật Tiêu chuẩn Đo lường Chất lượng 1,   tên thường gọi là Trung tâm Kỹ thuật 1 (QUATEST1), trực thuộc Tổng cục Tiêu   chuẩn Đo lường Chất lượng - Bộ Khoa học và Công nghệ.</p>
                      <p align="justify">Trung tâm Kỹ thuật 1 được thành lập theo Quyết định   số 1273/QĐ ngày 05 tháng 11 năm 1994 của Bộ trưởng Bộ Khoa học Công nghệ và Môi   trường (nay là Bộ Khoa học và Công nghệ). Bộ máy tổ chức và lĩnh vực hoạt động   của Trung tâm được quy định trong &quot;Điều lệ về tổ chức và hoạt động của Trung tâm   Kỹ thuật Tiêu chuẩn Đo lường Chất lượng 1&quot;, ban hành kèm theo Quyết định số   119/QĐ-TĐC ngày 01 tháng 03 năm 2006 của Tổng cục trưởng Tổng cục Tiêu chuẩn Đo   lường Chất lượng.</p>
                        <p align="justify">Trung tâm Kỹ thuật Tiêu chuẩn Đo lường Chất lượng 1   là đơn vị sự nghiệp phục vụ công tác quản lý Nhà nước trong lĩnh vực Tiêu chuẩn   - Đo lường - Chất lượng, cũng như đáp ứng nhu cầu của các cơ sở sản xuất, dịch   vụ và kinh doanh về tư vấn, hỗ trợ kỹ thuật, kiểm tra chất lượng của sản phẩm   cũng như kiểm soát môi trường.</p>
                        <p align="justify"><strong><em>Trung tâm Kỹ thuật 1 thực hiện các công việc   chủ yếu sau:</em></strong></p>
                        <p align="justify">1. Thực hiện việc kiểm tra, thử nghiệm và đánh giá   chất lượng sản phẩm, hàng hóa và dịch vụ theo chỉ định của cơ quan quản lý nhà   nước có thẩm quyền.</p>
                        <p align="justify">2. Kiểm định phương tiện đo trong phạm vi được công   nhận. Thực hiện hiệu chuẩn, kiểm tra và đánh giá các phương tiện đo, hệ thống   đo.</p>
                        <p align="justify">3. Thực hiện việc chứng nhận sản phẩm, dịch vụ phù   hợp tiêu chuẩn và các quy chuẩn kỹ thuật.</p>
                        <p align="justify">4. Thử nghiệm, đánh giá, thẩm định chất lượng, kỹ   thuật, vệ sinh, an toàn của sản phẩm, hàng hóa, dịch vụ, vật liệu, cấu kiện, dự   án và công trình theo yêu cầu của các cơ quan quản lý, các doanh nghiệp, các tổ   chức và cá nhân. </p>
                        <p align="justify">5. Khảo sát, đánh giá các điều kiện kỹ thuật, thực   trạng công nghệ, chuyển giao công nghệ và an toàn công nghiệp, tư vấn giám sát   và đánh giá chất lượng công trình xây dựng theo quy định; khảo sát, quan trắc,   đánh giá tác động và thực trạng môi trường.</p>
                        <p align="justify">6. Nghiên cứu, chế tạo và cung cấp các chuẩn đo   lường, mẫu chuẩn và các phương tiện đo. Cung cấp dịch vụ bảo trì, bảo dưỡng và   sửa chữa các phương tiện đo lường, thử nghiệm, thiết bị kỹ thuật.</p>
                        <p align="justify">7. Tư vấn việc áp dụng các hệ thống quản lý, các công   cụ cải tiến nhằm nâng cao năng suất và chất lượng của các sản phẩm, dịch vụ và   và trang bị phòng thí nghiệm. </p>
                        <p align="justify">8. Tổ chức thực hiện, nghiên cứu triển khai ứng dụng   tiến bộ khoa học, công nghệ. </p>
                        <p align="justify">9. Đào tạo, bồi dưỡng nghiệp vụ chuyên môn kỹ thuật   về chất lượng, đo lường, thử nghiệm, chuyển giao công nghệ, các hệ thống quản   lý, công cụ quản lý chất lượng và các nội dung có liên quan khác. </p>
                        <p align="justify">10. Tham gia xây dựng tiêu chuẩn Việt Nam (TCVN),   tiêu chuẩn khu vực và tiêu chuẩn quốc tế. </p>
                        <p align="justify">11.Hợp tác với các cơ quan, tổ chức trong và ngoài   nước về các nội dung liên quan đến hoạt động của Trung tâm theo đúng quy định   của Tổng cục. </p>
                        <p align="justify">12.Quản lý cán bộ, viên chức, người lao động và tài   chính, tài sản và hồ sơ, tài liệu cảu Trung tâm theo quy định của Tổng cục và   quy định của Nhà nước. </p>
                        <p align="justify">13.Thực hiện các nhiệm vụ khác do Tổng cục trưởng   giao. </p>
                        <p align="justify">Để đảm bảo và nâng cao chất lượng phục vụ, thoả mãn   đầy đủ các yêu cầu ngày càng cao của khách hàng, Trung tâm Kỹ thuật Tiêu chuẩn   Đo lường Chất lượng 1 thường xuyên tăng cường cơ sở vật chất kỹ thuật, coi trọng   việc đào tạo, nâng cao trình độ chuyên môn và nghiệp vụ cho cán bộ công nhân   viên. áp dụng, duy trì và cải tiến Hệ thống quản lý chất lượng của Trung tâm   theo tiêu chuẩn Quốc tế ISO 9001: 2000 và ISO/IEC 17025 để hoạt động của Trung   tâm có hiệu quả.</p>
                        <div align="justify">
                          <!-- TCVN-netCMS 2.0 v3.54 Professional : EAAC-FY70-2JLU-JDAE -->
                          </div></td>
                    </tr>
                    <tr>
                      <td colspan="2"><div align="center"><strong>PHÁT TRIỂN HỆ THỐNG </strong></div></td>
                    </tr>
                    <tr>
                      <td valign="top">                        <p align="center"><br />
                          <a href="WWW.BKMECH.COM.VN"><img src="images/BKMECHLOGO.gif" width="48" height="45" border="0" /></a><br />
                          <span class="style2">BKMECH</span></p>
                        <p><br />
                        </p>                        </td>
                      <td><strong><a href="http://WWW.BKMECH.COM.VN" target="_blank">Công ty trách nhiệm hữu hạn cơ điện tử Bách Khoa</a></strong>.<br />
                        Bach   Khoa Mechatronics Co., Ltd<br />
Giấy chứng nhận đăng ký   kinh doanh số:0102013574<br />
Do Phòng Đăng Ký Kinh Doanh- Sở Kế Hoạch Đầu Tư   thành phố Hà Nội cấp ngày: 09/08/2004</td>
                    </tr>
                    
                    <tr>
                      <td>&nbsp;</td>
                      <td>Nhà cung cấp phần mềm CAD/CAM/CAE.<br />
                        <img height="18" alt="D" src="images/Arrow1.png" width="18" /> Dịch vụ đào tạo CAD/CAM/CAE và   CNC.<br />
                        <img height="18" alt="K" src="images/Arrow1.png" width="18" /> Kiểm tra   thiết kế khuôn mẫu trên máy tính.<br />
                        <img height="18" alt="T" src="images/Arrow1.png" width="18" /> Thiết kế và chế tạo phần cứng chuyên   dụng.<br />
                        <img height="18" alt="T" src="images/Arrow1.png" width="18" /> Thiết kế   và xây dựng phần mềm ứng dụng trong ngành công nghiệp.<br />
                        <img height="18" alt="T" src="images/Arrow1.png" width="18" /> Tư vấn xây dựng, thực hiện các đề tài và   dự án cho các doanh nghiệp thuộc lĩnh vực Cơ khí - Điện tử và điều khiển - Công   nghệ thông tin. </td>
                    </tr>
                  </table>
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
