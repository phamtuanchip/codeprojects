<%@LANGUAGE="JAVASCRIPT" CODEPAGE="65001"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Lưu nhật ký thiết bị</title>
</head>


<body>
<!--#include file="../connections/connection.inc"-->
<% 
maphieu=Request.Form("maphieu");
mathietbi=Request.Form("mathietbi");
mathietbithay=Request.Form("thietbithay");
mucbaonhap=Request.Form("baonhap");
if (mathietbithay=="00") mathietbithay=null; else {
  sqltext2="update THIETBI set muc_bao_nhap=muc_bao_nhap+"+mucbaonhap+" where ma_tb="+mathietbithay;
   oConn.Execute(sqltext2);}
tongtien=Request.Form("tongcong");
soluongthay=Request.Form("soluonglam1");
soluongsua=Request.Form("tongsotblam");
soluongkhongsua=Request.Form("slkhongsua");
soluongdoi=Request.Form("slbaohanh");
motaloi=Request.Form("motaloi");
oConn.Execute("update PHIEUNHAN_TB set tong_tien_dv=tong_tien_dv+"+tongtien+" where ma_phieu_nhan='"+maphieu+"'");
sqltext ="update NHATKY_TB set ma_tb_thay="+mathietbithay+",so_luong_thay=so_luong_thay+"+soluongthay
              +",so_luong_sua=so_luong_sua+"+soluongsua+",so_luong_0_sua=so_luong_0_sua+"+soluongkhongsua
			  +",so_luong_doi=so_luong_doi+"+soluongdoi+",ngay_ghi_nk= getdate(),nguoi_lam='"+Session("ma_nv")+"'"
			  +", mo_ta_loi='"+motaloi+"'"
			  +" where ma_tb_kh='"+mathietbi+"'" ;

sqltext1="update THONGKE set tinh_trang_tb=1 where  so_luong_thay+so_luong_sua+so_luong_0_sua+so_luong_doi=0"
sqltext2="update THONGKE set tinh_trang_tb=2 where  so_luong_thay+so_luong_sua+so_luong_0_sua+so_luong_doi<so_luong_nhan and  so_luong_thay+so_luong_sua+so_luong_0_sua+so_luong_doi >0"
sqltext3="update THONGKE set tinh_trang_tb=3 where  so_luong_thay+so_luong_sua+so_luong_0_sua+so_luong_doi=so_luong_nhan"
oConn.Execute(sqltext);
oConn.Execute(sqltext1);
oConn.Execute(sqltext2);
oConn.Execute(sqltext3);
oConn.Execute("changestatus '"+maphieu+"'")
%>
<%Response.Redirect("../items/show_all_item.asp")%>
</body>
</html>
