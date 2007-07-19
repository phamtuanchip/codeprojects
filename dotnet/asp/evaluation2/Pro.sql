--Nhap NhanToMoiTruong
create proc nhapnhantomoitruong
@tennhantomoitruong varchar(256),
@masanpham int,
@mathanhvien int,
@ghichu varchar(256)
as
insert into NhanToMoiTruong(TenNhanToMoiTruong,MaSanPham,MaThanhVien,GhiChu)
values (@tennhantomoitruong,@masanpham,@mathanhvien,@ghichu)
go
--Nhap NhanToConNguoi
create proc nhapnhantoconnguoi
@tennhantoconnguoi varchar(128),
@masanpham int,
@mahoidong int,
@alphah float,
@mavitri int
as
insert into NhanToConNguoi (TenNhanToConNguoi,MaSanPham,MaHoiDong,AlphaH,MaViTri)
values (@tennhantoconnguoi,@masanpham,@mahoidong,@alphah,@mavitri)
go
--Nhap ChiTietToChuc
create proc nhapchitiettochuc
@tenchitiettochuc varchar(128),
@masanpham int,
@mahoidong int,
@ghichu varchar(128)
as
insert into ChiTietToChuc (TenChiTietToChuc,MaSanPham,MaHoiDong,GhiChu)
values (@tenchitiettochuc,@masanpham,@mahoidong,@ghichu)
go
--Nhap ChiTietThongTin
create proc nhapchitietthongtin
@tenchitietthongtin varchar(128),
@masanpham int,
@mahoidong int,
@ghichu varchar(128)
as
insert into ChiTietThongTin (TenChiTietThongTin,MaSanPham,MaHoiDong,GhiChu)
values (@tenchitietthongtin,@masanpham,@mahoidong,@ghichu)
go
--Nhap HieuQuaCongNgheThongTin
create proc nhaphieuquacongnghethongtin
@tenhieuquacongnghethongtin varchar(128),
@masanpham int,
@mahoidong int,
@ghichu varchar(128)
as
insert into HieuQuaCongNghe_ThongTin(TenHieuQuaCongNghe_ThongTin,MaSanPham,MaHoiDong,GhiChu)
values (@tenhieuquacongnghethongtin,@masanpham,@mahoidong,@ghichu)
go
--Nhap HieuQuaCongNgheToChuc
create proc nhaphieuquacongnghetochuc
@tenhieuquacongnghetochuc varchar(128),
@masanpham int,
@mahoidong int,
@ghichu varchar(128)
as
insert into HieuQuaCongNghe_ToChuc(TenHieuQuaCongNghe_ToChuc,MaSanPham,MaHoiDong,GhiChu)
values (@tenhieuquacongnghetochuc,@masanpham,@mahoidong,@ghichu)
go
--Nhap HieuQuaCongNgheKyThuat
create proc nhaphieuquacongnghekythuat
@tenhieuquacongnghekythuat varchar(128),
@masanpham int,
@mahoidong int,
@mabuocgiacong int,
@ghichu varchar(128)
as
insert into HieuQuaCongNghe_KyThuat(TenHieuQuaCongNghe_KyThuat,MaSanPham,MaHoiDong,MaBuocGiaCong,GhiChu)
values (@tenhieuquacongnghekythuat,@masanpham,@mahoidong,@mabuocgiacong,@ghichu)
go