USE [master]
GO
/****** Object:  Database [QL_DIEMDANH]    Script Date: 12/28/2020 2:50:43 PM ******/
CREATE DATABASE [QL_DIEMDANH]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QL_DIEMDANH', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\QL_DIEMDANH.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QL_DIEMDANH_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\QL_DIEMDANH_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QL_DIEMDANH] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QL_DIEMDANH].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QL_DIEMDANH] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QL_DIEMDANH] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QL_DIEMDANH] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QL_DIEMDANH] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QL_DIEMDANH] SET ARITHABORT OFF 
GO
ALTER DATABASE [QL_DIEMDANH] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QL_DIEMDANH] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QL_DIEMDANH] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QL_DIEMDANH] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QL_DIEMDANH] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QL_DIEMDANH] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QL_DIEMDANH] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QL_DIEMDANH] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QL_DIEMDANH] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QL_DIEMDANH] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QL_DIEMDANH] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QL_DIEMDANH] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QL_DIEMDANH] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QL_DIEMDANH] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QL_DIEMDANH] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QL_DIEMDANH] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QL_DIEMDANH] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QL_DIEMDANH] SET RECOVERY FULL 
GO
ALTER DATABASE [QL_DIEMDANH] SET  MULTI_USER 
GO
ALTER DATABASE [QL_DIEMDANH] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QL_DIEMDANH] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QL_DIEMDANH] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QL_DIEMDANH] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QL_DIEMDANH] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QL_DIEMDANH', N'ON'
GO
USE [QL_DIEMDANH]
GO
/****** Object:  Table [dbo].[DIEMDANH]    Script Date: 12/28/2020 2:50:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DIEMDANH](
	[MASV] [char](50) NOT NULL,
	[MAMH] [char](50) NULL,
	[NGAYDD] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MASV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GIANGVIEN]    Script Date: 12/28/2020 2:50:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GIANGVIEN](
	[MAGV] [char](50) NOT NULL,
	[TENGV] [nvarchar](50) NULL,
	[MAKHOA] [char](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MAGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KHOA]    Script Date: 12/28/2020 2:50:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHOA](
	[MAKHOA] [char](50) NOT NULL,
	[TENKHOA] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MAKHOA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOP]    Script Date: 12/28/2020 2:50:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LOP](
	[MALOP] [char](50) NOT NULL,
	[TENLOP] [nvarchar](50) NULL,
	[MAKHOA] [char](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MALOP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOPHOCPHAN]    Script Date: 12/28/2020 2:50:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LOPHOCPHAN](
	[MALOP] [char](50) NOT NULL,
	[MAMH] [char](50) NOT NULL,
	[MAGV] [char](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MALOP] ASC,
	[MAMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MONHOC]    Script Date: 12/28/2020 2:50:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MONHOC](
	[MAMH] [char](50) NOT NULL,
	[TENMH] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MAMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SINHVIEN]    Script Date: 12/28/2020 2:50:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SINHVIEN](
	[MASV] [char](50) NOT NULL,
	[TENSV] [nvarchar](50) NULL,
	[MALOP] [char](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MASV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SVTRAIN]    Script Date: 12/28/2020 2:50:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SVTRAIN](
	[MASV] [char](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MASV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 12/28/2020 2:50:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[TENDANGNHAP] [char](50) NOT NULL,
	[PASS] [char](50) NULL,
	[TENTAIKHOAN] [nvarchar](50) NULL,
	[LOAITK] [char](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[TENDANGNHAP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[GIANGVIEN] ([MAGV], [TENGV], [MAKHOA]) VALUES (N'GV001                                             ', N'Giảng viên 1', N'CNTT                                              ')
INSERT [dbo].[GIANGVIEN] ([MAGV], [TENGV], [MAKHOA]) VALUES (N'GV002                                             ', N'Giảng viên 2', N'CNTT                                              ')
INSERT [dbo].[GIANGVIEN] ([MAGV], [TENGV], [MAKHOA]) VALUES (N'GV003                                             ', N'Giảng viên 3', N'DT                                                ')
INSERT [dbo].[GIANGVIEN] ([MAGV], [TENGV], [MAKHOA]) VALUES (N'GV004                                             ', N'Giảng viên 4', N'CNTP                                              ')
INSERT [dbo].[GIANGVIEN] ([MAGV], [TENGV], [MAKHOA]) VALUES (N'GV005                                             ', N'Giảng viên 5', N'DT                                                ')
INSERT [dbo].[GIANGVIEN] ([MAGV], [TENGV], [MAKHOA]) VALUES (N'GV006                                             ', N'Giảng viên 6', N'QTKD                                              ')
INSERT [dbo].[GIANGVIEN] ([MAGV], [TENGV], [MAKHOA]) VALUES (N'GV007                                             ', N'Giảng viên 7', N'KT                                                ')
INSERT [dbo].[GIANGVIEN] ([MAGV], [TENGV], [MAKHOA]) VALUES (N'GV008                                             ', N'Giảng viên 8', N'QTKD                                              ')
INSERT [dbo].[GIANGVIEN] ([MAGV], [TENGV], [MAKHOA]) VALUES (N'GV009                                             ', N'Giảng viên 9', N'KT                                                ')
INSERT [dbo].[KHOA] ([MAKHOA], [TENKHOA]) VALUES (N'CNTP                                              ', N'Công Nghệ Thực Phẩm')
INSERT [dbo].[KHOA] ([MAKHOA], [TENKHOA]) VALUES (N'CNTT                                              ', N'Công Nghệ Thông Tin')
INSERT [dbo].[KHOA] ([MAKHOA], [TENKHOA]) VALUES (N'DT                                                ', N'Ði?n T?')
INSERT [dbo].[KHOA] ([MAKHOA], [TENKHOA]) VALUES (N'KT                                                ', N'K? Toán')
INSERT [dbo].[KHOA] ([MAKHOA], [TENKHOA]) VALUES (N'QTKD                                              ', N'Qu?n Tr? Kinh Doanh')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKHOA]) VALUES (N'09DHDT1                                           ', N'09 Đại Học Điện Tử 1', N'DT                                                ')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKHOA]) VALUES (N'09DHDT2                                           ', N'09 Đại Học Điện Tử 2', N'DT                                                ')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKHOA]) VALUES (N'09DHDT3                                           ', N'09 Đại Học Điện Tử 3', N'DT                                                ')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKHOA]) VALUES (N'09DHDT4                                           ', N'09 Đại Học Điện Tử 4', N'DT                                                ')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKHOA]) VALUES (N'09DHKT1                                           ', N'09 Đại Học Kế Toán 1', N'KT                                                ')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKHOA]) VALUES (N'09DHKT2                                           ', N'09 Đại Học Kế Toán 2', N'KT                                                ')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKHOA]) VALUES (N'09DHKT3                                           ', N'09 Đại Học Kế Toán 3', N'KT                                                ')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKHOA]) VALUES (N'09DHKT4                                           ', N'09 Đại Học Kế Toán 4', N'KT                                                ')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKHOA]) VALUES (N'09DHKT5                                           ', N'09 Đại Học Kế Toán 5', N'KT                                                ')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKHOA]) VALUES (N'09DHQTKD1                                         ', N'09 Đại Học Quản TRị Kinh Doanh 1', N'QTKD                                              ')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKHOA]) VALUES (N'09DHQTKD2                                         ', N'09 Đại Học Quản TRị Kinh Doanh 2', N'QTKD                                              ')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKHOA]) VALUES (N'09DHQTKD3                                         ', N'09 Đại Học Quản TRị Kinh Doanh 3', N'QTKD                                              ')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKHOA]) VALUES (N'09DHQTKD4                                         ', N'09 Đại Học Quản TRị Kinh Doanh 4', N'QTKD                                              ')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKHOA]) VALUES (N'09DHQTKD5                                         ', N'09 Đại Học Quản TRị Kinh Doanh 5', N'QTKD                                              ')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKHOA]) VALUES (N'09DHTH1                                           ', N'09 Đại Học Tin Học 1', N'CNTT                                              ')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKHOA]) VALUES (N'09DHTH2                                           ', N'09 Đại Học Tin Học 2', N'CNTT                                              ')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKHOA]) VALUES (N'09DHTH3                                           ', N'09 Đại Học Tin Học 3', N'CNTT                                              ')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKHOA]) VALUES (N'09DHTH4                                           ', N'09 Đại Học Tin Học 4', N'CNTT                                              ')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKHOA]) VALUES (N'09DHTH5                                           ', N'09 Đại Học Tin Học 5', N'CNTT                                              ')
INSERT [dbo].[LOPHOCPHAN] ([MALOP], [MAMH], [MAGV]) VALUES (N'09DHDT1                                           ', N'CH                                                ', N'GV005                                             ')
INSERT [dbo].[LOPHOCPHAN] ([MALOP], [MAMH], [MAGV]) VALUES (N'09DHDT1                                           ', N'DT                                                ', N'GV003                                             ')
INSERT [dbo].[LOPHOCPHAN] ([MALOP], [MAMH], [MAGV]) VALUES (N'09DHDT2                                           ', N'CH                                                ', N'GV005                                             ')
INSERT [dbo].[LOPHOCPHAN] ([MALOP], [MAMH], [MAGV]) VALUES (N'09DHDT2                                           ', N'DT                                                ', N'GV003                                             ')
INSERT [dbo].[LOPHOCPHAN] ([MALOP], [MAMH], [MAGV]) VALUES (N'09DHDT2                                           ', N'KTQM                                              ', N'GV006                                             ')
INSERT [dbo].[LOPHOCPHAN] ([MALOP], [MAMH], [MAGV]) VALUES (N'09DHQTKD1                                         ', N'KTQM                                              ', N'GV006                                             ')
INSERT [dbo].[LOPHOCPHAN] ([MALOP], [MAMH], [MAGV]) VALUES (N'09DHQTKD1                                         ', N'KTVM                                              ', N'GV008                                             ')
INSERT [dbo].[LOPHOCPHAN] ([MALOP], [MAMH], [MAGV]) VALUES (N'09DHQTKD2                                         ', N'KTVM                                              ', N'GV008                                             ')
INSERT [dbo].[LOPHOCPHAN] ([MALOP], [MAMH], [MAGV]) VALUES (N'09DHTH1                                           ', N'CNN                                               ', N'GV002                                             ')
INSERT [dbo].[LOPHOCPHAN] ([MALOP], [MAMH], [MAGV]) VALUES (N'09DHTH1                                           ', N'CNW                                               ', N'GV001                                             ')
INSERT [dbo].[LOPHOCPHAN] ([MALOP], [MAMH], [MAGV]) VALUES (N'09DHTH2                                           ', N'AHDTDM                                            ', N'GV002                                             ')
INSERT [dbo].[LOPHOCPHAN] ([MALOP], [MAMH], [MAGV]) VALUES (N'09DHTH2                                           ', N'XLTTSS                                            ', N'GV001                                             ')
INSERT [dbo].[MONHOC] ([MAMH], [TENMH]) VALUES (N'AHDTDM                                            ', N'Ảo hóa điện toán đám mây')
INSERT [dbo].[MONHOC] ([MAMH], [TENMH]) VALUES (N'CBTP                                              ', N'Chế biến thực phẩm')
INSERT [dbo].[MONHOC] ([MAMH], [TENMH]) VALUES (N'CH                                                ', N'Cơ học')
INSERT [dbo].[MONHOC] ([MAMH], [TENMH]) VALUES (N'CNN                                               ', N'Công Nghệ .NET')
INSERT [dbo].[MONHOC] ([MAMH], [TENMH]) VALUES (N'CNW                                               ', N'Công Nghệ Web')
INSERT [dbo].[MONHOC] ([MAMH], [TENMH]) VALUES (N'DG                                                ', N'Đóng gói')
INSERT [dbo].[MONHOC] ([MAMH], [TENMH]) VALUES (N'DT                                                ', N'Điện tử')
INSERT [dbo].[MONHOC] ([MAMH], [TENMH]) VALUES (N'H1                                                ', N'Hóa 1')
INSERT [dbo].[MONHOC] ([MAMH], [TENMH]) VALUES (N'HK                                                ', N'Hóa keo')
INSERT [dbo].[MONHOC] ([MAMH], [TENMH]) VALUES (N'KTDL                                              ', N'Khai thác dữ liệu')
INSERT [dbo].[MONHOC] ([MAMH], [TENMH]) VALUES (N'KTQM                                              ', N'Kinh tế quy mô')
INSERT [dbo].[MONHOC] ([MAMH], [TENMH]) VALUES (N'KTVM                                              ', N'Kinh tế vĩ mô')
INSERT [dbo].[MONHOC] ([MAMH], [TENMH]) VALUES (N'NMCNTP                                            ', N'Nhập môn công nghệ thực phẩm')
INSERT [dbo].[MONHOC] ([MAMH], [TENMH]) VALUES (N'NMKT                                              ', N'Nhập môn kế toán')
INSERT [dbo].[MONHOC] ([MAMH], [TENMH]) VALUES (N'T1                                                ', N'Thuế 1')
INSERT [dbo].[MONHOC] ([MAMH], [TENMH]) VALUES (N'TCDN                                              ', N'Tài chính doanh nghiệp')
INSERT [dbo].[MONHOC] ([MAMH], [TENMH]) VALUES (N'VL1                                               ', N'Vật lí 1')
INSERT [dbo].[MONHOC] ([MAMH], [TENMH]) VALUES (N'XLTTSS                                            ', N'Xử lý tính toán song song')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [MALOP]) VALUES (N'sv01                                              ', N'Nguyễn Minh Hiến', N'09DHTH1                                           ')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [MALOP]) VALUES (N'sv03                                              ', N'Sinh viên 3', N'09DHTH3                                           ')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [MALOP]) VALUES (N'sv04                                              ', N'Sinh viên 4', N'09DHDT1                                           ')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [MALOP]) VALUES (N'sv05                                              ', N'Sinh viên 5', N'09DHKT1                                           ')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [MALOP]) VALUES (N'sv06                                              ', N'Sinh viên 6', N'09DHKT2                                           ')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [MALOP]) VALUES (N'sv07                                              ', N'Sinh viên 7', N'09DHTH4                                           ')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [MALOP]) VALUES (N'sv08                                              ', N'Sinh viên 8', N'09DHTH2                                           ')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [MALOP]) VALUES (N'sv09                                              ', N'Sinh viên 9', N'09DHTH3                                           ')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [MALOP]) VALUES (N'sv10                                              ', N'Sinh viên 10', N'09DHDT1                                           ')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [MALOP]) VALUES (N'sv11                                              ', N'Sinh viên 11', N'09DHKT1                                           ')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [MALOP]) VALUES (N'sv12                                              ', N'Sinh viên 12', N'09DHKT2                                           ')
INSERT [dbo].[SVTRAIN] ([MASV]) VALUES (N'                                                  ')
INSERT [dbo].[SVTRAIN] ([MASV]) VALUES (N'sv01                                              ')
INSERT [dbo].[TAIKHOAN] ([TENDANGNHAP], [PASS], [TENTAIKHOAN], [LOAITK]) VALUES (N'Admin                                             ', N'123                                               ', N'Minh Hiến', N'0                                                 ')
INSERT [dbo].[TAIKHOAN] ([TENDANGNHAP], [PASS], [TENTAIKHOAN], [LOAITK]) VALUES (N'hien2                                             ', N'123                                               ', N'Minh Hiến 2', N'1                                                 ')
ALTER TABLE [dbo].[DIEMDANH]  WITH CHECK ADD FOREIGN KEY([MAMH])
REFERENCES [dbo].[MONHOC] ([MAMH])
GO
ALTER TABLE [dbo].[DIEMDANH]  WITH CHECK ADD FOREIGN KEY([MASV])
REFERENCES [dbo].[SINHVIEN] ([MASV])
GO
ALTER TABLE [dbo].[GIANGVIEN]  WITH CHECK ADD FOREIGN KEY([MAKHOA])
REFERENCES [dbo].[KHOA] ([MAKHOA])
GO
ALTER TABLE [dbo].[LOP]  WITH CHECK ADD FOREIGN KEY([MAKHOA])
REFERENCES [dbo].[KHOA] ([MAKHOA])
GO
ALTER TABLE [dbo].[LOPHOCPHAN]  WITH CHECK ADD FOREIGN KEY([MALOP])
REFERENCES [dbo].[LOP] ([MALOP])
GO
ALTER TABLE [dbo].[LOPHOCPHAN]  WITH CHECK ADD FOREIGN KEY([MAGV])
REFERENCES [dbo].[GIANGVIEN] ([MAGV])
GO
ALTER TABLE [dbo].[LOPHOCPHAN]  WITH CHECK ADD FOREIGN KEY([MAMH])
REFERENCES [dbo].[MONHOC] ([MAMH])
GO
ALTER TABLE [dbo].[SINHVIEN]  WITH CHECK ADD FOREIGN KEY([MALOP])
REFERENCES [dbo].[LOP] ([MALOP])
GO
USE [master]
GO
ALTER DATABASE [QL_DIEMDANH] SET  READ_WRITE 
GO
