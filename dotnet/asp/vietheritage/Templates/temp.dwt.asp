<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- TemplateBeginEditable name="doctitle" -->
<title>Wellcome VietHeritage Travel</title>
<!-- TemplateEndEditable -->
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.style1 {
	color: #ff7800;
	font-size: 11px;
	font-family: tahoma;
	font-weight: bold;
}
.style2 {
	color: #51588c;
	font-size: 10px;
	font-family: tahoma;
	font-weight: bold;
}
.style3 {
	font-family: tahoma;
	font-size: 11px;
	color: #FFFFFF;
}
.style4 {
	color: #51588c;
	font-size: 11px;
	font-family: tahoma;
	font-weight: bold;
}
.style5 {
	font-family: tahoma;
	font-size: 11px;
	color: #ff7800;
}
.style7 {color: #767676}
.style8 {
	color: #ff6600;
	font-size: 11px;
	font-family: tahoma;
	font-weight: bold;
}
.style10 {
	color: #767676;
	font-size: 11px;
	font-family: tahoma;
}
.style11 {color: #51588c}
.style12 {font-weight: bold}
.style14 {
	font-family: tahoma;
	font-size: 10px;
	color: #FFFFFF;
}
.style16 {
	color: #767676;
	font-size: 10px;
	font-family: tahoma;
}
.style17 {
	font-family: tahoma;
	font-weight: bold;
	color: #767676;
	font-size: 11px;
}
-->
</style>
<!-- TemplateBeginEditable name="head" --><!-- TemplateEndEditable -->
<style type="text/css">
<!--
.style1 {	color: #ff7800;
	font-size: 11px;
	font-family: tahoma;
	font-weight: bold;
}
.style10 {	color: #767676;
	font-size: 11px;
	font-family: tahoma;
}
.style11 {color: #51588c}
.style12 {font-weight: bold}
.style14 {	font-family: tahoma;
	font-size: 10px;
	color: #FFFFFF;
}
.style16 {	color: #767676;
	font-size: 10px;
	font-family: tahoma;
}
.style17 {	font-family: tahoma;
	font-weight: bold;
	color: #767676;
	font-size: 11px;
}
.style2 {	color: #51588c;
	font-size: 10px;
	font-family: tahoma;
	font-weight: bold;
}
.style3 {	font-family: tahoma;
	font-size: 11px;
	color: #FFFFFF;
}
.style4 {	color: #51588c;
	font-size: 11px;
	font-family: tahoma;
	font-weight: bold;
}
.style5 {	font-family: tahoma;
	font-size: 11px;
	color: #ff7800;
}
.style7 {color: #767676}
.style8 {	color: #ff6600;
	font-size: 11px;
	font-family: tahoma;
	font-weight: bold;
}
.style18 {	color: #ff7800;
	font-size: 11px;
	font-family: tahoma;
	font-weight: bold;
}
.style18 {color: #ff7800;
	font-size: 11px;
	font-family: tahoma;
	font-weight: bold;
}
-->
</style>
</head>

<body>
              <!--#include file="../connect(vb).inc" -->
			  <% rs.open " select * from compinfo ",conn
	if not rs.eof then
	 bannerUrl=rs("bannerUrl")
	else
	 bannerUrl="../images/big_pic.jpg"
	end if
	rs.close()
	%>

<!-- ImageReady Slices (main.psd) -->
<table width="780" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr align="left" valign="top">
    <td colspan="2"><table width="780"  border="0" cellspacing="0" cellpadding="0">
      <tr bgcolor="#CACDDF">
        <td height="4" colspan="2" align="left" valign="top"><img src="../images/spacer.gif" width="1" height="4" /></td>
      </tr>
      <tr>
        <td width="488" align="left" valign="top"><img src="<%=bannerUrl%>" width="488" height="196" /></td>
        <td width="292" align="left" valign="top"><table width="100%" height="196"  border="0" cellpadding="0" cellspacing="0">
          <tr align="left" valign="top">
            <td width="145" background="../images/line_back.gif" style="background-repeat:no-repeat; background-position:left top "><div style="padding-left:23px; padding-top:33px">
              <table width="111" height="21"  border="0" cellpadding="0" cellspacing="0">
                <%rs.open "select * from navigator ",conn%>
                <%while not rs.eof%>
                <tr align="left" valign="top">
                  <td width="20"><a href="<%=rs("nvUrl")%>"><img src="../images/home.gif" width="11" height="14" border="0" /></a></td>
                  <td><a href="<%=rs("nvUrl")%>" class="style18" style="text-decoration:none; color: #2d9c1b;"><%=rs("nvName")%></a></td>
                </tr>
                <%rs.movenext()%>
                <%wend%>
                <%rs.close()%>
              </table>
            </div></td>
            <td width="2" background="../images/line_back_2.gif" style="background-repeat:no-repeat; background-position:top left ">&nbsp;</td>
            <td background="../images/line_back_3.gif" style="background-repeat:no-repeat; background-position:right top "><div style="padding-left:5px; padding-top:33px">

			  <table width="100%"  border="0" cellpadding="0" cellspacing="0">
                
				<%rs.open "select * from tourstype ",conn%>
				<%while not rs.eof%>
				<tr align="left" valign="top">
                  <td valign="middle"><img src="../images/point_1.gif" width="5" height="5" hspace="5" /></td>
                  <td><a href="../display.asp?Type=<%=rs(0)%>" class="style2" style="text-decoration:none "><%=rs("name")%></a></td>
                </tr>
				<%rs.movenext()%>
				<%wend%>
				<%rs.close()%>
              </table>
            </div></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="46" colspan="2" align="left" valign="top"><div align="center">
          <table width="776"  border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="40" align="left" valign="top"><div style="padding-left:239px; padding-top:0px">
                <table width="539" height="40"  border="0" cellpadding="0" cellspacing="0">
                  <tr align="left" valign="top">
                    <td width="251" background="../images/back_2.gif"><div style="padding-left:11px; padding-top:13px">
                      <input type="text" name="textfield" style="height:17px; width:140px; font-family:tahoma; font-size:10px; border-color:#CACDDF; border-style:solid " />
                      <a href="#"><img src="../images/search.gif" width="60" height="16" border="0" align="absmiddle" /></a></div></td>
                    <td width="288"><table width="288" height="40"  border="0" cellpadding="0" cellspacing="0">
                      <tr align="left" valign="top">
                        <td width="42"><a href="../default.asp"><img src="../images/but_1.gif" width="42" height="40" border="0" /></a></td>
                        <td width="41"><a href="#"><img src="../images/but_2.gif" width="41" height="40" border="0" /></a></td>
                        <td width="42"><a href="#"><img src="../images/but_3.gif" width="42" height="40" border="0" /></a></td>
                        <td width="163" background="../images/back_3.gif"><div style="padding-left:5px; padding-top:7px"><span class="style3">Save time and money by using<br />
                          our experienced agents</span></div></td>
                      </tr>
                    </table></td>
                  </tr>
                </table>
              </div></td>
            </tr>
            <tr>
              <td height="6" align="left" valign="top" bgcolor="#7EC273"><img src="../images/spacer.gif" width="1" height="6" /></td>
            </tr>
          </table>
        </div></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td width="241" align="left" valign="top"><div style="padding-left:0px; padding-bottom:5px">
      <table width="241"  border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td align="left" valign="top"><table width="241"  border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="40" align="left" valign="top" background="../images/kettle_1.gif"><div style="padding-left:53px; padding-top:16px"><span class="style4">Hotel search</span></div></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td align="left" valign="top"><div style="padding-bottom:5px; padding-top:10px">
            <table width="241"  border="0" cellpadding="0" cellspacing="0" background="../images/back_mini.gif" style="background-repeat:repeat-y; background-position:right ">
              <tr>
                <td align="left" valign="top"><div style="padding-bottom:18px; padding-top:16px">
                  <table width="241"  border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td align="left" valign="top" background="../images/rep.gif" style="background-repeat:repeat-y; background-position:left "><div style="padding-left:24px; padding-top:0px">
                        <table width="207" height="58"  border="0" cellpadding="0" cellspacing="0">
                          <tr align="left" valign="top">
                            <td align="right"><span class="style17">Country:</span></td>
                            <td width="144" align="right"><input type="text" name="textfield3" style="height:17px; width:140px; font-family:tahoma; font-size:10px; border-color:#CACDDF; border-style:solid " /></td>
                          </tr>
                          <tr align="left" valign="top">
                            <td align="right" class="style17">City:</td>
                            <td align="right"><input type="text" name="textfield32" style="height:17px; width:140px; font-family:tahoma; font-size:10px; border-color:#CACDDF; border-style:solid " /></td>
                          </tr>
                          <tr align="left" valign="top">
                            <td align="right" class="style17">Hotel level:</td>
                            <td align="right"><input type="text" name="textfield33" style="height:17px; width:140px; font-family:tahoma; font-size:10px; border-color:#CACDDF; border-style:solid " /></td>
                          </tr>
                        </table>
                        <div style="padding-left:147px; padding-top:5px; padding-bottom:5px"><a href="#"><img src="../images/search.gif" border="0" /></a></div>
                        <span class="style8">Note:</span> <span class="style10">Lorem ipsum dolor sit amet, coner adipiscing elit, sed diam nonummy nibh. </span></div></td>
                    </tr>
                  </table>
                </div></td>
              </tr>
              <tr>
                <td align="left" valign="top"><table width="241%"  border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="43" align="left" valign="top" background="../images/kettle_6.gif"><div style="padding-left:61px; padding-top:16px"><span class="style4">Weather</span></div></td>
                  </tr>
                  <tr>
                    <td height="101" align="left" valign="top"><div style="padding-left:24px; padding-top:24px">
                      <table width="207"  border="0" cellspacing="0" cellpadding="0">
                        <tr align="left" valign="top">
                          <td width="67" class="style17">Select city:</td>
                          <td><input type="text" name="textfield332" style="height:17px; width:140px; font-family:tahoma; font-size:10px; border-color:#CACDDF; border-style:solid " /></td>
                        </tr>
                      </table>
                      <div style="padding-left:147px; padding-top:5px; padding-bottom:5px"><a href="#"><img src="../images/go!.gif" width="60" height="16" border="0" /></a></div>
                    </div>
                              <div class="style10" style="padding-left:24px; padding-top:5px; padding-bottom:10px">Lorem ipsum dolor sit amet, consect<br />
                                etuer adipiscing elit, sed diam.</div></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td align="left" valign="top"><table width="241"  border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="43" align="left" valign="top" background="../images/kettle_7.gif"><div style="padding-left:61px; padding-top:16px"><span class="style4">Cancellation policy</span></div></td>
                  </tr>
                  <tr>
                    <td align="left" valign="top"><div style="padding-left:26px; padding-top:22px; padding-bottom:20px"><img src="../images/point_1.gif" width="5" height="5" hspace="2" vspace="0" align="left" style="margin-bottom:10px; margin-top:3px " />
                                  <div style="padding-left:10px; padding-top:0px; font-size: 11px; font-family: tahoma;"><span class="style7">Lorem ipsum dolor sit amet, consect<br />
                                    etuer adipiscing elit, sed diam ipsum<br />
                                    dolor sit amet, consectetuer adipiscing<br />
                                    elit, sed diam..</span>
                                      <div style="padding-left:135px; padding-top:0px; padding-bottom:0px"><a href="#" class="style2" style="text-decoration:none ">Read more </a><img src="../images/point_1.gif" width="5" height="5" hspace="0" vspace="0" /></div>
                                  </div>
                    </div></td>
                  </tr>
                </table></td>
              </tr>
            </table>
          </div></td>
        </tr>
      </table>
    </div></td>
    <td width="539" align="left" valign="top"><table width="539"  border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td align="left" valign="top"><table width="539"  border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="40" align="left" valign="top" background="../images/kettle_8.gif"><table width="100%" height="40"  border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td width="308" align="left" valign="top"><div style="padding-left:53px; padding-top:16px"><span class="style4">What you need to know</span></div></td>
                <td align="left" valign="top"><div style="padding-left:53px; padding-top:16px"><span class="style4">Tours catalogue</span></div></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td align="left" valign="top"><div style="padding-left:14px; padding-top:2px">
          <table width="512"  border="0" cellspacing="0" cellpadding="0">
            <tr align="left" valign="top">
              <td width="290" bgcolor="#FFFFFF" style="background-repeat:repeat-x; background-position:top "><!-- TemplateBeginEditable name="noidungtrong" -->noidungtrong<!-- TemplateEndEditable --></td>
              <td width="5" background="../images/rep_2.gif"><img src="../images/spacer.gif" width="5" height="1" /></td>
              <td bgcolor="#FFFFFF" style="background-repeat:repeat-x; background-position:top "><!-- TemplateBeginEditable name="tourcatalog" -->
                <table width="216"  border="0" cellspacing="0" cellpadding="0">
                  <tr align="left" valign="top">
                    <td background="../images/back_rep_2.gif" bgcolor="#FFFFFF" style="background-repeat:repeat-x; background-position:top "><div style="padding-left:5px; padding-top:10px"><img src="../images/point_1.gif" width="5" height="5" hspace="2" vspace="0" align="left" style="margin-bottom:0x; margin-top:3px " />
                            <div style="padding-left:10px; padding-top:0px"><span class="style5"><span class="style12"><span class="style11">Cruise</span> MALTA</span><br />
                                  <a href="#"><img src="../images/pic_1.gif" width="84" height="84" border="0" align="left" style="margin-top:5px; margin-right:10px; margin-bottom:5px" /></a> </span>
                                <div style="padding-left:5px; padding-top:5px; padding-bottom:5px"><span class="style5"><strong>Price:</strong><span class="style7"> 441 $</span><br />
                                      <strong>Tour length:</strong><span class="style7"> 7 days</span><br />
                                      <strong>Transport:</strong><span class="style7"> Airplane</span><br />
                                      <strong>Hotel:</strong> <span class="style7">****</span><br />
                                      <strong>Tours:</strong> <span class="style7">2</span></span>
                                    <div style="padding-left:125px; padding-top:5px"><a href="#" class="style2" style="text-decoration:none ">Read more </a><img src="../images/point_1.gif" width="5" height="5" hspace="0" vspace="0" /></div>
                                </div>
                              <br />
                            </div>
                    </div></td>
                  </tr>
                  <tr align="left" valign="top">
                    <td background="../images/back_rep_2.gif" bgcolor="#FFFFFF" style="background-repeat:repeat-x; background-position:top "><div style="padding-left:5px; padding-top:10px"><img src="../images/point_1.gif" width="5" height="5" hspace="2" vspace="0" align="left" style="margin-bottom:0x; margin-top:3px " /></div></td>
                  </tr>
                  <tr align="left" valign="top">
                    <td background="../images/back_rep_2.gif" bgcolor="#FFFFFF" style="background-repeat:repeat-x; background-position:top "><div style="padding-left:5px; padding-top:10px"><img src="../images/point_1.gif" width="5" height="5" hspace="2" vspace="0" align="left" style="margin-bottom:0x; margin-top:3px " />
                            <div style="padding-left:10px; padding-top:0px"><span class="style5"><span class="style12"><span class="style11">Cruise</span> TURKEY</span><br />
                                  <a href="#"><img src="../images/pic_3.gif" width="84" height="84" border="0" align="left" style="margin-top:5px; margin-right:10px; margin-bottom:5px" /></a> </span>
                                <div style="padding-left:5px; padding-top:5px; padding-bottom:5px"><span class="style5"><strong>Price:</strong><span class="style7"> 441 $</span><br />
                                      <strong>Tour length:</strong><span class="style7"> 7 days</span><br />
                                      <strong>Transport:</strong><span class="style7"> Airplane</span><br />
                                      <strong>Hotel:</strong> <span class="style7">****</span><br />
                                      <strong>Tours:</strong> <span class="style7">2</span></span>
                                    <div style="padding-left:125px; padding-top:5px"><a href="#" class="style2" style="text-decoration:none ">Read more </a><img src="../images/point_1.gif" width="5" height="5" hspace="0" vspace="0" /></div>
                                </div>
                              <span class="style10">Lorem ipsum dolor sit amet, conse<br />
                                ctetuer adipiscing elit, sed diam. </span></div>
                    </div></td>
                  </tr>
                </table>
              <!-- TemplateEndEditable --></td>
            </tr>
          </table>
        </div></td>
      </tr>
    </table></td>
  </tr>
  <tr align="left" valign="top">
    <td height="50" colspan="2"><div style="padding-left:2px; padding-top:0px">
      <table width="776" height="50"  border="0" cellpadding="0" cellspacing="0">
        <tr align="left" valign="top">
          <td width="361" background="../images/back_4.gif"><table width="361" height="50"  border="0" cellpadding="0" cellspacing="0">
            <tr align="left" valign="top">
              <td width="104" align="left" valign="top"><div style="padding-left:18px; padding-top:23px"><a href="index.html" class="style14">About Company</a></div></td>
              <td width="44"><div style="padding-left:8px; padding-top:23px"><a href="index-1.html" class="style14">Tours</a></div></td>
              <td width="63"><div style="padding-left:12px; padding-top:23px"><a href="index-2.html" class="style14">Services</a></div></td>
              <td width="86"><div style="padding-left:9px; padding-top:23px"><a href="index-3.html" class="style14">About Project</a></div></td>
              <td><div style="padding-left:12px; padding-top:23px"><a href="index-4.html" class="style14">Contact Us</a></div></td>
            </tr>
          </table></td>
          <td background="../images/bot_rep.gif">&nbsp;</td>
        </tr>
      </table>
    </div></td>
  </tr>
  <tr align="left" valign="top">
    <td height="100%" colspan="2"><div style="padding-left:11px; padding-top:6px"><img src="../images/bottom_pic.gif" width="2" height="30" align="left" style="margin-right:10px " /> <span class="style16">All Rights Reserved. 2004 Company Name.<br />
      Contact Us: </span><a href="#" class="style16" style="text-decoration:none ">contact@company_name.com</a></div></td>
  </tr>
</table>
<!-- End ImageReady Slices -->

</body>
</html>
