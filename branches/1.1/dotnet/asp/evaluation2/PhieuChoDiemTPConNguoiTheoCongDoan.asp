<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/hinhmaunguoidung.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Bachkhoa mechatronics P2</title>
<!-- InstanceEndEditable -->
<!-- InstanceBeginEditable name="head" -->


<script type="text/JavaScript">
<!--
function messageWindow(title)
{
  //if(document.all.PhieuTrong.checked)
  //{
  	//alert("True");
  //}
  if(document.all.PhieuTrong.checked)
  {
  	url="InAllPhieuDiemTPConNguoiTheoCongDoan.asp";  
	var height=screen.height;
  	var width=screen.width;
	//content="status,menubar,scrollbars,height=" + height + ",width=" + width +")";
	//var newWindow = window.open(url,"msgWindow",content);
	var newWindow = window.open(url,"msgWindow", "status,menubar,scrollbars,height=600,width=800");
  	newWindow.focus( );
  }
  else
  {
  url="InPhieuDiemSanPhamTheoCongDoanSanXuat.asp?MaThanhVien="+form1.MaThanhVien.value;
  var height=screen.height;
  var width=screen.width;
	//content="status,menubar,scrollbars,height=" + height + ",width=" + width +")";
	//var newWindow = window.open(url,"msgWindow",content);
  var newWindow = window.open(url,"msgWindow", "status,menubar,scrollbars,height=600,width=800");
  newWindow.focus( );
  }
}


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
          if (num<min || max<num) errors+='- Xin bạn vui lòng nhập điểm trong khoảng từ '+min+' đến '+max+'.\n';
    } } } else if (test.charAt(0) == 'R') errors += '- Xin bạn vui lòng nhập điểm.\n'; }
  } if (errors) alert('\n'+errors);
  document.MM_returnValue = (errors == '');
}
//-->
</script>
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
<input type="button" onclick="history.back()" value=" Quay lại " />
<!--#include file=connection.inc-->
<%
					MaSanPham=Session("ma_sp")
					MaHoiDong=Session("ma_hd")
				  MaDoanhNghiep=Session("ma_dn")
				  errorStr = Request.QueryString("errorStr")
				  MaThanhVien = Request.QueryString("MaThanhVien")
				  
				  dim RsDoanhNghiep
		Set RsDoanhNghiep= Server.CreateObject("ADODB.Recordset")
		RsDoanhNghiep.open "Select MaDoanhNghiep,TenDoanhNghiep from DoanhNghiep where MaDoanhNghiep=" & MaDoanhNghiep ,conn,3
				  sql = "SELECT TenSanPham FROM SanPham WHERE MaSanPham ="& MaSanPham
				  RS.Open sql,conn
				  
					Dim RS2
					Set RS2 = Server.CreateObject("ADODB.Recordset")
					sql = "Select ThanhVien.MaThanhVien,TenThanhVien From ThanhVien inner join HoiDongChamDiem  on ThanhVien.MaThanhVien=HoiDongChamDiem.MathanhVien where ThanhVien.Status=1 and MahoiDong=" & MaHoiDong & "and HoiDongChamDiem.Status=1"
					RS2.Open sql,conn
					
					Dim RsMaGiaCong
					Set RsMaGiaCong = Server.CreateObject("ADODB.Recordset")
					sql = "SELECT MaBuocGiaCong, TenBuocGiaCong FROM BuocGiaCong WHERE MaSanPham="+MaSanPham+" AND MaHoiDong="+MaHoiDong
					RsMaGiaCong.Open sql,conn
					
					Dim RsMaHieuQua
					Set RsMaHieuQua = Server.CreateObject("ADODB.Recordset")
					sql = "SELECT MaNhanToConNguoi, TenNhanToConNguoi FROM NhanToConNguoi WHERE MaSanPham="+MaSanPham+" AND MaHoiDong="+MaHoiDong
					'RsMaHieuQua.Open sql,conn
					
					CongDoanSize = 0
					HieuQuaSize = 0
					
	'if(RsDoanhNghiep.EOF or RS.EOF or RS2.EOF or RsMaGiaCong.EOF) then
	'	Response.Write("Bạn chưa nhập đủ các thông số,Xin vui lòng quay lại")
	'else
%>
<form action="CapNhatDiemTPConNguoiTheoCongDoan.asp" method="post" name="form1" id="form1" onsubmit="MM_validateForm('Pmin<%=CongDoanSize%><%=HieuQuaSize%>','','RinRange0:9','Pmax<%=CongDoanSize%><%=HieuQuaSize%>','','RinRange0:9');return document.MM_returnValue">
<table width="100%" border="0">
  <tr>
    <td width="23%">Tên sản phẩm:</td>
    <td width="77%"><strong><%=RS("TenSanPham")%>
      <input name="masp" type="hidden" id="masp" value="<%=session("ma_sp")%>" />
    </strong></td>
  </tr>
  
  <tr>
    <td>Cơ sở sản xuất:</td>
    <td><strong><%=RsDoanhNghiep("TenDoanhNghiep")%>
        <input name="madn" type="hidden" id="madn" value="<%=session("ma_dn")%>" />
</strong></td>
  </tr>
  <tr>
    <td>Họ tên người chấm điểm:</td>
    <td><select name="MaThanhVien" onchange="window.location='PhieuChoDiemTPConNguoiTheoCongDoan.asp?MaThanhVien='+this.value">
      <option value="0" >--Chọn một thành viên--</option>
	  <%
	    
	while not (RS2.EOF)
     %>
	  <%if (cint(Request.QueryString("MaThanhVien"))=RS2("MaThanhVien")) then  %>
      <option value="<%=RS2("MaThanhVien")%>" selected="selected"><%=RS2("TenThanhVien")%></option>
	  <%else %>
	  <option value="<%=RS2("MaThanhVien")%>"><%=RS2("TenThanhVien")%></option>
	  <%end if%>
      <%
	RS2.MoveNext
	wend
%>
<%RS2.close()%>
    </select>
      <strong>
      <input name="mahd" type="hidden" id="mahd" value="<%=session("ma_hd")%>" />
      </strong></td>
  </tr>
</table>		
				  <%
				  if(cint(Request.QueryString("MaThanhVien")) > 1 )	 then									
		%>
<input name="InPhieuDiem" type="button" id="InPhieuDiem" value="In phiếu điểm" onclick="messageWindow('Phiếu cho điểm thành phần con người theo Công đoạn')" />
<input type="checkbox" name="PhieuTrong"  /><label>In tất cả phiếu điểm đã chấm</label><h4 align="center"><%=errorStr%></h4>
  <table width="100%" border="1">
    <tr>
      <td height="45" colspan="4"><div align="center">PHIẾU CHO ĐIỂM THÀNH PHẦN CON NGƯỜI THEO CÔNG ĐOẠN</div></td>
                </tr>
    <tr>
      <td width="262" rowspan="2"><div align="center">CÁC THÀNH PHẦN CÔNG NGHỆ </div></td>
        <td colspan="2"><div align="center">ĐIỂM CHO </div></td>
        <td width="150" rowspan="2">TIÊU CHUẨN ĐIỂM </td>
          </tr>
    <tr>
      <td width="58" height="23"><div align="center">min</div></td>
        <td width="56"><div align="center">max</div></td>
        </tr>
    <tr>
      <td><div align="center"><strong>T Thiết Bị </strong></div></td>
        <td><div align="center">Hmin </div></td>
        <td><div align="center">Hmax</div></td>
        <td><div align="center">Theo trình độ </div></td>
      </tr>
    <tr>
      <td><div align="center"> 	
        <% while(not RsMaGiaCong.EOF) 
			HieuQuaSize = 0
			RsMaHieuQua.Open sql,conn
		%>
        <tr rowspan="4">
          <td colspan="3" align="center">
            <input type="hidden" name="MaGiaCong<%=CongDoanSize%>" id = "MaGiaCong<%=CongDoanSize%>"  size="3" value="<%=RsMaGiaCong(0)%>"/>
            <b><%=RsMaGiaCong(1) %></b>            </td>
				  <%
				if(CongDoanSize=0) then
				%>
          <td rowspan="5" bordercolor="#FFFFFF">
            <ul>
              <li><b>Trình độ văn hóa</b></li>
					    <li>&nbsp;&nbsp;Cấp 2: 1,2,3</li>
					    <li>&nbsp;&nbsp;Cấp 3: 3,4,5</li>
					    <li><b>Trình độ chuyên môn</b></li>
					    <li>&nbsp;&nbsp;Đào tạo hoàn chỉnh ngoại ngữ, vi tính, chuyên môn quản lý: 7,8,9</li>
					    <li>&nbsp;&nbsp;Thành thạo: 6,7,8</li>
					    <li>&nbsp;&nbsp;Bình thường: 4,5,6</li>
					    <li>&nbsp;&nbsp;Kém: 2,3,4</li>
					    </ul></td>
				  <%
				end if
				%>
          </tr>
          <% 
				while(not RsMaHieuQua.EOF)
			%>
          <tr>
            <td>
              <%=RsMaHieuQua(1)%>
              <input type="hidden" name="MaHieuQua<%=CongDoanSize%><%=HieuQuaSize%>" value="<%=RsMaHieuQua(0)%>" /></td>
				  <%
						MaGiaCong = RsMaGiaCong(0)
						MaHieuQua = RsMaHieuQua(0)
						sql6 = "SELECT HCDmin, HCDmax FROM DiemConNguoiTheoCongDoan WHERE MaThanhVien = " & Request.QueryString("MaThanhVien") & " AND MaBuocGiaCong=" & MaGiaCong & "AND MaNhanToConNguoi=" & MaHieuQua
						Dim RSnew
						Set RSnew = Server.CreateObject("ADODB.Recordset")
						RSnew.Open sql6,conn
						if(not RSnew.EOF) then
				  %>
					  <td>
					    <input type="text" name="Pmin<%=CongDoanSize%><%=HieuQuaSize%>" size="3" value="<%=RSnew(0)%>"  onblur="if ((this.value>=10)||(this.value<1) || isNaN(this.value) || this.value>Pmax<%=CongDoanSize%><%=HieuQuaSize%>.value){alert('Hmin phải là kiểu số, không được nhỏ hơn 1 hoặc lớn hơn 10 và Hmin phải nhỏ hơn Hmax.'); this.value='1'; this.focus();this.select();};"/>					    </td>
					  <td>
					    <input type="text" name="Pmax<%=CongDoanSize%><%=HieuQuaSize%>" size="3" value="<%=RSnew(1)%>"  onblur="if ((this.value>=10)||(this.value<1) || isNaN(this.value) || this.value<Pmin<%=CongDoanSize%><%=HieuQuaSize%>.value){alert('Hmax phải là kiểu số, không được nhỏ hơn 1 hoặc lớn hơn 10 và Hmax phải lớn hơn Hmin.'); this.value='1';this.focus();this.select();};"/>					    </td>
				  </tr>
				<%
					else
					%>
					  <td>
					    <input type="text" name="Pmin<%=CongDoanSize%><%=HieuQuaSize%>" size="3" value="1"  onblur="if ((this.value>=10)||(this.value<1) || isNaN(this.value) || this.value>Pmax<%=CongDoanSize%><%=HieuQuaSize%>.value){alert('Hmin phải là kiểu số, không được nhỏ hơn 1 hoặc lớn hơn 10 và Hmin phải nhỏ hơn Hmax.'); this.value='1'; this.focus();this.select();};"/>					    </td>
					  <td>
					    <input type="text" name="Pmax<%=CongDoanSize%><%=HieuQuaSize%>" size="3" value="1"  onblur="if ((this.value>=10)||(this.value<1) || isNaN(this.value) || this.value<Pmin<%=CongDoanSize%><%=HieuQuaSize%>.value){alert('Hmax phải là kiểu số, không được nhỏ hơn 1 hoặc lớn hơn 10 và Hmax phải lớn hơn Hmin.'); this.value='1';this.focus();this.select();};"/>					    </td>

            <%
				end if
			
				HieuQuaSize = HieuQuaSize + 1
				RsMaHieuQua.moveNext()
				Wend
				RsMaHieuQua.Close
			%>
            <% 
			CongDoanSize = CongDoanSize + 1
			RsMaGiaCong.moveNext()
			Wend	
		%>
            
            </div></td>
      </tr>
    <br />
    <br />
    <br />
    <tr>
      <td><input type="submit" name="Submit" value="Chấm điểm" />
        <input type="hidden" name="CongDoanSize" value="<%=CongDoanSize%>" />
        <input type="hidden" name="HieuQuaSize" value="<%=HieuQuaSize%>" />        </td>
      </tr>
    </table>
</form><%
end if
%>
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
