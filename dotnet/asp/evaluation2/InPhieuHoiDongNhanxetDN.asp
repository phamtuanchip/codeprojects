<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<style type="text/css">
<!--
.style2 {
	font-size: 18px;
	font-weight: bold;
}
-->
</style>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Bachkhoa mechatronics</title>
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
</STYLE>
<body>

				    <!--#include file="connection.inc" -->
					<% 
						MaDoanhNghiep = Request.QueryString("MaDoanhNghiep")
						MaSanPham = Request.QueryString("MaSanPham")
						dim rsDN
					 	set rsDN =server.CreateObject("adodb.recordset")
						dim rsNhanXet
					 	set rsNhanXet =server.CreateObject("adodb.recordset")
						Dim MaHoiDong
						Dim NoiDung
						Rs.open "Select HoiDong.MaHoiDong,TenHoiDong,TenSanPham From SanPham inner join HoiDong on SanPham.MaHoiDong=HoiDong.MaHoiDong where MaSanPham=" & MaSanPham,conn
						rsDN.Open "Select TenDoanhNghiep From DoanhNghiep inner join SanPham on SanPham.MaDoanhNghiep=DoanhNghiep.MaDoanhNghiep where MaSanPham=" & MaSanPham,conn
						SqlHoiDongNhanXetDoanhnghiep = "Select * From HoiDongNhanXetDoanhnghiep where MaDoanhNghiep=" & MaDoanhNghiep & " and  MaSanPham=" & MaSanPham & " and MaHoiDong=" & Rs(0)
						
						rsNhanXet.Open SqlHoiDongNhanXetDoanhnghiep,conn
						
						if not rsNhanXet.Eof then
							NoiDung=rsNhanXet("NhanXet")
						else
							NoiDung=""
						end if
					 %>				    <form id="form1" name="form1" method="post" action="CapNhatHoiDongNhanXetDN.asp">
				      <table width="100%" height="554" border="0">
				        <tr>
				          <td colspan="2"><div align="center"><span class="style2">Nhận xét của hội đồng chấm điểm </span><br />
				            <br />
				            </div></td>
                        </tr>
				        <tr>
				          <td width="23%"><div align="right">
				            <div align="right"></div>
				            <div align="left"><strong>Doanh nghiệp: </strong></div>
				          </div>				            </td>
                          <td width="77%"><strong>&nbsp;<%=rsDN(0) %>
                          <input type="hidden" name="MaDoanhNghiep" value="<%=MaDoanhNghiep %>"/>
                          </strong></td>
                        </tr>
				        <tr>
				          <td><div align="left"><strong>Hội đồng chấm điểm: </strong></div></td>
                          <td><strong>&nbsp;<%=Rs(1) %>
                          <input type="hidden" name="MaSanPham" value="<% =Rs(0) %>" />
                          </strong></td>
                        </tr>
				        <tr>
				          <td><strong>Sản phẩm chấm điểm: </strong></td>
                          <td><strong>&nbsp;<%=Rs(2)  %>
                          <input type="hidden" name="MaHoiDong" value="<% =MaSanPham %>"/>
                          </strong></td>
                        </tr>
				        <tr>
				          <td colspan="2"><strong>Nhận xét: </strong></td>
                        </tr>
				        <tr>
				          <td height="262" colspan="2" valign="top"><% =NoiDung %>&nbsp;</td>
                        </tr>
				        <tr>
				          <td colspan="2">&nbsp;</td>
                          </tr>
				        </table>
                    </form> 

</body>
</html>
