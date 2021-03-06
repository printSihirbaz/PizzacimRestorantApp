USE [pizzacimv1]
GO
/****** Object:  Table [dbo].[beverages]    Script Date: 17.12.2020 20:20:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[beverages](
	[beverage_name] [varchar](50) NULL,
	[beverage_id] [int] IDENTITY(0,1) NOT NULL,
	[beverage_price] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[extras]    Script Date: 17.12.2020 20:20:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[extras](
	[extra_id] [int] IDENTITY(0,1) NOT NULL,
	[extra_name] [varchar](50) NULL,
	[extra_price] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 17.12.2020 20:20:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[order_id] [int] IDENTITY(0,1) NOT NULL,
	[order_detail] [varchar](500) NULL,
	[order_status] [varchar](5) NOT NULL,
	[order_amount] [int] NULL,
	[order_client] [varchar](50) NULL,
	[order_time] [varchar](50) NULL,
	[order_beverage] [varchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 17.12.2020 20:20:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[product_id] [int] IDENTITY(0,1) NOT NULL,
	[product_name] [varchar](50) NULL,
	[product_price] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 17.12.2020 20:20:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[user_id] [int] IDENTITY(0,1) NOT NULL,
	[admin_adsoyad] [varchar](50) NULL,
	[admin_kullaniciad] [varchar](50) NULL,
	[admin_sifre] [varchar](50) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[beverages] ON 

INSERT [dbo].[beverages] ([beverage_name], [beverage_id], [beverage_price]) VALUES (N'Kola 330ml', 0, N'4')
INSERT [dbo].[beverages] ([beverage_name], [beverage_id], [beverage_price]) VALUES (N'Kola 1L', 1, N'6')
INSERT [dbo].[beverages] ([beverage_name], [beverage_id], [beverage_price]) VALUES (N'Kola 2L', 2, N'8')
INSERT [dbo].[beverages] ([beverage_name], [beverage_id], [beverage_price]) VALUES (N'Fanta 330ml', 3, N'4')
INSERT [dbo].[beverages] ([beverage_name], [beverage_id], [beverage_price]) VALUES (N'Fanta 1L', 4, N'6')
INSERT [dbo].[beverages] ([beverage_name], [beverage_id], [beverage_price]) VALUES (N'Fanta 2L', 5, N'8')
INSERT [dbo].[beverages] ([beverage_name], [beverage_id], [beverage_price]) VALUES (N'Ice Tea Limon 330ml', 6, N'4')
INSERT [dbo].[beverages] ([beverage_name], [beverage_id], [beverage_price]) VALUES (N'Ice Tea Karpuz 330ml', 7, N'4')
INSERT [dbo].[beverages] ([beverage_name], [beverage_id], [beverage_price]) VALUES (N'Ice Tea Seftali 330ml', 8, N'4')
SET IDENTITY_INSERT [dbo].[beverages] OFF
GO
SET IDENTITY_INSERT [dbo].[extras] ON 

INSERT [dbo].[extras] ([extra_id], [extra_name], [extra_price]) VALUES (0, N'ACI BIBER', N'2')
INSERT [dbo].[extras] ([extra_id], [extra_name], [extra_price]) VALUES (1, N'Chedar Peyniri', N'3')
INSERT [dbo].[extras] ([extra_id], [extra_name], [extra_price]) VALUES (2, N'Kalin Kenar', N'3')
INSERT [dbo].[extras] ([extra_id], [extra_name], [extra_price]) VALUES (3, N'Pastirma', N'4')
INSERT [dbo].[extras] ([extra_id], [extra_name], [extra_price]) VALUES (4, N'Extra Kasar', N'6')
INSERT [dbo].[extras] ([extra_id], [extra_name], [extra_price]) VALUES (5, N'Extra Mantar', N'5')
INSERT [dbo].[extras] ([extra_id], [extra_name], [extra_price]) VALUES (6, N'Sucuk Kenar', N'3')
INSERT [dbo].[extras] ([extra_id], [extra_name], [extra_price]) VALUES (7, N'Közlenmis Biber', N'2')
INSERT [dbo].[extras] ([extra_id], [extra_name], [extra_price]) VALUES (8, N'Rendelenmis Patates', N'1')
SET IDENTITY_INSERT [dbo].[extras] OFF
GO
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([order_id], [order_detail], [order_status], [order_amount], [order_client], [order_time], [order_beverage]) VALUES (0, N'Karisik PizzaBüyük boyChedar PeyniriKalin Kenar', N'1', 42, N' Ahmet', N'Ara 16 2020 11:57PM', N'Ice Tea Seftali 330ml')
INSERT [dbo].[orders] ([order_id], [order_detail], [order_status], [order_amount], [order_client], [order_time], [order_beverage]) VALUES (1, N'Sucuklu PizzaOrta boyPastirmaSucuk Kenar', N'1', 38, N' Ahmet Bey', N'Ara 16 2020 11:57PM', N'Fanta 330ml')
INSERT [dbo].[orders] ([order_id], [order_detail], [order_status], [order_amount], [order_client], [order_time], [order_beverage]) VALUES (2, N'Çikolatali PizzaBüyük boy', N'1', 38, N' Ali', N'Ara 16 2020 11:58PM', N'Kola 330ml')
INSERT [dbo].[orders] ([order_id], [order_detail], [order_status], [order_amount], [order_client], [order_time], [order_beverage]) VALUES (3, N'Mangal PizzaOrta boyACI BIBERSucuk Kenar', N'1', 40, N' Personel', N'Ara 16 2020 11:58PM', N'Ice Tea Seftali 330ml')
INSERT [dbo].[orders] ([order_id], [order_detail], [order_status], [order_amount], [order_client], [order_time], [order_beverage]) VALUES (4, N'Sucuklu PizzaOrta boyExtra Kasar', N'1', 39, N' Ayse', N'Ara 16 2020 11:59PM', N'Fanta 1L')
INSERT [dbo].[orders] ([order_id], [order_detail], [order_status], [order_amount], [order_client], [order_time], [order_beverage]) VALUES (5, N'Sucuklu PizzaKüçük boyRendelenmis PatatesSucuk Kenar', N'0', 36, N' Fatih', N'Ara 17 2020  7:22PM', N'Kola 2L')
INSERT [dbo].[orders] ([order_id], [order_detail], [order_status], [order_amount], [order_client], [order_time], [order_beverage]) VALUES (6, N'Sebzeli PizzaOrta boyChedar PeyniriKözlenmis Biber', N'1', 37, N'AhmetFatih', N'Ara 17 2020  8:14PM', N'Kola 2L')
SET IDENTITY_INSERT [dbo].[orders] OFF
GO
SET IDENTITY_INSERT [dbo].[products] ON 

INSERT [dbo].[products] ([product_id], [product_name], [product_price]) VALUES (0, N'Karisik Pizza', N'17')
INSERT [dbo].[products] ([product_id], [product_name], [product_price]) VALUES (1, N'Peynirli Pizza', N'15')
INSERT [dbo].[products] ([product_id], [product_name], [product_price]) VALUES (2, N'Mangal Pizza', N'21')
INSERT [dbo].[products] ([product_id], [product_name], [product_price]) VALUES (3, N'Çikolatali Pizza', N'19')
INSERT [dbo].[products] ([product_id], [product_name], [product_price]) VALUES (4, N'Sebzeli Pizza', N'14')
INSERT [dbo].[products] ([product_id], [product_name], [product_price]) VALUES (5, N'Sucuklu Pizza', N'17')
SET IDENTITY_INSERT [dbo].[products] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([user_id], [admin_adsoyad], [admin_kullaniciad], [admin_sifre]) VALUES (0, N'Ahmet VURUSKAN', N'ahmet', N'123456789')
INSERT [dbo].[users] ([user_id], [admin_adsoyad], [admin_kullaniciad], [admin_sifre]) VALUES (1, N'Hakan Berat Ataç', N'grapikya', N'weLoveGrapikya')
INSERT [dbo].[users] ([user_id], [admin_adsoyad], [admin_kullaniciad], [admin_sifre]) VALUES (2, N'Ceren Dönmez', N'ceren', N'963852741')
INSERT [dbo].[users] ([user_id], [admin_adsoyad], [admin_kullaniciad], [admin_sifre]) VALUES (3, N'Admin', N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[users] OFF
GO
ALTER TABLE [dbo].[orders] ADD  DEFAULT ('1') FOR [order_status]
GO
ALTER TABLE [dbo].[orders] ADD  DEFAULT ('-') FOR [order_beverage]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD CHECK  (([order_status]='1' OR [order_status]='0'))
GO
