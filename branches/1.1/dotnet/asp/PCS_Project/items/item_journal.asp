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
<%  
   //mathietbi=Session("ma_tb");
   mathietbi='PWS2';
%>
<script language="JavaScript" type="text/JavaScript">

//-->
function chuyenthamso(form)
 { 
   loaithietbi=form.loaithietbithay.value;
   mathietbi=form.thietbithay.value
	if (parseInt(loaithietbi)<10) loaithietbi="0"+loaithietbi;
	window.location.assign("item_journal.asp?"+loaithietbi+mathietbi);
}
	  function tinhtien(form)
	  { 
	   form.thanhtienthay.value=(form.slthay.value)*(form.giatbthay.value);
	   form.thanhtiendichvu.value=(form.slsua.value)*(form.giadv.value);
	   form.tongcong.value=parseInt(form.thanhtienthay.value)+parseInt(form.thanhtiendichvu.value)
	                       +parseInt(form.phiphatsinh1.value)+parseInt(form.phiphatsinh2.value);
	   form.soluongton.value=parseInt(form.soluongton.value)-(form.slthay.value);
	   if (parseInt(form.soluongton.value)<=0) 
	      { form.baonhap.value=parseInt(form.soluongton.value)*(-1);
		   form.soluongton.value=0 ;
	       
		   }
	  }
	  </script>

<form action="" method="post" enctype="multipart/form-data" name="nhatky" id="nhatky">
  <%if (mathietbi=="")Response.Write("Bạn vừa gi xong 1 nhật ký <a href='../customers/default_customers.asp'><<<<<</a> quay lại");else{%>
  <% s=new String(Request.QueryString); 
   sqltext=" select * from KHOTHIETBI_KH "
            +" inner join NHATKY_TB on KHOTHIETBI_KH.ma_tb_kh=NHATKY_TB.ma_tb_kh"
			+" where KHOTHIETBI_KH.ma_tb_kh='"+mathietbi+"'"
  rsbg=oConn.Execute(sqltext)%>
  <table width="100%" border="1" rules="none">
    <tr bgcolor="#FFCC99">
   <td width="17%">Mã thiếtbị:</td>
    <td width="13%">Số lượng gửi </td>
      <td colspan="2"><div align="right">Ngày gửi:</div></td>
      <td colspan="2">Số lượng đã trả</td>
      <td colspan="2">
	  

	    <div align="left"><br>
      </div></td>
    </tr>
    <tr bgcolor="#FFCC99">
      <td width="17%"><input name="mathietbi"  readonly="1"type="text" id="mathietbi" value="<%=rsbg("ma_tb_kh")%>" size="10"></td>
      <td width="13%"><input name="soluongtb" readonly="1" type="text" id="soluongtb" size="10" value="<%=rsbg("so_luong_nhan")%>"></td>
      <td colspan="2"><div align="right">
        <input name="ngayguitb" readonly="1"type="text" id="ngayguitb" size="10" value="<%=rsbg("ngay_nhan_tb")%>">
	    </div></td>
    <td colspan="2"><input name="soluongtra" readonly="1"type="text" id="soluongtra" size="10" value="<%=rsbg("so_luong_tra")%>"></td>
      <td colspan="2">&nbsp;	  </td>
    </tr>
    

      
	  <tr bgcolor="#FFCC99">
        <td>Loai dich vu </td>
        <td>phi dv </td>
        <td width="18%">mo ta </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td width="16%">So luong lam </td>
      <td width="15%">Thanh tien </td>
	  </tr>
	  <%rsldv=oConn.Execute("select * from DICHVU where gia_dv<>0 ")%>
	  <% dem=1;
	  while (!rsldv.EOF) {%>
	<tr bgcolor="#0099CC">
      <td><%=rsldv("ten_loai_dv")%></td>
      <td>
      <input name="giadichvu<%=dem%>" type="text" id="giadichvu<%=dem%>" value="<%=rsldv("gia_dv")%>" size="10"></td>
	 
      <td colspan="4"><%=rsldv("mo_ta")%></td>
      <td><input name="soluonglam<%=dem%>" type="text" id="soluonglam" size="10" value="0" onFocus="this.value=''" onBlur="if (this.value=='') this.value='0';  thanhtien<%=dem%>.value=giadichvu<%=dem%>.value*this.value;">
     </td>
    <td><input name="thanhtien<%=dem%>" type="text" id="thanhtien" size="10"  value="0"></td>
    </tr>
	<%rsldv.MoveNext;dem=dem+1}rsldv.Close%>

    <tr bgcolor="#FFCC99">
      <td colspan="2">Thay Thietbi cua cong ty</td>
    <td colspan="4"><div align="right">Loại thiết bị:</div></td>
      <td colspan="2">
	    <div align="left">
	      <%rsltb=oConn.Execute("select * from LOAITHIETBI");
	  %>
	        <select name="loaithietbithay" size="1" id="loaithietbithay"  onChange="chuyenthamso(nhatky);">
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
            </select>
	      </div></td>
    </tr>
    <tr bgcolor="#FFCC99">
      <td>&nbsp;</td>
    <td>&nbsp;</td>
      <td colspan="4"><div align="right">Tên thiết bị:</div></td>
      <td colspan="2">
	  <select name="thietbithay" size="1" id="thietbithay"  onChange="chuyenthamso(form);nhatky.kyhieu.value=this.value;">
        <%  
	  if(!(s==""||maloaitb=='00'))
	  {
		  sql="select * from THIETBI where ma_loai_tb='"+maloaitb+"'";
		  rstb=oConn.Execute(sql);
		  if(rstb.EOF) 
		 {
	  %>
        <option value="0">Kông còn hàng</option>
        <%
		  } else
			  {  matb=parseInt(s.substr(2,5));
			     Response.Write('<option value="0">-----Chọn một-----</option>');
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
	  } else Response.Write('<option value="0">-----Chọn một-----</option>');
	  %>
      </select></td>
    
	</tr>
    <tr bgcolor="#66CCFF">
      <td>&nbsp;</td>
      <td>Số lượng</td>
      <td nowrap>Đơn giá</td>
      <td colspan="2" nowrap>Hiện có</td>
      <td nowrap>Báo nhập</td>
      <td>Thành tiền</td>
      <td>Phí phát sinh</td>
    </tr>
    <tr bgcolor="#66CCFF">
      <td>Thay </td>
      <td><input name="slthay" type="text" id="slthay" value="0" size="10"></td>
      <td colspan="4" nowrap>
	  <% if (parseInt(s.substr(2,5))!=0)
	    { sqltext="select * from  CHITIETNX "
				 +" where ma_tb='"+parseInt(s.substr(2,5))+"'"
	     rsnk=oConn.Execute(sqltext);
	  %>
	  <input name="giatbthay" readonly="1" type="text" id="giatbthay" size="10" value="<%=rsnk("gia_xuat")%>">
      <input name="soluongton" readonly="1" type="text" id="soluongton" size="5" value="<%=rsnk("so_luong_ton")%>">
	  <input name="baonhap" readonly="1"type="text" id="baonhap" size="5" value="0">
      <%rsnk.Close;} else {%>
	  <input name="giatbthay" readonly="1"type="text" id="giatbthay" size="10" value="0">
      <input name="soluongton" readonly="1"type="text" id="soluongton" size="5" value="0">
	  <input name="baonhap" readonly="1"type="text" id="baonhap" size="5" value="0">	  
	  <%}%>
	  </td>
      <td><input name="thanhtienthay" readonly="1" type="text" id="thanhtienthay" size="10">      </td>
      <td><input name="phiphatsinh1" type="text" id="phiphatsinh1" value="0" size="10"></td>
    </tr>
    <tr bgcolor="#66CCFF">
      <td>Không sửa</td>
    <td><input name="slkhongsua" type="text" id="slkhongsua" value="0" size="10"></td>
      <td colspan="4">Mô tả lỗi:</td>
      <td colspan="2"><textarea name="motaloi" id="motaloi"></textarea></td>
    </tr>
    <tr bgcolor="#66CCFF">
      <td> Bảo hành</td>
    <td><input name="slbaohanh" type="text" id="slbaohanh" value="0" size="10"></td>
      <td colspan="4">Ghi chú BH: </td>
      <td colspan="2"><textarea name="ghichubh" id="ghichubh"></textarea></td>
    </tr>
    <tr bgcolor="#66CCFF">
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td colspan="2"><div align="right">
        <input type="button" name="Button" value="Tính tiền" onClick="tinhtien(nhatky);">
</div></td>
      <td colspan="2">Tổng cộng:</td>
      <td><input name="tongcong" type="text" readonly="1"id="tongcong" size="15"></td>
    <td>      <input type="reset" name="Reset" value="Làm lại">      </td>
    </tr>
    <tr bgcolor="#66CCFF">
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td colspan="2"><div align="right">
        <input type="button" name="Button" value="In hóa đơn">
      </div></td>
      <td colspan="2">&nbsp;</td>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="Cập nhật" ></td>
    </tr>
  </table>
  <%}%>
</form>
</body>
</html>
