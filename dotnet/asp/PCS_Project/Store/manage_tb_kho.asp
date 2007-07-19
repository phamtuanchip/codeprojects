<%@LANGUAGE="JAVASCRIPT" CODEPAGE="65001"%>
<!--#include file = "../Connections/Connection.inc"-->
<%
//B?t các bi form
var MaNhanVien = Session("ma_nv");
var MaThietBi;
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

if(GiaNhap ==""){
GiaNhap = 0
}
if(GiaXuat == "" ){
GiaXuat = 0
}
%>

<!--lap phieu -->
<%
if(KiemTra==""){
string = "insert into PHIEUNHAPXUAT (ten_phieu,ma_nv,ma_nha_cc,ngay_nhap)" ;
string = string +"values('NHAP','"+MaNhanVien+"','"+MaNhaCungCap+"',getdate())";
oConn.Execute(string);
}
%>
<!--Nhap Thiet bi-->
<% 

string = "INSERT INTO THIETBI (ten_tb,ma_loai_tb,ma_hang_sx,so_hieu_tb,mo_ta_ct)" ;
string = string +"values(N'"+TenThietBi+"',"+MaLoaiThietBi+","+MaHangSanXuat+",'"+SoHieuThietBi+"',N'"+MoTaChiTiet+"')";
oConn.Execute(string);
%>
<!--Lay Ma phieu Va ma thiet bi vua nhap-->
<%
RS = oConn.Execute("SELECT MAX(ma_phieu) as MaxMaPhieu FROM PHIEUNHAPXUAT");
MaxMaPhieu=RS("MaxMaPhieu");
RS = oConn.Execute("SELECT MAX(ma_tb) as MaxMaThietBi FROM THIETBI");
MaxMaThietBi=RS("MaxMaThietBi");
%>
<%
string = "INSERT INTO CHITIETNX (ma_tb,ma_phieu,so_luong_nhap,gia_nhap,gia_xuat)" ;
string = string +"values("+MaxMaThietBi+","+MaxMaPhieu+","+SoLuongNhap+","+GiaNhap+","+GiaXuat+")";
oConn.Execute(string,oConn);
%>
<body>
<META http-equiv=Refresh content="0; url=addview.asp?mp=<%=MaxMaPhieu%>">
<%RS.Close;%>
</body>