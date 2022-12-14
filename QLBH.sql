USE [master]
GO
/****** Object:  Database [QLBH]    Script Date: 10/9/2021 4:08:42 PM ******/
CREATE DATABASE [QLBH]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLBH', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\QLBH.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLBH_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\QLBH_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLBH] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLBH].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLBH] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLBH] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLBH] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLBH] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLBH] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLBH] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLBH] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLBH] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLBH] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLBH] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLBH] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLBH] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLBH] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLBH] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLBH] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLBH] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLBH] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLBH] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLBH] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLBH] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLBH] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLBH] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLBH] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLBH] SET  MULTI_USER 
GO
ALTER DATABASE [QLBH] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLBH] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLBH] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLBH] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QLBH] SET DELAYED_DURABILITY = DISABLED 
GO
USE [QLBH]
GO
/****** Object:  Table [dbo].[CHITIETDONTHANG]    Script Date: 10/9/2021 4:08:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETDONTHANG](
	[MaDonHang] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[Soluong] [int] NULL,
	[Dongia] [decimal](18, 0) NULL,
 CONSTRAINT [PK_CHITIETDONTHANG] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CHUDE]    Script Date: 10/9/2021 4:08:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUDE](
	[MaCD] [int] IDENTITY(1,1) NOT NULL,
	[TenChuDe] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ChuDe] PRIMARY KEY CLUSTERED 
(
	[MaCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DONDATHANG]    Script Date: 10/9/2021 4:08:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONDATHANG](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[Dathanhtoan] [bit] NULL,
	[Tinhtranggiaohang] [bit] NULL,
	[Ngaydat] [datetime] NULL,
	[Ngaygiao] [datetime] NULL,
	[MaKH] [int] NULL,
 CONSTRAINT [PK_DONDATHANG] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 10/9/2021 4:08:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[TaiKhoan] [varchar](50) NOT NULL,
	[MatKhau] [varchar](50) NOT NULL,
	[NgaySinh] [datetime] NULL,
	[DiaChi] [nvarchar](200) NULL,
	[Email] [varchar](50) NULL,
	[DienThoai] [varchar](50) NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 10/9/2021 4:08:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHACUNGCAP](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](50) NOT NULL,
	[Diachi] [nvarchar](200) NULL,
	[DienThoai] [varchar](50) NULL,
 CONSTRAINT [PK_NhaXuatBan] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 10/9/2021 4:08:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MaSanPham] [int] IDENTITY(1,1) NOT NULL,
	[TenSanPham] [nvarchar](100) NOT NULL,
	[GiaBan] [decimal](18, 0) NULL,
	[MoTa] [nvarchar](max) NULL,
	[AnhBia] [nvarchar](max) NULL,
	[NgayCapNhat] [datetime] NULL,
	[SoLuongTon] [int] NULL,
	[MaCD] [int] NULL,
	[MaNCC] [int] NULL,
	[DaXoa] [bit] NULL,
	[KhuyenMai] [float] NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[CHUDE] ON 

INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (1, N' Bàn ăn')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (2, N'Bộ Bàn Ghế')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (3, N'Ghế Văn Phòng')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (4, N'Ghế Bar')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (5, N'Thảm Trải sàn ')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (6, N'Chân Bàn ')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (7, N'Bàn Eames')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (8, N'Bàn Tulip')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (9, N'Bàn Trà')
SET IDENTITY_INSERT [dbo].[CHUDE] OFF
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [NgaySinh], [DiaChi], [Email], [DienThoai]) VALUES (1, NULL, N'tai123', N'1234', NULL, NULL, N'151900697@dntu.edu.vn', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [NgaySinh], [DiaChi], [Email], [DienThoai]) VALUES (2, NULL, N'tai1234', N'1234', NULL, NULL, N'151900697@dntu.edu.vn', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [NgaySinh], [DiaChi], [Email], [DienThoai]) VALUES (3, NULL, N'tai123', N'123456', NULL, NULL, N'taihg078@gmail.com', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [NgaySinh], [DiaChi], [Email], [DienThoai]) VALUES (4, NULL, N'Tai11111', N'789', NULL, NULL, N'vip@gmail.com', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [NgaySinh], [DiaChi], [Email], [DienThoai]) VALUES (5, NULL, N'tai1234444', N'Taivipha1', NULL, NULL, N'vip@gmail.com', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [NgaySinh], [DiaChi], [Email], [DienThoai]) VALUES (6, NULL, N'tai1234444', N'Taivipha1', NULL, NULL, N'vip@gmail.com', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [NgaySinh], [DiaChi], [Email], [DienThoai]) VALUES (7, NULL, N'tai1234', N'2222', NULL, NULL, N'taihg078@gmail.com', NULL)
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
SET IDENTITY_INSERT [dbo].[NHACUNGCAP] ON 

INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [Diachi], [DienThoai]) VALUES (1, N'Bạch Mã', N' Số30  Đại từ Đại Kim, Hoàng Mai, Hà Nội', N'0936.141.689')
SET IDENTITY_INSERT [dbo].[NHACUNGCAP] OFF
SET IDENTITY_INSERT [dbo].[SANPHAM] ON 

INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNCC], [DaXoa], [KhuyenMai]) VALUES (1, N'Bàn Ăn Mặt Đá Mạ PVD Vàng Cao Cấp Dragon', CAST(2500000 AS Decimal(18, 0)), N'Bàn Ăn Mặt Đá Mạ PVD Vàng Cao Cấp Dragon là dòng bàn ăn mặt đá cao cấp tại Bạch Mã. Bàn ăn thiết kế chân khung thép mạ PVD vàng cao cấp nhất hiện nay. Mặt đá vân 3D nổi hiện đại. Quý khách hàng cũng có thể sử dụng mặt đá tự nhiên thay thế. Dòng bàn có kích thước là 1m4, 1m6, 1m8, 2m hoặc. Cũng có thể đặt sản xuất theo yêu cầu khách hàng.', N'https://bachma.vn/wp-content/uploads/2020/12/ban-an-mat-da-chan-ma-pvd-vang-cao-cap.jpg', CAST(N'2021-09-22 00:00:00.000' AS DateTime), 5, 1, 1, 0, 0.2)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNCC], [DaXoa], [KhuyenMai]) VALUES (2, N'Bàn Eames Tròn', CAST(1550000 AS Decimal(18, 0)), N'Bàn Eames Tròn là dòng bàn ăn đẹp, bàn cafe nhập khẩu nguyên chiếc. mặt bàn làm từ chất liệu MDF sơn bóng màu trắng hoặc màu đen. Khung gỗ sồi sang trọng. Bàn có màu trắng trang nhã hay màu đen sang trọng. Góp phần tạo không gian thông thoáng. Làm nổi bật các món ăn đồ uống được bày biện bên trên tạo cảm giác sạch sẽ. ngon miệng cho thực khách.', N'https://bachma.vn/wp-content/uploads/2020/09/ban-eames-tron.jpg', CAST(N'2021-09-22 00:00:00.000' AS DateTime), 10, 7, 1, 0, 0.15)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNCC], [DaXoa], [KhuyenMai]) VALUES (3, N'Bàn Eames Vuông 60x60cm', CAST(1250000 AS Decimal(18, 0)), N'Bàn Eames Vuông là một sản phẩm của dòng Bàn Eames bán chạy hiện nay. Đây là mẫu bàn được ưa chuộng nhờ thiết kế đơn giản tinh tế. Phong cách hiện đại dễ kết hợp với nhiều không gian nội thất. Đặc biệt là giá thành rẻ, độ bền cao. Dễ dàng tháo lắp vận chuyển.', N'https://bachma.vn/wp-content/uploads/2021/01/ban-cafe-gap-gon-mini-50cm.jpg', CAST(N'2021-09-22 00:00:00.000' AS DateTime), 2, 7, 1, 0, 0.3)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNCC], [DaXoa], [KhuyenMai]) VALUES (4, N'Bàn Ăn Cabin', CAST(1250000 AS Decimal(18, 0)), N'Bàn Ăn Cabin là dòng bàn ăn rất phổ biến hiện nay. Thiết kế đơn giản thực dụng của mẫu bàn ăn này được nhiều khách hàng ưa chuộng. Sản phẩm dễ dàng kết hợp với các dòng ghế ăn hiện đại ngày nay.', N'https://bachma.vn/wp-content/uploads/2020/08/ban-an-cabin-mogen.jpg', CAST(N'2021-09-22 00:00:00.000' AS DateTime), 5, 1, 1, 0, 0.4)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNCC], [DaXoa], [KhuyenMai]) VALUES (5, N'Bàn Tulip', CAST(2690000 AS Decimal(18, 0)), N'Bàn Tulip là dòng sản phẩm bàn ăn tròn, bàn trà có thiết kế sang trọng tinh tế. sản phẩm ra đời cùng với ghế Tulip vào năm 1956. Do nhà thiết kế người Phần Lan Eero Saarinen thiết kế. Sản phẩm được ưa chuộng đến ngày nay nhờ tính đương đại sang trọng tinh tế. Thích ho', N'https://bachma.vn/wp-content/uploads/2020/09/ban-tulip.jpg', CAST(N'2021-09-22 00:00:00.000' AS DateTime), 20, 8, 1, 0, 0.5)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNCC], [DaXoa], [KhuyenMai]) VALUES (6, N'Bàn Ăn Vuông Eames 80×80', CAST(1500000 AS Decimal(18, 0)), N'Bàn Ăn Vuông Eames 80×80 là dòng bàn ăn mặt gỗ, sử dụng được làm cả bàn cafe, hoặc bàn trà. Sản phẩm có thiết kế hiện đại kích thước 80 cm x 80 cm. Bàn được ưa chuộng nhờ thiết kế trẻ năng động dễ dàng tháo lắp vận chuyển. Giá thành rẻ dễ ứng dụng làm bàn ăn, bàn cafe, bàn trà, bàn tiếp khách…', N'https://bachma.vn/wp-content/uploads/2020/10/ban-eames-vuong-80-x-80-1.jpg', CAST(N'2021-09-22 00:00:00.000' AS DateTime), 10, 1, 1, 0, 0.99)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNCC], [DaXoa], [KhuyenMai]) VALUES (7, N'Bộ Bàn Ăn Tròn 2 Người Nhập Khẩu', CAST(5250000 AS Decimal(18, 0)), N'Bộ Bàn Ăn Tròn 2 Người Nhập Khẩu đây là mẫu bàn ghế Eames nhập khẩu. Được Bạch Mã nhập khẩu nguyên chiếc. bàn ghế gồm nhiều màu. Ghế Eames gồm 10 màu cơ bản: Đen, đỏ, vàng, xanh, trắng, hồng, nâu… Bàn ăn tròn gồm 2 màu chính đen, trắng.', N'https://bachma.vn/wp-content/uploads/2021/02/ban-an-2-nguoi-mau-trang.jpg', CAST(N'2021-09-22 00:00:00.000' AS DateTime), 3, 1, 1, 0, 0.45)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNCC], [DaXoa], [KhuyenMai]) VALUES (8, N'Bàn Eames', CAST(1650000 AS Decimal(18, 0)), N'Bàn Eames dài 1m2 rộng 0.8m là dòng sản phẩm bàn ăn, bàn cafe. Bán chạy được nhiều khách hàng ưa chuộng. Nhờ thiết kế đẹp tinh tế. Gồm 2 màu chính đen và trắng. sản phẩm kết hợp với các sản phẩm ghế eames tạo ra xu hướng nội thất mới hiện nay.', N'https://bachma.vn/wp-content/uploads/2020/08/ban-emaes-trang.jpg', CAST(N'2021-09-22 00:00:00.000' AS DateTime), 6, 7, 1, 0, 0.2)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNCC], [DaXoa], [KhuyenMai]) VALUES (9, N'Bộ Bàn Ăn Eames 4 Ghế Nhựa', CAST(3500000 AS Decimal(18, 0)), N'Bộ Bàn Ăn Eames 4 Ghế Nhựa đây là dòng bàn ăn được ưa chuộng. Nhờ thiết kế hiện đại đa dạng màu sắc. ghế có nhiều mẫu màu dễ dàng cho gia đình trẻ. Đây là mẫu bàn ăn 4 ghế bán chạy nhất hiện nay của Bạch Mã. Sản phẩm có sẵn kho giao hàng nhanh, màu sắc đáp ứng theo yêu cầu khách hàng.', N'https://bachma.vn/wp-content/uploads/2020/08/bo-ban-an-4-ghe-nhua-Eames.jpg', CAST(N'2021-09-22 00:00:00.000' AS DateTime), 5, 2, 1, 0, 0.1)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNCC], [DaXoa], [KhuyenMai]) VALUES (10, N'Bộ Bàn Ăn Mango 4 Ghế VIP', CAST(2790000 AS Decimal(18, 0)), N'Bộ Bàn Ăn Mango 4 Ghế là bộ bàn ăn 4 ghế bán chạy nhất hiện nay. Dòng Mango được thiết kế theo phong cách Bắc Âu hiện đại. Được ưa chuộng tại các thị trường Hàn Quốc, Nhật Bản. Được làm 100% từ gỗ tự nhiên cao su. Kết hợp giữa 4 ghế mango với bàn mango 1m2.', N'https://bachma.vn/wp-content/uploads/2021/01/bo-ban-an-4-ghe-mango.jpg', CAST(N'2021-09-22 00:00:00.000' AS DateTime), 8, 2, 1, 0, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNCC], [DaXoa], [KhuyenMai]) VALUES (11, N'Ghế Xoay Lưới Tony G1', CAST(850000 AS Decimal(18, 0)), N'Ghế Xoay Lưới Tony G1 đây là mẫu ghế văn phòng cao cấp của hãng Tony nhập khẩu. Thiết kế khác hoàn toàn với các dòng ghế khác. ngồi ôm người dễ chịu đệm cao cấp. Đặc biệt chất liệu tốt độ bền cao.', N'https://bachma.vn/wp-content/uploads/2021/06/ghe-van-phong-Tony-G1.jpg', CAST(N'2021-09-22 00:00:00.000' AS DateTime), 8, 3, 1, 0, 0.5)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNCC], [DaXoa], [KhuyenMai]) VALUES (12, N'Ghế Shell', CAST(2450000 AS Decimal(18, 0)), N'Ghế Shell hay còn gọi là ghế vỏ sò đây là dòng ghế thư giãn cao cấp. Được nhiều khách hàng lớn ưa chuộng như khách sạn, khu resort nghỉ dưỡng. Các hệ thống home stay hay phòng khách sang trọng. Dòng ghế này ngồi ngả lưng thoải mái do nhà thiết kế Hans J. Wegner thiết kế năm 1963. Ông cũng là nhà thiết kế các dòng sản phẩm ghế grace, ghế wishbone cao cấp khác..', N'https://bachma.vn/wp-content/uploads/2020/08/ghe-shell-1.jpg', CAST(N'2021-09-22 00:00:00.000' AS DateTime), 6, 3, 1, 0, 0.6)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNCC], [DaXoa], [KhuyenMai]) VALUES (13, N'Ghế Bar Tolix Có Tựa', CAST(480000 AS Decimal(18, 0)), N'Ghế Bar Tolix Có Tựa là dòng ghế quầy bar sắt phổ biến và bán chạy nhất Bạch Mã. Đây là 1 dòng ghế Tolix khung thép sơn tĩnh điện nhiều màu. Ưu điểm độ bền cao, dễ kết hợp với không gian nội thất hiện đại.

', N'https://bachma.vn/wp-content/uploads/2020/12/ghe-bar-tolix-sat-bach-ma-co-tua.jpg', CAST(N'2021-09-22 00:00:00.000' AS DateTime), 10, 4, 1, 0, 0.4)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNCC], [DaXoa], [KhuyenMai]) VALUES (14, N'Ghế Bar Nhựa BAR01', CAST(620000 AS Decimal(18, 0)), N'Ghế Bar Nhựa BAR01 Ghế bar lưng khoét là sản phẩm với thiết kế sang trọng và trẻ trung cho nhiều không gian quán bar hiện nay . Với thiết kết độc đáo ghế bar là phần tất yếu của quán bar . Không chỉ mỗi không gian quán mà ghế bar còn để được ở nhiều không gian khác nhau như : ban công, gia đình.', N'https://bachma.vn/wp-content/uploads/2020/12/ghe-bar-nhua.jpg', CAST(N'2021-09-22 00:00:00.000' AS DateTime), 20, 4, 1, 0, 0.1)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNCC], [DaXoa], [KhuyenMai]) VALUES (15, N'Ghế Bar Tulip SB36', CAST(630000 AS Decimal(18, 0)), N'Ghế Bar Tulip SB36 dòng sản phẩm ghế bar bán chạy của Bạch Mã. Đây là sản phẩm có thiết kế đẹp chân Inox. mặt ghế thiết kế dựa theo bông hoa tulip. Ngoài ra mặt ghế cũng được thiết kế đa dạng các màu sắc: Xanh, đen, đỏ, vàng, trắng…', N'https://bachma.vn/wp-content/uploads/2020/09/ghe-bar-sb36.jpg', CAST(N'2021-09-22 00:00:00.000' AS DateTime), 5, 4, 1, 0, 0.2)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNCC], [DaXoa], [KhuyenMai]) VALUES (16, N'Ghế Bar Gỗ Bạch Mã BAR-7M', CAST(690000 AS Decimal(18, 0)), N'Ghế Bar Gỗ Bạch Mã BAR-7M đây là dòng ghế bar gỗ nhập khẩu. Có các màu chủ đạo như, vàng, đen, trắng….

', N'https://bachma.vn/wp-content/uploads/2020/12/ghe-bar-go-mau-vang.jpg', CAST(N'2021-09-22 00:00:00.000' AS DateTime), 5, 4, 1, 0, 0.3)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNCC], [DaXoa], [KhuyenMai]) VALUES (17, N'Ghế Bar Chân Sắt Nhập Khẩu BAR06', CAST(725000 AS Decimal(18, 0)), N'Ghế Bar Chân Sắt Nhập Khẩu BAR06 đây là dòng ghế bar chân sắt nhập khẩu. mặt ghế được bọc nỉ hoặc da cao cấp. Sơn giống vân gỗ. gia công tinh tế đẹp sơn tĩnh điện bền màu chống hoen rỉ.

', N'https://bachma.vn/wp-content/uploads/2020/12/ghe-bar-chan-sat-nhap-khau.jpg', CAST(N'2021-09-22 00:00:00.000' AS DateTime), 2, 4, 1, 0, 0.1)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNCC], [DaXoa], [KhuyenMai]) VALUES (18, N'Ghế Bar Bạch Mã BAR08', CAST(790000 AS Decimal(18, 0)), N'Ghế Bar Bạch Mã BAR08  dòng sản phẩm ghế bar bán chạy sản phẩm có thiết kế cao cấp sang trọng. Đây là sản phẩm có thiết kế đẹp chân Inox. mặt ghế thiết kế dựa theo bông hoa tulip. Ngoài ra mặt ghế cũng được thiết kế đang dạng các màu sắc: Xanh, đen, đỏ, vàng, trắng…', N'https://bachma.vn/wp-content/uploads/2020/12/ghe-bar-bach-ma.jpg', CAST(N'2021-09-22 00:00:00.000' AS DateTime), 3, 4, 1, 0, 0.2)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNCC], [DaXoa], [KhuyenMai]) VALUES (19, N'Ghế Quầy Bar Trám G08', CAST(790000 AS Decimal(18, 0)), N'Ghế Quầy Bar Trám G08  là dòng ghế bar nhập khẩu Thiết kế chân mạ inox bọc da gồm 4 màu chính, đen hoặc xám, ghi, nâu. Dòng ghế này được ưa chuộng nhờ thiết kế dễ gồi. Có tựa để chân dễ dàng.

', N'https://bachma.vn/wp-content/uploads/2021/05/ghe-quay-bar-tram.jpg', CAST(N'2021-09-22 00:00:00.000' AS DateTime), 7, 4, 1, 0, 0.3)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNCC], [DaXoa], [KhuyenMai]) VALUES (20, N'Ghế Bar Gỗ Cao Cấp Bạch Mã BAR-68', CAST(2550000 AS Decimal(18, 0)), N'Ghế Bar Gỗ Cao Cấp Bạch Mã BAR-68 đây là dòng ghế bar gỗ cao cấp. được sử dụng gỗ sồi uốn cong sơn màu óc chó.. Đệm bọc da cao cấp thiết kế phù hợp với các không gian sang trọng. ghế có thể xoay 360 độ và có giá để chân.', N'https://bachma.vn/wp-content/uploads/2020/12/ghe-bar-go-soi-bach-ma.jpg', CAST(N'2021-09-22 00:00:00.000' AS DateTime), 5, 4, 1, 0, 0.6)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNCC], [DaXoa], [KhuyenMai]) VALUES (21, N'Bộ Bàn Ghế Sân Vườn BMKT01', CAST(5250000 AS Decimal(18, 0)), N'Bộ Bàn Ghế Sân Vườn BMKT01 đây là mẫu bàn ghế sân vườn gồm 2 ghế 1 bàn. Thiết kế nhôm đúc sơn tĩnh điện, bàn ghế được nhập khẩu nguyên chiếc. Thiết kế đẹp tinh xảo chắc chắn. Bàn ghế được thiết kế để được ngoài sân vườn. Chịu nắng mưa thời tiết khắc nghiệt tốt.', N'https://bachma.vn/wp-content/uploads/2021/05/bo-2-ghe-san-vuon-kt01.jpg', CAST(N'2021-09-22 00:00:00.000' AS DateTime), 8, 2, 1, 0, 0.4)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNCC], [DaXoa], [KhuyenMai]) VALUES (22, N'Bộ Bàn 4 Ghế Nhựa Giả Mây Ngoài Trời M1', CAST(2850000 AS Decimal(18, 0)), N'Bộ Bàn 4 Ghế Nhựa Giả Mây M1 đây là bộ bàn ghế ngoài trời bán chạy nhất hiện nay. Mẫu bàn ghế này thiết kế mới đặc biệt ghế ngồi rất êm ái thoải mái. Phù hợp làm bàn ghế cafe, bàn ghế cafe ngoài trời, bàn ghế uống nước ban công. Dòng bàn ghế này được ưa chuộng nhờ cảm giác ngồi êm ái, thiết kế vừa giúp tiết kiệm không gian, đặc biệt ghế có thể chồng lên nhau. Ngoài ra độ bền của sản phẩm luôn được khẳng định với khả năng chịu nắng mưa tốt. Khung ghế bàn đều là thép sơn tĩnh điện lên rất chắc chắn. Giá thành rẻ và nhiều màu sắc cũng là ưu điểm của dòng sản phẩm này.', N'https://bachma.vn/wp-content/uploads/2021/08/Bo-ban-ghe-nhua-gia-may-ngoai-troi-M1.jpg', CAST(N'2021-09-22 00:00:00.000' AS DateTime), 23, 2, 1, 0, 0.5)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNCC], [DaXoa], [KhuyenMai]) VALUES (23, N'Bộ Bàn 4 Ghế Sân Vườn BMKT06', CAST(12500000 AS Decimal(18, 0)), N'Bộ Bàn 4 Ghế Sân Vườn BMKT06 đây là bộ bàn ghế sân vườn cao cấp. Thiết kế chất liệu nhôm đúc nhập khẩu. Sơn tĩnh điện màu đồng. Gồm 4 ghế có tay và một bàn.', N'https://bachma.vn/wp-content/uploads/2021/05/bo-ban-4-ghe-san-vuong-kt06.jpg', CAST(N'2021-09-22 00:00:00.000' AS DateTime), 5, 2, 1, 0, 0.9)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNCC], [DaXoa], [KhuyenMai]) VALUES (24, N'Bàn Trà Sofa Đôi Mặt Đá Kento', CAST(2450000 AS Decimal(18, 0)), N'Bàn Trà Sofa Đôi Mặt Đá Kento là dòng bàn sofa sang trọng đẹp. Được thiết kế theo phong cách Bắc Âu. Sử dụng chất liệu khung thép sơn tĩnh điện màu đen hoặc màu vàng. Mặt đá vân 3D. Bàn tròn sofa đẹp cao cấp thường được sử dụng làm bàn trà sofa tiếp khách phù hợp với không gian phòng khách ở gia đình, căn hộ, chung cư, biệt thự.', N'https://bachma.vn/wp-content/uploads/2021/08/ban-sofa-doi-mat-da-Lux2.jpg', CAST(N'2021-09-22 00:00:00.000' AS DateTime), 5, 9, 1, 0, 0.25)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNCC], [DaXoa], [KhuyenMai]) VALUES (25, N'Thảm Đỏ Trải Sàn Sự Kiện Sân Khấu', CAST(21000 AS Decimal(18, 0)), N'Thảm Đỏ Trải Sàn Sự Kiện Sân Khấu đây là mẫu thảm trải sàn bằng nỉ. Chuyên dụng sử dụng để lót sàn cho các hội nghị, sự kiện. Khai trương hoặc tổ chức show. Do đặc tính bền bỉ, dễ sử dụng, giá thành rẻ.', N'https://bachma.vn/wp-content/uploads/2021/07/tham-do-trai-san-su-kien-san-khau.jpg', CAST(N'2021-09-22 00:00:00.000' AS DateTime), 2, 5, 1, 0, 0.32)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNCC], [DaXoa], [KhuyenMai]) VALUES (26, N'Thảm Hoa Trải Sàn', CAST(85000 AS Decimal(18, 0)), N'Thảm Hoa Trải Sàn là mẫu thảm trải sàn ngày càng phổ biến hiện nay. Đây là mẫu thảm được dùng nhiều trong khách sạn. Nối đi sự kiện, trải văn phòng. Hay cầu thang gia đình. Hệ thống cửa hàng.

', N'https://bachma.vn/wp-content/uploads/2021/08/tham-hoa-trai-san.jpg', CAST(N'2021-09-22 00:00:00.000' AS DateTime), 5, 5, 1, 0, 0.2)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNCC], [DaXoa], [KhuyenMai]) VALUES (27, N'Sàn Nhựa Giả Gỗ Tự Dán Dày 2mm95000', CAST(95000 AS Decimal(18, 0)), N'Sàn Nhựa Giả Gỗ Tự Dán keo là sản phẩm sàn nhựa pvc dạng tấm kích thước dày 1.8mm đến 2mm . sử dụng keo để kết nối trực tiếp bề mặt sàn. Sàn nhựa dán keo đa dạng về mẫu mã  chủng loại đặc biệt phổ biến 2 loại là vân gỗ vân đá.

', N'https://bachma.vn/wp-content/uploads/2021/07/san-nhua-gia-go-tu-dan.jpg', CAST(N'2021-09-22 00:00:00.000' AS DateTime), 122, 5, 1, 0, 0.6)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNCC], [DaXoa], [KhuyenMai]) VALUES (28, N'Bộ Bàn Ăn Gỗ 8 Ghế VIP Dragon Gỗ Sồi', CAST(11500000 AS Decimal(18, 0)), N'Bộ Bàn Ăn Gỗ 8 Ghế VIP Dragon Gỗ Sồi là dòng bàn ăn gỗ tự nhiên cao cấp của Bạch Mã. Thiết kế sơn màu óc chó hoặc màu gỗ sồi tự nhiên.Đây là mẫu bàn ăn VIP được nhiều khách hàng lựa chọn. Nhờ độ bền đẹp sang trọng', N'https://bachma.vn/wp-content/uploads/2021/01/bo-ban-an-go-soi-8-ghe-cao-cao.jpg', CAST(N'2021-09-22 00:00:00.000' AS DateTime), 5, 4, 1, 0, 0.2)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNCC], [DaXoa], [KhuyenMai]) VALUES (29, N'Bộ Bàn Ăn Tròn Xoay 8 Ghế Mặt Đá G8', CAST(16890000 AS Decimal(18, 0)), N'Bộ Bàn Ăn Tròn Xoay 8 Ghế Mặt Đá G8 đây là mẫu bàn ăn mặt đá thông minh nhập khẩu. kết hợp với ghế ăn monet sang trọng. gồm nhiều màu liên hệ trực tiếp với Bạch Mã để được tư vấn. Mặt đá ceramic gồm 2 màu chính trắng vân mây và đen. Bàn ăn là dạng thiết kế bàn ăn thông minh xoay tròn được.

', N'https://bachma.vn/wp-content/uploads/2021/07/Bo-ban-an-8-ghe-tron-mat-da-xoay-nhap-A8-510x510.jpg', CAST(N'2021-09-22 00:00:00.000' AS DateTime), 6, 4, 1, 0, 0.1)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNCC], [DaXoa], [KhuyenMai]) VALUES (30, N'Chân Bàn Inox Cafe K8T', CAST(750000 AS Decimal(18, 0)), N'Chân Bàn Inox Cafe K8T là dòng chân bàn sắt cafe đẹp giá rẻ. Đây là mẫu chân bên Bạch Mã nhập khẩu nguyên chiếc. chân thiết kế thông minh tháo rời dễ dàng. bên cạnh đó gia công tinh tế. Chân được làm từ Inox. Gồm 2 loại chân đế tròn hoặc chân đế vuông.', N'https://bachma.vn/wp-content/uploads/2021/06/chan-ban-ma-inox-K8T-510x510.jpg', CAST(N'2021-09-22 00:00:00.000' AS DateTime), 10, 6, 1, 0, 0.12)
SET IDENTITY_INSERT [dbo].[SANPHAM] OFF
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDONTHANG_DONDATHANG] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DONDATHANG] ([MaDonHang])
GO
ALTER TABLE [dbo].[CHITIETDONTHANG] CHECK CONSTRAINT [FK_CHITIETDONTHANG_DONDATHANG]
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDONTHANG_SACH] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SANPHAM] ([MaSanPham])
GO
ALTER TABLE [dbo].[CHITIETDONTHANG] CHECK CONSTRAINT [FK_CHITIETDONTHANG_SACH]
GO
ALTER TABLE [dbo].[DONDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_DONDATHANG_KHACHHANG] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[DONDATHANG] CHECK CONSTRAINT [FK_DONDATHANG_KHACHHANG]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_Chude] FOREIGN KEY([MaCD])
REFERENCES [dbo].[CHUDE] ([MaCD])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_Chude]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_NhaXB] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NHACUNGCAP] ([MaNCC])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_NhaXB]
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD  CONSTRAINT [CK__CHITIETDO__Dongi__440B1D61] CHECK  (([Dongia]>=(0)))
GO
ALTER TABLE [dbo].[CHITIETDONTHANG] CHECK CONSTRAINT [CK__CHITIETDO__Dongi__440B1D61]
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD  CONSTRAINT [CK__CHITIETDO__Soluo__4316F928] CHECK  (([Soluong]>(0)))
GO
ALTER TABLE [dbo].[CHITIETDONTHANG] CHECK CONSTRAINT [CK__CHITIETDO__Soluo__4316F928]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [CK__SANPHAM__Giaban__20C1E124] CHECK  (([Giaban]>=(0)))
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [CK__SANPHAM__Giaban__20C1E124]
GO
USE [master]
GO
ALTER DATABASE [QLBH] SET  READ_WRITE 
GO
