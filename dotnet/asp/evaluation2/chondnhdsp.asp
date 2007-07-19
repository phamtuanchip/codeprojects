<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<!--#include file="connection.inc" -->
<form id="chondnhdsp" name="chondnhdsp" method="post" action="">
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <table width="46%" border="1" align="center">
    <tr>
      <td width="19%">Chọn doanh nghiệp</td>
      <td width="81%"><select name="chondn" id="chondn" onchange="window.location='nguoidungdangnhap.asp?ma_dn='+this.value">
        <%rs.open "select * from doanhnghiep",conn%>
        <option value="0" >--Chọn một doanh nghiệp--</option>
        <% while not rs.eof %>
        <%if (cint(Request.QueryString("ma_dn"))=rs(0)) then %>
        <option value="<%=rs(0)%>" selected="selected"><%=rs(1)%></option>
        <%else%>
        <option value="<%=rs(0)%>" ><%=rs(1)%></option>
        <%end if%>
        <%rs.movenext()%>
        <% wend %>
        <%rs.close()%>
      </select></td>
    </tr>
    <tr>
      <td>Chọn hội đồng</td>
      <td><select name="chonhd" id="chonhd" onchange="window.location='nguoidungdangnhap.asp?ma_dn='+chondnhdsp.chondn.value+'&amp;ma_hd='+this.value">
        <%if (len(Request.QueryString())>1) then  %>
        <%rs.open "select * from hoidong where madoanhnghiep="& Request.QueryString("ma_dn"),conn%>
        <%else%>
        <%rs.open "select * from hoidong",conn%>
        <%end if%>
        <%if rs.eof then%>
        <option value="0">--Chưa có hội đồng--</option>
        <%else%>
        <option value="0" >--Chọn một hội đồng--</option>
        <%end if%>
        <% while not rs.eof %>
        <%if (cint(Request.QueryString("ma_hd"))=rs(0)) then %>
        <option value="<%=rs(0)%>" selected="selected"><%=rs(1)%></option>
        <%else%>
        <option value="<%=rs(0)%>" ><%=rs(1)%></option>
        <%end if%>
        <%rs.movenext()%>
        <% wend %>
        <%rs.close()%>
      </select></td>
    </tr>
    <tr>
      <td>Chọn sản phẩm</td>
      <td><select name="chonsp" id="chonsp" onchange="window.location='nguoidungdangnhap.asp?ma_dn='+chondnhdsp.chondn.value+'&amp;ma_hd='+chondnhdsp.chonhd.value+'&amp;ma_sp='+this.value;">
        <%if (((len(Request.QueryString())>1) and (Request.QueryString("ma_dn")>0))and (Request.QueryString("ma_hd")>0) ) then  %>
        <%rs.open "select * from sanpham where madoanhnghiep="& Request.QueryString("ma_dn")& " and mahoidong="& Request.QueryString("ma_hd"),conn%>
        <%else%>
        <%rs.open "select * from sanpham",conn%>
        <%end if%>
        <%if rs.eof then%>
        <option value="0">--Chưa có sản phẩm--</option>
        <%else%>
        <option value="0" >--Chọn một sản phẩm--</option>
        <%end if%>
        <% while not rs.eof %>
        <%if (cint(Request.QueryString("ma_sp"))=rs(0)) then %>
        <option value="<%=rs(0)%>" selected="selected"><%=rs(1)%></option>
        <%else%>
        <option value="<%=rs(0)%>" ><%=rs(1)%></option>
        <%end if%>
        <%rs.movenext()%>
        <% wend %>
        <%rs.close()%>
      </select></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="Nhập điểm" />
      <input type="reset" name="Submit2" value="Làm lại" /></td>
    </tr>
  </table>
 
</form>
 <p><%=Request.QueryString("ma_dn")%><br/>
    <%=Request.QueryString("ma_hd")%><br/>
    <%=Request.QueryString("ma_sp")%><br/>
</p>
</body>
</html>
