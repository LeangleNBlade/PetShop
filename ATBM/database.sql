USE [ProjectWebBanThuCung]
GO
/****** Object:  Table [dbo].[_TransactionIndex_237b54d1-d71b-4693-9336-2c1897920f9b]    Script Date: 9/11/2021 8:19:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_TransactionIndex_237b54d1-d71b-4693-9336-2c1897920f9b](
	[Id] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[accounts]    Script Date: 9/11/2021 8:19:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[accounts](
	[username] [nvarchar](20) NOT NULL,
	[fullname] [nvarchar](100) NOT NULL,
	[phone] [nvarchar](20) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[address] [nvarchar](300) NOT NULL,
	[avatar] [nvarchar](300) NULL,
	[birthday] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[address_Book]    Script Date: 9/11/2021 8:19:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[address_Book](
	[id] [nvarchar](20) NOT NULL,
	[username] [nvarchar](20) NULL,
	[address] [nvarchar](400) NULL,
	[status] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[APP_ROLE]    Script Date: 9/11/2021 8:19:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[APP_ROLE](
	[ROLE_ID] [bigint] NOT NULL,
	[ROLE_NAME] [varchar](30) NOT NULL,
 CONSTRAINT [APP_ROLE_PK] PRIMARY KEY CLUSTERED 
(
	[ROLE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[APP_USER]    Script Date: 9/11/2021 8:19:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[APP_USER](
	[USER_ID] [bigint] NOT NULL,
	[USER_NAME] [nvarchar](20) NULL,
	[ENCRYTED_PASSWORD] [varchar](128) NOT NULL,
	[ENABLED] [bit] NOT NULL,
 CONSTRAINT [APP_USER_PK] PRIMARY KEY CLUSTERED 
(
	[USER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bill]    Script Date: 9/11/2021 8:19:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill](
	[id] [nvarchar](30) NOT NULL,
	[username] [nvarchar](30) NULL,
	[idaddress] [nvarchar](30) NULL,
	[payment] [nvarchar](30) NULL,
	[totalcost] [int] NULL,
	[time] [datetime] NULL,
	[note] [nvarchar](400) NULL,
	[status] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bill_Details]    Script Date: 9/11/2021 8:19:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill_Details](
	[id] [nvarchar](30) NOT NULL,
	[idbill] [nvarchar](30) NULL,
	[idproduct] [nvarchar](30) NULL,
	[price] [int] NULL,
	[quantity] [int] NULL,
	[totalcost] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[carts]    Script Date: 9/11/2021 8:19:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[carts](
	[id] [nvarchar](20) NOT NULL,
	[username] [nvarchar](20) NOT NULL,
	[idproduct] [nvarchar](20) NOT NULL,
	[price] [float] NOT NULL,
	[quantity] [int] NOT NULL,
	[totalcost] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comment]    Script Date: 9/11/2021 8:19:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comment](
	[id] [nvarchar](20) NOT NULL,
	[idproduct] [nvarchar](20) NOT NULL,
	[username] [nvarchar](20) NOT NULL,
	[text] [nvarchar](1000) NOT NULL,
	[date] [datetime] NULL,
	[status] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[findAssociations]    Script Date: 9/11/2021 8:19:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[findAssociations](
	[TID] [nvarchar](20) NOT NULL,
	[idCus] [nvarchar](20) NOT NULL,
	[trans] [varchar](200) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[options]    Script Date: 9/11/2021 8:19:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[options](
	[minsup] [float] NOT NULL,
	[minconf] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Persistent_Logins]    Script Date: 9/11/2021 8:19:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persistent_Logins](
	[username] [varchar](64) NOT NULL,
	[series] [varchar](64) NOT NULL,
	[token] [varchar](64) NOT NULL,
	[last_used] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[series] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[replycomment]    Script Date: 9/11/2021 8:19:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[replycomment](
	[id] [nvarchar](20) NOT NULL,
	[idcomment] [nvarchar](20) NOT NULL,
	[username] [nvarchar](20) NOT NULL,
	[text] [nvarchar](1000) NOT NULL,
	[date] [datetime] NULL,
	[status] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[review]    Script Date: 9/11/2021 8:19:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[review](
	[id] [nvarchar](20) NOT NULL,
	[idproduct] [nvarchar](20) NOT NULL,
	[username] [nvarchar](100) NOT NULL,
	[comment] [nvarchar](1000) NOT NULL,
	[rate] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shoes]    Script Date: 9/11/2021 8:19:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pet](
	[id] [nvarchar](20) NOT NULL,
	[name] [varchar](100) NULL,
	[weight] [float] NULL,
	[type] [nvarchar](20) NULL,
	[color] [nvarchar](20) NULL,
	[origin] [nvarchar](30) NULL,
	[price] [float] NULL,
	[imageslink] [nvarchar](30) NULL,
	[pricebefore] [float] NULL,
	[checkquality] [nchar](10) NULL,
	[description] [nvarchar](1000) NULL,
	[rate] [int] NULL,
	[status] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USER_ROLE]    Script Date: 9/11/2021 8:19:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USER_ROLE](
	[ID] [bigint] NOT NULL,
	[USER_ID] [bigint] NOT NULL,
	[ROLE_ID] [bigint] NOT NULL,
 CONSTRAINT [USER_ROLE_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[viewHistory]    Script Date: 9/11/2021 8:19:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[viewHistory](
	[id] [nvarchar](20) NOT NULL,
	[username] [nvarchar](100) NULL,
	[idproduct] [nvarchar](30) NULL,
	[datemodify] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[_TransactionIndex_237b54d1-d71b-4693-9336-2c1897920f9b] ([Id]) VALUES (N'431eb26c-4fcc-4548-ad4c-117cc27af595')
INSERT [dbo].[_TransactionIndex_237b54d1-d71b-4693-9336-2c1897920f9b] ([Id]) VALUES (N'a8cf4b05-f056-4830-814a-1d1fdfcd3a17')
INSERT [dbo].[_TransactionIndex_237b54d1-d71b-4693-9336-2c1897920f9b] ([Id]) VALUES (N'39c089bb-6ee4-4df6-b5f6-2c9af1050ab9')
INSERT [dbo].[_TransactionIndex_237b54d1-d71b-4693-9336-2c1897920f9b] ([Id]) VALUES (N'a785b194-b2ba-44a7-b6ae-36a7ca604994')
INSERT [dbo].[_TransactionIndex_237b54d1-d71b-4693-9336-2c1897920f9b] ([Id]) VALUES (N'322bde01-8b2e-44cc-a36d-6de8a955f04c')
INSERT [dbo].[_TransactionIndex_237b54d1-d71b-4693-9336-2c1897920f9b] ([Id]) VALUES (N'6c730cca-a4fa-4d31-9a6d-72a08056adec')
INSERT [dbo].[_TransactionIndex_237b54d1-d71b-4693-9336-2c1897920f9b] ([Id]) VALUES (N'a3ec62c1-466c-49e5-805e-938fa35cecb1')
INSERT [dbo].[_TransactionIndex_237b54d1-d71b-4693-9336-2c1897920f9b] ([Id]) VALUES (N'80d42c13-c8ed-43f2-b31e-a86bf2cbe8a1')
INSERT [dbo].[_TransactionIndex_237b54d1-d71b-4693-9336-2c1897920f9b] ([Id]) VALUES (N'298263b0-aade-4ce7-9db2-bf9f46d934e7')
INSERT [dbo].[_TransactionIndex_237b54d1-d71b-4693-9336-2c1897920f9b] ([Id]) VALUES (N'bf6ee7f8-91d2-49ff-8a70-e0a246cc077d')
INSERT [dbo].[_TransactionIndex_237b54d1-d71b-4693-9336-2c1897920f9b] ([Id]) VALUES (N'80c35836-9722-47fe-8902-e5b456063bed')
INSERT [dbo].[_TransactionIndex_237b54d1-d71b-4693-9336-2c1897920f9b] ([Id]) VALUES (N'26f41a2f-e4c3-4d49-9889-f12504dcb5ac')
INSERT [dbo].[_TransactionIndex_237b54d1-d71b-4693-9336-2c1897920f9b] ([Id]) VALUES (N'7ca86e12-9a60-4f45-81f8-f4bd93296316')
INSERT [dbo].[_TransactionIndex_237b54d1-d71b-4693-9336-2c1897920f9b] ([Id]) VALUES (N'65e553e4-f768-4cf7-abde-f9b9048bfb8b')
GO
INSERT [dbo].[accounts] ([username], [fullname], [phone], [email], [address], [avatar], [birthday]) VALUES (N'hongson', N'Nguyen Hong Son', N'0969177286', N'sonnguyen.01081999@gmail.com', N'381 Xa Hau My Trinh - Huyen Cai Be - Tinh Tien Giang', N'img/account/hongson.jpg', CAST(N'2021-02-20' AS Date))
INSERT [dbo].[accounts] ([username], [fullname], [phone], [email], [address], [avatar], [birthday]) VALUES (N'duyphuong', N'Le Duy Phuong', N'0967463529', N'leduyphuong@gmail.com', N'Quan 12 - Thanh Pho Ho Chi Minh', N'img/account/duyphuong.jpg', CAST(N'2021-02-20' AS Date))
GO
INSERT [dbo].[address_Book] ([id], [username], [address], [status]) VALUES (N'AB263B47', N'hongson', N'381 Xa Hau My Trinh - Huyen Cai Be - Tinh Tien Giang', N'DEFAULT')
INSERT [dbo].[address_Book] ([id], [username], [address], [status]) VALUES (N'AB21C4BA', N'duyphuong', N'Quan 12 - Thanh Pho Ho Chi Minh', N'DEFAULT')
GO
INSERT [dbo].[APP_ROLE] ([ROLE_ID], [ROLE_NAME]) VALUES (1, N'ADMIN')
INSERT [dbo].[APP_ROLE] ([ROLE_ID], [ROLE_NAME]) VALUES (2, N'USER')
GO
INSERT [dbo].[APP_USER] ([USER_ID], [USER_NAME], [ENCRYTED_PASSWORD], [ENABLED]) VALUES (1, N'hongson', N'$2a$10$aHm3gyBE8nwsJjwYZ0IvpePcH9hwkHSKTSKcQ.GJ2xa1nsNa7I7Ka', 1)
INSERT [dbo].[APP_USER] ([USER_ID], [USER_NAME], [ENCRYTED_PASSWORD], [ENABLED]) VALUES (2, N'duyphuong', N'$2a$10$GqWEEsG.jcJv7YzwKEZJO.ac/kCBUErrqB1oXH3F5ULaRGX2H3XlS', 1)
GO
INSERT [dbo].[bill] ([id], [username], [idaddress], [payment], [totalcost], [time], [note], [status]) VALUES (N'BI131714', N'hongson', N'AB263B47', N'CASH', 1030000, CAST(N'2021-03-17T11:08:50.093' AS DateTime), N'', N'CANCELLED')
INSERT [dbo].[bill] ([id], [username], [idaddress], [payment], [totalcost], [time], [note], [status]) VALUES (N'BI1BCBD7', N'hongson', N'AB263B47', N'CASH', 1938000, CAST(N'2021-03-17T11:39:53.563' AS DateTime), N'', N'CANCELLED')
INSERT [dbo].[bill] ([id], [username], [idaddress], [payment], [totalcost], [time], [note], [status]) VALUES (N'BI21B7C7', N'hongson', N'AB263B47', N'CASH', 800000, CAST(N'2021-03-17T11:33:01.877' AS DateTime), N'', N'CANCELLED')
INSERT [dbo].[bill] ([id], [username], [idaddress], [payment], [totalcost], [time], [note], [status]) VALUES (N'BI418493', N'hongson', N'AB263B47', N'CASH', 40000, CAST(N'2020-03-29T00:09:18.877' AS DateTime), N'', N'ON THE WAY')
INSERT [dbo].[bill] ([id], [username], [idaddress], [payment], [totalcost], [time], [note], [status]) VALUES (N'BI6619F9', N'hongson', N'AB263B47', N'CASH', 3430000, CAST(N'2021-04-17T11:26:56.503' AS DateTime), N'', N'ON THE WAY')
INSERT [dbo].[bill] ([id], [username], [idaddress], [payment], [totalcost], [time], [note], [status]) VALUES (N'BI748212', N'duyphuong', N'AB21C4BA', N'CASH', 856000, CAST(N'2021-04-17T14:17:47.833' AS DateTime), N'', N'RECEIVED ORDER')
INSERT [dbo].[bill] ([id], [username], [idaddress], [payment], [totalcost], [time], [note], [status]) VALUES (N'BI762556', N'minhphung', N'AB21C4BA', N'CASH', 1248000, CAST(N'2021-04-19T11:41:57.637' AS DateTime), N'', N'RECEIVED ORDER')
INSERT [dbo].[bill] ([id], [username], [idaddress], [payment], [totalcost], [time], [note], [status]) VALUES (N'BI898CA2', N'lamtung', N'AB21C4BA', N'CASH', 556000, CAST(N'2021-04-20T16:21:45.437' AS DateTime), N'', N'RECEIVED ORDER')
INSERT [dbo].[bill] ([id], [username], [idaddress], [payment], [totalcost], [time], [note], [status]) VALUES (N'BI8C35B6', N'lamtung', N'AB21C4BA', N'CASH', 13430000, CAST(N'2021-04-22T15:50:06.527' AS DateTime), N'', N'RECEIVED ORDER')
INSERT [dbo].[bill] ([id], [username], [idaddress], [payment], [totalcost], [time], [note], [status]) VALUES (N'BIA6C1A5', N'hongson', N'AB263B47', N'CASH', 732000, CAST(N'2021-04-30T11:45:21.280' AS DateTime), N'', N'RECEIVED ORDER')
INSERT [dbo].[bill] ([id], [username], [idaddress], [payment], [totalcost], [time], [note], [status]) VALUES (N'BIBB6B42', N'minhphung', N'AB21C4BA', N'CASH', 1260000, CAST(N'2021-05-02T15:59:39.210' AS DateTime), N'', N'DELIVERED')
INSERT [dbo].[bill] ([id], [username], [idaddress], [payment], [totalcost], [time], [note], [status]) VALUES (N'BICAE9D0', N'hongson', N'AB263B47', N'PAYPAL', 1470000, CAST(N'2021-05-03T11:16:03.513' AS DateTime), N'', N'DELIVERED')
INSERT [dbo].[bill] ([id], [username], [idaddress], [payment], [totalcost], [time], [note], [status]) VALUES (N'BIE46E86', N'duyphuong', N'AB21C4BA', N'CASH', 270000, CAST(N'2021-05-04T13:32:53.960' AS DateTime), N'', N'RECEIVED ORDER')
INSERT [dbo].[bill] ([id], [username], [idaddress], [payment], [totalcost], [time], [note], [status]) VALUES (N'BIEF2294', N'duyphuong', N'AB21C4BA', N'CASH', 250000, CAST(N'2021-05-05T16:26:37.797' AS DateTime), N'', N'RECEIVED ORDER')
GO
INSERT [dbo].[bill_Details] ([id], [idbill], [idproduct], [price], [quantity], [totalcost]) VALUES (N'BD0EB577', N'BIBB6B42', N'P001', 180000, 7, 1260000)
INSERT [dbo].[bill_Details] ([id], [idbill], [idproduct], [price], [quantity], [totalcost]) VALUES (N'BD2DBD77', N'BI748212', N'C006', 8000, 7, 56000)
INSERT [dbo].[bill_Details] ([id], [idbill], [idproduct], [price], [quantity], [totalcost]) VALUES (N'BD612280', N'BICAE9D0', N'P003', 220000, 3, 660000)
INSERT [dbo].[bill_Details] ([id], [idbill], [idproduct], [price], [quantity], [totalcost]) VALUES (N'BD623C73', N'BIEF2294', N'P004', 200000, 1, 200000)
INSERT [dbo].[bill_Details] ([id], [idbill], [idproduct], [price], [quantity], [totalcost]) VALUES (N'BD72AA5B', N'BI8C35B6', N'P002', 140000, 8, 1120000)
INSERT [dbo].[bill_Details] ([id], [idbill], [idproduct], [price], [quantity], [totalcost]) VALUES (N'BD79DC9C', N'BIC64A62', N'S003', 400000, 1, 4000)
INSERT [dbo].[bill_Details] ([id], [idbill], [idproduct], [price], [quantity], [totalcost]) VALUES (N'BD930E96', N'BI898CA2', N'C006', 850000, 2, 16000)
INSERT [dbo].[bill_Details] ([id], [idbill], [idproduct], [price], [quantity], [totalcost]) VALUES (N'BDA879C5', N'BI898CA2', N'P005', 270000, 2, 540000)
INSERT [dbo].[bill_Details] ([id], [idbill], [idproduct], [price], [quantity], [totalcost]) VALUES (N'BDAD4AFA', N'BIEF2294', N'C003', 100000, 5, 50000)
INSERT [dbo].[bill_Details] ([id], [idbill], [idproduct], [price], [quantity], [totalcost]) VALUES (N'BDB90BD4', N'BI748212', N'P004', 200000, 4, 800000)
INSERT [dbo].[bill_Details] ([id], [idbill], [idproduct], [price], [quantity], [totalcost]) VALUES (N'BDBAF0D6', N'BICAE9D0', N'P005', 270000, 3, 810000)
INSERT [dbo].[bill_Details] ([id], [idbill], [idproduct], [price], [quantity], [totalcost]) VALUES (N'BDD17AC8', N'BI8C35B6', N'P003', 220000, 1, 220000)
INSERT [dbo].[bill_Details] ([id], [idbill], [idproduct], [price], [quantity], [totalcost]) VALUES (N'BDD66368', N'BIE46E86', N'P005', 270000, 1, 270000)
GO
INSERT [dbo].[carts] ([id], [username], [idproduct], [price], [quantity], [totalcost]) VALUES (N'CRAB2A2A4', N'duyphuong', N'C004', 10000, 1, 10000)
GO
INSERT [dbo].[comment] ([id], [idproduct], [username], [text], [date], [status]) VALUES (N'CM000001', N'P001', N'duyphuong', N'This dog is really cute!', CAST(N'2021-04-26T08:00:00.000' AS DateTime), N'ACTIVE')
GO
INSERT [dbo].[options] ([minsup], [minconf]) VALUES (50, 50)
GO
INSERT [dbo].[replycomment] ([id], [idcomment], [username], [text], [date], [status]) VALUES (N'RP000001', N'CM000001', N'hongson', N'Yeah! Thank you very much <3', CAST(N'2021-04-26T08:05:00.000' AS DateTime), N'ACTIVE')
GO
INSERT [dbo].[review] ([id], [idproduct], [username], [comment], [rate]) VALUES (N'RV158823', N'P005', N'hongson', N'Amazing', 5)
INSERT [dbo].[review] ([id], [idproduct], [username], [comment], [rate]) VALUES (N'RV163907', N'B003', N'duyphuong', N'Lovely', 5)
INSERT [dbo].[review] ([id], [idproduct], [username], [comment], [rate]) VALUES (N'RV231A14', N'P001', N'minhphung', N'Hahahahah', 5)
INSERT [dbo].[review] ([id], [idproduct], [username], [comment], [rate]) VALUES (N'RV2D64B8', N'P004', N'hongson', N'So cute', 3)
INSERT [dbo].[review] ([id], [idproduct], [username], [comment], [rate]) VALUES (N'RV378214', N'P002', N'lamtung', N'Awesome', 2)
INSERT [dbo].[review] ([id], [idproduct], [username], [comment], [rate]) VALUES (N'RV5C1C99', N'B006', N'hongson', N'Okay!', 3)
INSERT [dbo].[review] ([id], [idproduct], [username], [comment], [rate]) VALUES (N'RV62BCE5', N'P005', N'duyphuong', N'Excellent', 5)
INSERT [dbo].[review] ([id], [idproduct], [username], [comment], [rate]) VALUES (N'RV6F8310', N'P005', N'minhphung', N'Excellent', 4)
INSERT [dbo].[review] ([id], [idproduct], [username], [comment], [rate]) VALUES (N'RV81DF4B', N'P005', N'hongson', N'Good!', 5)
INSERT [dbo].[review] ([id], [idproduct], [username], [comment], [rate]) VALUES (N'RV861D97', N'P005', N'lamtung', N'Love it', 4)
INSERT [dbo].[review] ([id], [idproduct], [username], [comment], [rate]) VALUES (N'RV8AA831', N'P004', N'hongson', N'I like it', 5)
INSERT [dbo].[review] ([id], [idproduct], [username], [comment], [rate]) VALUES (N'RV9357C4', N'P002', N'hongson', N'Good', 4)
INSERT [dbo].[review] ([id], [idproduct], [username], [comment], [rate]) VALUES (N'RV9A6ED3', N'P001', N'hongson', N'This product is very good', 1)
INSERT [dbo].[review] ([id], [idproduct], [username], [comment], [rate]) VALUES (N'RV9FDCFE', N'P005', N'lamtung', N'This is very good', 4)
INSERT [dbo].[review] ([id], [idproduct], [username], [comment], [rate]) VALUES (N'RVAEC0F1', N'B003', N'hongson', N'', 5)
INSERT [dbo].[review] ([id], [idproduct], [username], [comment], [rate]) VALUES (N'RVAF77B0', N'B005', N'duyphuong', N'Very good!', 5)
INSERT [dbo].[review] ([id], [idproduct], [username], [comment], [rate]) VALUES (N'RVC4EA13', N'C005', N'minhphung', N'very bad', 1)
INSERT [dbo].[review] ([id], [idproduct], [username], [comment], [rate]) VALUES (N'RVC969DF', N'P005', N'hongson', N'Very good!', 5)
INSERT [dbo].[review] ([id], [idproduct], [username], [comment], [rate]) VALUES (N'RVCC5512', N'P001', N'hongson', N'Good', 3)
GO
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'B001', N'Pin Bowl', 0, N'Bowl', N'Blue', N'Vietnam', 50000, N'img/B001.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'B002', N'Vanx Bowl', 0, N'Bowl', N'Pink', N'Vietnam', 50000, N'img/B002.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'B003', N'Feeding Bowl', 0, N'Bowl', N'Black', N'Vietnam', 35000, N'img/B003.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'B004', N'Drank Bowl', 0, N'Bowl', N'Orange', N'Vietnam', 50000, N'img/B004.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'B005', N'Tick Bowl', 0, N'Bowl', N'Pink', N'Vietnam', 35000, N'img/B005.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'B006', N'Xertum Bowl', 0, N'Bowl', N'Yellow', N'Vietnam', 35000, N'img/B006.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'C001', N'Rabbit Shirt ', 0, N'Shirt', N'Pink', N'Vietnam', 50000, N'img/C001.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'C002', N'Raincoat Shirt', 0, N'Shirt', N'Yellow', N'Vietnam', 50000, N'img/C002.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'C003', N'Bub Shirt', 0, N'Shirt', N'Orange Transparent', N'Vietnam', 50000, N'img/C003.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'C004', N'Transparent Shirt', 0, N'Shirt', N'Pink Transparent', N'Vietnam', 50000, N'img/C004.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'C005', N'Jacket', 0, N'Shirt', N'Blue', N'Vietnam', 50000, N'img/C005.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'C006', N'Overalls', 0, N'Shirt', N'Yellow', N'Vietnam', 50000, N'img/C006.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'C007', N'Coat ', 0, N'Shirt', N'Blue', N'Vietnam', 50000, N'img/C007.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'C008', N'Fashion Shirt', 0, N'Pink', N'Blue', N'Vietnam', 50000, N'img/C008.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'P001', N'Luccy', 6, N'Vietnam', N'White-Yellow', N'Vietnam', 300000, N'img/P001.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'P002', N'Mange', 5, N'Corgi', N'White-Yellow', N'England', 5000000, N'img/P002.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'P003', N'Chuppy', 4, N'Corgi', N'White-Yellow', N'England', 2500000, N'img/P003.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'P004', N'Koala', 2, N'Vietnam', N'White-Yellow', N'Vietnam', 900000, N'img/P004.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'P005', N'Mina', 3, N'Chihuahua', N'Black-Brown', N'Japan', 1200000, N'img/P005.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'P006', N'Su', 2, N'Shiba', N'Black-White', N'Japan', 5000000, N'img/P006.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'P007', N'Panda', 5, N'Poodle', N'Grey-White', N'French', 3500000, N'img/P007.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'P008', N'Picky', 3.5, N'Pug', N'White', N'China', 1350000, N'img/P008.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'P009', N'Dom', 5, N'Alaska', N'White-Yellow', N'America', 4300000, N'img/P001.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'P010', N'Lala', 4.5, N'Vietnam', N'White-Yellow', N'Vietnam', 1500000, N'img/P002.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'P011', N'Naubi', 2, N'Vietnam', N'White-Yellow', N'Vietnam', 400000, N'img/P003.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'P012', N'Runccy', 3, N'Shiba', N'White-Yellow', N'Japan', 7500000, N'img/P004.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'P013', N'Lenda', 1.5, N'Chiquaqua', N'Black-White', N'Japan', 500000, N'img/P005.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'P014', N'Nana', 2, N'Pug', N'Black-Brown', N'China', 220000, N'img/P006.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'P015', N'Nub', 6, N'Vietnam', N'Black-Grey', N'Vietnam', 790000, N'img/P007.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'P016', N'Bun', 4, N'Pug', N'White', N'China', 3500000, N'img/P008.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'P017', N'Nats', 3, N'Vietnam', N'White-Yellow', N'Vietnam', 2000000, N'img/P001.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'P018', N'Lucky', 1, N'Corgi', N'White-Yellow', N'England', 300000, N'img/P002.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'P019', N'Babe', 2, N'Vietnam', N'White-Yellow', N'Vietnam', 600000, N'img/P003.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'P020', N'Yasmin', 7, N'Alaska', N'White-Yellow', N'America', 7200000, N'img/P004.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'P022', N'Vute', 4.3, N'Chihuahua', N'Black-Grey', N'Japan', 3500000, N'img/P005.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'P023', N'Bin', 2, N'Shiba', N'Black-Brown', N'Japan', 390000, N'img/P006.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'P024', N'Dimy', 3, N'Husky', N'White', N'Russia', 4800000, N'img/P007.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'S001', N'Red Christmas Shoes', 0, N'Shoes', N'Red', N'Vietnam', 17000, N'img/S001.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'S002', N'Blue Christmas Shoes', 0, N'Shoes', N'Blue', N'Vietnam', 19000, N'img/S002.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'S003', N'Bear Shoes', 0, N'Shoes', N'White', N'Vietnam', 17000, N'img/S003.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'S004', N'Penny Shoes', 0, N'Shoes', N'Yellow', N'Vietnam', 25000, N'img/S004.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'S005', N'Checked Bowtie', 0, N'Bowtie', N'Black', N'Vietnam', 10000, N'img/S005.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'S006', N'Spotted Bowtie', 0, N'Bowtie', N'Purple', N'Vietnam', 30000, N'img/S001.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'S007', N'Nature Bowtie', 0, N'Bowtie', N'Pink', N'Vietnam', 25000, N'img/S002.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'S008', N'Bell Bowtie', 0, N'Bowtie', N'Red-Pink', N'Vietnam', 17000, N'img/S003.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'S009', N'Ogrinal Bowtie', 0, N'Bowtie', N'Black-Red', N'Vietnam', 50000, N'img/S004.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
INSERT [dbo].[pet] ([id], [name], [weight], [type], [color], [origin], [price], [imageslink], [pricebefore], [checkquality], [description], [rate], [status]) VALUES (N'S010', N'Modern Bowtie', 0, N'Bowtie', N'Orange', N'Vietnam', 45000, N'img/S005.jpg', 0, N'yes       ', N'', 0, N'AVAILABLE')
GO
INSERT [dbo].[USER_ROLE] ([ID], [USER_ID], [ROLE_ID]) VALUES (-1253231772, -1734440584, 2)
INSERT [dbo].[USER_ROLE] ([ID], [USER_ID], [ROLE_ID]) VALUES (-1189471999, -260199343, 2)
INSERT [dbo].[USER_ROLE] ([ID], [USER_ID], [ROLE_ID]) VALUES (1, 1, 1)
INSERT [dbo].[USER_ROLE] ([ID], [USER_ID], [ROLE_ID]) VALUES (2, 1, 2)
INSERT [dbo].[USER_ROLE] ([ID], [USER_ID], [ROLE_ID]) VALUES (3, 2, 2)
INSERT [dbo].[USER_ROLE] ([ID], [USER_ID], [ROLE_ID]) VALUES (4, 3, 2)
INSERT [dbo].[USER_ROLE] ([ID], [USER_ID], [ROLE_ID]) VALUES (5, 4, 2)
INSERT [dbo].[USER_ROLE] ([ID], [USER_ID], [ROLE_ID]) VALUES (167451, 167451, 2)
INSERT [dbo].[USER_ROLE] ([ID], [USER_ID], [ROLE_ID]) VALUES (645267, 645267, 2)
INSERT [dbo].[USER_ROLE] ([ID], [USER_ID], [ROLE_ID]) VALUES (746542, 746542, 2)
INSERT [dbo].[USER_ROLE] ([ID], [USER_ID], [ROLE_ID]) VALUES (810416897, 769567505, 2)
INSERT [dbo].[USER_ROLE] ([ID], [USER_ID], [ROLE_ID]) VALUES (1184414583, -648018082, 2)
INSERT [dbo].[USER_ROLE] ([ID], [USER_ID], [ROLE_ID]) VALUES (1574348552, 1121160312, 2)
INSERT [dbo].[USER_ROLE] ([ID], [USER_ID], [ROLE_ID]) VALUES (1841308618, 744123654, 2)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [APP_ROLE_UK]    Script Date: 9/11/2021 8:19:43 PM ******/
ALTER TABLE [dbo].[APP_ROLE] ADD  CONSTRAINT [APP_ROLE_UK] UNIQUE NONCLUSTERED 
(
	[ROLE_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER INDEX [APP_ROLE_UK] ON [dbo].[APP_ROLE] DISABLE
GO
/****** Object:  Index [USER_ROLE_UK]    Script Date: 9/11/2021 8:19:43 PM ******/
ALTER TABLE [dbo].[USER_ROLE] ADD  CONSTRAINT [USER_ROLE_UK] UNIQUE NONCLUSTERED 
(
	[USER_ID] ASC,
	[ROLE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER INDEX [USER_ROLE_UK] ON [dbo].[USER_ROLE] DISABLE
GO
ALTER TABLE [dbo].[address_Book]  WITH NOCHECK ADD FOREIGN KEY([username])
REFERENCES [dbo].[accounts] ([username])
GO
ALTER TABLE [dbo].[address_Book]  WITH NOCHECK ADD FOREIGN KEY([username])
REFERENCES [dbo].[accounts] ([username])
GO
ALTER TABLE [dbo].[APP_USER]  WITH NOCHECK ADD FOREIGN KEY([USER_NAME])
REFERENCES [dbo].[accounts] ([username])
GO
ALTER TABLE [dbo].[APP_USER]  WITH NOCHECK ADD FOREIGN KEY([USER_NAME])
REFERENCES [dbo].[accounts] ([username])
GO
ALTER TABLE [dbo].[carts]  WITH CHECK ADD  CONSTRAINT [FK_cart_pet] FOREIGN KEY([idproduct])
REFERENCES [dbo].[pet] ([id])
GO
ALTER TABLE [dbo].[carts] CHECK CONSTRAINT [FK_cart_pet]
GO
ALTER TABLE [dbo].[USER_ROLE]  WITH NOCHECK ADD FOREIGN KEY([ROLE_ID])
REFERENCES [dbo].[APP_ROLE] ([ROLE_ID])
GO
ALTER TABLE [dbo].[USER_ROLE]  WITH NOCHECK ADD FOREIGN KEY([ROLE_ID])
REFERENCES [dbo].[APP_ROLE] ([ROLE_ID])
GO
ALTER TABLE [dbo].[USER_ROLE]  WITH NOCHECK ADD FOREIGN KEY([USER_ID])
REFERENCES [dbo].[APP_USER] ([USER_ID])
GO
ALTER TABLE [dbo].[USER_ROLE]  WITH NOCHECK ADD FOREIGN KEY([USER_ID])
REFERENCES [dbo].[APP_USER] ([USER_ID])
GO
ALTER TABLE [dbo].[USER_ROLE]  WITH NOCHECK ADD  CONSTRAINT [USER_ROLE_FK1] FOREIGN KEY([USER_ID])
REFERENCES [dbo].[APP_USER] ([USER_ID])
GO
ALTER TABLE [dbo].[USER_ROLE] NOCHECK CONSTRAINT [USER_ROLE_FK1]
GO
ALTER TABLE [dbo].[USER_ROLE]  WITH NOCHECK ADD  CONSTRAINT [USER_ROLE_FK2] FOREIGN KEY([ROLE_ID])
REFERENCES [dbo].[APP_ROLE] ([ROLE_ID])
GO
ALTER TABLE [dbo].[USER_ROLE] NOCHECK CONSTRAINT [USER_ROLE_FK2]
GO
