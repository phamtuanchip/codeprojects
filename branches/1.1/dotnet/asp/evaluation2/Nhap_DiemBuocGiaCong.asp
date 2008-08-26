<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Nhập điểm bước gia công</title>
</head>

<body>
<script type="text/JavaScript">
<!--
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
        if (p<1 || p==(val.length-1)) errors+='- '+nm+' phải là địa chỉ e-mail.\n';
      } else if (test!='R') { num = parseFloat(val);
        if (isNaN(val)) errors+='- '+nm+' phải là số.\n';
        if (test.indexOf('inRange') != -1) { p=test.indexOf(':');
          min=test.substring(8,p); max=test.substring(p+1);
          if (num<min || max<num) errors+='- '+nm+' phải là số nằm trong khoảng từ '+min+' đến '+max+'.\n';
    } } } else if (test.charAt(0) == 'R') errors += '- '+nm+' không được để trống.\n'; }
  } if (errors) alert('Có một số lỗi đã xảy ra:\n'+errors);
  document.MM_returnValue = (errors == '');
}
//-->
</script>

<p>
  <!--#include file = connection.inc-->
  <%
	strBGC = "select MaBuocGiaCong, TenBuocGiaCong from BuocGiaCong"
	strThanhVien = "select MaThanhVien, TenThanhVien from ThanhVien"
	
	dim RSBGC
	dim RSThanhVien
	
	Set RSBGC = Server.CreateObject("ADODB.Recordset")
	Set RSThanhVien = Server.CreateObject("ADODB.Recordset")
	
	RSBGC.open strBGC, conn
	RSThanhVien.open strThanhVien, conn
%>
</p>
<form action="XuLyNhap_DiemBuocGiaCong.asp" method="post" name="form1" id="form1" onsubmit="MM_validateForm('Tmax','','RinRange1:9','Tmin','','RinRange1:9');return document.MM_returnValue">
  <table width="100%" border="1">
    <tr>
      <td><div align="right">Tên thành viên hội đồng </div></td>
      <td>
	  	<select name="MaThanhVien">
			<%
				while not (RSThanhVien.EOF)
			%>
			<option value="<%=RSThanhVien("MaThanhVien")%>"><%=RSThanhVien("TenThanhVien")%></option>
			<%
				RSThanhVien.MoveNext
				wend
			%>
		</select>	  </td>
    </tr>
    <tr>
      <td><div align="right">Bước gia công </div></td>
      <td>
	  	<select name="MaBuocGiaCong">
			<%
				while not (RSBGC.EOF)
			%>
			<option value="<%=RSBGC("MaBuocGiaCong")%>"><%=RSBGC("TenBuocGiaCong")%></option>
			<%
				RSBGC.MoveNext
				wend
			%>
		</select>	  </td>
    </tr>
    <tr>
      <td><div align="right">Tmax</div></td>
      <td><input name="Tmax" type="text" id="Tmax" /></td>
    </tr>
    <tr>
      <td><div align="right">Tmin</div></td>
      <td><input name="Tmin" type="text" id="Tmin" /></td>
    </tr>
    <tr>
      <td><div align="right">Ghi chú </div></td>
      <td>
	  	<textarea name="GhiChu" cols="45" rows="5"></textarea>	  </td>
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
