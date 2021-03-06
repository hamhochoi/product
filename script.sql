USE [ngan_hang]
GO
/****** Object:  Table [dbo].[chu_TK]    Script Date: 4/25/2017 11:38:49 AM ******/
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
/****** Object:  Table [dbo].[chuTK_TK]    Script Date: 4/25/2017 11:38:49 AM ******/
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
	[so_CMTND] ASC,
	[so_TK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[root]    Script Date: 4/25/2017 11:38:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[root](
	[root] [varchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tai_khoan]    Script Date: 4/25/2017 11:38:49 AM ******/
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
INSERT [dbo].[chu_TK] ([so_CMTND], [ho_ten], [ngay_sinh], [dia_chi_thuong_chu], [password]) VALUES (11, N'nguyen thi thuc', CAST(N'1996-05-13T00:00:00.000' AS DateTime), N'nho quan', N'1234')
INSERT [dbo].[chu_TK] ([so_CMTND], [ho_ten], [ngay_sinh], [dia_chi_thuong_chu], [password]) VALUES (12, N'nguyen van duc', CAST(N'1994-07-15T00:00:00.000' AS DateTime), N'nam dinh', N'1234')
INSERT [dbo].[chu_TK] ([so_CMTND], [ho_ten], [ngay_sinh], [dia_chi_thuong_chu], [password]) VALUES (21, N'tran xuan ha', CAST(N'1960-11-20T00:00:00.000' AS DateTime), N'vung tau', N'')
INSERT [dbo].[chu_TK] ([so_CMTND], [ho_ten], [ngay_sinh], [dia_chi_thuong_chu], [password]) VALUES (22, N'ta thi thu', CAST(N'1999-05-12T00:00:00.000' AS DateTime), N'ca mau', N'')
INSERT [dbo].[chu_TK] ([so_CMTND], [ho_ten], [ngay_sinh], [dia_chi_thuong_chu], [password]) VALUES (1254672, N'nguyen van d', CAST(N'1980-04-06T00:00:00.000' AS DateTime), N'ha noi', N'12345678')
INSERT [dbo].[chuTK_TK] ([so_CMTND], [so_TK], [la_chu_chinh]) VALUES (11, 2010, 1)
INSERT [dbo].[chuTK_TK] ([so_CMTND], [so_TK], [la_chu_chinh]) VALUES (12, 2010, 0)
INSERT [dbo].[chuTK_TK] ([so_CMTND], [so_TK], [la_chu_chinh]) VALUES (21, 2012, 1)
INSERT [dbo].[chuTK_TK] ([so_CMTND], [so_TK], [la_chu_chinh]) VALUES (22, 2012, 0)
INSERT [dbo].[chuTK_TK] ([so_CMTND], [so_TK], [la_chu_chinh]) VALUES (1254672, 2009, 1)
INSERT [dbo].[root] ([root]) VALUES (N'12345678')
SET IDENTITY_INSERT [dbo].[tai_khoan] ON 

INSERT [dbo].[tai_khoan] ([so_TK], [so_du], [ngay_tao]) VALUES (2009, 100000, CAST(N'2017-04-19T04:42:13.993' AS DateTime))
INSERT [dbo].[tai_khoan] ([so_TK], [so_du], [ngay_tao]) VALUES (2010, 200000, CAST(N'2017-04-19T04:50:44.907' AS DateTime))
INSERT [dbo].[tai_khoan] ([so_TK], [so_du], [ngay_tao]) VALUES (2012, 100000, CAST(N'2017-04-19T16:20:34.240' AS DateTime))
SET IDENTITY_INSERT [dbo].[tai_khoan] OFF
ALTER TABLE [dbo].[chuTK_TK]  WITH CHECK ADD  CONSTRAINT [FK_connect_to_account] FOREIGN KEY([so_TK])
REFERENCES [dbo].[tai_khoan] ([so_TK])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[chuTK_TK] CHECK CONSTRAINT [FK_connect_to_account]
GO
ALTER TABLE [dbo].[chuTK_TK]  WITH CHECK ADD  CONSTRAINT [FK_connect_to_customer] FOREIGN KEY([so_CMTND])
REFERENCES [dbo].[chu_TK] ([so_CMTND])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[chuTK_TK] CHECK CONSTRAINT [FK_connect_to_customer]
GO
