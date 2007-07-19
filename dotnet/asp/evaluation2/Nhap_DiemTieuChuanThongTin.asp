<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Nhập điểm tiêu chuẩn thông tin</title>
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
        if (p<1 || p==(val.length-1)) errors+='- '+nm+' must contain an e-mail address.\n';
      } else if (test!='R') { num = parseFloat(val);
        if (isNaN(val)) errors+='- '+nm+' must contain a number.\n';
        if (test.indexOf('inRange') != -1) { p=test.indexOf(':');
          min=test.substring(8,p); max=test.substring(p+1);
          if (num<min || max<num) errors+='- '+nm+' must contain a number between '+min+' and '+max+'.\n';
    } } } else if (test.charAt(0) == 'R') errors += '- '+nm+' is required.\n'; }
  } if (errors) alert('The following error(s) occurred:\n'+errors);
  document.MM_returnValue = (errors == '');
}
//-->
</script>

<p>
  <!--#include file = connection.inc-->
  <%
	dim RSThongTin
	dim RSThanhVien
	
	Set RSThongTin = Server.CreateObject("ADODB.Recordset")
	Set RSThanhVien = Server.CreateObject("ADODB.Recordset")
	
	strThanhVien = "select MaThanhVien, TenThanhVien from ThanhVien"
	strThongTin = "select MaChiTietThongTin, TenChiTietThongTin from ChiTietThongTin"
%>
</p>
<form action="XuLyNhap_DiemTieuChuanThongTin.asp" method="post" name="form1" onsubmit="MM_validateForm('Imax','','RinRange1:9','Imin','','RinRange1:9');return document.MM_returnValue">
<table width="100%" border="1">
  <tr>
    <td><div align="right">Tên chi tiết thông tin </div></td>
    <td>
		<select name="MaChiTietThongTin">
		<%
			while not (RSThongTin.EOF)
		%>
		<option value="<%=RSThongTin("MaChiTietThongTin")%>"><%=RSThongTin("TenChiTietThongTin")%></option>
		<%
			RSThongTin.MoveNext
			wend
		%>
		</select>
	</td>
  </tr>
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
		</select>
	</td>
  </tr>
  <tr>
    <td><div align="right">Imax</div></td>
    <td><input type="text" name="Imax" /></td>
  </tr>
  <tr>
    <td><div align="right">Imin</div></td>
    <td><input type="text" name="Imin" /></td>
  </tr>
  <tr>
    <td><div align="right">Ghi chú </div></td>
    <td><textarea name="GhiChu" cols="45" rows="5"></textarea></td>
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
