USE [master]
GO
/****** Object:  Database [PhuKienDienThoai]    Script Date: 25/08/2018 1:15:51 SA ******/
CREATE DATABASE [PhuKienDienThoai]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PhuKienDienThoai', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\PhuKienDienThoai.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PhuKienDienThoai_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\PhuKienDienThoai_log.ldf' , SIZE = 1088KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PhuKienDienThoai] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PhuKienDienThoai].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PhuKienDienThoai] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PhuKienDienThoai] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PhuKienDienThoai] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PhuKienDienThoai] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PhuKienDienThoai] SET ARITHABORT OFF 
GO
ALTER DATABASE [PhuKienDienThoai] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [PhuKienDienThoai] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [PhuKienDienThoai] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PhuKienDienThoai] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PhuKienDienThoai] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PhuKienDienThoai] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PhuKienDienThoai] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PhuKienDienThoai] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PhuKienDienThoai] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PhuKienDienThoai] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PhuKienDienThoai] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PhuKienDienThoai] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PhuKienDienThoai] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PhuKienDienThoai] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PhuKienDienThoai] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PhuKienDienThoai] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PhuKienDienThoai] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PhuKienDienThoai] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PhuKienDienThoai] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PhuKienDienThoai] SET  MULTI_USER 
GO
ALTER DATABASE [PhuKienDienThoai] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PhuKienDienThoai] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PhuKienDienThoai] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PhuKienDienThoai] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [PhuKienDienThoai]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 25/08/2018 1:15:51 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 25/08/2018 1:15:51 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 25/08/2018 1:15:51 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 25/08/2018 1:15:51 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 25/08/2018 1:15:51 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 25/08/2018 1:15:51 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 25/08/2018 1:15:51 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[GioiTinh] [bit] NOT NULL,
	[HoTen] [nvarchar](max) NULL,
	[NgaySinh] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 25/08/2018 1:15:51 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 25/08/2018 1:15:51 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[HoaDonId] [int] NOT NULL,
	[SanPhamId] [int] NOT NULL,
	[NgayThem] [datetime2](7) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[ThanhTien] [int] NOT NULL,
 CONSTRAINT [PK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[HoaDonId] ASC,
	[SanPhamId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 25/08/2018 1:15:51 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenDanhMuc] [nvarchar](max) NULL,
	[MatHangId] [int] NOT NULL,
 CONSTRAINT [PK_DanhMuc] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DongDienThoai]    Script Date: 25/08/2018 1:15:51 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DongDienThoai](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenDongDienThoai] [nvarchar](max) NULL,
 CONSTRAINT [PK_TacGia] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 25/08/2018 1:15:51 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NgayLapHoaDon] [datetime2](7) NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](max) NULL,
	[NgayGiao] [datetime2](7) NULL,
	[PhuongThucThanhTOan] [nvarchar](255) NULL,
	[TongThanhTien] [int] NOT NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LienLac]    Script Date: 25/08/2018 1:15:51 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LienLac](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[Ten] [nvarchar](50) NULL,
	[TieuDe] [nvarchar](200) NULL,
	[NgayGoi] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_LienLac] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MatHang]    Script Date: 25/08/2018 1:15:51 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MatHang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenMatHang] [nvarchar](max) NULL,
 CONSTRAINT [PK_ChuDe] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanXet]    Script Date: 25/08/2018 1:15:51 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanXet](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NoiDung] [nvarchar](max) NULL,
	[SanPhamId] [int] NULL,
	[TieuDe] [nvarchar](50) NULL,
	[UserId] [nvarchar](450) NULL,
	[NgayDang] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_NhanXet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 25/08/2018 1:15:51 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MatHangId] [int] NULL,
	[DanhMucId] [int] NULL,
	[DinhDang] [nvarchar](100) NULL,
	[DonGia] [int] NOT NULL,
	[HinhAnh] [nvarchar](200) NULL,
	[ThuongHieuId] [int] NULL,
	[PhanTramGiamGia] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[MauSac] [nvarchar](200) NOT NULL,
	[DongDienThoaiId] [int] NULL,
	[TenSanPham] [nvarchar](255) NULL,
	[TomTat] [nvarchar](max) NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThuongHieu]    Script Date: 25/08/2018 1:15:51 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThuongHieu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenThuongHieu] [nvarchar](max) NULL,
 CONSTRAINT [PK_NhaXuatBan] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TraLoiLienLac]    Script Date: 25/08/2018 1:15:51 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TraLoiLienLac](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NoiDung] [nvarchar](max) NULL,
	[TieuDe] [nvarchar](max) NULL,
	[LienLacId] [int] NULL,
	[NgayTraLoi] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_TraLoiLienLac] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Wishlist]    Script Date: 25/08/2018 1:15:51 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wishlist](
	[SanPhamID] [int] NOT NULL,
	[UserID] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Wishlist] PRIMARY KEY CLUSTERED 
(
	[SanPhamID] ASC,
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20171127033557_CreateDatabase', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20171202060848_AddTableLienLac', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20171202071224_AddTraLoiLienLacTable', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20171202090109_UpdateLienLacVaTraLoiLienLac', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20171202090401_UpdateTraLoiLienLac', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20171204064813_DeleteSoDienThoaiColumnApplicationUsers', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20171205150055_AddNgayDangToNhanXetTable', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20171207015248_ThemDiaChiVaoHoaDon', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20171207033434_ThemCotGhiChuVaoHoaDon', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20171207083654_ThemTrangThaiVaoHoaDon', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20171208074838_ThemSoLuongVaoChiTietHoaDon', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20171208081545_HoaDonVaChiTietHoaDon', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20171222104117_ModifyHoaDonTable', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20171224030924_ThemNgayGiaoVaoHoaDon', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20171225011729_ThemTongThanhTienVaoHoaDon', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20171225013637_ThemThanhTienVaoChiTietHoaDon', N'2.0.0-rtm-26452')
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'743656ce-866f-4787-876d-8612682984e6', N'0532a92e-f555-49f1-87d0-6cebab4b5bce', N'User', N'USER')
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'cab8670d-5e04-421a-81a1-c528bc4d09ac', N'73eb4126-e11a-4082-9444-611b8ab6f529', N'Admin', N'ADMIN')
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'e58e42a2-b3c1-4204-ac3d-e1fcea8adf16', N'01c5add5-5158-4b97-9ade-e74f4a1cce0d', N'Giao Hàng', N'GIAO HÀNG')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4cea0535-6afc-4b72-872c-e2d538956646', N'743656ce-866f-4787-876d-8612682984e6')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6a27bcf7-378a-4a17-a069-439190eecf9e', N'e58e42a2-b3c1-4204-ac3d-e1fcea8adf16')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6b070863-5a39-4385-884d-d4c08b0911d5', N'743656ce-866f-4787-876d-8612682984e6')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8aa90b19-7aff-45bf-800e-b78b15d2c99d', N'cab8670d-5e04-421a-81a1-c528bc4d09ac')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8d0f82f1-50e3-483e-8678-5da2175f9f94', N'743656ce-866f-4787-876d-8612682984e6')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [DiaChi], [GioiTinh], [HoTen], [NgaySinh]) VALUES (N'4cea0535-6afc-4b72-872c-e2d538956646', 0, N'c70a6c91-15c8-488d-af56-e8af7eb7b2c6', N'ngocnguyen271297@gmail.com', 0, 1, NULL, N'NGOCNGUYEN271297@GMAIL.COM', N'NGOCNGUYEN271297@GMAIL.COM', N'AQAAAAEAACcQAAAAEAt//T+YipqL59zn+FOFoXXghHNfwi3qProkDDniHYrdYiS0qpQtTjf04safbKIkAw==', N'123456789', 0, N'KTYB664A6BFWJBWKQA3UM6EKD3FIMZD5', 0, N'ngocnguyen271297@gmail.com', N'thành phố hồ chí minh', 0, N'Nguyễn Minh Ngọc', CAST(0x07000000000028210B AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [DiaChi], [GioiTinh], [HoTen], [NgaySinh]) VALUES (N'6a27bcf7-378a-4a17-a069-439190eecf9e', 0, N'aaa79060-1a74-4d57-a24e-9d8c401d4e5c', N'giaohang@gmail.com', 0, 1, NULL, N'GIAOHANG@GMAIL.COM', N'GIAOHANG@GMAIL.COM', N'AQAAAAEAACcQAAAAEAQC05A+rvsmOBd49avKQc/yuqzoF2OsZ+Hqb5ipFjvNVsQjtBf0Ik5rNuZBk31GJA==', N'0123456789', 0, N'LVMBKLZ5N2B4VKK46CNZC5RVHBLBAIJ6', 0, N'giaohang@gmail.com', N'HCM', 1, N'Giao Hàng', CAST(0x070000000000C01F0B AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [DiaChi], [GioiTinh], [HoTen], [NgaySinh]) VALUES (N'6b070863-5a39-4385-884d-d4c08b0911d5', 0, N'87b2c799-eae7-4e53-95ea-47475671727e', N'duyenptt97@gmail.com', 0, 1, NULL, N'DUYENPTT97@GMAIL.COM', N'DUYENPTT97@GMAIL.COM', N'AQAAAAEAACcQAAAAEPqzr4T66n5xEk4uGqwLVTiLxTxN1ECUSXouJgFntDVUjc13OEd1w9x7oxpw9UXZBw==', N'01627802845', 0, N'J7Z27XJNAJOMBF757RQ7LSZVFRSIS347', 0, N'duyenptt97@gmail.com', N'222 LVS', 0, N'Thanh Duyên', CAST(0x070000000000E6200B AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [DiaChi], [GioiTinh], [HoTen], [NgaySinh]) VALUES (N'8aa90b19-7aff-45bf-800e-b78b15d2c99d', 0, N'6a7ae5ec-f45d-4881-a34b-f834814186d8', N'admin@gmail.com', 1, 0, NULL, N'ADMIN@GMAIL.COM', N'ADMIN@GMAIL.COM', N'AQAAAAEAACcQAAAAEGPMtxTbXToR1vbIVbcatT0kvzwFGLfOGz65oE1+AWHwOkc/m1fqSePCcFZGVe0QQQ==', N'0123456789', 0, N'864233e4-d2af-42e0-a760-7595145fc09c', 0, N'admin@gmail.com', N'280 An Dương Vương, Phường 4, Quận 10, TP.HCM', 0, N'Admin', CAST(0x070000000000DB1F0B AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [DiaChi], [GioiTinh], [HoTen], [NgaySinh]) VALUES (N'8d0f82f1-50e3-483e-8678-5da2175f9f94', 0, N'8470d47b-09dc-461e-bd72-bdbdc1c34cd3', N'lethanhtuan2897@gmail.com', 0, 1, NULL, N'LETHANHTUAN2897@GMAIL.COM', N'LETHANHTUAN2897@GMAIL.COM', N'AQAAAAEAACcQAAAAEK2OxSILRYTwMngKGGmSeXKR63BtqIqNARvi0bEvnrjf3NP1SynFejWOQh63r+dqmQ==', N'0123456789', 0, N'X4LFD4ARR5GOQM2UU6CNJQU6ZUEIPXEH', 0, N'lethanhtuan2897@gmail.com', N'Hồ Chí Minh', 1, N'Tuấn', CAST(0x070000000000DB1F0B AS DateTime2))
INSERT [dbo].[ChiTietHoaDon] ([HoaDonId], [SanPhamId], [NgayThem], [SoLuong], [ThanhTien]) VALUES (18, 8, CAST(0x07D68A354AB6A13E0B AS DateTime2), 1, 30000)
INSERT [dbo].[ChiTietHoaDon] ([HoaDonId], [SanPhamId], [NgayThem], [SoLuong], [ThanhTien]) VALUES (18, 11, CAST(0x07828B354AB6A13E0B AS DateTime2), 1, 100000)
INSERT [dbo].[ChiTietHoaDon] ([HoaDonId], [SanPhamId], [NgayThem], [SoLuong], [ThanhTien]) VALUES (19, 5, CAST(0x074DB4C13CBCA13E0B AS DateTime2), 1, 50000)
INSERT [dbo].[ChiTietHoaDon] ([HoaDonId], [SanPhamId], [NgayThem], [SoLuong], [ThanhTien]) VALUES (19, 10, CAST(0x074DB4C13CBCA13E0B AS DateTime2), 1, 50000)
INSERT [dbo].[ChiTietHoaDon] ([HoaDonId], [SanPhamId], [NgayThem], [SoLuong], [ThanhTien]) VALUES (19, 14, CAST(0x074DB4C13CBCA13E0B AS DateTime2), 1, 50000)
INSERT [dbo].[ChiTietHoaDon] ([HoaDonId], [SanPhamId], [NgayThem], [SoLuong], [ThanhTien]) VALUES (20, 4, CAST(0x07292D9123C0A13E0B AS DateTime2), 1, 120000)
INSERT [dbo].[ChiTietHoaDon] ([HoaDonId], [SanPhamId], [NgayThem], [SoLuong], [ThanhTien]) VALUES (21, 6, CAST(0x073F5C1505C1A13E0B AS DateTime2), 1, 30000)
INSERT [dbo].[ChiTietHoaDon] ([HoaDonId], [SanPhamId], [NgayThem], [SoLuong], [ThanhTien]) VALUES (22, 4, CAST(0x07BC9125F6C1A13E0B AS DateTime2), 1, 120000)
INSERT [dbo].[ChiTietHoaDon] ([HoaDonId], [SanPhamId], [NgayThem], [SoLuong], [ThanhTien]) VALUES (23, 7, CAST(0x07FCF417F9C3A13E0B AS DateTime2), 1, 30000)
INSERT [dbo].[ChiTietHoaDon] ([HoaDonId], [SanPhamId], [NgayThem], [SoLuong], [ThanhTien]) VALUES (24, 5, CAST(0x0786B6A8AFC5A13E0B AS DateTime2), 1, 50000)
INSERT [dbo].[ChiTietHoaDon] ([HoaDonId], [SanPhamId], [NgayThem], [SoLuong], [ThanhTien]) VALUES (25, 5, CAST(0x07A95C1A7DC8A13E0B AS DateTime2), 1, 50000)
INSERT [dbo].[ChiTietHoaDon] ([HoaDonId], [SanPhamId], [NgayThem], [SoLuong], [ThanhTien]) VALUES (26, 4, CAST(0x077D5CCABF06A23E0B AS DateTime2), 1, 120000)
INSERT [dbo].[ChiTietHoaDon] ([HoaDonId], [SanPhamId], [NgayThem], [SoLuong], [ThanhTien]) VALUES (27, 5, CAST(0x07C8C8A5F908A23E0B AS DateTime2), 1, 50000)
INSERT [dbo].[ChiTietHoaDon] ([HoaDonId], [SanPhamId], [NgayThem], [SoLuong], [ThanhTien]) VALUES (28, 4, CAST(0x07D4CCF94809A23E0B AS DateTime2), 1, 120000)
INSERT [dbo].[ChiTietHoaDon] ([HoaDonId], [SanPhamId], [NgayThem], [SoLuong], [ThanhTien]) VALUES (28, 11, CAST(0x07D4CCF94809A23E0B AS DateTime2), 1, 100000)
SET IDENTITY_INSERT [dbo].[DanhMuc] ON 

INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [MatHangId]) VALUES (2, N'Apple', 1)
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [MatHangId]) VALUES (3, N'Samsung ', 1)
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [MatHangId]) VALUES (6, NULL, 8)
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [MatHangId]) VALUES (18, N'Xiaomi', 7)
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [MatHangId]) VALUES (23, N'Tát cả các dòng điện thoại', 3)
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [MatHangId]) VALUES (24, N'Tất cả các dòng điện thoại', 4)
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [MatHangId]) VALUES (25, N'Apple', 5)
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [MatHangId]) VALUES (26, N'Apple', 2)
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [MatHangId]) VALUES (27, N'Apple', 6)
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [MatHangId]) VALUES (28, NULL, 0)
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [MatHangId]) VALUES (29, NULL, 0)
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [MatHangId]) VALUES (30, NULL, 0)
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [MatHangId]) VALUES (31, NULL, 0)
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [MatHangId]) VALUES (32, NULL, 0)
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [MatHangId]) VALUES (33, NULL, 0)
SET IDENTITY_INSERT [dbo].[DanhMuc] OFF
SET IDENTITY_INSERT [dbo].[DongDienThoai] ON 

INSERT [dbo].[DongDienThoai] ([Id], [TenDongDienThoai]) VALUES (3, N'Tất cả các dòng điện thoại')
INSERT [dbo].[DongDienThoai] ([Id], [TenDongDienThoai]) VALUES (4, N'Iphone 6/6s')
INSERT [dbo].[DongDienThoai] ([Id], [TenDongDienThoai]) VALUES (5, N'Iphone 6plus/6sPlus')
INSERT [dbo].[DongDienThoai] ([Id], [TenDongDienThoai]) VALUES (6, N'Iphone 7')
INSERT [dbo].[DongDienThoai] ([Id], [TenDongDienThoai]) VALUES (10, N'Iphone 7Plus')
INSERT [dbo].[DongDienThoai] ([Id], [TenDongDienThoai]) VALUES (12, N'Iphone 8')
INSERT [dbo].[DongDienThoai] ([Id], [TenDongDienThoai]) VALUES (16, N'Iphone 8Plus')
INSERT [dbo].[DongDienThoai] ([Id], [TenDongDienThoai]) VALUES (17, N'Iphone X')
INSERT [dbo].[DongDienThoai] ([Id], [TenDongDienThoai]) VALUES (18, N'Samsung J7 Prime')
INSERT [dbo].[DongDienThoai] ([Id], [TenDongDienThoai]) VALUES (20, N'Samsung J7 Pro')
INSERT [dbo].[DongDienThoai] ([Id], [TenDongDienThoai]) VALUES (22, N'Samsung Galaxy S8 Plus')
INSERT [dbo].[DongDienThoai] ([Id], [TenDongDienThoai]) VALUES (23, N'Iphone')
INSERT [dbo].[DongDienThoai] ([Id], [TenDongDienThoai]) VALUES (24, N'Ipad')
SET IDENTITY_INSERT [dbo].[DongDienThoai] OFF
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([Id], [NgayLapHoaDon], [UserId], [DiaChi], [GhiChu], [NgayGiao], [PhuongThucThanhTOan], [TongThanhTien]) VALUES (18, CAST(0x07898B354AB6A13E0B AS DateTime2), N'8d0f82f1-50e3-483e-8678-5da2175f9f94', N'Hồ Chí Minh', N'<p>Giao sớm</p>
', NULL, N'Trực tiếp', 130000)
INSERT [dbo].[HoaDon] ([Id], [NgayLapHoaDon], [UserId], [DiaChi], [GhiChu], [NgayGiao], [PhuongThucThanhTOan], [TongThanhTien]) VALUES (19, CAST(0x074DB4C13CBCA13E0B AS DateTime2), N'8aa90b19-7aff-45bf-800e-b78b15d2c99d', N'280 An Dương Vương, Phường 4, Quận 10, TP.HCM', NULL, NULL, N'Trực tiếp', 150000)
INSERT [dbo].[HoaDon] ([Id], [NgayLapHoaDon], [UserId], [DiaChi], [GhiChu], [NgayGiao], [PhuongThucThanhTOan], [TongThanhTien]) VALUES (20, CAST(0x07292D9123C0A13E0B AS DateTime2), N'8aa90b19-7aff-45bf-800e-b78b15d2c99d', N'280 An Dương Vương, Phường 4, Quận 10, TP.HCM', NULL, NULL, N'Đã thanh toán qua PayPal', 120000)
INSERT [dbo].[HoaDon] ([Id], [NgayLapHoaDon], [UserId], [DiaChi], [GhiChu], [NgayGiao], [PhuongThucThanhTOan], [TongThanhTien]) VALUES (21, CAST(0x073F5C1505C1A13E0B AS DateTime2), N'8aa90b19-7aff-45bf-800e-b78b15d2c99d', N'280 An Dương Vương, Phường 4, Quận 10, TP.HCM', NULL, NULL, N'Đã thanh toán qua PayPal', 30000)
INSERT [dbo].[HoaDon] ([Id], [NgayLapHoaDon], [UserId], [DiaChi], [GhiChu], [NgayGiao], [PhuongThucThanhTOan], [TongThanhTien]) VALUES (22, CAST(0x07CDB825F6C1A13E0B AS DateTime2), N'8aa90b19-7aff-45bf-800e-b78b15d2c99d', N'280 An Dương Vương, Phường 4, Quận 10, TP.HCM', N'
Payment ID=undefined
Payer ID=undefined', NULL, N'Đã thanh toán qua PayPal', 120000)
INSERT [dbo].[HoaDon] ([Id], [NgayLapHoaDon], [UserId], [DiaChi], [GhiChu], [NgayGiao], [PhuongThucThanhTOan], [TongThanhTien]) VALUES (23, CAST(0x070C1C18F9C3A13E0B AS DateTime2), N'8aa90b19-7aff-45bf-800e-b78b15d2c99d', N'280 An Dương Vương, Phường 4, Quận 10, TP.HCM', NULL, NULL, N'Đã thanh toán qua PayPal', 30000)
INSERT [dbo].[HoaDon] ([Id], [NgayLapHoaDon], [UserId], [DiaChi], [GhiChu], [NgayGiao], [PhuongThucThanhTOan], [TongThanhTien]) VALUES (24, CAST(0x07B1B6A8AFC5A13E0B AS DateTime2), N'8d0f82f1-50e3-483e-8678-5da2175f9f94', N'Hồ Chí Minh', N'Hello', NULL, N'Đã thanh toán qua PayPal', 50000)
INSERT [dbo].[HoaDon] ([Id], [NgayLapHoaDon], [UserId], [DiaChi], [GhiChu], [NgayGiao], [PhuongThucThanhTOan], [TongThanhTien]) VALUES (25, CAST(0x07B9831A7DC8A13E0B AS DateTime2), N'8aa90b19-7aff-45bf-800e-b78b15d2c99d', N'280 An Dương Vương, Phường 4, Quận 10, TP.HCM', NULL, NULL, N'Đã thanh toán qua PayPal', 50000)
INSERT [dbo].[HoaDon] ([Id], [NgayLapHoaDon], [UserId], [DiaChi], [GhiChu], [NgayGiao], [PhuongThucThanhTOan], [TongThanhTien]) VALUES (26, CAST(0x07825CCABF06A23E0B AS DateTime2), N'8aa90b19-7aff-45bf-800e-b78b15d2c99d', N'280 An Dương Vương, Phường 4, Quận 10, TP.HCM', NULL, NULL, N'Thanh toán trực tiếp', 120000)
INSERT [dbo].[HoaDon] ([Id], [NgayLapHoaDon], [UserId], [DiaChi], [GhiChu], [NgayGiao], [PhuongThucThanhTOan], [TongThanhTien]) VALUES (27, CAST(0x07C8C8A5F908A23E0B AS DateTime2), N'8d0f82f1-50e3-483e-8678-5da2175f9f94', N'Hồ Chí Minh', NULL, NULL, N'Đã thanh toán qua PayPal', 50000)
INSERT [dbo].[HoaDon] ([Id], [NgayLapHoaDon], [UserId], [DiaChi], [GhiChu], [NgayGiao], [PhuongThucThanhTOan], [TongThanhTien]) VALUES (28, CAST(0x07E4F3F94809A23E0B AS DateTime2), N'8d0f82f1-50e3-483e-8678-5da2175f9f94', N'Hồ Chí Minh', NULL, NULL, N'Đã thanh toán qua PayPal', 220000)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
SET IDENTITY_INSERT [dbo].[LienLac] ON 

INSERT [dbo].[LienLac] ([Id], [Email], [NoiDung], [Ten], [TieuDe], [NgayGoi]) VALUES (2, N'zeronguyen1995@gmail.com', N'<p><strong>Cửa h&agrave;ng th&acirc;n thiện</strong></p>

<p><em>Trang web độc đ&aacute;o</em></p>

<p><u>Nh&acirc;n vi&ecirc;n nhiệt t&igrave;nh</u></p>

<p>&nbsp;</p>
', N'Nguyễn Hoàng Minh', N'Thư liên hệ', CAST(0x073BEFD52687983D0B AS DateTime2))
SET IDENTITY_INSERT [dbo].[LienLac] OFF
SET IDENTITY_INSERT [dbo].[MatHang] ON 

INSERT [dbo].[MatHang] ([Id], [TenMatHang]) VALUES (1, N'Ốp lưng điện thoại')
INSERT [dbo].[MatHang] ([Id], [TenMatHang]) VALUES (2, N'Bộ dây quấn sạc điện thoại')
INSERT [dbo].[MatHang] ([Id], [TenMatHang]) VALUES (3, N'Dây đeo điện thoại')
INSERT [dbo].[MatHang] ([Id], [TenMatHang]) VALUES (4, N'Ring ( nhẫn đeo dán ốp điện thoại)')
INSERT [dbo].[MatHang] ([Id], [TenMatHang]) VALUES (5, N'Bao da Ipad')
INSERT [dbo].[MatHang] ([Id], [TenMatHang]) VALUES (6, N'Dán màn hình cường lực cho điện thoại')
INSERT [dbo].[MatHang] ([Id], [TenMatHang]) VALUES (7, N'Sạc dự phòng')
SET IDENTITY_INSERT [dbo].[MatHang] OFF
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([id], [MatHangId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [ThuongHieuId], [PhanTramGiamGia], [SoLuong], [MauSac], [DongDienThoaiId], [TenSanPham], [TomTat]) VALUES (3, 1, 2, N'Nhựa dẻo', 90000, N'3_38907506_1336307233165945_2934477555350110208_n.jpg', 1, 0, 171, N'đủ màu', 23, N'Ốp lưng màu silicon', N'<p>Ốp lưng m&agrave;u silicon với nhiều sắc m&agrave;u ph&ugrave; hợp với t&iacute;nh c&aacute;ch của mỗi người nhưng vẫn t&ocirc;n l&ecirc;n được vẻ đẹp sang trọng của chiếc điện thoại</p>
')
INSERT [dbo].[SanPham] ([id], [MatHangId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [ThuongHieuId], [PhanTramGiamGia], [SoLuong], [MauSac], [DongDienThoaiId], [TenSanPham], [TomTat]) VALUES (4, 1, 2, N'Nhựa dẻo', 120000, N'4_39514912_217492312447909_6276982522853195776_n.jpg', 26, 0, 72, N'0', 5, N'Ốp lưng hoạt hình Gudetama', N'<p>Được kết hợp từ chữ gude gude (ぐでぐで = uể oải) v&agrave; tamago (たまご = trứng), c&aacute;i t&ecirc;n n&oacute;i l&ecirc;n tất cả! Gudetama (ぐでたま) l&agrave; một quả trứng biếng nh&aacute;c, lu&ocirc;n trong t&igrave;nh trạng thiếu sức sống để l&agrave;m bất cứ việc g&igrave;. Cậu ta sẵn s&agrave;ng nằm d&agrave;i tr&ecirc;n giường suốt cả ng&agrave;y, chả buồn che c&aacute;i m&ocirc;ng trần của m&igrave;nh, hầu như kh&ocirc;ng di chuyển trừ khi bị t&aacute;c động bởi một đ&ocirc;i đũa khổng lồ. Ngay cả l&uacute;c bị cho v&agrave;o nồi nước s&ocirc;i, phản ứng duy nhất của Gudetama l&agrave; chỉ thở d&agrave;i chấp nhận số phận.</p>

<p>Ốp lưng Trứng lười l&agrave; một lựa chọn tuyệt vời cho c&aacute;c bạn trẻ y&ecirc;u th&iacute;ch bộ phim hoạt h&igrave;nh n&agrave;y của Nhật Bản&nbsp;</p>
')
INSERT [dbo].[SanPham] ([id], [MatHangId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [ThuongHieuId], [PhanTramGiamGia], [SoLuong], [MauSac], [DongDienThoaiId], [TenSanPham], [TomTat]) VALUES (5, 2, 26, N'Cao su, lò xo, nhựa dẻo', 50000, N'5_39306128_1787723384644191_3728630490282852352_n.jpg', 1, 0, 82, N'vàng', 23, N'Bộ quấn dây sạc Bọt Biển', N'<p>Combo d&acirc;y quấn l&ograve; xo cho d&acirc;y sạc + decal d&aacute;n&nbsp;cốc sạc + n&uacute;t bọc bảo vệ d&acirc;y sạc h&igrave;nh Bọt Biển</p>
')
INSERT [dbo].[SanPham] ([id], [MatHangId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [ThuongHieuId], [PhanTramGiamGia], [SoLuong], [MauSac], [DongDienThoaiId], [TenSanPham], [TomTat]) VALUES (6, 3, 23, N'Cao su, lò xo, nhựa dẻo', 30000, N'6_38476880_1328116573985011_1555326598410928128_n.jpg', 1, 0, 139, N'trắng+đen', 3, N'Dây đeo điện thoại hình Bò Sữa', N'<p>D&acirc;y đeo cổ gi&uacute;p bạn giữ chắc được chiếc điện thoại của m&igrave;nh với thiết kế ngộ nghĩnh với nh&acirc;n vật hoạt h&igrave;nh B&ograve; Sữa</p>
')
INSERT [dbo].[SanPham] ([id], [MatHangId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [ThuongHieuId], [PhanTramGiamGia], [SoLuong], [MauSac], [DongDienThoaiId], [TenSanPham], [TomTat]) VALUES (7, 3, 23, N'Dây đeo cổ, nhân vật hoạt hình bằng sứ', 30000, N'7_38467979_1328114543985214_1806547108229021696_n.jpg', 1, 0, 146, N'hồng', 3, N'Dây đeo điện thoại hình Báo Hồng', N'<p>D&acirc;y đeo cổ gi&uacute;p bạn giữ chắc được chiếc điện thoại của m&igrave;nh với thiết kế ngộ nghĩnh với nh&acirc;n vật hoạt h&igrave;nh B&aacute;o Hồng</p>
')
INSERT [dbo].[SanPham] ([id], [MatHangId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [ThuongHieuId], [PhanTramGiamGia], [SoLuong], [MauSac], [DongDienThoaiId], [TenSanPham], [TomTat]) VALUES (8, 3, 23, N'Dây đeo cổ, nhân vật hoạt hình bằng sứ', 30000, N'8_38660761_1328116620651673_1163342353692360704_n.jpg', 1, 0, 147, N'xanh', 3, N'Dây đeo điện thoại hình Doraemon', N'<p>D&acirc;y đeo cổ gi&uacute;p bạn giữ chắc được chiếc điện thoại của m&igrave;nh với thiết kế ngộ nghĩnh với nh&acirc;n vật hoạt h&igrave;nh Doraemon</p>
')
INSERT [dbo].[SanPham] ([id], [MatHangId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [ThuongHieuId], [PhanTramGiamGia], [SoLuong], [MauSac], [DongDienThoaiId], [TenSanPham], [TomTat]) VALUES (9, 2, 26, N'Cao su, lò xo, nhựa dẻo', 50000, N'9_39442992_1870438303037388_2591969147743109120_n.jpg', 1, 0, 97, N'hồng', 23, N'Bộ quấn dây sạc Thỏ Cony', N'<p>Combo d&acirc;y quấn l&ograve; xo cho d&acirc;y sạc + decal d&aacute;n&nbsp;cốc sạc + n&uacute;t bọc bảo vệ d&acirc;y sạc h&igrave;nh Thỏ Cony</p>
')
INSERT [dbo].[SanPham] ([id], [MatHangId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [ThuongHieuId], [PhanTramGiamGia], [SoLuong], [MauSac], [DongDienThoaiId], [TenSanPham], [TomTat]) VALUES (10, 2, 26, N'Cao su, lò xo, nhựa dẻo', 50000, N'10_39454421_268297690453199_5503665354741645312_n.jpg', 1, 0, 98, N'hồng', 23, N'Bộ quấn dây sạc Hello Kitty', N'<p>Combo d&acirc;y quấn l&ograve; xo cho d&acirc;y sạc + decal d&aacute;n&nbsp;cốc sạc + n&uacute;t bọc bảo vệ d&acirc;y sạc h&igrave;nh Hello Kitty</p>
')
INSERT [dbo].[SanPham] ([id], [MatHangId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [ThuongHieuId], [PhanTramGiamGia], [SoLuong], [MauSac], [DongDienThoaiId], [TenSanPham], [TomTat]) VALUES (11, 1, 2, N'Kim loại nhẹ + kính trong', 100000, N'11_38869783_1334228036707198_6134404628126629888_n.jpg', 1, 0, 177, N'0', 17, N'Ốp lưng trong viền kim loại', N'<p>Ốp m&agrave;u trong lu&ocirc;n l&agrave; lựa chọn h&agrave;ng đầu cho những ai muốn giữ nguy&ecirc;n m&agrave;u sắc v&agrave; vẻ đẹp nguy&ecirc;n thủy cho dế y&ecirc;u của m&igrave;nh&nbsp;</p>
')
INSERT [dbo].[SanPham] ([id], [MatHangId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [ThuongHieuId], [PhanTramGiamGia], [SoLuong], [MauSac], [DongDienThoaiId], [TenSanPham], [TomTat]) VALUES (12, 3, 26, N'Cao su, lò xo, nhựa dẻo', 50000, N'12_39292273_316496708922823_8264994610678333440_n.jpg', 1, 0, 100, N'0', 23, N'Bộ quấn dây sạc Captain America', N'<p>Combo d&acirc;y quấn l&ograve; xo cho d&acirc;y sạc + decal d&aacute;n&nbsp;cốc sạc + n&uacute;t bọc bảo vệ d&acirc;y sạc h&igrave;nh Captain America</p>
')
INSERT [dbo].[SanPham] ([id], [MatHangId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [ThuongHieuId], [PhanTramGiamGia], [SoLuong], [MauSac], [DongDienThoaiId], [TenSanPham], [TomTat]) VALUES (13, 2, 26, N'Cao su, lò xo, nhựa dẻo', 50000, N'13_39500049_397253530808456_4888642530628861952_n.jpg', 1, 0, 100, N'xanh', 23, N'Bộ quấn dây sạc Stitch', N'<p>Combo d&acirc;y quấn l&ograve; xo cho d&acirc;y sạc + decal d&aacute;n&nbsp;cốc sạc + n&uacute;t bọc bảo vệ d&acirc;y sạc h&igrave;nh Stitch</p>
')
INSERT [dbo].[SanPham] ([id], [MatHangId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [ThuongHieuId], [PhanTramGiamGia], [SoLuong], [MauSac], [DongDienThoaiId], [TenSanPham], [TomTat]) VALUES (14, 2, 26, N'Cao su, lò xo, nhựa dẻo', 50000, N'14_39390558_163790914459852_4939161731260743680_n.jpg', 1, 0, 99, N'xanh', 23, N'Bộ quấn dây sạc Doraemon', N'<p>Combo d&acirc;y quấn l&ograve; xo cho d&acirc;y sạc + decal d&aacute;n&nbsp;cốc sạc + n&uacute;t bọc bảo vệ d&acirc;y sạc h&igrave;nh Doraemon</p>

<p>&nbsp;</p>

<p>&nbsp;</p>
')
INSERT [dbo].[SanPham] ([id], [MatHangId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [ThuongHieuId], [PhanTramGiamGia], [SoLuong], [MauSac], [DongDienThoaiId], [TenSanPham], [TomTat]) VALUES (15, 1, 2, N'Nhựa dẻo', 160000, N'15_39389196_281190899334843_3436773087264112640_n.jpg', 26, 0, 80, N'hồng', 4, N'Ốp lưng Thỏ Cony (Line friends)', N'<p>C&oacute; gấu Brown th&igrave; kh&ocirc;ng thể thiếu Thỏ Cony nh&eacute; fan của LINE ơi! Couple h&atilde;y c&ugrave;ng nhau rinh cặp đ&ocirc;i n&agrave;y về cho dế iu của m&igrave;nh nh&eacute;</p>
')
INSERT [dbo].[SanPham] ([id], [MatHangId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [ThuongHieuId], [PhanTramGiamGia], [SoLuong], [MauSac], [DongDienThoaiId], [TenSanPham], [TomTat]) VALUES (16, 2, 26, N'Cao su, lò xo, nhựa dẻo', 50000, N'16_39467706_674751476236138_7783879851718475776_n.jpg', 1, 0, 100, N'nâu', 23, N'Bộ quấn dây sạc Gấu Brown', N'<p>Combo d&acirc;y quấn l&ograve; xo cho d&acirc;y sạc + decal d&aacute;n&nbsp;cốc sạc + n&uacute;t bọc bảo vệ d&acirc;y sạc h&igrave;nh Gấu Brown</p>
')
INSERT [dbo].[SanPham] ([id], [MatHangId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [ThuongHieuId], [PhanTramGiamGia], [SoLuong], [MauSac], [DongDienThoaiId], [TenSanPham], [TomTat]) VALUES (17, 3, 23, N'Cao su, lò xo, nhựa dẻo', 30000, N'17_38474493_1328114557318546_1335940798507646976_n.jpg', 1, 0, 150, N'nâu', 3, N'Dây đeo điện thoại hình Gấu Brown', N'<p>D&acirc;y đeo cổ gi&uacute;p bạn giữ chắc được chiếc điện thoại của m&igrave;nh với thiết kế ngộ nghĩnh với nh&acirc;n vật hoạt h&igrave;nh Gấu Brown</p>
')
INSERT [dbo].[SanPham] ([id], [MatHangId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [ThuongHieuId], [PhanTramGiamGia], [SoLuong], [MauSac], [DongDienThoaiId], [TenSanPham], [TomTat]) VALUES (19, 2, 26, N'Cao su, lò xo, nhựa dẻo', 50000, N'19_39468134_2132881213633697_251178380483887104_n.jpg', 1, 0, 100, N'đen', 23, N'Bộ quấn dây sạc Batman', N'<p>Combo d&acirc;y quấn l&ograve; xo cho d&acirc;y sạc + decal d&aacute;n&nbsp;cốc sạc + n&uacute;t bọc bảo vệ d&acirc;y sạc h&igrave;nh Batman</p>
')
INSERT [dbo].[SanPham] ([id], [MatHangId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [ThuongHieuId], [PhanTramGiamGia], [SoLuong], [MauSac], [DongDienThoaiId], [TenSanPham], [TomTat]) VALUES (20, 1, 2, N'Nhựa dẻo', 160000, N'20_39223093_518370085282709_4698402529120092160_n.jpg', 26, 0, 79, N'0', 5, N'Ốp lưng gấu Brown (Line friends)', N'<p>Line friends l&agrave; xu hướng mới đến từ h&agrave;n quốc v&agrave; rất nhanh được c&aacute;c bạn trẻ Việt Nam hưởng ứng! Ch&uacute; gấu Brown lạnh l&ugrave;ng nhưng dễ thương n&agrave;y sẽ khiến dế y&ecirc;u của bạn trở n&ecirc;n thời thượng hơn rất nhiều đ&oacute; !</p>
')
INSERT [dbo].[SanPham] ([id], [MatHangId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [ThuongHieuId], [PhanTramGiamGia], [SoLuong], [MauSac], [DongDienThoaiId], [TenSanPham], [TomTat]) VALUES (21, 1, 2, N'Nhựa dẻo', 120000, N'21_39453944_1894342377528329_3905688884972879872_n.jpg', 26, 0, 100, N'0', 17, N'Ốp lưng Unicorn kim tuyến ', N'<p>Ốp lưng hoạt h&igrave;nh Unicorn ch&uacute; ngựa 1 sừng được thiết kế vui nhộn với kim tuyến bling bling đang l&agrave; hot trend của m&ugrave;a n&agrave;y d&agrave;nh cho c&aacute;c ifan b&aacute;nh b&egrave;o</p>
')
INSERT [dbo].[SanPham] ([id], [MatHangId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [ThuongHieuId], [PhanTramGiamGia], [SoLuong], [MauSac], [DongDienThoaiId], [TenSanPham], [TomTat]) VALUES (22, 1, 2, N'Nhựa dẻo', 120000, N'22_39279981_812289165562026_1646320037536989184_n.jpg', 26, 0, 200, N'0', 5, N'Ốp lưng hoạt hình Doraemon ', N'<p>Ốp lưng h&igrave;nh ch&uacute; m&egrave;o m&aacute;y Doraemon được biến tấu mới tạ vs h&igrave;nh dạng một g&oacute;i kẹo sẽ l&agrave;m cho dế y&ecirc;u của c&aacute;c bạn trở n&ecirc;n ngộ nghĩnh&nbsp;</p>
')
INSERT [dbo].[SanPham] ([id], [MatHangId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [ThuongHieuId], [PhanTramGiamGia], [SoLuong], [MauSac], [DongDienThoaiId], [TenSanPham], [TomTat]) VALUES (23, 3, 23, N'Dây đeo cổ, nhân vật hoạt hình bằng sứ', 30000, N'23_38454724_1328113943985274_5416987661963362304_n.jpg', 1, 0, 150, N'xanh', 3, N'Dây đeo điện thoại hình Stitch', N'<p>D&acirc;y đeo cổ gi&uacute;p bạn giữ chắc được chiếc điện thoại của m&igrave;nh với thiết kế ngộ nghĩnh với nh&acirc;n vật hoạt h&igrave;nh Stitch</p>
')
INSERT [dbo].[SanPham] ([id], [MatHangId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [ThuongHieuId], [PhanTramGiamGia], [SoLuong], [MauSac], [DongDienThoaiId], [TenSanPham], [TomTat]) VALUES (27, 1, 2, N'Nhựa cứng', 110000, N'27_39387670_542579369494518_7167038516977729536_n.jpg', 26, 0, 100, N'0', 12, N'Ốp lưng Pooh and his friends', N'<p>Ốp lưng hoạt h&igrave;nh Disney lu&ocirc;n l&agrave; lựa chọn h&agrave;ng đầu của c&aacute;c bạn trẻ dễ thương đến với shop &lt;3 Bắt kịp xu hướng của Disney th&igrave; kh&ocirc;ng n&ecirc;n bỏ qua chiếc ốp gấu Pooh v&agrave; heo Piglet n&agrave;y đ&acirc;u nh&eacute;!</p>
')
INSERT [dbo].[SanPham] ([id], [MatHangId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [ThuongHieuId], [PhanTramGiamGia], [SoLuong], [MauSac], [DongDienThoaiId], [TenSanPham], [TomTat]) VALUES (28, 1, 2, N'Nhựa cứng', 110000, N'28_39557725_228255184504378_7216925446884032512_n.jpg', 26, 0, 100, N'0', 5, N'Ốp lưng hoạt hình Stitch', N'<p>Stitch l&agrave; mẫu th&iacute; nghiệm của người ngo&agrave;i h&agrave;nh tinh cute nhất phải kh&ocirc;ng c&aacute;c bạn? Vậy c&ograve;n chần chừ g&igrave; m&agrave; kh&ocirc;ng rinh về ngay một em Stitch tinh nghịch n&agrave;y cho điện thoại của m&igrave;nh đi n&agrave;o !!!</p>
')
INSERT [dbo].[SanPham] ([id], [MatHangId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [ThuongHieuId], [PhanTramGiamGia], [SoLuong], [MauSac], [DongDienThoaiId], [TenSanPham], [TomTat]) VALUES (29, 1, 2, N'Nhựa cứng', 110000, N'29_39390620_281354255785975_6253920524158631936_n.jpg', 26, 0, 80, N'0', 16, N'Ốp lưng Shin - Cậu bé bút chì', N'<p>Shin bựa nhưng đ&aacute;ng iu sẽ khiến c&aacute;c bạn kh&oacute; thể bỏ qu&ecirc;n em dế của m&igrave;nh đ&oacute;</p>
')
INSERT [dbo].[SanPham] ([id], [MatHangId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [ThuongHieuId], [PhanTramGiamGia], [SoLuong], [MauSac], [DongDienThoaiId], [TenSanPham], [TomTat]) VALUES (30, 5, 25, N'Da cao cấp', 200000, N'30_39339081_581791422238146_4895433337780305920_n.jpg', 1, 0, 200, N'đen + đỏ', 24, N'Bao da Ipad Mickey', N'<p>bao da ipad h&igrave;nh Mickey ngộ nghĩnh sẽ gi&uacute;p bạn bảo vệ tốt cho chiếc ipad của m&igrave;nh&nbsp;</p>
')
INSERT [dbo].[SanPham] ([id], [MatHangId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [ThuongHieuId], [PhanTramGiamGia], [SoLuong], [MauSac], [DongDienThoaiId], [TenSanPham], [TomTat]) VALUES (31, 5, 25, N'Da cao cấp', 200000, N'31_39390567_695695754117962_4234092147533414400_n.jpg', 1, 0, 200, N'kem', 24, N'Bao da Ipad Stitch', N'<p>bao da ipad h&igrave;nh Stitch&nbsp;ngộ nghĩnh sẽ gi&uacute;p bạn bảo vệ tốt cho chiếc ipad của m&igrave;nh&nbsp;</p>
')
INSERT [dbo].[SanPham] ([id], [MatHangId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [ThuongHieuId], [PhanTramGiamGia], [SoLuong], [MauSac], [DongDienThoaiId], [TenSanPham], [TomTat]) VALUES (32, 5, 25, N'Da cao cấp', 200000, N'32_39409022_1096680563819746_6501230560742998016_n.jpg', 1, 0, 200, N'hồng + xanh', 24, N'Bao da Ipad Vịt Donald', N'<p>bao da ipad h&igrave;nh vịt Donald&nbsp;ngộ nghĩnh sẽ gi&uacute;p bạn bảo vệ tốt cho chiếc ipad của m&igrave;nh&nbsp;</p>
')
INSERT [dbo].[SanPham] ([id], [MatHangId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [ThuongHieuId], [PhanTramGiamGia], [SoLuong], [MauSac], [DongDienThoaiId], [TenSanPham], [TomTat]) VALUES (33, 7, 18, N'Da cao cấp', 350000, N'33_39409367_863641927174770_4256939999158599680_n.jpg', 16, 0, 200, N'xanh', 3, N'Sạc dự phòng hoạt hình Stitch', N'<p>Sạc dự ph&ograve;ng 12000mA hoạt h&igrave;nh Stitch l&agrave;&nbsp;cứu tinh đ&aacute;ng y&ecirc;u&nbsp;cho nguồn pin của của bạn</p>
')
INSERT [dbo].[SanPham] ([id], [MatHangId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [ThuongHieuId], [PhanTramGiamGia], [SoLuong], [MauSac], [DongDienThoaiId], [TenSanPham], [TomTat]) VALUES (34, 7, 18, N'Kim loại điện tử +nhựa cao cấp', 350000, N'34_39454612_962321863970629_451577422756708352_n.jpg', 16, 0, 200, N'đen', 3, N'Sạc dự phòng hoạt hình Batman', N'<p>Sạc dự ph&ograve;ng 12000mA hoạt h&igrave;nh Batman&nbsp;l&agrave;&nbsp;cứu tinh đ&aacute;ng y&ecirc;u&nbsp;cho nguồn pin của của bạn</p>
')
INSERT [dbo].[SanPham] ([id], [MatHangId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [ThuongHieuId], [PhanTramGiamGia], [SoLuong], [MauSac], [DongDienThoaiId], [TenSanPham], [TomTat]) VALUES (35, 7, 18, N'Kim loại điện tử +nhựa cao cấp', 350000, N'35_39334211_702692853422569_7817541769570025472_n.jpg', 16, 0, 200, N'xanh', 3, N'Sạc dự phòng hoạt hình Doraemon', N'<p>Sạc dự ph&ograve;ng 12000mA hoạt h&igrave;nh Doraemon&nbsp;l&agrave;&nbsp;cứu tinh đ&aacute;ng y&ecirc;u&nbsp;cho nguồn pin của của bạn</p>
')
INSERT [dbo].[SanPham] ([id], [MatHangId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [ThuongHieuId], [PhanTramGiamGia], [SoLuong], [MauSac], [DongDienThoaiId], [TenSanPham], [TomTat]) VALUES (36, 6, 27, N'decal hình trong ', 80000, N'36_38433262_1328041133992555_6970337772259246080_n.jpg', 1, 0, 200, N'trắng viền màu', 23, N'Dán kính cường lực hoạt hình ', N'<p>D&aacute;n cường lực hoạt h&igrave;nh đủ&nbsp;m&agrave;u bảo vệ cho m&agrave;n h&igrave;nh cảm ứng của bạn&nbsp;</p>
')
INSERT [dbo].[SanPham] ([id], [MatHangId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [ThuongHieuId], [PhanTramGiamGia], [SoLuong], [MauSac], [DongDienThoaiId], [TenSanPham], [TomTat]) VALUES (37, 4, 24, N'nhựa cứng', 45000, N'37_39393989_240698586585953_6796811855026192384_n.jpg', 1, 0, 200, N'xanh', 3, N'Iring hoạt hình Stitch', N'<p>Ring hoạt h&igrave;nh Stitch gi&uacute;p bạn giữ chắc dế y&ecirc;u của m&igrave;nh tr&ecirc;n tay</p>
')
INSERT [dbo].[SanPham] ([id], [MatHangId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [ThuongHieuId], [PhanTramGiamGia], [SoLuong], [MauSac], [DongDienThoaiId], [TenSanPham], [TomTat]) VALUES (38, 4, 24, N'Nhựa cứng', 45000, N'38_39313083_309511169803081_3881111265334001664_n.jpg', 1, 0, 200, N'vàng+xanh', 3, N'Iring hoạt hình Minion', N'<p>Ring hoạt h&igrave;nh Minion&nbsp;gi&uacute;p bạn giữ chắc dế y&ecirc;u của m&igrave;nh tr&ecirc;n tay</p>
')
INSERT [dbo].[SanPham] ([id], [MatHangId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [ThuongHieuId], [PhanTramGiamGia], [SoLuong], [MauSac], [DongDienThoaiId], [TenSanPham], [TomTat]) VALUES (39, 4, 24, N'Nhựa cứng', 45000, N'39_39281926_320916878452850_3239764328965996544_n.jpg', 1, 0, 200, N'xanh', 3, N'Iring hoạt hình Doraemon', N'<p>Ring hoạt h&igrave;nh Doraemon&nbsp;gi&uacute;p bạn giữ chắc dế y&ecirc;u của m&igrave;nh tr&ecirc;n tay</p>
')
INSERT [dbo].[SanPham] ([id], [MatHangId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [ThuongHieuId], [PhanTramGiamGia], [SoLuong], [MauSac], [DongDienThoaiId], [TenSanPham], [TomTat]) VALUES (40, 1, 3, N'Nhựa cứng', 90000, N'40_big_op-lung-silicon-mau-galaxy-s8-plus-chinh-hang.jpg', 1, 10, 200, N'đủ màu', 22, N'Ốp lưng Silicon màu', N'<p>Ốp lưng silicon m&agrave;u l&agrave;m tăng th&ecirc;m vẻ c&aacute; t&iacute;nh cho dế y&ecirc;u của bạn</p>
')
INSERT [dbo].[SanPham] ([id], [MatHangId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [ThuongHieuId], [PhanTramGiamGia], [SoLuong], [MauSac], [DongDienThoaiId], [TenSanPham], [TomTat]) VALUES (41, 1, 3, N'Nhựa dẻo', 160000, N'41_j7 prime.jpg', 1, 10, 200, N'xanh đen ', 18, N'Ốp lưng Silicon gấu Brown', N'<p>Gấu Brown sẽ mang đến sự đ&aacute;ng y&ecirc;u cho điện thoại của bạn&nbsp;</p>
')
INSERT [dbo].[SanPham] ([id], [MatHangId], [DanhMucId], [DinhDang], [DonGia], [HinhAnh], [ThuongHieuId], [PhanTramGiamGia], [SoLuong], [MauSac], [DongDienThoaiId], [TenSanPham], [TomTat]) VALUES (42, 1, 3, N'Nhựa cứng', 100000, N'42_j7 pro bulldog.jpg', 26, 10, 200, N'đỏ', 20, N'Ốp lưng Silicon Bulldog', N'<p>c&aacute;c sen kh&ocirc;ng được bỏ qu&ecirc;n chiếc ốp c&oacute; h&igrave;nh Boss đ&acirc;u nha !!!</p>
')
SET IDENTITY_INSERT [dbo].[SanPham] OFF
SET IDENTITY_INSERT [dbo].[ThuongHieu] ON 

INSERT [dbo].[ThuongHieu] ([Id], [TenThuongHieu]) VALUES (1, N'Trung Quốc')
INSERT [dbo].[ThuongHieu] ([Id], [TenThuongHieu]) VALUES (16, N'Xiaomi')
INSERT [dbo].[ThuongHieu] ([Id], [TenThuongHieu]) VALUES (17, N'Apple')
INSERT [dbo].[ThuongHieu] ([Id], [TenThuongHieu]) VALUES (25, N'Nilkin')
INSERT [dbo].[ThuongHieu] ([Id], [TenThuongHieu]) VALUES (26, N'Orico')
INSERT [dbo].[ThuongHieu] ([Id], [TenThuongHieu]) VALUES (27, N'Khác')
SET IDENTITY_INSERT [dbo].[ThuongHieu] OFF
INSERT [dbo].[Wishlist] ([SanPhamID], [UserID]) VALUES (3, N'6b070863-5a39-4385-884d-d4c08b0911d5')
INSERT [dbo].[Wishlist] ([SanPhamID], [UserID]) VALUES (3, N'8aa90b19-7aff-45bf-800e-b78b15d2c99d')
INSERT [dbo].[Wishlist] ([SanPhamID], [UserID]) VALUES (5, N'8aa90b19-7aff-45bf-800e-b78b15d2c99d')
INSERT [dbo].[Wishlist] ([SanPhamID], [UserID]) VALUES (33, N'6b070863-5a39-4385-884d-d4c08b0911d5')
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT ((0)) FOR [GioiTinh]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT ('0001-01-01T00:00:00.000') FOR [NgaySinh]
GO
ALTER TABLE [dbo].[ChiTietHoaDon] ADD  DEFAULT ((0)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[ChiTietHoaDon] ADD  DEFAULT ((0)) FOR [ThanhTien]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF__HoaDon__TongThan__36B12243]  DEFAULT ((0)) FOR [TongThanhTien]
GO
ALTER TABLE [dbo].[LienLac] ADD  DEFAULT ('0001-01-01T00:00:00.000') FOR [NgayGoi]
GO
ALTER TABLE [dbo].[NhanXet] ADD  DEFAULT ('0001-01-01T00:00:00.000') FOR [NgayDang]
GO
ALTER TABLE [dbo].[TraLoiLienLac] ADD  DEFAULT ('0001-01-01T00:00:00.000') FOR [NgayTraLoi]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon_HoaDonId] FOREIGN KEY([HoaDonId])
REFERENCES [dbo].[HoaDon] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon_HoaDonId]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_Sach_SachId] FOREIGN KEY([SanPhamId])
REFERENCES [dbo].[SanPham] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_Sach_SachId]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[NhanXet]  WITH CHECK ADD  CONSTRAINT [FK_NhanXet_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[NhanXet] CHECK CONSTRAINT [FK_NhanXet_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[NhanXet]  WITH CHECK ADD  CONSTRAINT [FK_NhanXet_Sach_Sachid] FOREIGN KEY([SanPhamId])
REFERENCES [dbo].[SanPham] ([id])
GO
ALTER TABLE [dbo].[NhanXet] CHECK CONSTRAINT [FK_NhanXet_Sach_Sachid]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_Sach_ChuDe_ChuDeId] FOREIGN KEY([MatHangId])
REFERENCES [dbo].[MatHang] ([Id])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_Sach_ChuDe_ChuDeId]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_Sach_DanhMuc_DanhMucId] FOREIGN KEY([DanhMucId])
REFERENCES [dbo].[DanhMuc] ([Id])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_Sach_DanhMuc_DanhMucId]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_Sach_NhaXuatBan_NhaXuatBanId] FOREIGN KEY([ThuongHieuId])
REFERENCES [dbo].[ThuongHieu] ([Id])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_Sach_NhaXuatBan_NhaXuatBanId]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_Sach_TacGia_TacGiaId] FOREIGN KEY([DongDienThoaiId])
REFERENCES [dbo].[DongDienThoai] ([Id])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_Sach_TacGia_TacGiaId]
GO
ALTER TABLE [dbo].[TraLoiLienLac]  WITH CHECK ADD  CONSTRAINT [FK_TraLoiLienLac_LienLac_LienLacId] FOREIGN KEY([LienLacId])
REFERENCES [dbo].[LienLac] ([Id])
GO
ALTER TABLE [dbo].[TraLoiLienLac] CHECK CONSTRAINT [FK_TraLoiLienLac_LienLac_LienLacId]
GO
ALTER TABLE [dbo].[Wishlist]  WITH CHECK ADD  CONSTRAINT [FK_Wishlist_AspNetUsers_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Wishlist] CHECK CONSTRAINT [FK_Wishlist_AspNetUsers_UserID]
GO
ALTER TABLE [dbo].[Wishlist]  WITH CHECK ADD  CONSTRAINT [FK_Wishlist_Sach_SachID] FOREIGN KEY([SanPhamID])
REFERENCES [dbo].[SanPham] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Wishlist] CHECK CONSTRAINT [FK_Wishlist_Sach_SachID]
GO
USE [master]
GO
ALTER DATABASE [PhuKienDienThoai] SET  READ_WRITE 
GO
