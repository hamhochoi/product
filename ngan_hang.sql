USE [master]
GO
/****** Object:  Database [ngan_hang]    Script Date: 26-Mar-17 12:03:43 AM ******/
CREATE DATABASE [ngan_hang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ngan_hang', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLEXPRESS\MSSQL\DATA\ngan_hang.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ngan_hang_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLEXPRESS\MSSQL\DATA\ngan_hang_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ngan_hang] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ngan_hang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ngan_hang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ngan_hang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ngan_hang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ngan_hang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ngan_hang] SET ARITHABORT OFF 
GO
ALTER DATABASE [ngan_hang] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ngan_hang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ngan_hang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ngan_hang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ngan_hang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ngan_hang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ngan_hang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ngan_hang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ngan_hang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ngan_hang] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ngan_hang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ngan_hang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ngan_hang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ngan_hang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ngan_hang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ngan_hang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ngan_hang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ngan_hang] SET RECOVERY FULL 
GO
ALTER DATABASE [ngan_hang] SET  MULTI_USER 
GO
ALTER DATABASE [ngan_hang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ngan_hang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ngan_hang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ngan_hang] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ngan_hang] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ngan_hang', N'ON'
GO
ALTER DATABASE [ngan_hang] SET QUERY_STORE = OFF
GO
USE [ngan_hang]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [ngan_hang]
GO
/****** Object:  Table [dbo].[chu_TK]    Script Date: 26-Mar-17 12:03:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chu_TK](
	[so_CMTND] [bigint] NOT NULL,
	[ho_ten] [nvarchar](50) NOT NULL,
	[ngay_sinh] [datetime] NOT NULL,
	[dia_chi_thuong_chu] [nvarchar](200) NOT NULL,
	[password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_chu_TK] PRIMARY KEY CLUSTERED 
(
	[so_CMTND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[chuTK_TK]    Script Date: 26-Mar-17 12:03:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chuTK_TK](
	[so_CMTND] [bigint] NOT NULL,
	[so_TK] [int] NOT NULL,
	[la_chu_chinh] [bit] NOT NULL,
 CONSTRAINT [PK_chuTK_TK] PRIMARY KEY CLUSTERED 
(
	[so_CMTND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[root]    Script Date: 26-Mar-17 12:03:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[root](
	[root] [varchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tai_khoan]    Script Date: 26-Mar-17 12:03:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tai_khoan](
	[so_TK] [int] IDENTITY(1,1) NOT NULL,
	[so_du] [bigint] NOT NULL,
	[ngay_tao] [datetime] NOT NULL,
 CONSTRAINT [PK_tai_khoan] PRIMARY KEY CLUSTERED 
(
	[so_TK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[chu_TK] ([so_CMTND], [ho_ten], [ngay_sinh], [dia_chi_thuong_chu], [password]) VALUES (10, N'B', CAST(N'1980-10-21T00:00:00.000' AS DateTime), N'kdfj', N'1234')
INSERT [dbo].[chu_TK] ([so_CMTND], [ho_ten], [ngay_sinh], [dia_chi_thuong_chu], [password]) VALUES (11, N'C', CAST(N'1981-12-12T00:00:00.000' AS DateTime), N'dfd', N'')
INSERT [dbo].[chu_TK] ([so_CMTND], [ho_ten], [ngay_sinh], [dia_chi_thuong_chu], [password]) VALUES (12, N'D', CAST(N'1988-10-15T00:00:00.000' AS DateTime), N'dsd', N'')
INSERT [dbo].[chu_TK] ([so_CMTND], [ho_ten], [ngay_sinh], [dia_chi_thuong_chu], [password]) VALUES (19223200, N'Nguyễn thị Thúy', CAST(N'1996-10-10T00:00:00.000' AS DateTime), N'Hai Bà Trưng - Hà Nội', N'')
INSERT [dbo].[chu_TK] ([so_CMTND], [ho_ten], [ngay_sinh], [dia_chi_thuong_chu], [password]) VALUES (19249343, N'Nguyễn Nhật Nam', CAST(N'1996-01-01T00:00:00.000' AS DateTime), N'Hoàng Mai - Hà Nội', N'12345678')
INSERT [dbo].[chuTK_TK] ([so_CMTND], [so_TK], [la_chu_chinh]) VALUES (10, 1005, 1)
INSERT [dbo].[chuTK_TK] ([so_CMTND], [so_TK], [la_chu_chinh]) VALUES (11, 1006, 1)
INSERT [dbo].[chuTK_TK] ([so_CMTND], [so_TK], [la_chu_chinh]) VALUES (12, 1006, 0)
INSERT [dbo].[chuTK_TK] ([so_CMTND], [so_TK], [la_chu_chinh]) VALUES (19223200, 21, 0)
INSERT [dbo].[chuTK_TK] ([so_CMTND], [so_TK], [la_chu_chinh]) VALUES (19249343, 21, 1)
INSERT [dbo].[root] ([root]) VALUES (N'12345678')
SET IDENTITY_INSERT [dbo].[tai_khoan] ON 

INSERT [dbo].[tai_khoan] ([so_TK], [so_du], [ngay_tao]) VALUES (21, 150000, CAST(N'2017-03-24T22:57:46.073' AS DateTime))
INSERT [dbo].[tai_khoan] ([so_TK], [so_du], [ngay_tao]) VALUES (1005, 20000, CAST(N'2017-03-25T21:44:33.090' AS DateTime))
INSERT [dbo].[tai_khoan] ([so_TK], [so_du], [ngay_tao]) VALUES (1006, 150000, CAST(N'2017-03-25T21:54:28.663' AS DateTime))
SET IDENTITY_INSERT [dbo].[tai_khoan] OFF
ALTER TABLE [dbo].[chu_TK]  WITH CHECK ADD  CONSTRAINT [ket_noi_toi_bang_chuTK_TK] FOREIGN KEY([so_CMTND])
REFERENCES [dbo].[chuTK_TK] ([so_CMTND])
GO
ALTER TABLE [dbo].[chu_TK] CHECK CONSTRAINT [ket_noi_toi_bang_chuTK_TK]
GO
ALTER TABLE [dbo].[chuTK_TK]  WITH CHECK ADD  CONSTRAINT [FK_ket_noi_tai_khoan] FOREIGN KEY([so_TK])
REFERENCES [dbo].[tai_khoan] ([so_TK])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[chuTK_TK] CHECK CONSTRAINT [FK_ket_noi_tai_khoan]
GO
USE [master]
GO
ALTER DATABASE [ngan_hang] SET  READ_WRITE 
GO
