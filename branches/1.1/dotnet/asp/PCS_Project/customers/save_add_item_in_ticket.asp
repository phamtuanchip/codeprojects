<%@LANGUAGE="JAVASCRIPT" CODEPAGE="65001"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Nhap phieu moi</title>
</head>
<body>
        <!-- #include file="../connections/connection.inc"-->
<!--Tạo biến-->
<%  //khachquen=Request.Form("khachquen");
    maphieu=Request.Form("maphieu");
    //maloaidichvu= new String(Request.Form("loaidichvu"));
	//maloaidichvu=maloaidichvu.substr(4,1);
	//nguoilap=Request.Form("nguoilap");
	//ngaylap=Request.Form("")
	
	makhachhang=Request.Form("makhachhang");
	//tenkhachhang=Request.Form("tenkhachhang");
	//diachi=Request.Form("diachikhachhang");
	//dienthoai=Request.Form("dienthoaikhachhang");
	//email=Request.Form("emailkhachhang");
	mathietbi=Request.Form("mathietbi")+Request.Form("sohieuthietbi");
	tenthietbi=Request.Form("tenthietbi");
	chitiet=Request.Form("chitietthietbi");
	serial=Request.Form("serial");
	soluong=Request.Form("soluongthietbi");
    maloaidvtb=Request.Form("maloaidvtb");
	maloaitb=new String (Request.Form("loaithietbi"));
	maloaitb=maloaitb.substr(3,1)
	sqltext="insert into KHOTHIETBI_KH (ma_tb_kh,ma_phieu_nhan,ten_tb,chi_tiet,serial,so_luong_nhan,ma_loai_tb)" 
    sqltext=sqltext+ " values('"+mathietbi+"','"+maphieu+"',N'"+tenthietbi+"',N'"+chitiet+"','"+serial+"',"+soluong+","+maloaitb+")"
    sqltext2="insert into NHATKY_TB (ma_tb_kh,ngay_nhan_tb,ma_loai_dv) values ('"+mathietbi+"',getdate(),"+maloaidvtb+")"
%>
<%oConn.Execute(sqltext);oConn.Execute(sqltext2);%>

<%Response.Redirect("add_item_in_ticket.asp?maphieu="+maphieu+"&makhachhang="+makhachhang);
%>




</body>
</html>
