<%@LANGUAGE="JAVASCRIPT" codepage="65001"%>
<html><!-- InstanceBegin template="/Templates/template_customers.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="content-type" content="text/html;charset=UTF-8">
<!-- InstanceBeginEditable name="doctitle" -->
<title>PCS-GROUP</title>
<!-- InstanceEndEditable -->
<!-- InstanceBeginEditable name="head" -->
<!-- InstanceEndEditable -->
</head>
<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="" onLoad="currentdate();" >
<div align="center">
  <table width="301" height="100" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td width="301"><div align="center">
	  <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="770" height="178">
          <param name="movie" value="/images/logo.swf">
          <param name="quality" value="high"><param name="LOOP" value="false"><param name="SCALE" value="noborder">
          <embed src="/images/logo.swf" width="770" height="178" loop="false" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" scale="noborder"></embed>
        </object>
      </div></td>
    </tr>
  <!-- #include virtual ="/connections/connection.inc"-->
  <!-- #include virtual ="/customers/style.css" -->
  <!--#include virtual = "/customers/javascript.js"-->    
  </table>
  <table width="770" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="210" height="47" background="/images/n-m02.jpg"><img src="/images/vd.gif" width="180" height="47"></td>
      <td width="560" background="/images/n-m02.jpg"><div align="left">
        <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="98%">              <div align="right">
              <table width="400" border="0" cellpadding="0" cellspacing="0" class="table">
                <tr>
                  <td><div align="right">
                    <input name="textfield" type="text" class="inputtext" size="30" value="Điền từ cần tìm" onfocus="if(this.value=='Điền từ cần tìm')this.value='';" >
                    <input name="Submit" type="submit" class="Buton" value="T&igrave;m ki&#7871;m">
                  </div></td>
                </tr>
              </table>
              </div></td>
            <td width="2%"><div align="right"><img src="/images/vd1.jpg" width="10" height="47"></div></td>
          </tr>
        </table>
      </div></td>
    </tr>
  </table>
  <table width="770" height="211" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td colspan="2" background="/images/bg01.gif"><table width="100%" height="57" border="0" cellpadding="0" cellspacing="0">
        <tr valign="top">
          <th width="200" align="right">
		  
		  <fieldset ><div align="center">
		  <legend  align="center"><%=Session("username")%></legend>
            <!-- #include virtual="/customers/menu.asp"-->
		  </fieldset> 
		    </th>
          <td width="79%"><table width="98%"  border="0" cellpadding="00" cellspacing="0">
            <tr>
              <td width="4%">&nbsp;</td>
              <td width="96%" valign="top">
			<form name="hienngay" id="hienngay">
                   <div align="right">Hôm nay ngày: 
                       <input name="ngay" type="text" id="ngay" size="8">              
                   </div>
            </form>
			<%tendangnhap=Session("username");
	         	   madangnhap=Session("ma_nv") ;
	        	   tennhanvien=Session("ten_nv");
		     %>
			 <!-- InstanceBeginEditable name="Noidung" -->
			  <% 
			tenthietbi=Request.Form("tenthietbi");
			subsqltext1=" and KHOTHIETBI_KH.ma_tb_kh like '%"+Request.Form("loaithietbi")+"%'";
			if (Request.Form("loaidichvu")!="all")
			subsqltext2=" and NHATKY_TB.ma_loai_dv="+Request.Form("loaidichvu");
			else subsqltext2="";
			if (Request.Form("tinhtrang")!="all")
			subsqltext3=" and KHOTHIETBI_KH.tinh_trang_tb="+Request.Form("tinhtrang");
			else subsqltext3="";
			phuongthuc=Request.Form("phuongthuc");
			ktt=" '%";
			kts="%' ";
			if (phuongthuc=="=") {ktt=" '";kts="' ";}
			phuongthucngay=Request.Form("phuongthucngay");
			kytutruoc=" '";
			kytusau="' ";
			s=new String(Request.Form("ngaylapphieu"));
			ngaynhantb =s.substr(3,3)+s.substr(0,3)+s.substr(6,4);
			if (phuongthucngay=="<=") 
			{ngaynhantb=" getdate() ";
			kytutruoc="";
			kytusau="";}
			sqltext =" select  *,datepart(dd,ngay_lap_phieu) ngay,datepart(mm,ngay_lap_phieu) thang, datepart(yyyy,ngay_lap_phieu) nam"
					 +",datepart(dd,ngay_tra_tb) ngayt,datepart(mm,ngay_tra_tb) thangt, datepart(yyyy,ngay_tra_tb) namt"
					 +" from KHOTHIETBI_KH" 
				           +" inner join NHATKY_TB on NHATKY_TB.ma_tb_kh=KHOTHIETBI_KH.ma_tb_kh"
						   +" inner join TRANGTHAI_TB on TRANGTHAI_TB.ma_trang_thai_tb = KHOTHIETBI_KH.tinh_trang_tb"
						   +" inner join PHIEUNHAN_TB on PHIEUNHAN_TB.ma_phieu_nhan =KHOTHIETBI_KH.ma_phieu_nhan"
						   +" inner join NHANVIEN on NHANVIEN.ma_nv = PHIEUNHAN_TB.nguoi_lap"
						   +" where KHOTHIETBI_KH.ten_tb "+phuongthuc+ktt+tenthietbi+kts
						   +" and NHATKY_TB.ngay_nhan_tb "+phuongthucngay+kytutruoc+ngaynhantb+kytusau
						   +subsqltext1+subsqltext2+subsqltext3 +" order by PHIEUNHAN_TB.ngay_lap_phieu desc " ;
				   rs=oConn.Execute(sqltext);
				 %>
			 <fieldset>
		    <legend align="center">Chào mừng:<%=Session("ten_nv")%> đến với kết quả tìm kiếm thiết bị của khách</legend>
           
            <%if (rs.EOF) {%>
            Không tìm thấy kết quả nào!<a href="search_items.asp"><%="<<<<"%>Quay lại tìm kiếm</a>
            <%}else {%>
			<table width="100%" border="1">
              <tr>
                <td width="5%">Stt</td>
                <td width="11%">Mã TB </td>
                <td width="29%">Tên thiế bị:</td>
                <td width="14%">Ngày gửi</td>
                <td width="12%">Ngày trả</td>
                <td width="15%">Người nhận</td>
                <td colspan="2">Thao tác</td>
              </tr>
              <% var dem=1;
					  while (!rs.EOF) {%>
              <tr>
                <td><%=dem%></td>
                <td><a href="item_detail.asp?mathietbi=<%=rs("ma_tb_kh")%>" title="Xem chi tiết phiếu"><%=rs("ma_tb_kh")%></a></td>
                <td><%=rs("ten_tb")%>&nbsp;</td>
                <td valign="middle"><%=rs("ngay")%>/<%=rs("thang")%>/<%=rs("nam")%></td>
                <td valign="middle"><%=rs("ngayt")%>/<%=rs("thangt")%>/<%=rs("namt")%>
                </td>
                <td><%=rs("ten_dang_nhap")%>&nbsp;</td>
                <td width="8%"><a href="item_detail.asp?mathietbi=<%=rs("ma_tb_kh")%>">xem</a></td>
                <td width="6%" nowrap><a href="item_info.asp?mathietbi=<%=rs("ma_tb_kh")%>">ghi NK</a></td>
              </tr>
              <%rs.MoveNext;dem=dem+1;}rs.Close;%>
		</table>
            <%}%>
		</fieldset>
		
		   
		   
		   
		   <!-- InstanceEndEditable -->
			
         </td>
              </tr>
          </table>
            </td>
        </tr>
      </table></td>
      <td width="10" bgcolor="#32aca8"><img src="/images/d-p01.gif" width="10" height="30"></td>
    </tr>
  </table>
  <table width="770" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td height="74" background="/images/n-d01.jpg"><div align="center" class="textcoppyright">COPYRIGHT @ PCS GROUP C0411G<img src="/images/n-d01.jpg" width="10" height="70"></div></td>
    </tr>
  </table>
</div>
</body>
<!-- InstanceEnd --></html>