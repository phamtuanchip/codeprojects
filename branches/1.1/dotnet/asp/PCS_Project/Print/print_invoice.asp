<%@LANGUAGE="JAVASCRIPT" CODEPAGE="65001"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>In Phiếu bảo cho khách</title>
</head>

<body >
<!-- #include file ="../connections/connection.inc"-->
	<%  maphieu=Request.QueryString("maphieu");
		sqltext1=" Select * from PHIEUNHAN_TB"
	          +" inner join KHACHHANG on KHACHHANG.ma_kh = PHIEUNHAN_TB.ma_kh"
			  +" inner join NHANVIEN on NHANVIEN.ma_nv=PHIEUNHAN_TB.nguoi_lap"
			  +" where PHIEUNHAN_TB.ma_phieu_nhan='"+maphieu+"'"; 
	    rs1=oConn.Execute(sqltext1);
		sqltext2=" Select * from PHIEUNHAN_TB"
			  +" inner join KHOTHIETBI_KH on KHOTHIETBI_KH.ma_phieu_nhan=PHIEUNHAN_TB.ma_phieu_nhan"
			  +" inner join NHATKY_TB on NHATKY_TB.ma_tb_kh=KHOTHIETBI_KH.ma_tb_kh"
			  +" inner join DICHVU on DICHVU.ma_loai_dv=NHATKY_TB.ma_loai_dv"
			  +" where PHIEUNHAN_TB.ma_phieu_nhan='"+maphieu+"'"; 
		rs2=oConn.Execute(sqltext2);%>
<%if (rs1.EOF) Response.Write("Bạn chưa chọn phiếu để in ! Yêu cầu chọn lại"); else{%>
<table width="596" border="0" cellpadding="0" cellspacing="0" background="printinvoce.gif">
  <!--DWLayoutTable-->
  <tr> 
    <td width="43" height="170">&nbsp;</td>
    <td width="68">&nbsp;</td>
    <td width="52">&nbsp;</td>
    <td width="77">&nbsp;</td>
    <td width="56">&nbsp;</td>
    <td width="123">&nbsp;</td>
    <td width="41">&nbsp;</td>
    <td width="13">&nbsp;</td>
    <td width="19">&nbsp;</td>
    <td width="15">&nbsp;</td>
    <td width="17">&nbsp;</td>
    <td width="15">&nbsp;</td>
    <td width="57">&nbsp;</td>
  </tr>
  <tr> 
    <td height="18"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td colspan="4" valign="top"><div align="left"></div>
      <div align="left"><%=rs1("ma_phieu_nhan")%></div></td>
    <td></td>
    <td></td>
  </tr>
  <tr> 
    <td height="3"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr> 
    <td height="1"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td colspan="4" rowspan="2" valign="top">(<%=rs1("ma_kh")%>)</td>
    <td></td>
    <td></td>
  </tr>
  <tr> 
    <td height="18"></td>
    <td></td>
    <td></td>
    <td colspan="4" valign="top"><%=rs1("ten_kh")%></td>
    <td></td>
    <td></td>
  </tr>
  <tr> 
    <td height="6"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr> 
    <td height="18"></td>
    <td></td>
    <td colspan="9" valign="top"><%=rs1("dia_chi_kh")%></td>
    <td></td>
    <td></td>
  </tr>
  <tr> 
    <td height="6"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr> 
    <td height="18"></td>
    <td></td>
    <td colspan="2" valign="top"><%=rs1("dien_thoai_kh")%></td>
    <td></td>
    <td colspan="6" valign="top"><%=rs1("email_kh")%></td>
    <td></td>
    <td></td>
  </tr>
  <tr> 
    <td height="3"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr> 
    <td height="135"></td>
    <td colspan="10" valign="top"> <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <!--DWLayoutTable-->
        <tr> 
          <td width="24" height="55">&nbsp;</td>
          <td width="33">&nbsp;</td>
          <td width="46">&nbsp;</td>
          <td width="195">&nbsp;</td>
          <td width="97">&nbsp;</td>
          <td width="57">&nbsp;</td>
          <td width="29">&nbsp;</td>
        </tr>
        <tr> 
          <td rowspan="2">&nbsp;</td>
          <td rowspan="2" valign="top">Stt</td>
          <td rowspan="2" valign="top">Mã TB </td>
          <td rowspan="2" valign="top"> <div align="center">Loại dịc v&#7909;</div></td>
          <td height="19" colspan="2" valign="top"><ul>
              <li> 
                <div align="center">Sốlượng </div>
              </li>
            </ul></td>
          <td rowspan="2">&nbsp;</td>
        </tr>
        <tr> 
          <td height="19" colspan="2" valign="top">gửi/&nbsp;thay/sửa/0sửa/&#273;ổi</td>
        </tr>
        <% dem=1;
	   while (!rs2.EOF){%>
        <tr> 
          <td height="19">&nbsp;</td>
          <td valign="top"><%=dem%>&nbsp;</td>
          <td valign="top"><%=rs2("ma_tb_kh")%>&nbsp;</td>
          <td valign="top"><div align="center"><%=rs2("ten_loai_dv")%>&nbsp;</div></td>
          <td colspan="2" valign="top"><div align="center"><%=rs2("so_luong_nhan")%>=(<%=rs2("so_luong_thay")%>+<%=rs2("so_luong_sua")%>+<%=rs2("so_luong_0_sua")%>+<%=rs2("so_luong_doi")%>)</div></td>
          <td>&nbsp;</td>
        </tr>
        <%rs2.MoveNext;dem=dem+1;}rs2.Close;%>
        <tr> 
          <td height="19"></td>
          <td></td>
          <td></td>
          <td></td>
          <td valign="top">Thành tiền:</td>
          <td valign="top"><div align="center"><%=rs1("tong_tien_dv")%></div></td>
          <td></td>
        </tr>
        <tr> 
          <td height="4"></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
        </tr>
      </table></td>
    <td></td>
    <td></td>
  </tr>
  <tr> 
    <td height="328"></td>
    <td>&nbsp;</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr> 
    <td height="19"></td>
    <td>&nbsp;</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td>&nbsp;</td>
    <td valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
    <td valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
    <td valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
    <td></td>
    <td></td>
  </tr>
  <tr> 
    <td height="48">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td></td>
    <td></td>
  </tr>
  <tr> 
    <td height="19">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td colspan="6" valign="top" nowrap><div align="left"><%=Session("ten_nv")%>&nbsp;</div></td>
    <td>&nbsp;</td>
  </tr>
  <tr> 
    <td height="3"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
</table>
<%}rs1.Close;%>
</body>
</html>
