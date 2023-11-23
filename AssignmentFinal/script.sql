USE [Assignment]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 7/12/2022 9:29:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](32) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Custom]    Script date: 7/12/2022 9:29:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Custom](
	[Cid] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[MobilePhone] [nvarchar](50) NULL,
 CONSTRAINT [PK_Custom] PRIMARY KEY CLUSTERED 
(
	[Cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerMessage]    Script Date: 11/11/2019 9:29:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[pID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[ImageUrl] [nvarchar](50) NULL,
	[Quantity][int]NULL,
	[Price] [money] NULL,
	[TypeID][int]NULL,

	
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[pID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 7/12/2022 9:29:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Cid] [int] NULL,
	[pID] [int] NULL,
	[quantity][int]NULL,
	[Money][int] NULL,
	
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[ProductType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Brand] [nvarchar](200) NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Admin] ([Username], [Password]) VALUES (N'admin', N'123')
INSERT [dbo].[Admin] ([Username], [Password]) VALUES (N'huy', N'123')
SET IDENTITY_INSERT [dbo].[Custom] ON 

INSERT [dbo].[Custom] ([Cid], [Name], [Username], [Password], [Email], [MobilePhone]) VALUES (1, N'huy', N'huy', N'123', N'huy123khoaichau@gmail.com', N'03535845483')
INSERT [dbo].[Custom] ([Cid], [Name], [Username], [Password], [Email], [MobilePhone]) VALUES (2, N'phung', N'phung', N'123', N'Huy1999@gmail.com', N'100000222')
SET IDENTITY_INSERT [dbo].[Custom] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 
INSERT [dbo].[Product] ([pID], [Name], [ImageUrl],[Quantity], [Price], [TypeID]) VALUES (1, N'Freak3 Bread', N'images/Freak3Bread.jpg',10, 350.0000, 1)
INSERT [dbo].[Product] ([pID], [Name], [ImageUrl],[Quantity], [Price], [TypeID]) VALUES (2, N'Freak3 Grey', N'images/NULLFreak3Grey.jpg',10, 350.0000, 1)
INSERT [dbo].[Product] ([pID], [Name], [ImageUrl],[Quantity], [Price], [TypeID]) VALUES (3, N'Freak3 Uno', N'images/Freak3Uno.jpg',10, 420.0000, 1)
INSERT [dbo].[Product] ([pID], [Name], [ImageUrl],[Quantity], [Price], [TypeID]) VALUES (4, N'Jordan1KO', N'images/Jordan1KO.jpg',10, 600.0000, 1)
INSERT [dbo].[Product] ([pID], [Name], [ImageUrl],[Quantity], [Price], [TypeID]) VALUES (5, N'Jordan36 Bread', N'images/Jordan36.jpg',10, 500.0000, 1)
INSERT [dbo].[Product] ([pID], [Name], [ImageUrl],[Quantity], [Price], [TypeID]) VALUES (6, N'Jordan36 Hanimichi', N'images/Jordan36Hanimichi.jpg',10, 523.0000, 1)
INSERT [dbo].[Product] ([pID], [Name], [ImageUrl],[Quantity], [Price], [TypeID]) VALUES (7, N'Jordan36 TacoJay', N'images/Jordan36TacoJay.jpg',10, 620.0000, 1)
INSERT [dbo].[Product] ([pID], [Name], [ImageUrl],[Quantity], [Price], [TypeID]) VALUES (8, N'KD 15 EP', N'images/KD15EP.jpg',10, 320.0000, 1)
INSERT [dbo].[Product] ([pID], [Name], [ImageUrl],[Quantity], [Price], [TypeID]) VALUES (9, N'KDTrey 5 EP', N'images/KDTrey5Ep.jpg',10, 250.0000,1)
INSERT [dbo].[Product] ([pID], [Name], [ImageUrl],[Quantity], [Price], [TypeID]) VALUES (10, N'Kyrie 6 Atum', N'images/Kyrie6Atum.jpg',10, 270.0000, 1)
INSERT [dbo].[Product] ([pID], [Name], [ImageUrl],[Quantity], [Price], [TypeID]) VALUES (11, N'Kyrie 6 Valentine', N'images/Kyrie6Valentine.jpg',10, 350.0000, 1)
INSERT [dbo].[Product] ([pID], [Name], [ImageUrl],[Quantity], [Price], [TypeID]) VALUES (12, N'Kyrie Low 5 SE', N'images/KyrieLow5EP.jpg',10, 362.0000, 1)
INSERT [dbo].[Product] ([pID], [Name], [ImageUrl],[Quantity], [Price], [TypeID]) VALUES (13, N'Lebron 18 Low', N'images/Lebron18Low.jpg',10, 230.0000, 1)
INSERT [dbo].[Product] ([pID], [Name], [ImageUrl],[Quantity], [Price], [TypeID]) VALUES (14, N'Lebron 19', N'images/Lebron19.jpg',10, 550.0000, N'1')
INSERT [dbo].[Product] ([pID], [Name], [ImageUrl],[Quantity], [Price], [TypeID]) VALUES (15, N'Lebron 19 Black', N'images/Lebron19Black.jpg',10, 560.0000, 1)
INSERT [dbo].[Product] ([pID], [Name], [ImageUrl],[Quantity], [Price], [TypeID]) VALUES (16, N'Lebron 19 Low', N'images/Lebron19Low.jpg',10, 420.0000,1)
INSERT [dbo].[Product] ([pID], [Name], [ImageUrl],[Quantity], [Price], [TypeID]) VALUES (17, N'Nike Dunk Low SE', N'images/NikeDunkLowSe.jpg',10, 310.0000, 1)
INSERT [dbo].[Product] ([pID], [Name], [ImageUrl],[Quantity], [Price], [TypeID]) VALUES (18, N'PG6 EP', N'images/PG6EP.jpg',10, 290.0000, 1)
INSERT [dbo].[Product] ([pID], [Name], [ImageUrl],[Quantity], [Price], [TypeID]) VALUES (19, N'Why not zero 4', N'images/Whynotzero4.jpg',10, 285.0000, 1)
INSERT [dbo].[Product] ([pID], [Name], [ImageUrl],[Quantity], [Price], [TypeID]) VALUES (20, N'Zion1', N'images/Zion1.jpg',10, 230.0000, 1)
INSERT [dbo].[Product] ([pID], [Name], [ImageUrl],[Quantity], [Price], [TypeID]) VALUES (21, N'Dame 8 Blue', N'images/Dame8Blue.jpg',10, 190.0000, 2)
INSERT [dbo].[Product] ([pID], [Name], [ImageUrl],[Quantity], [Price], [TypeID]) VALUES (22, N'Dame 8 Mint', N'images/Dame8Mint.jpg',10, 230.0000, 2)
INSERT [dbo].[Product] ([pID], [Name], [ImageUrl],[Quantity], [Price], [TypeID]) VALUES (23, N'Dame 8 White', N'images/Dame8White.jpg',10, 230.0000, 2)
INSERT [dbo].[Product] ([pID], [Name], [ImageUrl],[Quantity], [Price], [TypeID]) VALUES (24, N'D.O.N Issue 3', N'images/DONIssue3.jpg',10, 320.0000, 2)
INSERT [dbo].[Product] ([pID], [Name], [ImageUrl],[Quantity], [Price], [TypeID]) VALUES (25, N'Forum Blue ', N'images/Forumblue.jpg',10, 210.0000, 2)
INSERT [dbo].[Product] ([pID], [Name], [ImageUrl],[Quantity], [Price], [TypeID]) VALUES (26, N'Harden Step Back 3', N'images/HardenStepBack3.jpg',10, 150.0000, 2)
INSERT [dbo].[Product] ([pID], [Name], [ImageUrl],[Quantity], [Price], [TypeID]) VALUES (27, N'Harden Vol 6 Black', N'images/HardenVol6Black.jpg',10, 225.0000, 2)
INSERT [dbo].[Product] ([pID], [Name], [ImageUrl],[Quantity], [Price], [TypeID]) VALUES (28, N'Harden Vol 6 Pink', N'images/HardenVol6Pink.jpg',10, 240.0000, 2)
INSERT [dbo].[Product] ([pID], [Name], [ImageUrl],[Quantity], [Price], [TypeID]) VALUES (29, N'Harden Vol 6 Purple', N'images/HardenVol6Purple.jpg',10, 240.0000, 2)
INSERT [dbo].[Product] ([pID], [Name], [ImageUrl],[Quantity], [Price], [TypeID]) VALUES (30, N'Black Fives Fusion Nitro', N'images/BlackFivesFusionNitro.jpg',10, 420.0000, 3)
INSERT [dbo].[Product] ([pID], [Name], [ImageUrl],[Quantity], [Price], [TypeID]) VALUES (31, N'Court Rider Pop', N'images/CourRiderPop.jpg',10, 350.0000, 3)
INSERT [dbo].[Product] ([pID], [Name], [ImageUrl],[Quantity], [Price], [TypeID]) VALUES (32, N'Fusion Nitro', N'images/FusionNitro.jpg',10, 284.0000, 3)
INSERT [dbo].[Product] ([pID], [Name], [ImageUrl],[Quantity], [Price], [TypeID]) VALUES (33, N'Fusion Nitro Pink', N'images/FusionNitroPink.jpg',10, 254.0000, 3)
INSERT [dbo].[Product] ([pID], [Name], [ImageUrl],[Quantity], [Price], [TypeID]) VALUES (34, N'Fusion Nitro White', N'images/FusionNitrowhite.jpg',10, 280.0000, 3)
INSERT [dbo].[Product] ([pID], [Name], [ImageUrl],[Quantity], [Price], [TypeID]) VALUES (35, N'MB.01 UFO', N'images/MB.01UFO.jpg',10, 700.0000, 3)
INSERT [dbo].[Product] ([pID], [Name], [ImageUrl],[Quantity], [Price], [TypeID]) VALUES (36, N'Puma X Dunkin', N'images/PumaxDunkinTripleBasketballSneakers.jpg',10, 550.0000, 3)
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[ProductType] ON 
INSERT [dbo].[ProductType] ([Id], [Brand]) VALUES (1, N'Nike')
INSERT [dbo].[ProductType] ([Id], [Brand]) VALUES (2, N'Adidas')
INSERT [dbo].[ProductType] ([Id], [Brand]) VALUES (3, N'Puma')
SET IDENTITY_INSERT [dbo].[ProductType] OFF

ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Custom] FOREIGN KEY([Cid])
REFERENCES [dbo].[Custom] ([Cid])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Custom]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([pID])
REFERENCES [dbo].[Product] ([pID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductType] FOREIGN KEY([TypeID])
REFERENCES [dbo].[ProductType] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductType]
GO