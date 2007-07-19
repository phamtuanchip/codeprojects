<%@LANGUAGE="JAVASCRIPT" CODEPAGE="65001"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Ghi nhật ký thiết bị</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style type="text/css">
<!--
body,td,th {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 12px;
}
-->
</style>
<link href="../PCS_PROJECT/stylesheet/Default.css" rel="stylesheet" type="text/css">
</head>

<body >
<!-- #include file="../connections/connection.inc"-->
<!-- #include file="../customers/javascript.js"-->
<%  
   mathietbi=Session("ma_tb");
   rsmp=oConn.Execute("select *  from THONGKE where ma_tb_kh='"+mathietbi+"'");
   maphieu= rsmp("ma_phieu_nhan");
   
%>

<form action="item_info_save.asp" method="post" name="nhatky" target="_self" id="nhatky">
  <%if (mathietbi=="")Response.Write("Bạn vừa gi xong 1 nhật ký <a href='../customers/default_customers.asp'><<<<<</a> quay lại");else{%>
  <% s=new String(Request.QueryString); 
   sqltext=" select * from KHOTHIETBI_KH "
            +" inner join NHATKY_TB on KHOTHIETBI_KH.ma_tb_kh=NHATKY_TB.ma_tb_kh"
			+" where KHOTHIETBI_KH.ma_tb_kh='"+mathietbi+"'"
  rsbg=oConn.Execute(sqltext)%>
  <fieldset>
  <legend  align="center">Ghi nhật ký cho thiết bị:<%=mathietbi%></legend>
  
  <table width="50%" border="1" align="center" cellpadding="" cellspacing="" rules="none">
    <tr bgcolor="#FFCC99"> 
      <td colspan="2" nowrap><div align="center">Mã thiếtbị:</div></td>
      <td width="2%" nowrap><div align="center">Số lượng gửi </div></td>
      <td nowrap><div align="center">Ngày gửi:</div></td>
      <td nowrap><div align="center">Số lượng đã làm</div></td>
      <td colspan="2"> <div align="left">Số lượng đã trả<br>
        </div></td>
    </tr>
    <tr bgcolor="#FFCC99"> 
      <td colspan="2" nowrap><div align="center">
	      <input name="maphieu" type="hidden" id="maphieu" value="<%=rsmp("ma_phieu_nhan")%>"> 
          <input name="mathietbi"  readonly="1"type="text" id="mathietbi" value="<%=rsbg("ma_tb_kh")%>" size="10">
        </div></td>
      <td width="2%" nowrap><div align="center"> 
          <input name="soluonggui" readonly="1" type="text" id="soluonggui" size="10" value="<%=rsbg("so_luong_nhan")%>">
        </div></td>
      <td nowrap> <div align="center"> 
          <input name="ngayguitb" readonly="1"type="text" id="ngayguitb" size="5" value="<%=rsbg("ngay_nhan_tb")%>">
        </div></td>
      <td nowrap><div align="center"> 
	   <%
	   soluonglam=(rsbg("so_luong_thay")+rsbg("so_luong_sua")+rsbg("so_luong_0_sua")+rsbg("so_luong_doi"));
	   %>
          <input name="soluongdalam" readonly="1"type="text" id="soluongdalam" size="10" value="<%=soluonglam%>">
        </div></td>
      <td colspan="2"><input name="soluongtra" readonly="1"type="text" id="soluongtra" size="10" value="<%=rsbg("so_luong_tra")%>"> </td>
    </tr>
    <tr bgcolor="#009ACE"> 
      <td colspan="2" nowrap bgcolor="#009ACE">Thay thiết bị của công ty</td>
      <td nowrap bgcolor="#009ACE">Loại thiết bị:</td>
      <td bgcolor="#009ACE"><%rsltb=oConn.Execute("select * from LOAITHIETBI");
	  %> <select name="loaithietbithay" size="1" id="loaithietbithay"  onChange="chuyenthamso(nhatky);">
          <option value="0" >-----Chọn một-----</option>
          <% maloaitb=parseInt(s.substr(0,2));
			while(!rsltb.EOF)
			{ 
            if (maloaitb==rsltb("ma_loai_tb")) 
			{
			%>
          <option value="<%=rsltb("ma_loai_tb")%>" selected><%=rsltb("ten_loai_tb")%></option>
          <%
			}
			else
			{
			%>
          <option value="<%=rsltb("ma_loai_tb")%>"><%=rsltb("ten_loai_tb")%></option>
          <%
			}
			rsltb.MoveNext;
			}rsltb.Close;%>
        </select></td>
      <td bgcolor="#009ACE">Tên thiết bị:</td>
      <td colspan="2" bgcolor="#009ACE"> <div align="left"> 
          <select name="thietbithay" size="1" id="thietbithay"  onChange="chuyenthamso(form);">
            <%  
	  if(!(s==""||maloaitb=='00'))
	  {
		  sql="select * from THIETBI where ma_loai_tb='"+maloaitb+"'";
		  rstb=oConn.Execute(sql);
		  if(rstb.EOF) 
		 {
	  %>
            <option value="00">Kông còn hàng</option>
            <%
		  } else
			  {  matb=parseInt(s.substr(2,5));
			     Response.Write('<option value="00">-----Chọn một-----</option>');
			     while(!rstb.EOF)
			        { if (matb==rstb("ma_tb")) 
			           {
	   %>
            <option value="<%=rstb("ma_tb")%>" selected><%=rstb("ten_tb")%></option>
            <%
			            }
			            else { s2=new String(rstb("ten_tb"));
	    %>
            <option value="<%=rstb("ma_tb")%>"><%=s2.substr(0,60)%></option>
            <%                     }                 
			           rstb.MoveNext;
			         } rstb.Close;
			   }
	  } else Response.Write('<option value="00">-----Chọn một-----</option>');
	  %>
          </select>
        </div></td>
    </tr>
    <tr bgcolor="#009ACE"> 
      <td colspan="2" bgcolor="#009ACE">&nbsp;</td>
      <td bgcolor="#009ACE">Phí dịch vụ</td>
      <td bgcolor="#009ACE">Mô tả</td>
      <td bgcolor="#009ACE">&nbsp;</td>
      <td colspan="2" bgcolor="#009ACE">&nbsp; </td>
    </tr>
    <tr bgcolor="#009ACE"> 
      <td colspan="2" bgcolor="#009ACE">&nbsp;</td>
      <td bgcolor="#009ACE">Giá tb thay</td>
      <td width="3%" bgcolor="#009ACE">số lượng trong kho</td>
      <td bgcolor="#009ACE">mức báo nhập</td>
      <td width="2%" bgcolor="#009ACE">Số lượng làm DV</td>
      <td width="3%" bgcolor="#009ACE">Thành tiền</td>
    </tr>
    <tr bgcolor="#009ACE"> 
      <td colspan="2" bgcolor="#009ACE">Dịch vụ khác</td>
      <% dem=1;%>
      <% if (parseInt(s.substr(2,5))!=0)
	    { sqltext="select so_luong_nhap-so_luong_xuat ton,* from  PHIEU "
				 +" where ma_tb='"+parseInt(s.substr(2,5))+"'"
	     rsnk=oConn.Execute(sqltext);%>
      <td bgcolor="#009ACE"><input name="giatbthay" readonly="1" type="text" id="giatbthay" size="10" value="<%=rsnk("gia_xuat")%>"></td>
      <td bgcolor="#009ACE"><input name="soluongton" readonly="1" type="text" id="soluongton" size="4" value="<%=rsnk("ton")%>"></td>
      <td width="5%" bgcolor="#009ACE"><input name="baonhap" readonly="1" type="text" id="baonhap" size="4" value="<%=rsnk("muc_bao_nhap")%>"> 
      </td>
      <%rsnk.Close;}%>
      <%else {%>
      <td bgcolor="#009ACE"><input name="giatbthay" readonly="1" type="text" id="giatbthay" size="10" value="0"></td>
      <td bgcolor="#009ACE"><input name="soluongton" readonly="1" type="text" id="soluongton" size="4" value="0"></td>
      <td width="1%" bgcolor="#009ACE"><input name="baonhap" readonly="1" type="text" id="baonhap" size="4" value="0"> 
      </td>
      <%}%>
      <td width="78%" bgcolor="#009ACE"><input name="soluonglam<%=dem%>" type="text" id="sll<%=dem%>" size="4" value="0" onFocus="this.value=''" onBlur="if ((this.value=='')||(soluongton.value==0)) this.value='0';demsoluongnhap(); thanhtien<%=dem%>.value=giatbthay.value*this.value;{luongbaonhap=(parseInt(nhatky.soluongton.value)-parseInt(this.value)) ; if ((this.value==0)||(soluongton.value==0)) baonhap.value=0; else if(luongbaonhap<0) {luongbaonhap=luongbaonhap*(-1);nhatky.baonhap.value=luongbaonhap}}"></td>
      <td width="2%" bgcolor="#009ACE"><input name="thanhtien<%=dem%>" readonly="1" type="text" id="<%=dem%>" size="10" value="0"></td>
    </tr>
    <% 
	  rsldv=oConn.Execute("select * from DICHVU where gia_dv<>0 ");
	  %>
    <%
	  while (!rsldv.EOF) {dem=dem+1;%>
    <tr > 
      <td colspan="2" nowrap bgcolor="#009ACE"><%=rsldv("ten_loai_dv")%></td>
      <td nowrap bgcolor="#009ACE"> <input name="giadichvu<%=dem%>" type="text"  readonly="1"id="giadichvu<%=dem%>" value="<%=rsldv("gia_dv")%>" size="10"></td>
      <td nowrap bgcolor="#009ACE"> <%s=new String(rsldv("mo_ta"))%> <i title="<%=rsldv("mo_ta")%>">&nbsp;<a href="#"><%=s.substr(0,15)%>....</a></i></td>
      <td nowrap bgcolor="#009ACE">&nbsp;</td>
      <td nowrap bgcolor="#009ACE"> <input name="soluonglam<%=dem%>" type="text" id="sll<%=dem%>" size="4" value="0" onFocus="this.value=''" onBlur="if (this.value=='') this.value='0'; else {demsoluongnhap();} thanhtien<%=dem%>.value=giadichvu<%=dem%>.value*this.value;"> 
      </td>
      <td nowrap bgcolor="#009ACE"> <input name="thanhtien<%=dem%>" type="text" readonly="1" id="<%=dem%>" size="10"  value="0"> 
      </td>
    </tr>
    <%rsldv.MoveNext;%>
    <%}%>
    <%rsldv.Close;%>
    <tr bgcolor="#66CCFF"> 
      <td colspan="2" nowrap bgcolor="#009ACE">Số lượng không sửa được</td>
      <td nowrap bgcolor="#009ACE"> <input name="slkhongsua" type="text" id="sll<%=dem+1%>" value="0" size="10"onFocus="this.value=''" onBlur="if (this.value=='')this.value=0 ;demsoluongnhap();"></td>
      <td colspan="2" nowrap bgcolor="#009ACE"><textarea name="motaloi" id="motaloi"></textarea></td>
      <td nowrap bgcolor="#009ACE">&nbsp;</td>
      <td nowrap bgcolor="#009ACE">&nbsp;</td>
    </tr>
    <tr bgcolor="#66CCFF"> 
      <td colspan="2" nowrap bgcolor="#009ACE"> Số lượng bảo hành</td>
      <td nowrap bgcolor="#009ACE"><input name="slbaohanh" type="text" id="sll<%=dem+2%>" value="0" size="10"onFocus="this.value=''" onBlur="if (this.value=='') this.value=0;demsoluongnhap();"></td>
      <td colspan="2" nowrap bgcolor="#009ACE"><textarea name="ghichubh" id="ghichubh"></textarea></td>
      <td nowrap bgcolor="#009ACE">&nbsp;</td>
      <td nowrap bgcolor="#009ACE">&nbsp;</td>
    </tr>
    <tr bgcolor="#66CCFF"> 
      <td colspan="2" nowrap bgcolor="#009ACE">Phí phát sinh</td>
      <td nowrap bgcolor="#009ACE"><input name="phiphatsinh" type="text" id="phatsinh" value="0" size="10" onFocus="this.value=''" onBlur="if (this.value=='') this.value='0'; "></td>
      <td colspan="2" nowrap bgcolor="#009ACE"><div align="left"> 
          <textarea name="ghichups" id="ghichups"></textarea>
        </div></td>
      <td nowrap bgcolor="#009ACE">&nbsp;</td>
      <td nowrap bgcolor="#009ACE">&nbsp;</td>
    </tr>
    <tr bgcolor="#66CCFF"> 
      <td colspan="2" bgcolor="#009ACE">Tổng số thiết làm dv </td>
      <td bgcolor="#009ACE"> 
	  <input name="tongsodv"  type="hidden" id="tongsodv" value="<%=dem%>" size="10" >
	  <input name="tongsotblam" type="text" readonly="1" id="tongsotblam"  size="10"  value="0">  
      </td>
      <td bgcolor="#009ACE">&nbsp;</td>
      <td bgcolor="#009ACE">Tổng tiền: </td>
      <td bgcolor="#009ACE">&nbsp;</td>
      <td bgcolor="#009ACE"><input name="tongcong" type="text" readonly="1"id="tongcong2" size="10" value="0"></td>
    </tr>
    <tr bgcolor="#66CCFF"> 
      <td width="2%" bgcolor="#009ACE"><input type="reset" name="Reset" value="Làm lại"> 
      </td>
      <td width="2%" bgcolor="#009ACE"><input type="button" name="Button2" value="Tính tiền" onClick="TongThanhTien();tongsoluonglam();"></td>
      <td bgcolor="#009ACE"> <input type="button" name="Button" value="In hóa đơn" onClick="window.open('../print/print_invoice.asp?maphieu=<%=maphieu%>','printicket','toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=no,copyhistory=no,width=750,height=500')"> 
      </td>
      <td bgcolor="#009ACE"><div align="right"> 
          <input type="submit" name="Submit" value="Cập nhật" >
        </div></td>
      <td align="center" bgcolor="#009ACE"> <div align="left"></div>
        <input type="button" name="Submit2" value="Quay về quản lý" onClick="window.location='../customers/default_customers.asp'"></td>
      <td bgcolor="#009ACE">&nbsp;</td>
      <td bgcolor="#009ACE">&nbsp;</td>
    </tr>
  </table>
  </fieldset>
  <%}%>
  <%rsmp.Close;%>
</form>
</body>
</html>
