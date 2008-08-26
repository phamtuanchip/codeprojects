<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>
	<script language="javascript">
	 function tinh()
	 {  
	    t=1 ;
	    dem=9 ;
		tong =0;
 	 	while (t <= dem)
		{
			tong = parseInt(tong) + parseInt(document.getElementById("test"+t));
			t++;
			
		}
		alert(tong);
	 }
	</script>
<body>
<form id="form1" name="form1" method="post" action="">
  <table width="200" border="1">
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
	<%dem = 1 %>
	<%while (dem <9) %>
    <tr>
      <td>&nbsp;</td>
      <td><input type="text" name="textfield" id="test"+<%=dem%> /></td>
    </tr>
	<%dem=dem+1%>
	<%wend%>
    <tr>
	
      <td>&nbsp;</td>
      <td><input type="button" name="Button" value="Button"  onclick="tinh();"/></td>
    </tr>
  </table>
</form>
</body>
</html>
