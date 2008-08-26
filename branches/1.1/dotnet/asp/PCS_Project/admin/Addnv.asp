<%@LANGUAGE="JSCRIPT" codepage = 65001%>
<html><!-- InstanceBegin template="/Templates/template_admin.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- InstanceBeginEditable name="doctitle" -->
<title>PCS</title>
<!-- InstanceEndEditable -->
<style type="text/css">
<!--

body {
	font-family: "Times New Roman", Times, serif;
	font-size: 14px;
	color: #000000;
}
.Buton {
	font-family: "Times New Roman", Times, serif;
	color: #F06000;
	background-color: #C9C9C9;
	font-size: 10px;
	padding: 0px;
}
.inputtext {
	font-family: "Times New Roman", Times, serif;
	font-size: 14px;
	color: #FF0000;
	background-color: #CCCCCC;
	height: 18px;
	width: 100px;
	border: thin inset #99CC99;
}
.table {
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
	text-align: justify;
	text-indent: 0px;
	white-space: normal;
	display: run-in;
	word-spacing: 20px;
}
.list {
	font-family: "Times New Roman", Times, serif;
	font-size: 14px;
	color: #FF0000;
	background-color: #CCCCCC;
	height: 18px;
	width: 100px;
	border: thin ridge #99CC99;
}
.textcoppyright {
	font-family: "Times New Roman", Times, serif;
	font-size: 16px;
	color: #CCCCCC;
	font-style: italic;
}
.tex_de_muc {
	font-family: "Times New Roman", Times, serif;
	color: #FF8000;
	font-size: 16px;
	font-style: normal;
	text-decoration: none;
	border: 10;
}


-->
</style>

<!-- InstanceBeginEditable name="head" --><!-- InstanceEndEditable -->
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_nbGroup(event, grpName) { //v6.0
  var i,img,nbArr,args=MM_nbGroup.arguments;
  if (event == "init" && args.length > 2) {
    if ((img = MM_findObj(args[2])) != null && !img.MM_init) {
      img.MM_init = true; img.MM_up = args[3]; img.MM_dn = img.src;
      if ((nbArr = document[grpName]) == null) nbArr = document[grpName] = new Array();
      nbArr[nbArr.length] = img;
      for (i=4; i < args.length-1; i+=2) if ((img = MM_findObj(args[i])) != null) {
        if (!img.MM_up) img.MM_up = img.src;
        img.src = img.MM_dn = args[i+1];
        nbArr[nbArr.length] = img;
    } }
  } else if (event == "over") {
    document.MM_nbOver = nbArr = new Array();
    for (i=1; i < args.length-1; i+=3) if ((img = MM_findObj(args[i])) != null) {
      if (!img.MM_up) img.MM_up = img.src;
      img.src = (img.MM_dn && args[i+2]) ? args[i+2] : ((args[i+1])? args[i+1] : img.MM_up);
      nbArr[nbArr.length] = img;
    }
  } else if (event == "out" ) {
    for (i=0; i < document.MM_nbOver.length; i++) {
      img = document.MM_nbOver[i]; img.src = (img.MM_dn) ? img.MM_dn : img.MM_up; }
  } else if (event == "down") {
    nbArr = document[grpName];
    if (nbArr)
      for (i=0; i < nbArr.length; i++) { img=nbArr[i]; img.src = img.MM_up; img.MM_dn = 0; }
    document[grpName] = nbArr = new Array();
    for (i=2; i < args.length-1; i+=2) if ((img = MM_findObj(args[i])) != null) {
      if (!img.MM_up) img.MM_up = img.src;
      img.src = img.MM_dn = (args[i+1])? args[i+1] : img.MM_up;
      nbArr[nbArr.length] = img;
  } }
}
//-->
</script>
<link href="../stylesheet/Default.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
body,td,th {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 12px;
}
-->
</style></head>

<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="" onLoad="MM_preloadImages('../images/menu11.jpg','images/menu_lien_he_11.gif','../images/menu_home_11.gif')">
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
                    <input name="textfield" type="text" class="inputtext" size="30" value="Mã kh cần tìm" onfocus="if(this.value=='Điền từ cần tìm')this.value='';" >
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
          <th width="200"></p>
            <fieldset>
            <!-- InstanceBeginEditable name="nhom_dang_nhap" -->
<p><%
	if (!Session("login")) {
	Session.Abandon();
	Response.Redirect("../login.asp");
	}
else {
	if(Session("quyen") !=1){
		Response.Redirect("../login.asp");
	}
}
%>
                <!--#include file = "../Connections/Connection.inc"-->
            <p>Tài khoản hiện hành:<br>
            (<%=Session("username")%>)&nbsp;<a href="../logout.asp">logout</a></p> 
            <p>&nbsp;</p>
            <!-- InstanceEndEditable --><!-- InstanceBeginEditable name="nhom_menu" -->
			<!--#include file = "menu.asp"-->
   
            <!-- InstanceEndEditable -->
<p>&nbsp;</p>     
			
            </fieldset>
            </th>
          <td width="79%"><table width="98%" height="100%" border="0" cellpadding="00" cellspacing="0">
            <tr>
              <td width="4%">&nbsp;</td>
              <td width="96%" valign="top"><!-- InstanceBeginEditable name="nhom_thietke" -->
                <p>
                  <script language="javascript" >
			  		function Validate(form1) {
						var regex = /^(([\-\w]+)\.?)+@(([\-\w]+)\.?)+\.[a-zA-Z]{2,4}$/;
						var regex1=/^[a-zA-Z]+$/; 
					
						if(form1.manv.value == "" || form1.manv.value == null) {
							alert ("Phải nhập mã nhân viên ");
							form1.manv.focus();
							return false;
						}
						//Match for upper- or lowercase letters					 

						if(form1.tennv.value == "" || form1.tennv.value == null) {
							alert ("Phải nhập tên nhân viên");
							form1.tennv.focus();
							return false;
						}
						
						
						if(form1.username.value == "" || form1.username.value == null) {
							alert("Phải nhập tên đăng nhập");
							form1.username.focus();
							return false;
						}
						
						if(form1.password.value == "" || form1.password.value == null) {
							alert("Phải nhập mật khẩu");
							form1.password.focus();
							return false;
						}
						
						if(form1.password.value.length < 4) {
							alert("Mật khẩu phải nhiều hơn 4 ký tự");
							form1.password.focus();
							return false;
						}
						
						if(isNaN(form1.dienthoai.value)) 
						{
							alert("Điện thoại phải nhập số")
							form1.dienthoai.focus();
							return false;
						}
						if(form1.email.value == "" || form1.email.value == null) {
							alert("Phải nhập email");
							form1.email.focus();
							return false;
						}
					    if(!regex.test(form1.email.value)){
          						alert("Địa chỉ Email không hợp lệ");
								form1.email.focus();
           						return false;
						}
						else {
							return true;
						}
					}
			  
			      </script>
                </p>
                <form action="SaveAddnv.asp" method="post" name="add" id="add" onsubmit="return Validate(add)">
                  <table width="564" border="1" cellpadding="5" cellspacing="0" class="Link">
                    <tr bgcolor="#CCCCCC">
                      <td colspan="2"><div align="center" class="Folder">Nhập nhân viên mới</div></td>
                    </tr>
                    <tr>
                      <td width="144">Mã nhân viên(*)</td>
                      <td width="388"><input name="manv" type="text" id="manv" size="15"></td>
                    </tr>
                    <tr>
                      <td>Họ và tên(*)</td>
                      <td><input name="tennv" type="text" id="tennv">
                      </td>
                    </tr>
                    <tr>
                      <td>Chức vụ</td>
                      <%
					  	var RS1;
						var oConn;
					  %>
                      <!--#include file = "../Connections/Connection.inc" -->
                      <% RS1 = oConn.Execute("Select * from CHUCVU");%>
                      <td><select name="macv" id="macv">
                          <% while (!RS1.EOF) { %>
                          <option value="<%=RS1("ma_chuc_vu")%>"> <%=RS1("ten_chuc_vu")%> </option>
                          <%
						  RS1.MoveNext }
						  %>
                        </select>
                          <a href="Addcv.asp" target="_blank" class="ShowNext">Thêm chức vụ</a> </td>
                    </tr>
                    <tr>
                      <td>Tên đăng nhập(*)</td>
                      <td><input name="username" type="text" id="username">
                      </td>
                    </tr>
                    <tr>
                      <td>Mât khẩu(*)</td>
                      <td><input name="password" type="password" id="password">
                      </td>
                    </tr>
                    <tr>
                      <td height="35">Quyền</td>
                      <%rs = oConn.Execute("Select * from QUYEN");%>
                      <td><select name="quyen_dn" id="quyen_dn">
                          <%while(!rs.EOF) {%>
                          <option value="<%=rs("quyen")%>"> <%=rs("mota")%> </option>
                          <%rs.MoveNext; }%>
                        </select>
                          <a href="Addquyen.asp" target="blank" class="ShowNext">Th&ecirc;m quyền</a></td>
                    </tr>
                    <tr>
                      <td height="35">Điên thoại</td>
                      <td><input name="dienthoai" type="text" id="dienthoai"></td>
                    </tr>
                    <tr>
                      <td height="35">Email</td>
                      <td><input name="email" type="text" id="email"></td>
                    </tr>
                    <tr>
                      <td height="35" colspan="2"><div align="right">
                          <input name="submit"  type="submit" class="VoteButton"  value="Nhập mới">
                          <input name="reset" type="reset" class="VoteButton" id="reset" value="Hủy bỏ">
                      </div></td>
                    </tr>
                  </table>
                </form>
                <p>&nbsp;</p>
              <!-- InstanceEndEditable --></td>
              </tr>
          </table>    
              <p>&nbsp;</p></td>     
        </tr>     
      </table></td>
      <td width="10" bgcolor="#32aca8"><img src="../images/d-p01.gif" width="10" height="30"></td>
    </tr>
  </table>
  <table width="770" height="74" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td height="74" background="../images/n-d01.jpg"><div align="center" class="textcoppyright">COPYRIGHT @ PCS GROUP C0411G<img src="../images/n-d01.jpg" width="10" height="70"></div></td>
    </tr>
  </table>
</div>
</body>
<!-- InstanceEnd --></html>
