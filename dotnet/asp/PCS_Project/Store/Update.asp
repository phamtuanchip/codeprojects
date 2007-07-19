<%@LANGUAGE="JAVASCRIPT" CODEPAGE="65001"%>
<!--#include file = "../Connections/Connection.inc"-->
<%
//B?t các bi form
var MaThietBi = Request.Form("MaThietBi");
var MaNhaCungCap = Request.Form("NhaCungCap");
var MaLoaiThietBi = Request.Form("LoaiThietBi");
var TenThietBi = Request.Form("TenThietBi");
var SoLuongNhap = Request.Form("SoLuongNhap"); //nhap vao table NHAPXUAT
var GiaNhap = Request.Form("GiaNhap");//nhap vao table NHAPXUAT
var GiaXuat = Request.Form("GiaXuat");//nhap vao table NHAPXUAT
var MaHangSanXuat = Request.Form("HangSanXuat"); // nhap vao table HANGSANXUAT
var SoHieuThietBi = Request.Form("SoHieuThietBi");
var MoTaChiTiet = Request.Form("MoTaChiTiet");
var KiemTra = Request.Form("KiemTra");

%>
<%
	RS = oConn.Execute("exec phieuab"+" "+MaThietBi);
	var MaPhieu = RS("ma_phieu");
%>
<!--Chinh sua thong tin -->
<% 
string = "UPDATE THIETBI SET ";
string = string + "ten_tb =N'" + TenThietBi+"',";
string = string + "ma_loai_tb =" + MaLoaiThietBi + ",";
string = string + "ma_hang_sx =" + MaHangSanXuat + ",";
string = string + "so_hieu_tb ='"+ SoHieuThietBi+ "',";
string = string + "mo_ta_ct =N'"+ MoTaChiTiet+ "'";
string = string +" where ma_tb = " + MaThietBi;
oConn.Execute(string);
%>

<!--Chinh sua vao phieu chi tiet nhap xuat-->
<%
string = "UPDATE CHITIETNX SET ";
string = string + "so_luong_nhap =" + SoLuongNhap + ",";
string = string + "gia_nhap =" + GiaNhap +",";
string = string + "gia_xuat =" +GiaXuat;
string = string +" where ma_tb = " + MaThietBi;
oConn.Execute(string);
%>
<body>
<META http-equiv=Refresh content="0; url=addview.asp?mp=<%=MaPhieu%>">
</body>
<%RS.Close;%>
