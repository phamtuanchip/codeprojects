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
          <param name="movie" value="../images/logo.swf">
          <param name="quality" value="high"><param name="LOOP" value="false"><param name="SCALE" value="noborder">
          <embed src="../images/logo.swf" width="770" height="178" loop="false" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" scale="noborder"></embed>
        </object>
      </div></td>
    </tr>
  <!-- #include file ="../connections/connection.inc"-->
  <!-- #include file ="style.css" -->
  <!--#include file = "javascript.js"-->    
  </table>
  <table width="770" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="210" height="47" background="../images/n-m02.jpg"><img src="../images/vd.gif" width="180" height="47"></td>
      <td width="560" background="../images/n-m02.jpg"><div align="left">
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
            <td width="2%"><div align="right"><img src="../images/vd1.jpg" width="10" height="47"></div></td>
          </tr>
        </table>
      </div></td>
    </tr>
  </table>
  <table width="770" height="211" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td colspan="2" background="../images/bg01.gif"><table width="100%" height="57" border="0" cellpadding="0" cellspacing="0">
        <tr valign="top">
          <th width="200" align="right">
		  
		  <fieldset ><div align="center">
		  <legend  align="center"><%=Session("username")%></legend>
            <!-- #include file="menu.asp"-->
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
		  <% sqltext="select *, datepart(dd,ngay_lap_phieu) ngay," 
		            +"  datepart(mm,ngay_lap_phieu) thang, datepart(yyyy,ngay_lap_phieu) nam from PHIEUNHAN_TB"
					+" inner join TRANGTHAI_PH on TRANGTHAI_PH.ma_trang_thai=PHIEUNHAN_TB.trang_thai_phieu"
					+" inner join KHACHHANG on KHACHHANG.ma_kh= PHIEUNHAN_TB.ma_kh"
					+" order by trang_thai_phieu desc"
					rs=oConn.Execute(sqltext);
					rscount=oConn.Execute("select  count(ma_phieu_nhan) dem from PHIEUNHAN_TB");
					rscount1=oConn.Execute("select  count(ma_phieu_nhan) dem from PHIEUNHAN_TB where trang_thai_phieu=1");
					rscount2=oConn.Execute("select  count(ma_phieu_nhan) dem from PHIEUNHAN_TB where trang_thai_phieu=2");
					rscount3=oConn.Execute("select  count(ma_phieu_nhan) dem from PHIEUNHAN_TB where trang_thai_phieu=3");
					rscount4=oConn.Execute("select  count(ma_phieu_nhan) dem from PHIEUNHAN_TB where trang_thai_phieu=4");
					rscountitem=oConn.Execute("select count(ma_tb_kh) dem from KHOTHIETBI_KH");
					
					
	var rsCurrentPage;
	var rsPageCount;
	

	rsCurrentPage = Request.QueryString("page");	
	if (isNaN(rsCurrentPage)) {
		rsCurrentPage = 1;
	}
	// Kiem tra tinh hop le cua so trang
		rsPageCount = rs.PageCount;
		if (rsCurrentPage > 0 && rsCurrentPage <= rsPageCount)
		{
			rs.AbsolutePage = rsCurrentPage;
		} 		
%>        <fieldset>
		  <legend align="center">Danh sách phiếu đã lập nhận thiết bị</legend>
		  <center>Có (<%=rscount3("dem")%>) phiếu đã xong, (<%=rscount2("dem")%>) phiếu đang sử lý, (<%=rscount4("dem")%>) phiếu đã trả trên tổng số(<%=rscount("dem")%>) phiếu </center>
		  <%rscount.Close;rscountitem.Close;%>
		  <table width="100%" border="1" cellpadding="0" cellspacing="0" >
                      <tr> 
                        <td width="19">Stt</td>
                        <td width="66">Mã phiếu</td>
                        <td width="109">Của khách</td>
                        <td width="121">TB Kèm theo</td>
                        <td width="74" nowrap>Ngày lập</td>
                        <td width="81" nowrap>Trạng thái</td>
                      <td width="81" nowrap>Tổng tiền</td>
                      </tr>
                      <% dem=1
					while (!rs.EOF) { //&& (rs.AbsolutePage == rsCurrentPage)){%>
                      <tr> 
                        <td><%=dem%></td>
                        <td><a href="../customers/ticket_detail.asp?maphieu=<%=rs("ma_phieu_nhan")%>"><%=rs("ma_phieu_nhan")%></a></td>
                        <td><%=rs("ten_kh")%></td>
                        <% 
			    			maphieu=rs("ma_phieu_nhan");
			    			sqltext2="select * from KHOTHIETBI_KH"
			          		 +" inner join  PHIEUNHAN_TB" 
					   			+" on PHIEUNHAN_TB.ma_phieu_nhan = KHOTHIETBI_KH.ma_phieu_nhan" 
								+" inner join TRANGTHAI_TB on TRANGTHAI_TB.ma_trang_thai_tb=KHOTHIETBI_KH.tinh_trang_tb"
					  		 +" where PHIEUNHAN_TB.ma_phieu_nhan='"+maphieu+"'";
			 				rs2=oConn.Execute(sqltext2);
			  %>
                        <td><%while (!rs2.EOF){%>
                          |<a  href="../items/item_detail.asp?mathietbi=<%=rs2("ma_tb_kh")%>" title="<%=rs2("ten_trang_thai_tb")%>"><%=rs2("ma_tb_kh")%></a>| 
                          <%rs2.MoveNext;}rs2.Close;%>
                          &nbsp; </td>
                        <td><%=rs("ngay")%>/<%=rs("thang")%>/<%=rs("nam")%></td>
                        <td><div align="center"><%=rs("ten_trang_thai")%></div></td>
                      <td><%s= new String(rs("tong_tien_dv"))%><%=s%></td>
                      </tr>
                      <%rs.MoveNext;dem=dem+1;}%>
                    </table>
					</fieldset>
		  <%
	// Hien thi phan duyet phan trang
	 ShowPageNavigation(rsCurrentPage, rsPageCount);
	// rs.Open;
	%>
                    </p>
                    <form name="viewFrm" method="get" action="default_customers.asp">
                      <p> 
                        <input type="hidden" name="page" value="<%=rsCurrentPage%>"/>
                      </p>
                    </form>
                    <%	
	function ShowPageNavigation(rsCurrentPage, rsPageCount) {
		Response.Write("<center><table><tr><td><strong><font color=#cccccc>");
		// link toi trang dau va trang truoc
		if ((rsCurrentPage != 1) && (rsCurrentPage != 0)) {
			Response.Write("<a href=JavaScript:setValue(1);>Trang &#273;&#7847;u</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
			Response.Write("<a href=JavaScript:setValue(" + (rsCurrentPage - 1) + ");>Tr&#432;&#7899;c</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
			}
		else		
		{
			Response.Write("Trang &#273;&#7847;u&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tr&#432;&#7899;c&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
		}
		//link toi trang ke tiep va trang cuoi
		if (rsCurrentPage < rsPageCount) {
			Response.Write("<a href=JavaScript:setValue(" + (parseInt(rsCurrentPage) + parseInt(1)) + ");>Sau</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
			Response.Write("<a href=JavaScript:setValue(" + rsPageCount + ");>Trang cu&#7889;i</a>");
			}
		else
		{
			Response.Write("Sau&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
			Response.Write("Trang cu&#7889;i");
		}
		
		Response.Write("</font></strong></td></tr><tr><td><strong><center><font color=#cccccc>");
		Response.Write("| ");
		// link toi tung trang
		for (p = 1; p <= rsPageCount; p++ ) {
			if (rsCurrentPage != p) {
				Response.Write("<a href=JavaScript:setValue(" + p + ");>" + p + "</a> | ");
			}
			else
			{
				Response.Write("<b>" + p + "</b>" + " | ");
			}
		}
		Response.Write("</font></center></strong></td></tr></table></center>");
	}
	rs.Close;
%>
                    <script language="JavaScript" type="text/JavaScript">
	function setValue(page) {
			viewFrm.page.value=page; 
			viewFrm.submit();
		}
		
	
		
                    </script>
		    <!-- InstanceEndEditable -->
			
         </td>
              </tr>
          </table>
            </td>
        </tr>
      </table></td>
      <td width="10" bgcolor="#32aca8"><img src="../images/d-p01.gif" width="10" height="30"></td>
    </tr>
  </table>
  <table width="770" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td height="74" background="../images/n-d01.jpg"><div align="center" class="textcoppyright">COPYRIGHT @ PCS GROUP C0411G<img src="../images/n-d01.jpg" width="10" height="70"></div></td>
    </tr>
  </table>
</div>
</body>
<!-- InstanceEnd --></html>