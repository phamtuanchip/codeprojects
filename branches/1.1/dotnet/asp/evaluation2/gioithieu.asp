<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/hinhmaunguoidung.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Giới thiệu về phương pháp đánh giá trình độ công nghệ sản xuất dựa trên phương pháp ATLAT công nghệ</title>
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
				  <p><strong>Đánh giá trình độ công nghệ sản xuất theo phương pháp ATLAS công nghệ</strong></p>
				  Việc đánh giá trình độ công nghệ (TĐCN) phải bao hàm các phương diện như đo lường các đặc tính công nghệ, hàm lượng công nghệ gia tăng, hàm lượng nhập khẩu đầu vào công nghệ, hàm lượng xuất khẩu công nghệ đầu ra và khả năng đổi mới của ngành công nghiệp. Phương pháp này nhằm tìm cách đo lường TĐCN từ cấp cơ sở tới cấp ngành công nghiệp và phân tích đặc trưng của các thành phần công nghệ. Ở đây chủ yếu đánh giá chất lượng của quá trình chuyển đổi công nghệ và đánh giá bằng khái niệm nâng cao cấp tinh xảo của bốn thành phần công nghệ là kỹ thuật, con người, thông tin, tổ chức và môi trường công nghệ góp phần tăng hiệu quả của quá trình chuyển đổi công nghệ. <br />
Đánh giá hoạt động chuyển đổi công nghệ của một hệ thống sản xuất thường được dựa trên hai cách tiếp cận phổ biến. <br />
- Cách tiếp cận thứ nhất dựa trên khái niệm về khả năng thay thế lao động và vốn, cố gắng đánh giá khía cạnh công nghệ trên các tiêu chuẩn đánh giá có tính đại diện bao hàm hai yếu tố đó của sản xuất. Các chỉ số chung dựa trên vốn và lao động là số vốn trên một nhân công, tài sản cố định hữu hình trên một nhân công, vốn trên một đơn vị sản phẩm, lợi nhuận trên một đơn vị vốn và sản phẩm trên một đơn vị nhân công.<br />
- Cách tiếp cận thứ hai liên quan đến giá trị kinh tế gia tăng tại một phương tiện biến đổi và cố gắng đưa ra những kết luận liên quan tới các đặc trưng công nghệ của công ty bằng cách sử dụng các tỷ số dựa trên giá trị gia tăng. Cách tiếp cận này nhằm tìm cách đo các giá trị kinh tế gia tăng cho các đầu vào của phương tiện chuyển đổi. Việc sử dụng giá trị gia tăng để nghiên cứu mức độ tinh xảo của công nghệ có một số lợi điểm nhưng phương pháp này còn một số nhược điểm cần phải xem xét, giải thích vì tiêu chuẩn đánh giá dựa trên vốn và lao động là cơ sở phân tích dùng giá trị gia tăng này có khuynh hướng đặt mức độ tinh xảo công nghệ ngang bằng với mức tăng vốn chi cho việc cơ khí hóa. Mặt khác, một phương tiện tiên tiến về mặt công nghệ không nhất thiết cần kinh phí nhiều hơn.<br />
Các tiêu chuẩn để đánh giá dựa vào vốn và sức lao động và dựa trên giá trị gia tăng có vai trò hữu ích trong việc đánh giá hiệu suất của các phương tiện chuyển đổi ở cấp công ty (cấp vi mô) và cấp ngành/quốc gia (cấp vĩ mô) thì chúng có hai mặt hạn chế chính. Hạn chế thứ nhất là phải sử dụng giá trị tính bằng tiền, không phản ánh được chính xác giá trị do sự không hoàn hảo của thị trường. Hạn chế thứ hai là cần nhiều thông tin để xử lý và có thể cần nhiều chi phí cho việc này.<br />
Việc đánh giá trình độ công nghệ sản xuất phải bao hàm các phương diện như đo lường các đặc tính công nghệ ở cấp ngành công nghiệp, hàm lượng công nghệ gia tăng nhờ chuyển đổi công nghệ, hàm lượng nhập khẩu đầu vào công nghệ, hàm lượng xuất khẩu đầu ra công nghệ và khả năng đổi mới của ngành công nghiệp. Phương pháp phân tích hàm lượng công nghệ được sử dụng như một công cụ hỗ trợ quyết định. Để đánh giá một ngành công nghiệp cần tiến hành:<br />
1. Đánh giá TĐCN ở cấp công ty và có thể dùng để so sánh các công ty với nhau.<br />
2. Đánh giá TĐCN ở cấp ngành là sự tổ hợp của kết quả đánh giá của các công ty trong ngành công nghiệp<br />
Một trong các khía cạnh đầu tiên phải phân tích là các đặc trưng công nghệ. Ở đây chủ yếu là đánh giá chất lượng của quá trình chuyển đổi công nghệ, có thể đánh giá bằng khái niệm nâng cao cấp tinh xảo của 4 thành phần công nghệ là <strong>kỹ thuật, con người, thông tin, tổ chức (T, H, I, O)</strong> và môi trường công nghệ (<strong><font face="Symbol" size="+1">l</font></strong>) góp phần vào làm tăng hiệu quả của quá trình chuyển đổi công nghệ (hàm lượng công nghệ gia tăng). Cách phân tích này có thể được tiến hành bằng khảo sát 4 thành phần công nghệ ở cấp công ty, cấp ngành công nghiệp và so sánh với những công nghệ tiên tiến nhất.<br />
<br />
<br />
<strong>Hàm lượng công nghệ gia tăng (Technology Contribution Added) </strong><br />
<br />
<br />
Hàm lượng công nghệ gia tăng(TCA) là sự bổ sung thêm công nghệ tại một phương tiện chuyển đổi. Hàm lượng công nghệ gia tăng giúp đánh giá mức độ đóng góp của những thành phần riêng biệt trong 4 thành phần công nghệ. Hàm lượng công nghệ gia tăng ở cấp độ ngành công nghiệp có thể tính được bằng cách cộng gộp phần đóng góp của các phương tiện chuyển đổi cấp công ty. Một cách đơn giản để có TCA ở cấp ngành công nghiệp phải tính giá trị bình quân trên cơ sở các đầu ra của từng công ty riêng rẽ và các TCA tương ứng của chúng (được trình bày ở phần sau). Hàm lượng công nghệ gia tăng cấp công ty được xác định như sau:<br />
<br />
<br />
<br />
<div align="center"><font size="+1"><strong>TCA = <font face="Symbol">l</font>.TCC.VA</strong></font>&nbsp;&nbsp;&nbsp;&nbsp;|VNĐ, USD|</div><br />
<br />
<br />
<ul>Phương pháp luận về hàm lượng công nghệ gia tăng giúp đánh giá những điểm mạnh, yếu và mức độ hiện đại của các thành phần công nghệ. Việc đánh giá TCA ở cấp công ty đòi hỏi phải có các số liệu đầu vào sau:
<li>Hệ số đóng góp công nghệ (TCC) của phương tiện chuyển đổi</li>
<li>Chỉ số môi trường công nghệ <font face="Symbol" size="+1">l</font> là hệ số đặc trưng của môi trường sản xuất kinh doanh (điều kiện môi trường sản xuất kinh doanh như thị trường tiêu thụ, cung cấp năng lượng, nguyên nhiên vật liệu, phụ tùng thay thế, thông tin, nhân lực sản xuất, tổ chức điều hành sản xuất...). Hệ số <font face="Symbol" size="+1">l</font> được xác định theo phương pháp bình điểm của chuyên gia, trên cơ sở lượng hóa các điều kiện, các yếu tố của môi trường công nghệ bằng hệ số và thang điểm. Nếu giá trị của <font face="Symbol" size="+1">l</font> gần bằng 1 thì môi trường công nghệ được coi là khá hiện đại và rất được khuyến khích.</li>
<li>Giá trị gia tăng tổng Va (Value added): Gia  tăng doanh thu của sản phẩm (đưa công nghệ mới, cải tạo nâng cấp công nghệ cũ...), Va cũng có thể được coi là giá trị tổng doanh thu của đối tượng sản phẩm và công nghệ (đối với công nghệ hiện có)</li>
</ul><br />

Sau đây là cách lượng hóa các yếu tố để đánh giá TĐCN dựa trên đánh giá các thành phần công nghệ khi xác định hàm lượng công nghệ gia tăng<br />
<br />
<br />
<strong>Đánh giá môi trường công nghệ</strong><br /><br />
<table width="100%" border="1">
  <tr>
    <th width="74%" scope="col">Các yếu tố đặc trưng của môi trường công nghệ</th>
    <th width="26%" scope="col">Thang giá trị chọn <font face="Symbol" size="+1">l</font></th>
  </tr>
  <tr>
    <td><em><strong>Môi trường pháp lý, cơ chế, chính sách.</strong></em><br /><br />


<li>Các quy định, luật pháp về sở hữu công nghiệp, tiêu chuẩn mã vạch</li>
<li>Chính sách phát triển KHCN</li>
<li>Chính sách sử dụng tài nguyên</li>
<li>Chính sách kiểm soát môi trường</li>
<li>Chính sách nhập khẩu công nghệ, kỹ thuật</li>
<li>Chính sách bảo vệ hàng nội địa</li>
<li>Chính sách đầu tư trực tiếp của nước ngoài</li>
<li>Chính sách đào tạo nguồn lực</li>
<li>Chính sách hỗ trợ nghiên cứu công nghệ</li>
<li>Chính sách hoàn thuế xuất khẩu</li>
<li>Chính sách tín dụng, lãi suất ưu đãi</li>	</td>
    <td valign="top"><li>Tốt <font face="Symbol" size="+1">l</font><sub>1</sub> = 0,8 - 0,9</li>
	<li>Khá <font face="Symbol" size="+1">l</font><sub>1</sub> = 0,6 - 0,7</li>
	<li>Bình trường <font face="Symbol" size="+1">l</font><sub>1</sub> = 0,5</li>
	<li>Thiếu <font face="Symbol" size="+1">l</font><sub>1</sub> = 0,4</li>
	<li>Rất thiếu <font face="Symbol" size="+1">l</font><sub>1</sub> = 0,2 - 0,3</li></td>
  </tr>
  <tr>
    <td><em><strong>Cung cấp nguyên nhiên vật liệu, năng lượng, thiết bị, nhân lực, thông tin, tổ chức (nội địa, nhập khẩu)</strong></em> <br />
      <br />
      1. Sử dụng tài nguyên<br />
	  <li>Khả năng cung cấp tài nguyên nội địa (nhiên liệu, nguyên vật liệu thô)</li>
	  <li>Khả năng cung cấp tài nguyên nhập khẩu (nhiên liệu, nguyên vật liệu thô)</li>
	  <br />
	  <br />

2. Sử dụng nguyên vật liệu, phụ tùng<br />
<li>Khả năng cung cấp bán thành phẩm nội địa</li>
<li>Khả năng cung cấp bán thành phẩm nhập khẩu</li>
<br />
<br />
3. Hàng hóa sử dụng cho sản xuất<br />
<li>Khả năng cung cấp hàng hóa nội địa sử dụng cho sản xuất</li>
<li>Khả năng cung cấp hàng hóa nhập khẩu sử dụng cho sản xuất</li>
<br />
<br />

4. Sử dụng phần kỹ thuật (công nghệ, thiết bị)<br />
<li>Khả năng cung cấp phần kỹ thuật trong nước (Công nghệ, thiết bị)</li>
<li>Khả năng cung cấp phần kỹ thuật nhập khẩu (Công nghệ, thiết bị)</li>
<br />
<br />
5. Sử dụng nhân lực<br />
<li>Tình hình sử dụng nhân lực trong nước</li>
<li>Tình hình sử dụng nhân lực nước ngoài</li>
<br />
<br />
6. Phần thông tin<br />
<li>Thông tin toàn ngành công nghiệp</li>
<li>Thông tin một phần ngành công nghiệp</li>
<li>Thông tin của công ty</li>
<li>Quy mô nối mạng (trực tuyến, không trực tuyến)</li>
<br />
<br />
7. Tổ chức<br />
<li>Khả năng của lãnh đạo (mục tiêu phấn đấu, kế hoạch phát triển)</li>
<li>Chế độ tự quản trong công ty</li>
<li>Tổ chức kỹ thuật, cải tiến</li></td>
    <td valign="top">
      <li>Tốt <font face="Symbol" size="+1">l</font><sub>2</sub> = 0,8 - 0,9</li>
      <li>Khá <font face="Symbol" size="+1">l</font><sub>2</sub> = 0,6 - 0,7</li>
      <li>Bình trường <font face="Symbol" size="+1">l</font><sub>2</sub> = 0,5</li>
      <li>Thiếu <font face="Symbol" size="+1">l</font><sub>2</sub> = 0,4</li>
      <li>Rất thiếu <font face="Symbol" size="+1">l</font><sub>2</sub> = 0,2 - 0,3</li>    </td>
  </tr>
  <tr>
    <td><em><strong>Thị trường (nội địa, xuất khẩu)</strong></em><br />
<br />
1. Thị trường nhiên liệu, nguyên vật liệu thô<br />
<li>Khả năng cung cấp nhiên liệu, nguyên vật liệu cho thị trường nội địa</li>
<li>Khả năng xuất khẩu nhiên liệu, nguyên vật liệu</li><br />
<br />
2. Thị trường bán thành phẩm<br />
<li>Khả năng cung cấp bán thành phẩm cho thị trường nội địa</li>
<li>Khả năng xuất khẩu bán thành phẩm</li><br />
<br />
3. Thị trường hàng hóa sử dụng cho sản xuất<br />
<li>Khả năng cung cấp hàng hóa sử dụng cho sản xuất cho thị trường nội địa</li>
<li>Khả năng cung cấp hàng hóa sử dụng cho sản xuất</li><br />
<br />
4. Thị trường thiết bị<br />
<li>Khả năng cung cấp thiết bị cho sản xuất cho thị trường nội địa</li>
<li>Khả năng xuất khẩu thiết bị</li><br />
<br />
5. Thị trường nhân lực<br />
<li>Khả năng thị trường nhân lực trong nước</li>
<li>Khả năng thị trường xuất khẩu nhân lực</li><br />
<br />
6. Thông tin trong nước và quốc tế (về công nghệ, thị trường ...)<br />
<li>Khả năng tiếp cận thông tin trong nước</li>
<li>Khả năng tiếp cận thông tin quốc tế</li></td>
    <td valign="top">
      <li>Tốt <font face="Symbol" size="+1">l</font><sub>3</sub> = 0,8 - 0,9</li>
      <li>Khá <font face="Symbol" size="+1">l</font><sub>3</sub> = 0,6 - 0,7</li>
      <li>Bình trường <font face="Symbol" size="+1">l</font><sub>3</sub> = 0,5</li>
      <li>Thiếu <font face="Symbol" size="+1">l</font><sub>3</sub> = 0,4</li>
      <li>Rất thiếu <font face="Symbol" size="+1">l</font><sub>3</sub> = 0,2 - 0,3</li></td>
  </tr>
  <tr>
    <td><em><strong>Khả năng sản xuất kinh doanh (QT - Kinh doanh)</strong></em><br />
<br />
1. Sức sản xuất lao động <strong>S<sub>1</sub> = Q/T</strong> &nbsp;&nbsp;  (VNĐ)<br />
Q - Doanh thu<br />
T - Tổng số lao động<br />
<br />
2. Mức sinh lợi của 1 lao dộng <strong>P<sub>2</sub> = P/T</strong>&nbsp;&nbsp; (VNĐ)<br />
P - Lợi nhuận<br />T - Tổng số lao động<br /><br />
3. Đánh giá hiệu quả chung của công ty trong quản lý tài sản và khả năng sinh lợi nhuận <strong>R = E/A</strong><br />
E - Lợi nhuận ròng ở năm đánh giá<br />
A - Tổng giá trị tài sản ở năm đánh giá<br />
<br />
4. Hệ số đổi mới công nghệ <strong>S<sub>4</sub> = (D/K<sub>2</sub>) x 100%</strong><br />
D - Tổng số đầu tư đổi mới công nghệ trong giai đoạn đánh giá<br />
K<sub>2</sub> -  Giá trị tài sản còn lại đang sử dụng trong sản xuất tương ứng với sản phẩm tiêu biểu và công nghệ thực hiện (tài sản cố định)</td>
    <td valign="top">
      <li>Tốt <font face="Symbol" size="+1">l</font><sub>4</sub> = 0,8 - 0,9</li>
      <li>Khá <font face="Symbol" size="+1">l</font><sub>4</sub> = 0,6 - 0,7</li>
      <li>Bình trường <font face="Symbol" size="+1">l</font><sub>4</sub> = 0,5</li>
      <li>Thiếu <font face="Symbol" size="+1">l</font><sub>4</sub> = 0,4</li>
      <li>Rất thiếu <font face="Symbol" size="+1">l</font><sub>4</sub> = 0,2 - 0,3</li>       </td>
  </tr>
  <tr>
    <td><em><strong>Mức độ cạnh tranh của sản phẩm (giá, chất lượng)</strong></em><br />
<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<sub>N</sub><br />

&nbsp;&nbsp;&nbsp;<strong>a<sub>hdi</sub> = <font face="Symbol">S</font> a<sub>hdN</sub>/N</strong><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<sup>1</sup></td>
    <td valign="top">
      <li>Tốt <font face="Symbol" size="+1">l</font><sub>5</sub> = 0,8 - 0,9</li>
      <li>Khá <font face="Symbol" size="+1">l</font><sub>5</sub> = 0,6 - 0,7</li>
      <li>Bình trường <font face="Symbol" size="+1">l</font><sub>5</sub> = 0,5</li>
      <li>Thiếu <font face="Symbol" size="+1">l</font><sub>5</sub> = 0,4</li>
      <li>Rất thiếu <font face="Symbol" size="+1">l</font><sub>5</sub> = 0,2 - 0,3</li> </td>
  </tr>
  <tr>
    <td colspan="2"><div align="center"><font face="Symbol" size="+1">l</font><sub>tb</sub> = (<font face="Symbol" size="+1">l</font><sub>1</sub> + <font face="Symbol" size="+1">l</font><sub>2</sub> + <font face="Symbol" size="+1">l</font><sub>3</sub> + <font face="Symbol" size="+1">l</font><sub>4</sub> + <font face="Symbol" size="+1">l</font><sub>5</sub>)/5</div></td>
    </tr>
</table><br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Giá trị của Môi trường công nghệ <font face="Symbol" size="+1">l</font><sub>tb</sub> phải nhỏ hơn hoặc bằng 1, nếu giá trị <font face="Symbol" size="+1">l</font><sub>tb</sub> đạt gần bằng 1 đơn vị thì môi trường công nghệ được đánh giá tốt, có thể đánh giá <font face="Symbol" size="+1">l</font><sub>tb</sub> theo các mức sau: <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font face="Symbol" size="+1">l</font><sub>tb</sub> > 0,8 môi trường công nghệ: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tốt<br />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font face="Symbol" size="+1">l</font><sub>tb</sub> = 0,6 - 0,8 môi trường công nghệ: &nbsp;Bình thường<br />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font face="Symbol" size="+1">l</font><sub>tb</sub> < 0,6 môi trường công nghệ: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Kém<br /><br />
<br />
<strong>Đánh giá 4 thành phần công nghệ TCC</strong><br />
Hệ số đóng góp của công nghệ TCC (Technology Contribution Coefficient) được tính theo giá trị của 4 thành phần công nghệ theo công thức sau:<br />
<div align="center"><font size="+1">TCC = T<sup><font face="Symbol">b</font>t</sup>.H<sup><font face="Symbol">b</font>h</sup>.I<sup><font face="Symbol">b</font>i</sup>.O<sup><font face="Symbol">b</font>o</sup></font></div><br />
<br />
<br />
Theo lý thuyết, TCC là tích của 4 thành phần công nghệ. Trong thực tế sản xuất, kinh doanh các thành phần này được hiệu chỉnh qua các <font face="Symbol" size="+1">b</font>i cho phù hợp với thực trạng công nghệ (<font face="Symbol" size="+1">b</font>i là trọng số đóng góp của thành phần công nghệ). Trong đó:<br />
<br />
<div align="center"><font size="+1">
T = <font face="Symbol">S a</font><sub>i</sub>T<sup>(i)</sup>&nbsp;&nbsp;&nbsp;(Technoware)<br />
H = <font face="Symbol">S a</font><sub>j</sub>H<sup>(j)</sup>&nbsp;&nbsp;&nbsp;(Humanware)<br />
I = <font face="Symbol">S a</font><sub>k</sub>I<sup>(k)</sup>&nbsp;&nbsp;&nbsp;(Infoware)<br />
O = <font face="Symbol">S a</font><sub>l</sub>O<sup>(l)</sup>&nbsp;&nbsp;&nbsp;(Orgaware)<br />
</font></div>
<p><br />
  Thiết lập công thức tính thành phần công nghệ T cho công đoạn T<sup>i</sup> như sau<br />
  T<sup>i</sup> = (1/n)[T<sub>min</sub><sup>(i)</sup> + P<sup>(i)</sup>(T<sub>max</sub><sup>(i)</sup> - T<sub>min</sub><sup>(i)</sup>)/m]
  <br />
  T<sub>min</sub><sup>(i)</sup> - Giá trị đánh giá nhỏ nhất của thành phần công nghệ<br />
  T<sub>max</sub><sup>(i)</sup> - Giá trị đánh giá lớn nhất của thành phần công nghệ<br />
  n - điểm cao nhất về trình độ hiện tại (n = 9)<br />
  m - điểm tối đa khi so sánh thông số thực tế đạt được so với thiết kế (m = 9)<br />
  P<sup>(i)</sup> - Hiệu quả của thành phần công nghệ đạt dược khi so sánh số liệu thực tế với lý thuyết, ở đây chính là hiệu quả của thành phần T trong sản xuất. Các công thức tính H<sup>j</sup>, I<sup>k</sup>, O<sup>l</sup> tương tự như trên.<br />
  <br />
  Do đặc điểm sản xuất, kinh doanh của các doanh nghiệp vừa và nhỏ, các thành phần I, O khó có thể tách riêng việc đánh giá cho từng sản phẩm hoặc nhóm sản phẩm theo các công đoạn sản xuất. Mặt khác, mức ứng dụng tin học hóa trong sản xuất, kinh doanh còn thấp nên I, O có thể tính chung cho toàn công ty.<br />
  <br />
  Các số mũ <font face="Symbol">b</font><sub>t</sub>, <font face="Symbol">b</font><sub>h</sub>, <font face="Symbol">b</font><sub>i</sub>, <font face="Symbol">b</font><sub>o</sub> biểu thị cường độ đóng góp của từng thành phần công nghệ, phải đáp ứng điều kiện<br />
  <font face="Symbol">b</font><sub>t</sub> + <font face="Symbol">b</font><sub>h</sub> + <font face="Symbol">b</font><sub>i</sub> + <font face="Symbol">b</font><sub>o</sub> = 1<br />
  &nbsp;&nbsp;Các giá trị <font face="Symbol">b</font> được chọn như sau:<br />
  <font face="Symbol">b</font><sub>t</sub> = 0,6 - 0,7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font face="Symbol">b</font><sub>h</sub> = 0,15 - 0,2<br />
  
  <font face="Symbol">b</font><sub>i</sub> = 0,1 - 0,15&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font face="Symbol">b</font><sub>o</sub> = 0,05 - 0,1<br />
  Từ đó kiểm tra sao cho <font face="Symbol">Sb</font> = 1<br />
  <font face="Symbol">a</font><sub>i, j, k, l</sub> là trọng số (hệ số trọng lượng) tương ứng với thành phần T, H, I, O của từng công đoạn trong toàn bộ dây chuyền sản xuất, do vậy phải thỏa mãn điều kiện<br />
  &nbsp;&nbsp;<font face="Symbol">S a</font><sub>i</sub> = 1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font face="Symbol">S a</font><sub>j</sub> = 1<br />
  &nbsp;&nbsp;<font face="Symbol">S a</font><sub>k</sub> = 1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font face="Symbol">S a</font><sub>l</sub> = 1<br />
  <br />
  <br />
  Xác định <font face="Symbol">S a</font><sub>i</sub> của thành phần T (kỹ thuật) theo giá trị của thiết bị từng công đoạn: Có 4 công đoạn sản xuất 1, 2, 3, 4: giá trị tính bằng tiền của thiết bị (t<sub>i</sub> tính theo % còn lại của thiết bị Z<sub>i</sub>%) ở từng công đoạn là t<sub>1</sub>, t<sub>2</sub>, t<sub>3</sub>, t<sub>4</sub> ... ta có:<br />
  <br />
  <font face="Symbol">a</font><sub>1</sub> = t<sub>1</sub>/t<sub>1</sub> + t<sub>2</sub> + t<sub>3</sub> + t<sub>4</sub><br />
  <font face="Symbol">a</font><sub>2</sub> = t<sub>2</sub>/t<sub>1</sub> + t<sub>2</sub> + t<sub>3</sub> + t<sub>4</sub><br />
  <font face="Symbol">a</font><sub>3</sub> = t<sub>3</sub>/t<sub>1</sub> + t<sub>2</sub> + t<sub>3</sub> + t<sub>4</sub><br />
  <font face="Symbol">a</font><sub>4</sub> = t<sub>4</sub>/t<sub>1</sub> + t<sub>2</sub> + t<sub>3</sub> + t<sub>4</sub><br />
  <br />
  <br />
  Trong đó Z% = T% x H% x N% x C% x k<br />
  &nbsp;&nbsp;+ Z% là giá trị còn lại của thiết bị so với máy mới<br />
  &nbsp;&nbsp;+ T% là mức độ lạc hậu về đời của thiết bị<br />
  &nbsp;&nbsp;+ H% là giá trị còn lại về hao mòn hữu hình<br />
  &nbsp;&nbsp;+ N% biểu thị năng suất thực tế của máy đạt được so với năng suất thiết kế<br />
  &nbsp;&nbsp;+ C% chất lượng sản phẩm thực tế do thiết bị sản xuất ra so với chất lượng của máy mới<br />
  &nbsp;&nbsp;+ k là hệ số đo đồng đều và độ quan trọng của 4 thành phần<br />
  <br />
  <font face="Symbol">a</font><sub>j</sub> -  Trọng số phản ánh mức độ quan trọng của con người tham gia điều hành dây chuyền sản xuất vì thế <font face="Symbol">Sa</font><sub>j</sub> = 1 được phân ra các loại lao động để xét: công nhân đứng máy, công nhân bảo dưỡng, kỹ thuật viên, quản đốc ... là lực lượng trực tiếp tham gia vào dây chuyền sản xuất thường có:<br />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font face="Symbol">a</font><sub>CN</sub> = 0,5 - 0,6<br />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font face="Symbol">a</font><sub>KT</sub> = 0,3 - 0,4<br />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font face="Symbol">a</font><sub>QĐ, ĐC</sub> = 0,1 - 0,2<br />
  <br />
  Và lấy bình quân cho từng loại lao động theo số lượng lao động trực tiếp tham gia vào dây chuyền sản xuất. Ví dụ, một dây chuyền sản xuất quạt 400 có 60 công nhân, 15 kỹ thuật viên, 12 quản đốc và đốc công với <font face="Symbol">a</font><sub>CN</sub> = 0,5; <font face="Symbol">a</font><sub>KT</sub> = 0,3; <font face="Symbol">a</font><sub>QĐ</sub> = 0,2; <font face="Symbol">a</font><sub>ĐC</sub> = 0,2 tính trọng số của các thành phần nhân lực như sau:<br />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font face="Symbol">a</font><sub>j</sub> = (60.0,5 + 15.0,3 + 12.0,2)/(60 + 15 + 12) = 0,42<br />
  <br />
  - Các giá trị <font face="Symbol">a</font><sub>k</sub>, <font face="Symbol">a</font><sub>l</sub> là hệ số trọng lượng để tính thành phần I và O được xác định theo phương pháp chuyên gia. Theo điều kiện hiện thời chỉ nên dùng <font face="Symbol">a</font><sub>k</sub>, <font face="Symbol">a</font><sub>l</sub> chung cho 1 dây chuyền sản xuất và để đơn giản hóa có thể chọn bằng 1.<br />
  - Xác định giá trị max, min của T, H, I, O theo trình độ hiện đại theo bảng với thang điểm tối đa n = 9<br />
  <strong>Đề xuất</strong>: chọn các ủy viên Hội đồng là các chuyên gia chuyên ngành của từng khâu đánh giá. Mỗi chuyên gia cho điểm vào phạm vi đánh giá của mình, sau đó viết báo cáo phân tích. Kết quả sẽ được tính toán theo một chương trình lập sẵn. Để đảm bảo độ chuẩn xác, kết quả của từng khâu đánh giá sẽ được thẩm định lại</p>
<table border="1" cellspacing="0" cellpadding="0">
  <tr>
    <td width="343" valign="top"><p><strong>T : Thiết bị</strong></p></td>
    <td width="48" valign="top"><p>Tmin</p></td>
    <td width="52" valign="top"><p>Tmax</p></td>
    <td width="148" valign="top"><p>Mức độ hiện tại</p></td>
  </tr>
  <tr>
    <td width="343" valign="top"><p>1. Công đoạn 1</p>
        <p>2. Công đoạn 2</p>
      <p>3. Công đoạn 3</p>
      <p>4. Công đoạn 4</p></td>
    <td width="100" colspan="2" valign="top"><p>&nbsp;</p></td>
    <td width="148" valign="top"><p>- Thủ công 1, 2, 3<br />
      - Cơ khí 2, 3, 4<br />
      - Tự động từng thao tác 5, 6, 7<br />
      - Tự động tổ hợp 6, 7, 8</p></td>
  </tr>
  <tr>
    <td width="343" valign="top"><p>Tính giá trị trung bình cộng điểm các chuyên gia theo từng    công đoạn : </p>
        <div>
          <p>Timin = T(1)min    + T (2)min + T­­­­­­­­­(3)min    ­ + … T(n)min</p>
        </div>
      <p>                                                      n</p>
      <div><br />
            <br />
        Timax = T(1)max + T­­­­­­(2)max    + T(3)max + … T(n)max </div>
      <p>                                    n<br />
        với n là số chuyên gia đánh giá (hoặc số ủy viên hội đồng)<br />
        </p>
      <p>&nbsp;</p></td>
    <td width="48" valign="top"><p>&nbsp;</p></td>
    <td width="52" valign="top"><p>&nbsp;</p></td>
    <td width="148" valign="top"><p>&nbsp;</p></td>
  </tr>
  <tr>
    <td width="343" valign="top"><p><strong>H : Con người</strong></p></td>
    <td width="48" valign="top"><p>Hmin</p></td>
    <td width="52" valign="top"><p>Hmax</p></td>
    <td width="148" valign="top"><p>* Trình độ học vấn</p></td>
  </tr>
  <tr>
    <td width="343" rowspan="6" valign="top"><p>1. Công nhân đứng máy</p>
        <p>2. Tổ trưởng sản xuất</p>
      <p>3. Đốc công</p>
      <p>4. KTV theo ca</p>
      <p>5. Quản đốc</p></td>
    <td width="48" valign="top"><p>&nbsp;</p></td>
    <td width="52" valign="top"><p>&nbsp;</p></td>
    <td width="148" rowspan="7" valign="top"><p>+ Cấp 2 : 1, 2, 3<br />
      + Cấp 3 : 3, 4, 5<br />
      * Trình độ chuyên môn : Thành thạo 6, 7, 8<br />
      + Đào tạo hoàn chỉnh ngoại ngữ, vi tính, chuyên môn quản    lý 7, 8, 9<br />
      + Bình thường 4, 5, 6<br />
      + Kém 2, 3, 4</p></td>
  </tr>
  <tr>
    <td width="48" valign="top"><p>&nbsp;</p></td>
    <td width="52" valign="top"><p>&nbsp;</p></td>
  </tr>
  <tr>
    <td width="48" valign="top"><p>&nbsp;</p></td>
    <td width="52" valign="top"><p>&nbsp;</p></td>
  </tr>
  <tr>
    <td width="48" valign="top"><p>&nbsp;</p></td>
    <td width="52" valign="top"><p>&nbsp;</p></td>
  </tr>
  <tr>
    <td width="48" valign="top"><p>&nbsp;</p></td>
    <td width="52" valign="top"><p>&nbsp;</p></td>
  </tr>
  <tr>
    <td width="48" valign="top"><p>&nbsp;</p></td>
    <td width="52" valign="top"><p>&nbsp;</p></td>
  </tr>
  <tr>
    <td width="343" valign="top"><p>Tính trung bình cộng của điểm chuyên gia cho từng công    đoạn</p>
        <div><br />
          Himin = H (1)min    + H (2)min + H (3)min ­ +H    (4)min … H (n)min </div>
      <p>                                                      n</p>
      <div><br />
            <br />
        Himax = H (1)max + H (2)max    + H (3)max + H (4)max … H    (n)max </div>
      <p>                                    n</p></td>
    <td width="48" valign="top"><p>&nbsp;</p></td>
    <td width="52" valign="top"><p>&nbsp;</p></td>
  </tr>
  <tr>
    <td width="343" valign="top"><p><strong>I : Thông tin </strong></p></td>
    <td width="48" valign="top"><p>Imin</p></td>
    <td width="52" valign="top"><p>Imax</p></td>
    <td width="148" valign="top"><p>&nbsp;</p></td>
  </tr>
  <tr>
    <td width="343" rowspan="3" valign="top"><p>1. Tài liệu hướng dẫn sử dụng thiết bị, quy trình vận    hành, sửa chữa, tiêu chuẩn kỹ thuật<br />
      2. Thông tin sản xuất, tiếp thị tổng hợp<br />
      3. Phương tiện thông tin, Intanet, Internet, chuẩn bị,    chấp nhận, ứng dụng thương mại điện tử, Website của Doanh Nghiệp</p>
        <div>
          <p>Iimin = I (1)min    + I (2)min + I (3)min ­ +I    (4)min … I (n)min</p>
        </div>
      <p>                                                   n</p>
      <div><br />
            <br />
        Iimax = I (1)max + I (2)max    + I (3)max + I (4)max … I    (n)max </div>
      <p>                                    n</p></td>
    <td width="48" valign="top"><p>&nbsp;</p></td>
    <td width="52" valign="top"><p>&nbsp;</p></td>
    <td width="148" rowspan="3" valign="top"><p>- Đầy đủ 7, 8, 9<br />
      - Bình thường 6,7, 8<br />
      - Kém, không đáp ứng cơ chế thị trường 4, 5, 6</p></td>
  </tr>
  <tr>
    <td width="48" valign="top"><p>&nbsp;</p></td>
    <td width="52" valign="top"><p>&nbsp;</p></td>
  </tr>
  <tr>
    <td width="48" valign="top"><p>&nbsp;</p></td>
    <td width="52" valign="top"><p>&nbsp;</p></td>
  </tr>
  <tr>
    <td width="343" valign="top"><p><strong>O : Tổ chức</strong></p></td>
    <td width="48" valign="top"><p>Omin</p></td>
    <td width="52" valign="top"><p>Omax</p></td>
    <td width="148" valign="top"><p>&nbsp;</p></td>
  </tr>
  <tr>
    <td width="343" rowspan="6" valign="top"><p>1. Trình độ lãnh đạo<br />
      2. Khả năng quản lý<br />
      3. Tổ chức(Phân công, điều hành, chỉ đạo)<br />
      4. Mối quan tâm công việc chung của đội ngũ<br />
      5. Mối quan tâm của khách hàng<br />
      6. Không khí đổi mới</p>
        <div>
          <p>Oimin = O (1)min    + O (2)min + O (3)min ­ +O    (4)min … O (n)min</p>
        </div>
      <p>                                                   n</p>
      <div><br />
            <br />
        Oimax = O (1)max + O (2)max    + O (3)max + O (4)max … O    (n)max </div>
      <p>                                    n</p></td>
    <td width="48" valign="top"><p>&nbsp;</p></td>
    <td width="52" valign="top"><p>&nbsp;</p></td>
    <td width="148" rowspan="6" valign="top"><p>- Tốt 7, 8, 9<br />
      - Khá 6, 7, 8<br />
      - Bình thường 4, 5, 6<br />
      - Kém 3, 4, 5</p></td>
  </tr>
  <tr>
    <td width="48" valign="top"><p>&nbsp;</p></td>
    <td width="52" valign="top"><p>&nbsp;</p></td>
  </tr>
  <tr>
    <td width="48" valign="top"><p>&nbsp;</p></td>
    <td width="52" valign="top"><p>&nbsp;</p></td>
  </tr>
  <tr>
    <td width="48" valign="top"><p>&nbsp;</p></td>
    <td width="52" valign="top"><p>&nbsp;</p></td>
  </tr>
  <tr>
    <td width="48" valign="top"><p>&nbsp;</p></td>
    <td width="52" valign="top"><p>&nbsp;</p></td>
  </tr>
  <tr>
    <td width="48" valign="top"><p>&nbsp;</p></td>
    <td width="52" valign="top"><p>&nbsp;</p></td>
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
