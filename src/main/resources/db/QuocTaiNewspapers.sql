USE [master]
GO
/****** Object:  Database [QuocTaiNewspapers]    Script Date: 7/25/2024 6:24:59 PM ******/
CREATE DATABASE [QuocTaiNewspapers]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuocTaiNewspapers', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\QuocTaiNewspapers.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuocTaiNewspapers_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\QuocTaiNewspapers_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QuocTaiNewspapers] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuocTaiNewspapers].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuocTaiNewspapers] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuocTaiNewspapers] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuocTaiNewspapers] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuocTaiNewspapers] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuocTaiNewspapers] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuocTaiNewspapers] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QuocTaiNewspapers] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuocTaiNewspapers] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuocTaiNewspapers] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuocTaiNewspapers] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuocTaiNewspapers] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuocTaiNewspapers] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuocTaiNewspapers] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuocTaiNewspapers] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuocTaiNewspapers] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuocTaiNewspapers] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuocTaiNewspapers] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuocTaiNewspapers] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuocTaiNewspapers] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuocTaiNewspapers] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuocTaiNewspapers] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuocTaiNewspapers] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuocTaiNewspapers] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuocTaiNewspapers] SET  MULTI_USER 
GO
ALTER DATABASE [QuocTaiNewspapers] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuocTaiNewspapers] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuocTaiNewspapers] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuocTaiNewspapers] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuocTaiNewspapers] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuocTaiNewspapers] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QuocTaiNewspapers] SET QUERY_STORE = ON
GO
ALTER DATABASE [QuocTaiNewspapers] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QuocTaiNewspapers]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 7/25/2024 6:24:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](255) NOT NULL,
	[Fullname] [nvarchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Image] [varchar](255) NULL,
	[Address] [nvarchar](100) NULL,
	[TelePhone] [char](10) NULL,
	[Reset_password] [varchar](50) NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Authorities]    Script Date: 7/25/2024 6:24:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authorities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[RoleId] [nvarchar](10) NULL,
 CONSTRAINT [PK_Authorities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 7/25/2024 6:24:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 7/25/2024 6:24:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[CommentId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[ProductId] [int] NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_FeedBacks] PRIMARY KEY CLUSTERED 
(
	[CommentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favorites]    Script Date: 7/25/2024 6:24:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favorites](
	[FavoriteId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_Favorites] PRIMARY KEY CLUSTERED 
(
	[FavoriteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedBacks]    Script Date: 7/25/2024 6:24:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedBacks](
	[FeedBackId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Username] [varchar](50) NOT NULL,
 CONSTRAINT [PK_FeedBacks_1] PRIMARY KEY CLUSTERED 
(
	[FeedBackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 7/25/2024 6:24:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderDetailId] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Price] [float] NULL,
	[Discount] [float] NULL,
	[Quantity] [int] NULL,
	[Discription] [nvarchar](100) NULL,
	[Amount] [int] NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 7/25/2024 6:24:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NULL,
	[CreateDay] [date] NOT NULL,
	[TelePhone] [varchar](12) NULL,
	[Address] [nvarchar](100) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [varchar](30) NULL,
	[Total] [int] NULL,
	[Status] [nvarchar](50) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 7/25/2024 6:24:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[Discount] [float] NULL,
	[Image1] [varchar](50) NOT NULL,
	[Image5] [varchar](50) NULL,
	[EnteredDay] [date] NOT NULL,
	[Discription] [nvarchar](max) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[HotSale] [varchar](20) NULL,
	[OldPrice] [int] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 7/25/2024 6:24:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleId] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Statitic]    Script Date: 7/25/2024 6:24:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statitic](
	[OrderId] [int] NOT NULL,
	[OrderDetailId] [int] NOT NULL,
	[id] [int] NULL,
	[slDoanhthu] [bigint] NOT NULL,
	[slOrder] [bigint] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'qtai0209', N'qtai0209', N'adsad', N'qtai2901@gmail.com', N'noimage.jpg', NULL, N'0316464642', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'qtai2901', N'qtai0209', N'Quốc Tài', N'qtai307@gmail.com', N'logo_for_head.png', N'', N'0975923903', NULL)
GO
SET IDENTITY_INSERT [dbo].[Authorities] ON 

INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (1, N'qtai2901', N'DIRE')
SET IDENTITY_INSERT [dbo].[Authorities] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryId], [Name]) VALUES (1, N'Báo Trong nước')
INSERT [dbo].[Categories] ([CategoryId], [Name]) VALUES (2, N'Báo Ngoài Ngành')
INSERT [dbo].[Categories] ([CategoryId], [Name]) VALUES (3, N'Báo Tiếng Nước Ngoài')
INSERT [dbo].[Categories] ([CategoryId], [Name]) VALUES (4, N'Tạp Chí Trong Nước')
INSERT [dbo].[Categories] ([CategoryId], [Name]) VALUES (5, N'Tạp Chí Nước Ngoài')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderId], [Username], [CreateDay], [TelePhone], [Address], [Name], [Email], [Total], [Status]) VALUES (1, N'qtai2901', CAST(N'2023-05-12' AS Date), NULL, N'adsdadaasd', N'adasda', N'qtaeoooe@gmail.com', 1940000, N'Đã giao hàng')
INSERT [dbo].[Orders] ([OrderId], [Username], [CreateDay], [TelePhone], [Address], [Name], [Email], [Total], [Status]) VALUES (2, N'qtai2901', CAST(N'2023-05-12' AS Date), NULL, N'ácdasdas', N'ádasd', N'dsadd@adf', 219000, N'Đã giao hàng')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [Name], [Quantity], [UnitPrice], [Discount], [Image1], [Image5], [EnteredDay], [Discription], [CategoryId], [HotSale], [OldPrice]) VALUES (1, N'ád', 12, 1312312, 0, N'acer-nitro-5-gaming.jpg', N'5sao.png', CAST(N'2024-07-22' AS Date), N',ahvjhasvdhajf', 2, N'white-img.png', 12)
INSERT [dbo].[Products] ([ProductId], [Name], [Quantity], [UnitPrice], [Discount], [Image1], [Image5], [EnteredDay], [Discription], [CategoryId], [HotSale], [OldPrice]) VALUES (2, N'báo', 11, 10000, 0, N'logo_for_head.png', N'5sao.png', CAST(N'2024-07-25' AS Date), N'', 1, N'white-img.png', 15000)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
INSERT [dbo].[Roles] ([RoleId], [Name]) VALUES (N'CUST', N'Customers')
INSERT [dbo].[Roles] ([RoleId], [Name]) VALUES (N'DIRE', N'Directors')
INSERT [dbo].[Roles] ([RoleId], [Name]) VALUES (N'STAF', N'Staffs')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK23fux5pe6yss1vck8iv9juegn]    Script Date: 7/25/2024 6:24:59 PM ******/
ALTER TABLE [dbo].[Authorities] ADD  CONSTRAINT [UK23fux5pe6yss1vck8iv9juegn] UNIQUE NONCLUSTERED 
(
	[Username] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UKef7fbpy09qu6267gf071q71we]    Script Date: 7/25/2024 6:24:59 PM ******/
ALTER TABLE [dbo].[Authorities] ADD  CONSTRAINT [UKef7fbpy09qu6267gf071q71we] UNIQUE NONCLUSTERED 
(
	[Username] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_Authorities_Accounts] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_Authorities_Accounts]
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_Authorities_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([RoleId])
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_Authorities_Roles]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Accounts] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Accounts]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Products]
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD  CONSTRAINT [FK_Favorites_Accounts] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Favorites] CHECK CONSTRAINT [FK_Favorites_Accounts]
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD  CONSTRAINT [FK_Favorites_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[Favorites] CHECK CONSTRAINT [FK_Favorites_Products]
GO
ALTER TABLE [dbo].[FeedBacks]  WITH CHECK ADD  CONSTRAINT [FK_FeedBacks_Accounts] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[FeedBacks] CHECK CONSTRAINT [FK_FeedBacks_Accounts]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Accounts] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Accounts]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[Statitic]  WITH CHECK ADD  CONSTRAINT [FK_Statitic_OrderDetails] FOREIGN KEY([OrderDetailId])
REFERENCES [dbo].[OrderDetails] ([OrderDetailId])
GO
ALTER TABLE [dbo].[Statitic] CHECK CONSTRAINT [FK_Statitic_OrderDetails]
GO
ALTER TABLE [dbo].[Statitic]  WITH CHECK ADD  CONSTRAINT [FK_Statitic_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
GO
ALTER TABLE [dbo].[Statitic] CHECK CONSTRAINT [FK_Statitic_Orders]
GO
USE [master]
GO
ALTER DATABASE [QuocTaiNewspapers] SET  READ_WRITE 
GO
