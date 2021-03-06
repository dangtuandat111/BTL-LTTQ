USE [master]
GO
/****** Object:  Database [QuanLiFastFood]    Script Date: 11/8/2020 11:07:03 ******/
CREATE DATABASE [QuanLiFastFood]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLiFastFood', FILENAME = N'D:\SQLServer\MSSQL15.SQLEXPRESS\MSSQL\DATA\QuanLiFastFood.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLiFastFood_log', FILENAME = N'D:\SQLServer\MSSQL15.SQLEXPRESS\MSSQL\DATA\QuanLiFastFood_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QuanLiFastFood] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLiFastFood].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLiFastFood] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLiFastFood] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLiFastFood] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLiFastFood] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLiFastFood] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLiFastFood] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLiFastFood] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLiFastFood] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLiFastFood] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLiFastFood] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLiFastFood] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLiFastFood] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLiFastFood] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLiFastFood] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLiFastFood] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLiFastFood] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLiFastFood] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLiFastFood] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLiFastFood] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLiFastFood] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLiFastFood] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLiFastFood] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLiFastFood] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLiFastFood] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLiFastFood] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLiFastFood] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLiFastFood] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLiFastFood] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QuanLiFastFood] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLiFastFood] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QuanLiFastFood] SET QUERY_STORE = OFF
GO
USE [QuanLiFastFood]
GO
/****** Object:  Table [dbo].[COMBO]    Script Date: 11/8/2020 11:07:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMBO](
	[idCB] [nvarchar](50) NOT NULL,
	[imgCB] [nvarchar](50) NOT NULL,
	[giaCB] [float] NOT NULL,
	[ctCB] [nvarchar](50) NULL,
 CONSTRAINT [PK_COMBO] PRIMARY KEY CLUSTERED 
(
	[idCB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTHOADONBAN]    Script Date: 11/8/2020 11:07:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHOADONBAN](
	[idHD] [nvarchar](50) NOT NULL,
	[idSP] [nvarchar](50) NOT NULL,
	[soLuong] [int] NOT NULL,
	[giaTien] [float] NOT NULL,
	[ngayTao] [date] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTHOADONNHAP]    Script Date: 11/8/2020 11:07:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHOADONNHAP](
	[idCT] [nvarchar](50) NOT NULL,
	[idNV] [nvarchar](50) NOT NULL,
	[idNCC] [nvarchar](50) NOT NULL,
	[ngayTaoHD] [date] NOT NULL,
	[soLuong] [int] NOT NULL,
	[giaTien] [float] NOT NULL,
 CONSTRAINT [PK_CTHOADONNHAP] PRIMARY KEY CLUSTERED 
(
	[idCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTNGUYENLIEU]    Script Date: 11/8/2020 11:07:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTNGUYENLIEU](
	[idCT] [nvarchar](50) NOT NULL,
	[idNguyenLieu] [nvarchar](50) NOT NULL,
	[ghiChu] [text] NOT NULL,
	[soLuong] [int] NOT NULL,
	[tinhTrang] [text] NOT NULL,
	[donVi] [text] NULL,
 CONSTRAINT [PK_CTNGUYENLIEU] PRIMARY KEY CLUSTERED 
(
	[idCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTSANPHAM]    Script Date: 11/8/2020 11:07:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTSANPHAM](
	[idSP] [nvarchar](50) NOT NULL,
	[idNL] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CTSANPHAM] PRIMARY KEY CLUSTERED 
(
	[idSP] ASC,
	[idNL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADONBAN]    Script Date: 11/8/2020 11:07:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADONBAN](
	[idHD] [nvarchar](50) NOT NULL,
	[idNV] [nvarchar](50) NOT NULL,
	[idKH] [nvarchar](50) NOT NULL,
	[tongTien] [float] NULL,
 CONSTRAINT [PK_HOADONBAN] PRIMARY KEY CLUSTERED 
(
	[idHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 11/8/2020 11:07:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[idKH] [nvarchar](50) NOT NULL,
	[hoTenKH] [nvarchar](50) NOT NULL,
	[diaChi] [nvarchar](50) NOT NULL,
	[soDT] [nvarchar](50) NOT NULL,
	[ngaySinh] [date] NOT NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[idKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHUYENMAI]    Script Date: 11/8/2020 11:07:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHUYENMAI](
	[idKM] [nvarchar](50) NOT NULL,
	[idSP] [nvarchar](50) NOT NULL,
	[ngayBatDau] [date] NOT NULL,
	[ngayKetThuc] [date] NOT NULL,
	[giamGia] [float] NOT NULL,
 CONSTRAINT [PK_KHUYENMAI] PRIMARY KEY CLUSTERED 
(
	[idKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NGUYENLIEU]    Script Date: 11/8/2020 11:07:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGUYENLIEU](
	[idNL] [nvarchar](50) NOT NULL,
	[tenNL] [nvarchar](50) NOT NULL,
	[imgNL] [nvarchar](50) NOT NULL,
	[hanSD] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idNL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 11/8/2020 11:07:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHACUNGCAP](
	[idNCC] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[soDT] [nvarchar](50) NOT NULL,
	[ghiChu] [text] NOT NULL,
 CONSTRAINT [PK_NHACUNGCAP] PRIMARY KEY CLUSTERED 
(
	[idNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 11/8/2020 11:07:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[idNV] [nvarchar](50) NOT NULL,
	[hoTenNV] [nvarchar](50) NOT NULL,
	[ngaySinh] [date] NOT NULL,
	[imgNV] [nvarchar](50) NOT NULL,
	[soDT] [nvarchar](50) NOT NULL,
	[chucVu] [nvarchar](50) NOT NULL,
	[Sex] [nvarchar](3) NULL,
PRIMARY KEY CLUSTERED 
(
	[idNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 11/8/2020 11:07:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[idSP] [nvarchar](50) NOT NULL,
	[tenSP] [nvarchar](50) NOT NULL,
	[imgSP] [nvarchar](50) NOT NULL,
	[moTaSP] [text] NOT NULL,
	[giaTienSP] [float] NOT NULL,
	[doAn] [bit] NOT NULL,
 CONSTRAINT [PK_SANPHAM] PRIMARY KEY CLUSTERED 
(
	[idSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 11/8/2020 11:07:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[idUSER] [nvarchar](50) NOT NULL,
	[idNV] [nvarchar](50) NULL,
	[taiKhoan] [nvarchar](50) NULL,
	[matKhau] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idUSER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[COMBO] ([idCB], [imgCB], [giaCB], [ctCB]) VALUES (N'CB01', N'CB01.jpg', 110000, N'Bao gồm hamburger và CocaCola và khoai tây chiên')
INSERT [dbo].[COMBO] ([idCB], [imgCB], [giaCB], [ctCB]) VALUES (N'CB02', N'CB02.jpg', 30000, N'Bao gồm khoai tây chiên và CocaCola')
GO
INSERT [dbo].[CTHOADONNHAP] ([idCT], [idNV], [idNCC], [ngayTaoHD], [soLuong], [giaTien]) VALUES (N'CT01', N'NV02', N'NCC01', CAST(N'2020-11-01' AS Date), 50, 2000)
INSERT [dbo].[CTHOADONNHAP] ([idCT], [idNV], [idNCC], [ngayTaoHD], [soLuong], [giaTien]) VALUES (N'CT02', N'NV02', N'NCC01', CAST(N'2020-11-01' AS Date), 50, 10000)
INSERT [dbo].[CTHOADONNHAP] ([idCT], [idNV], [idNCC], [ngayTaoHD], [soLuong], [giaTien]) VALUES (N'CT03', N'NV02', N'NCC01', CAST(N'2020-11-01' AS Date), 50, 50000)
INSERT [dbo].[CTHOADONNHAP] ([idCT], [idNV], [idNCC], [ngayTaoHD], [soLuong], [giaTien]) VALUES (N'CT04', N'NV02', N'NCC01', CAST(N'2020-11-01' AS Date), 50, 5000)
INSERT [dbo].[CTHOADONNHAP] ([idCT], [idNV], [idNCC], [ngayTaoHD], [soLuong], [giaTien]) VALUES (N'CT05', N'NV02', N'NCC02', CAST(N'2020-11-01' AS Date), 50, 15000)
INSERT [dbo].[CTHOADONNHAP] ([idCT], [idNV], [idNCC], [ngayTaoHD], [soLuong], [giaTien]) VALUES (N'CT06', N'NV02', N'NCC02', CAST(N'2020-11-01' AS Date), 50, 1000)
INSERT [dbo].[CTHOADONNHAP] ([idCT], [idNV], [idNCC], [ngayTaoHD], [soLuong], [giaTien]) VALUES (N'CT07', N'NV02', N'NCC02', CAST(N'2020-11-01' AS Date), 50, 1000)
GO
INSERT [dbo].[CTNGUYENLIEU] ([idCT], [idNguyenLieu], [ghiChu], [soLuong], [tinhTrang], [donVi]) VALUES (N'CT01', N'NL01', N'day la vi du ve ghi chu ', 50, N'Su dung', N'Cái')
INSERT [dbo].[CTNGUYENLIEU] ([idCT], [idNguyenLieu], [ghiChu], [soLuong], [tinhTrang], [donVi]) VALUES (N'CT02', N'NL02', N'day la vi du ve ghi chu 2 ', 50, N'Su dung', N'Túi')
INSERT [dbo].[CTNGUYENLIEU] ([idCT], [idNguyenLieu], [ghiChu], [soLuong], [tinhTrang], [donVi]) VALUES (N'CT03', N'NL03', N'day la vi du ve ghi chu 3 ', 50, N'Su dung', N'Cái')
INSERT [dbo].[CTNGUYENLIEU] ([idCT], [idNguyenLieu], [ghiChu], [soLuong], [tinhTrang], [donVi]) VALUES (N'CT04', N'NL04', N'day la vi du ve ghi chu', 50, N'Su dung', N'Cái')
INSERT [dbo].[CTNGUYENLIEU] ([idCT], [idNguyenLieu], [ghiChu], [soLuong], [tinhTrang], [donVi]) VALUES (N'CT05', N'NL05', N'day la vi du ghi chu 5 ', 50, N'Su dung', N'Chai')
INSERT [dbo].[CTNGUYENLIEU] ([idCT], [idNguyenLieu], [ghiChu], [soLuong], [tinhTrang], [donVi]) VALUES (N'CT06', N'NL06', N'day la vi du ve ghi chu 6 ', 50, N'Su dung', N'Túi')
INSERT [dbo].[CTNGUYENLIEU] ([idCT], [idNguyenLieu], [ghiChu], [soLuong], [tinhTrang], [donVi]) VALUES (N'CT07', N'NL07', N'day la vi du ve ghi chu 07', 50, N'Su dung', N'Túi')
GO
INSERT [dbo].[CTSANPHAM] ([idSP], [idNL]) VALUES (N'SP01', N'NL01')
INSERT [dbo].[CTSANPHAM] ([idSP], [idNL]) VALUES (N'SP01', N'NL02')
INSERT [dbo].[CTSANPHAM] ([idSP], [idNL]) VALUES (N'SP01', N'NL03')
INSERT [dbo].[CTSANPHAM] ([idSP], [idNL]) VALUES (N'SP02', N'NL04')
INSERT [dbo].[CTSANPHAM] ([idSP], [idNL]) VALUES (N'SP02', N'NL05')
GO
INSERT [dbo].[KHACHHANG] ([idKH], [hoTenKH], [diaChi], [soDT], [ngaySinh]) VALUES (N'KH01', N'Đỗ Thanh Hàn', N'Hà Nội', N'5576373380
', CAST(N'1975-04-15' AS Date))
INSERT [dbo].[KHACHHANG] ([idKH], [hoTenKH], [diaChi], [soDT], [ngaySinh]) VALUES (N'KH02', N'Đăng Huyền Sinh', N'Hà Tĩnh', N'9577987459', CAST(N'1974-08-28' AS Date))
INSERT [dbo].[KHACHHANG] ([idKH], [hoTenKH], [diaChi], [soDT], [ngaySinh]) VALUES (N'KH03', N'Nguyễn Quang Huy', N'Nghệ An ', N'7958610097
', CAST(N'1975-08-20' AS Date))
GO
INSERT [dbo].[KHUYENMAI] ([idKM], [idSP], [ngayBatDau], [ngayKetThuc], [giamGia]) VALUES (N'KM01', N'SP01', CAST(N'2020-11-01' AS Date), CAST(N'2020-11-02' AS Date), 20)
GO
INSERT [dbo].[NGUYENLIEU] ([idNL], [tenNL], [imgNL], [hanSD]) VALUES (N'NL01', N'Vỏ bánh', N'NL01.jpg', 30)
INSERT [dbo].[NGUYENLIEU] ([idNL], [tenNL], [imgNL], [hanSD]) VALUES (N'NL02', N'Phô mai', N'NL02.jpg', 15)
INSERT [dbo].[NGUYENLIEU] ([idNL], [tenNL], [imgNL], [hanSD]) VALUES (N'NL03', N'Thịt bò', N'NL03.jpg', 1)
INSERT [dbo].[NGUYENLIEU] ([idNL], [tenNL], [imgNL], [hanSD]) VALUES (N'NL04', N'Khoai tây', N'NL04.jpg', 30)
INSERT [dbo].[NGUYENLIEU] ([idNL], [tenNL], [imgNL], [hanSD]) VALUES (N'NL05', N'Coca Cola', N'NL05.jpg', 1000)
INSERT [dbo].[NGUYENLIEU] ([idNL], [tenNL], [imgNL], [hanSD]) VALUES (N'NL06', N'Tương ớt', N'NL06.jpg', 1000)
INSERT [dbo].[NGUYENLIEU] ([idNL], [tenNL], [imgNL], [hanSD]) VALUES (N'NL07', N'Tương cà', N'NL07.jpg', 1000)
GO
INSERT [dbo].[NHACUNGCAP] ([idNCC], [email], [soDT], [ghiChu]) VALUES (N'NCC01', N'ncc01@gmail.com', N'1811263291
', N'day la vi du ve ghi chu ')
INSERT [dbo].[NHACUNGCAP] ([idNCC], [email], [soDT], [ghiChu]) VALUES (N'NCC02', N'ncc02@gmail.com', N'8296973585
', N'day la vi du ve ghi chu')
GO
INSERT [dbo].[NHANVIEN] ([idNV], [hoTenNV], [ngaySinh], [imgNV], [soDT], [chucVu], [Sex]) VALUES (N'NV01', N'Trần Văn Minh', CAST(N'1975-04-19' AS Date), N'NV01.jpg', N'0123456789', N'Thu Ngân', N'Nam')
INSERT [dbo].[NHANVIEN] ([idNV], [hoTenNV], [ngaySinh], [imgNV], [soDT], [chucVu], [Sex]) VALUES (N'NV02', N'Vũ Hữu Tuấn', CAST(N'1975-10-14' AS Date), N'NV02.jpg', N'9075403151', N'Quản lý', N'Nam')
INSERT [dbo].[NHANVIEN] ([idNV], [hoTenNV], [ngaySinh], [imgNV], [soDT], [chucVu], [Sex]) VALUES (N'NV03', N'Đặng Tuấn Đạt', CAST(N'1975-01-04' AS Date), N'NV05.jpg', N'7618614247', N'Admin', N'Nam')
GO
INSERT [dbo].[SANPHAM] ([idSP], [tenSP], [imgSP], [moTaSP], [giaTienSP], [doAn]) VALUES (N'SP01', N'Hamburger', N'SP01.jpg', N'vi du mo ta sp ', 100000, 1)
INSERT [dbo].[SANPHAM] ([idSP], [tenSP], [imgSP], [moTaSP], [giaTienSP], [doAn]) VALUES (N'SP02', N'Coca Cola', N'SP02.jpg', N'vi du mo ta san pham', 20000, 0)
INSERT [dbo].[SANPHAM] ([idSP], [tenSP], [imgSP], [moTaSP], [giaTienSP], [doAn]) VALUES (N'SP03', N'French Fries', N'SP03.jpg', N'vi du mo ta san pham ', 15000, 1)
GO
INSERT [dbo].[TAIKHOAN] ([idUSER], [idNV], [taiKhoan], [matKhau], [Email]) VALUES (N'US01', N'NV01', N'us01', N'111', N'tranvm@gmail.com')
INSERT [dbo].[TAIKHOAN] ([idUSER], [idNV], [taiKhoan], [matKhau], [Email]) VALUES (N'US02', N'NV02', N'us02', N'6605616925', N'vuht@gmail.com')
INSERT [dbo].[TAIKHOAN] ([idUSER], [idNV], [taiKhoan], [matKhau], [Email]) VALUES (N'US03', N'NV03', N'us03', N'0689794030
', N'dtd@gmail.com')
GO
ALTER TABLE [dbo].[CTHOADONBAN]  WITH CHECK ADD  CONSTRAINT [fk_HOADONBAN_CTHOADONBAN] FOREIGN KEY([idHD])
REFERENCES [dbo].[HOADONBAN] ([idHD])
GO
ALTER TABLE [dbo].[CTHOADONBAN] CHECK CONSTRAINT [fk_HOADONBAN_CTHOADONBAN]
GO
ALTER TABLE [dbo].[CTHOADONBAN]  WITH CHECK ADD  CONSTRAINT [fk_SANPHAM_CTHOADONBAN] FOREIGN KEY([idSP])
REFERENCES [dbo].[SANPHAM] ([idSP])
GO
ALTER TABLE [dbo].[CTHOADONBAN] CHECK CONSTRAINT [fk_SANPHAM_CTHOADONBAN]
GO
ALTER TABLE [dbo].[CTSANPHAM]  WITH CHECK ADD  CONSTRAINT [fk_NGUYENLIEU_CTSANPHAM] FOREIGN KEY([idNL])
REFERENCES [dbo].[NGUYENLIEU] ([idNL])
GO
ALTER TABLE [dbo].[CTSANPHAM] CHECK CONSTRAINT [fk_NGUYENLIEU_CTSANPHAM]
GO
ALTER TABLE [dbo].[CTSANPHAM]  WITH CHECK ADD  CONSTRAINT [fk_SANPHAM_CTSANPHAM] FOREIGN KEY([idSP])
REFERENCES [dbo].[SANPHAM] ([idSP])
GO
ALTER TABLE [dbo].[CTSANPHAM] CHECK CONSTRAINT [fk_SANPHAM_CTSANPHAM]
GO
ALTER TABLE [dbo].[HOADONBAN]  WITH CHECK ADD  CONSTRAINT [fk_HOADONBAN_KH] FOREIGN KEY([idKH])
REFERENCES [dbo].[KHACHHANG] ([idKH])
GO
ALTER TABLE [dbo].[HOADONBAN] CHECK CONSTRAINT [fk_HOADONBAN_KH]
GO
ALTER TABLE [dbo].[HOADONBAN]  WITH CHECK ADD  CONSTRAINT [fk_HOADONBAN_NV] FOREIGN KEY([idNV])
REFERENCES [dbo].[NHANVIEN] ([idNV])
GO
ALTER TABLE [dbo].[HOADONBAN] CHECK CONSTRAINT [fk_HOADONBAN_NV]
GO
ALTER TABLE [dbo].[KHUYENMAI]  WITH CHECK ADD  CONSTRAINT [fk_KHUYENMAI_SANPHAM] FOREIGN KEY([idSP])
REFERENCES [dbo].[SANPHAM] ([idSP])
GO
ALTER TABLE [dbo].[KHUYENMAI] CHECK CONSTRAINT [fk_KHUYENMAI_SANPHAM]
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD  CONSTRAINT [fk_taikhoan_nhanvien] FOREIGN KEY([idNV])
REFERENCES [dbo].[NHANVIEN] ([idNV])
GO
ALTER TABLE [dbo].[TAIKHOAN] CHECK CONSTRAINT [fk_taikhoan_nhanvien]
GO
USE [master]
GO
ALTER DATABASE [QuanLiFastFood] SET  READ_WRITE 
GO
