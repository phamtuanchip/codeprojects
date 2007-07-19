<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Tìm điểm bước gia công</title>
</head>
<body>
<script language="JavaScript">

<!--

function show()

{
	if(document.form1.PhanLoai[0].checked)
	{
		document.form1.MTV.style = "visibility:visible";
	}
}

//-->

</script>
<script language="JavaScript1.2">
<!--
/*Contractable Headers script- By Website Abstraction
(www.wsabstract.com)
Over 200+ free JavaScripts here!
*/
var head="display:''"
function doit(header){
var head=header.style
if (head.display=="none")
head.display=""
else
head.display="none"
}
//-->
</script>
 
<p>
  <!--#include file = connection.inc-->
  <%
	dim RSThanhVien
	dim RSMaBuocGiaCong
	
	Set RSThanhVien = Server.CreateObject("ADODB.Recordset")
	Set RSBGC = Server.CreateObject("ADODB.Recordset")
	
	strThanhVien = "Select TenThanhVien, MaThanhVien from ThanhVien"
	strBGC = "Select TenBuocGiaCong, MaBuocGiaCong from BuocGiaCong"
	RSThanhVien.open strThanhVien, conn
	RSBGC.open strBGC, conn
%>
</p>
<form id="form1" name="form1" method="post" action="">
  <table width="100%" border="1">
    <tr>
      <td><div align="right">Bạn muốn tìm theo </div></td>
      <td>
		<p>
			  <label>
			    <input name="PhanLoai" type="radio" value="type_MaThanhVien" onchange="show()" />
			    Tên thành viên hội đồng</label>
			  <br />
			  <label>
			    <input name="PhanLoai" type="radio" value="type_MaBuocGiaCong" />
			    Tên bước gia công</label>
			  <br />
	    </p>	  </td>
    </tr>
    <tr>
      <td><div style="visibility:hidden"></div></td>
      <td><span style="display:none" style=&{head}>
        <select name="MaThanhVien">
          <%
				while not (RSThanhVien.EOF)
		%>
          <option value="<%=RSThanhVien("MaThanhVien")%>"><%=RSThanhVien("TenThanhVien")%></option>
          <%
			RSThanhVien.MoveNext
			wend
		%>
        </select>
      </span><span style="visibility:hidden" id="MBGC">
	  	<select name="MaBuocGiaCong">
			<%
				while not (RSBGC.EOF)
			%>
			<option value="<%=RSBGC("MaBuocGiaCong")%>"><%=RSBGC("TenBuocGiaCong")%></option>
			<%
				RSBGC.MoveNext
				wend
			%>
		</select>
	  </span>	</td>
    </tr>
    <tr>
      <td><div align="right">
        <input type="submit" name="Submit" value="Đồng ý" />
      </div></td>
      <td><input name="Reset" type="reset" id="Reset" value="Hủy bỏ" /></td>
    </tr>
  </table>
</form>
<p>&nbsp; </p>
</body>
</html>
