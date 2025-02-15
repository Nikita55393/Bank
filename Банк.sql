USE [Bank]
GO
/****** Object:  Table [dbo].[BankAccount$]    Script Date: 29.02.2024 13:51:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankAccount$](
	[NumberAccount] [float] NOT NULL,
	[DateOpen] [date] NULL,
	[Balance] [float] NULL,
	[Type] [int] NULL,
 CONSTRAINT [PK_BankAccount$] PRIMARY KEY CLUSTERED 
(
	[NumberAccount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contract$]    Script Date: 29.02.2024 13:51:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contract$](
	[IDContract] [int] IDENTITY(26,1) NOT NULL,
	[NumberAccount] [float] NULL,
	[IDUser] [int] NULL,
	[Amount] [float] NULL,
	[Period] [int] NULL,
	[ExpirationDate] [date] NULL,
	[Percet] [float] NULL,
 CONSTRAINT [PK_Contract$] PRIMARY KEY CLUSTERED 
(
	[IDContract] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[History$]    Script Date: 29.02.2024 13:51:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[History$](
	[IDOperation] [int] IDENTITY(41,1) NOT NULL,
	[TypeOperation] [int] NULL,
	[DateTime] [datetime] NULL,
	[Amount] [float] NULL,
	[NumberAccount] [float] NULL,
 CONSTRAINT [PK_History$] PRIMARY KEY CLUSTERED 
(
	[IDOperation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Passport$]    Script Date: 29.02.2024 13:51:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Passport$](
	[Number_Series] [float] NOT NULL,
	[Adress] [nvarchar](100) NULL,
	[DateOfIssue] [date] NULL,
	[Issued] [nvarchar](100) NULL,
	[DateOfBirth] [date] NULL,
	[PlaceOfBirth] [nvarchar](100) NULL,
 CONSTRAINT [PK_Passport$] PRIMARY KEY CLUSTERED 
(
	[Number_Series] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type$]    Script Date: 29.02.2024 13:51:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type$](
	[IDType] [int] IDENTITY(4,1) NOT NULL,
	[NameType] [nvarchar](50) NULL,
 CONSTRAINT [PK_Type$] PRIMARY KEY CLUSTERED 
(
	[IDType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOperation$]    Script Date: 29.02.2024 13:51:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOperation$](
	[IDTypeOperation] [int] IDENTITY(3,1) NOT NULL,
	[NameOperation] [nvarchar](50) NULL,
 CONSTRAINT [PK_TypeOperation$] PRIMARY KEY CLUSTERED 
(
	[IDTypeOperation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User$]    Script Date: 29.02.2024 13:51:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User$](
	[IDUser] [int] NOT NULL,
	[Login] [float] NULL,
	[Password] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Surname] [nvarchar](50) NULL,
	[Patronymic] [nvarchar](50) NULL,
	[Phone] [float] NULL,
	[E-Mail] [nvarchar](50) NULL,
	[Number_Series] [float] NULL,
 CONSTRAINT [PK_User$] PRIMARY KEY CLUSTERED 
(
	[IDUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (947375, CAST(N'2023-12-14' AS Date), 100000, 4)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465986898, CAST(N'2017-07-27' AS Date), 274425.13, 2)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465986948, CAST(N'2017-08-17' AS Date), 8171.69, 2)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465986998, CAST(N'2017-06-09' AS Date), 63795.98, 2)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465987048, CAST(N'2017-08-16' AS Date), 512933.89, 3)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465987098, CAST(N'2017-08-10' AS Date), 73263.89, 3)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465987148, CAST(N'2018-01-01' AS Date), 763774.34, 2)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465987198, CAST(N'2017-09-05' AS Date), 54427.29, 1)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465987248, CAST(N'2018-03-05' AS Date), 29173.36, 1)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465987298, CAST(N'2017-09-04' AS Date), 25469.09, 3)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465987348, CAST(N'2017-10-20' AS Date), 52846.89, 1)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465987398, CAST(N'2018-03-23' AS Date), 49382.92, 3)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465987448, CAST(N'2017-05-30' AS Date), 94527.5, 2)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465987498, CAST(N'2018-01-04' AS Date), 98093.11, 1)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465987548, CAST(N'2017-11-08' AS Date), 28868.08, 2)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465987598, CAST(N'2017-09-07' AS Date), 95517.95, 2)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465987648, CAST(N'2017-09-11' AS Date), 45680.02, 2)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465987698, CAST(N'2018-03-06' AS Date), 226214.67, 2)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465987748, CAST(N'2017-10-19' AS Date), 960290.92, 2)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465987798, CAST(N'2017-09-18' AS Date), 84092.25, 1)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465987848, CAST(N'2017-05-17' AS Date), 55103.53, 3)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465987898, CAST(N'2017-06-06' AS Date), 69675.67, 1)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465987948, CAST(N'2017-06-23' AS Date), 30578.58, 3)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465987998, CAST(N'2017-10-25' AS Date), 74349.78, 3)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465988048, CAST(N'2017-08-08' AS Date), 19419.86, 3)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465988098, CAST(N'2017-11-15' AS Date), 870368.31, 3)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465988148, CAST(N'2017-09-27' AS Date), 919979.74, 2)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465988198, CAST(N'2018-02-16' AS Date), 405047.48, 3)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465988248, CAST(N'2018-02-05' AS Date), 979076.86, 2)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465988298, CAST(N'2018-02-08' AS Date), 680618.21, 1)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465988348, CAST(N'2017-03-24' AS Date), 929954.87, 3)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465988398, CAST(N'2017-11-13' AS Date), 55257.66, 2)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465988448, CAST(N'2018-02-27' AS Date), 86201.13, 3)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465988498, CAST(N'2017-06-30' AS Date), 65878.24, 2)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465988548, CAST(N'2017-06-15' AS Date), 22562.29, 1)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465988598, CAST(N'2017-10-16' AS Date), 62945.19, 3)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465988648, CAST(N'2017-09-12' AS Date), 70773.29, 2)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465988698, CAST(N'2017-04-19' AS Date), 42070.02, 3)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465988748, CAST(N'2017-11-07' AS Date), 21932.71, 1)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465988798, CAST(N'2017-06-19' AS Date), 4765.38, 1)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465988848, CAST(N'2017-04-21' AS Date), 29367.11, 3)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465988898, CAST(N'2017-12-26' AS Date), 96385.93, 3)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465988948, CAST(N'2017-04-06' AS Date), 9113.2, 1)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465988998, CAST(N'2017-09-22' AS Date), 5815.74, 2)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465989048, CAST(N'2017-06-22' AS Date), 26922.7, 2)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465989098, CAST(N'2017-09-20' AS Date), 83449.99, 3)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465989148, CAST(N'2017-10-30' AS Date), 73140.58, 3)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465989198, CAST(N'2018-03-20' AS Date), 20087.88, 1)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465989248, CAST(N'2018-01-30' AS Date), 96037.7, 1)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465989298, CAST(N'2017-05-25' AS Date), 69828.51, 2)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465989348, CAST(N'2017-12-29' AS Date), 97814.04, 3)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465989398, CAST(N'2017-06-16' AS Date), 87722.01, 3)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465989448, CAST(N'2017-06-29' AS Date), 29980.55, 2)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465989498, CAST(N'2018-01-29' AS Date), 4936.04, 2)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465989548, CAST(N'2018-03-16' AS Date), 77326.57, 3)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465989598, CAST(N'2018-01-05' AS Date), 79631.95, 3)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465989648, CAST(N'2017-08-02' AS Date), 69382.8, 3)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465989698, CAST(N'2017-05-23' AS Date), 53609.02, 3)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465989748, CAST(N'2017-10-11' AS Date), 40371.4, 2)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465989798, CAST(N'2018-03-19' AS Date), 47.87, 1)
INSERT [dbo].[BankAccount$] ([NumberAccount], [DateOpen], [Balance], [Type]) VALUES (7465989848, CAST(N'2018-01-24' AS Date), 14421.26, 3)
GO
SET IDENTITY_INSERT [dbo].[Contract$] ON 

INSERT [dbo].[Contract$] ([IDContract], [NumberAccount], [IDUser], [Amount], [Period], [ExpirationDate], [Percet]) VALUES (1, 7465987048, 4, 9243406, 514, CAST(N'2018-12-23' AS Date), 5.45)
INSERT [dbo].[Contract$] ([IDContract], [NumberAccount], [IDUser], [Amount], [Period], [ExpirationDate], [Percet]) VALUES (2, 7465987098, 10, 9262312, 1806, CAST(N'2022-07-28' AS Date), 7.01)
INSERT [dbo].[Contract$] ([IDContract], [NumberAccount], [IDUser], [Amount], [Period], [ExpirationDate], [Percet]) VALUES (3, 7465987298, 13, 7674776, 538, CAST(N'2018-11-29' AS Date), 7.24)
INSERT [dbo].[Contract$] ([IDContract], [NumberAccount], [IDUser], [Amount], [Period], [ExpirationDate], [Percet]) VALUES (4, 7465987398, 12, 4300921, 1158, CAST(N'2020-10-17' AS Date), 7.09)
INSERT [dbo].[Contract$] ([IDContract], [NumberAccount], [IDUser], [Amount], [Period], [ExpirationDate], [Percet]) VALUES (5, 7465987848, 21, 5930501, 1404, CAST(N'2021-06-14' AS Date), 7.72)
INSERT [dbo].[Contract$] ([IDContract], [NumberAccount], [IDUser], [Amount], [Period], [ExpirationDate], [Percet]) VALUES (6, 7465987948, 50, 8768245, 1757, CAST(N'2022-10-24' AS Date), 5.26)
INSERT [dbo].[Contract$] ([IDContract], [NumberAccount], [IDUser], [Amount], [Period], [ExpirationDate], [Percet]) VALUES (7, 7465987998, 6, 9636413, 1415, CAST(N'2021-07-21' AS Date), 7.91)
INSERT [dbo].[Contract$] ([IDContract], [NumberAccount], [IDUser], [Amount], [Period], [ExpirationDate], [Percet]) VALUES (8, 7465988048, 34, 4846960, 1776, CAST(N'2023-01-14' AS Date), 7.66)
INSERT [dbo].[Contract$] ([IDContract], [NumberAccount], [IDUser], [Amount], [Period], [ExpirationDate], [Percet]) VALUES (9, 7465988098, 3, 2264676, 1292, CAST(N'2021-03-19' AS Date), 5.02)
INSERT [dbo].[Contract$] ([IDContract], [NumberAccount], [IDUser], [Amount], [Period], [ExpirationDate], [Percet]) VALUES (10, 7465988198, 9, 3246609, 850, CAST(N'2020-02-17' AS Date), 6.07)
INSERT [dbo].[Contract$] ([IDContract], [NumberAccount], [IDUser], [Amount], [Period], [ExpirationDate], [Percet]) VALUES (11, 7465988348, 8, 8065098, 1233, CAST(N'2021-08-07' AS Date), 5.3)
INSERT [dbo].[Contract$] ([IDContract], [NumberAccount], [IDUser], [Amount], [Period], [ExpirationDate], [Percet]) VALUES (12, 7465988448, 30, 2503709, 1491, CAST(N'2021-06-29' AS Date), 7.61)
INSERT [dbo].[Contract$] ([IDContract], [NumberAccount], [IDUser], [Amount], [Period], [ExpirationDate], [Percet]) VALUES (13, 7465988598, 40, 2063445, 1525, CAST(N'2022-03-09' AS Date), 5.66)
INSERT [dbo].[Contract$] ([IDContract], [NumberAccount], [IDUser], [Amount], [Period], [ExpirationDate], [Percet]) VALUES (14, 7465988698, 38, 3887739, 361, CAST(N'2018-11-04' AS Date), 7.95)
INSERT [dbo].[Contract$] ([IDContract], [NumberAccount], [IDUser], [Amount], [Period], [ExpirationDate], [Percet]) VALUES (15, 7465988848, 36, 1648472, 272, CAST(N'2018-06-06' AS Date), 7.74)
INSERT [dbo].[Contract$] ([IDContract], [NumberAccount], [IDUser], [Amount], [Period], [ExpirationDate], [Percet]) VALUES (16, 7465988898, 41, 4565138, 608, CAST(N'2019-05-12' AS Date), 6.85)
INSERT [dbo].[Contract$] ([IDContract], [NumberAccount], [IDUser], [Amount], [Period], [ExpirationDate], [Percet]) VALUES (17, 7465989098, 47, 3207607, 530, CAST(N'2019-08-18' AS Date), 5.8)
INSERT [dbo].[Contract$] ([IDContract], [NumberAccount], [IDUser], [Amount], [Period], [ExpirationDate], [Percet]) VALUES (18, 7465989148, 20, 1730227, 1784, CAST(N'2022-09-07' AS Date), 7.86)
INSERT [dbo].[Contract$] ([IDContract], [NumberAccount], [IDUser], [Amount], [Period], [ExpirationDate], [Percet]) VALUES (19, 7465989348, 44, 6069953, 646, CAST(N'2019-06-26' AS Date), 7.14)
INSERT [dbo].[Contract$] ([IDContract], [NumberAccount], [IDUser], [Amount], [Period], [ExpirationDate], [Percet]) VALUES (20, 7465989398, 39, 8073914, 1003, CAST(N'2020-02-14' AS Date), 6.48)
INSERT [dbo].[Contract$] ([IDContract], [NumberAccount], [IDUser], [Amount], [Period], [ExpirationDate], [Percet]) VALUES (21, 7465989548, 47, 6581384, 732, CAST(N'2019-06-08' AS Date), 5.48)
INSERT [dbo].[Contract$] ([IDContract], [NumberAccount], [IDUser], [Amount], [Period], [ExpirationDate], [Percet]) VALUES (22, 7465989598, 41, 4124064, 1799, CAST(N'2022-05-27' AS Date), 7.66)
INSERT [dbo].[Contract$] ([IDContract], [NumberAccount], [IDUser], [Amount], [Period], [ExpirationDate], [Percet]) VALUES (23, 7465989648, 23, 6078127, 1774, CAST(N'2022-09-03' AS Date), 5.97)
INSERT [dbo].[Contract$] ([IDContract], [NumberAccount], [IDUser], [Amount], [Period], [ExpirationDate], [Percet]) VALUES (24, 7465989698, 43, 8432956, 1007, CAST(N'2020-05-11' AS Date), 7.18)
INSERT [dbo].[Contract$] ([IDContract], [NumberAccount], [IDUser], [Amount], [Period], [ExpirationDate], [Percet]) VALUES (25, 7465989848, 27, 7252815, 1482, CAST(N'2021-12-06' AS Date), 7.83)
INSERT [dbo].[Contract$] ([IDContract], [NumberAccount], [IDUser], [Amount], [Period], [ExpirationDate], [Percet]) VALUES (26, 947375, 1, 100000, 180, CAST(N'2024-06-11' AS Date), 8)
SET IDENTITY_INSERT [dbo].[Contract$] OFF
GO
SET IDENTITY_INSERT [dbo].[History$] ON 

INSERT [dbo].[History$] ([IDOperation], [TypeOperation], [DateTime], [Amount], [NumberAccount]) VALUES (1, 1, CAST(N'2018-04-07T10:20:00.000' AS DateTime), 3084, 7465986898)
INSERT [dbo].[History$] ([IDOperation], [TypeOperation], [DateTime], [Amount], [NumberAccount]) VALUES (2, 2, CAST(N'2018-04-11T16:38:00.000' AS DateTime), 5600, 7465986948)
INSERT [dbo].[History$] ([IDOperation], [TypeOperation], [DateTime], [Amount], [NumberAccount]) VALUES (3, 1, CAST(N'2018-03-24T10:34:00.000' AS DateTime), 338, 7465986898)
INSERT [dbo].[History$] ([IDOperation], [TypeOperation], [DateTime], [Amount], [NumberAccount]) VALUES (4, 1, CAST(N'2018-04-10T09:10:00.000' AS DateTime), 3559, 7465987448)
INSERT [dbo].[History$] ([IDOperation], [TypeOperation], [DateTime], [Amount], [NumberAccount]) VALUES (5, 1, CAST(N'2018-04-03T08:00:00.000' AS DateTime), 2267, 7465987198)
INSERT [dbo].[History$] ([IDOperation], [TypeOperation], [DateTime], [Amount], [NumberAccount]) VALUES (6, 2, CAST(N'2018-03-29T13:50:00.000' AS DateTime), 5700, 7465986998)
INSERT [dbo].[History$] ([IDOperation], [TypeOperation], [DateTime], [Amount], [NumberAccount]) VALUES (7, 2, CAST(N'2018-04-04T11:23:00.000' AS DateTime), 8700, 7465987048)
INSERT [dbo].[History$] ([IDOperation], [TypeOperation], [DateTime], [Amount], [NumberAccount]) VALUES (8, 2, CAST(N'2018-04-09T16:24:00.000' AS DateTime), 5550, 7465987098)
INSERT [dbo].[History$] ([IDOperation], [TypeOperation], [DateTime], [Amount], [NumberAccount]) VALUES (9, 1, CAST(N'2018-03-28T10:27:00.000' AS DateTime), 820, 7465987148)
INSERT [dbo].[History$] ([IDOperation], [TypeOperation], [DateTime], [Amount], [NumberAccount]) VALUES (10, 1, CAST(N'2018-04-06T13:22:00.000' AS DateTime), 7476, 7465987398)
INSERT [dbo].[History$] ([IDOperation], [TypeOperation], [DateTime], [Amount], [NumberAccount]) VALUES (11, 2, CAST(N'2018-03-29T08:21:00.000' AS DateTime), 3600, 7465987248)
INSERT [dbo].[History$] ([IDOperation], [TypeOperation], [DateTime], [Amount], [NumberAccount]) VALUES (12, 1, CAST(N'2018-04-06T12:05:00.000' AS DateTime), 9267, 7465987248)
INSERT [dbo].[History$] ([IDOperation], [TypeOperation], [DateTime], [Amount], [NumberAccount]) VALUES (13, 1, CAST(N'2018-03-24T11:30:00.000' AS DateTime), 6321, 7465987298)
INSERT [dbo].[History$] ([IDOperation], [TypeOperation], [DateTime], [Amount], [NumberAccount]) VALUES (14, 1, CAST(N'2018-03-30T14:39:00.000' AS DateTime), 5949, 7465987348)
INSERT [dbo].[History$] ([IDOperation], [TypeOperation], [DateTime], [Amount], [NumberAccount]) VALUES (15, 2, CAST(N'2018-03-26T08:56:00.000' AS DateTime), 8500, 7465987398)
INSERT [dbo].[History$] ([IDOperation], [TypeOperation], [DateTime], [Amount], [NumberAccount]) VALUES (16, 2, CAST(N'2018-04-09T14:18:00.000' AS DateTime), 6050, 7465987848)
INSERT [dbo].[History$] ([IDOperation], [TypeOperation], [DateTime], [Amount], [NumberAccount]) VALUES (17, 2, CAST(N'2018-04-10T15:21:00.000' AS DateTime), 8200, 7465987498)
INSERT [dbo].[History$] ([IDOperation], [TypeOperation], [DateTime], [Amount], [NumberAccount]) VALUES (18, 1, CAST(N'2018-03-27T12:33:00.000' AS DateTime), 5013, 7465987548)
INSERT [dbo].[History$] ([IDOperation], [TypeOperation], [DateTime], [Amount], [NumberAccount]) VALUES (19, 1, CAST(N'2018-04-02T14:11:00.000' AS DateTime), 8571, 7465987598)
INSERT [dbo].[History$] ([IDOperation], [TypeOperation], [DateTime], [Amount], [NumberAccount]) VALUES (20, 1, CAST(N'2018-03-25T09:03:00.000' AS DateTime), 9569, 7465987648)
INSERT [dbo].[History$] ([IDOperation], [TypeOperation], [DateTime], [Amount], [NumberAccount]) VALUES (21, 2, CAST(N'2018-04-09T12:40:00.000' AS DateTime), 7900, 7465987698)
INSERT [dbo].[History$] ([IDOperation], [TypeOperation], [DateTime], [Amount], [NumberAccount]) VALUES (22, 2, CAST(N'2018-04-10T15:28:00.000' AS DateTime), 1700, 7465987748)
INSERT [dbo].[History$] ([IDOperation], [TypeOperation], [DateTime], [Amount], [NumberAccount]) VALUES (23, 1, CAST(N'2018-03-29T12:19:00.000' AS DateTime), 7441, 7465987798)
INSERT [dbo].[History$] ([IDOperation], [TypeOperation], [DateTime], [Amount], [NumberAccount]) VALUES (24, 2, CAST(N'2018-03-27T08:07:00.000' AS DateTime), 9750, 7465987848)
INSERT [dbo].[History$] ([IDOperation], [TypeOperation], [DateTime], [Amount], [NumberAccount]) VALUES (25, 1, CAST(N'2018-03-25T15:00:00.000' AS DateTime), 1112, 7465987898)
INSERT [dbo].[History$] ([IDOperation], [TypeOperation], [DateTime], [Amount], [NumberAccount]) VALUES (26, 2, CAST(N'2018-04-03T13:57:00.000' AS DateTime), 9400, 7465987948)
INSERT [dbo].[History$] ([IDOperation], [TypeOperation], [DateTime], [Amount], [NumberAccount]) VALUES (27, 2, CAST(N'2018-03-24T09:45:00.000' AS DateTime), 4550, 7465987998)
INSERT [dbo].[History$] ([IDOperation], [TypeOperation], [DateTime], [Amount], [NumberAccount]) VALUES (28, 2, CAST(N'2018-03-28T10:13:00.000' AS DateTime), 300, 7465988048)
INSERT [dbo].[History$] ([IDOperation], [TypeOperation], [DateTime], [Amount], [NumberAccount]) VALUES (29, 1, CAST(N'2018-03-30T16:31:00.000' AS DateTime), 8414, 7465988098)
INSERT [dbo].[History$] ([IDOperation], [TypeOperation], [DateTime], [Amount], [NumberAccount]) VALUES (30, 1, CAST(N'2018-04-07T09:17:00.000' AS DateTime), 474, 7465988148)
INSERT [dbo].[History$] ([IDOperation], [TypeOperation], [DateTime], [Amount], [NumberAccount]) VALUES (31, 2, CAST(N'2018-04-05T11:44:00.000' AS DateTime), 7400, 7465988198)
INSERT [dbo].[History$] ([IDOperation], [TypeOperation], [DateTime], [Amount], [NumberAccount]) VALUES (32, 1, CAST(N'2018-04-09T12:47:00.000' AS DateTime), 6955, 7465988248)
INSERT [dbo].[History$] ([IDOperation], [TypeOperation], [DateTime], [Amount], [NumberAccount]) VALUES (33, 2, CAST(N'2018-03-24T11:02:00.000' AS DateTime), 1000, 7465988298)
INSERT [dbo].[History$] ([IDOperation], [TypeOperation], [DateTime], [Amount], [NumberAccount]) VALUES (34, 2, CAST(N'2018-04-08T15:42:00.000' AS DateTime), 9200, 7465988348)
INSERT [dbo].[History$] ([IDOperation], [TypeOperation], [DateTime], [Amount], [NumberAccount]) VALUES (35, 1, CAST(N'2018-04-07T11:09:00.000' AS DateTime), 9254, 7465988398)
INSERT [dbo].[History$] ([IDOperation], [TypeOperation], [DateTime], [Amount], [NumberAccount]) VALUES (36, 2, CAST(N'2018-03-27T15:49:00.000' AS DateTime), 9800, 7465988448)
INSERT [dbo].[History$] ([IDOperation], [TypeOperation], [DateTime], [Amount], [NumberAccount]) VALUES (37, 2, CAST(N'2018-03-25T09:31:00.000' AS DateTime), 6000, 7465988498)
INSERT [dbo].[History$] ([IDOperation], [TypeOperation], [DateTime], [Amount], [NumberAccount]) VALUES (38, 1, CAST(N'2018-04-01T11:51:00.000' AS DateTime), 7754, 7465988548)
INSERT [dbo].[History$] ([IDOperation], [TypeOperation], [DateTime], [Amount], [NumberAccount]) VALUES (39, 2, CAST(N'2018-04-04T08:28:00.000' AS DateTime), 4200, 7465988398)
INSERT [dbo].[History$] ([IDOperation], [TypeOperation], [DateTime], [Amount], [NumberAccount]) VALUES (40, 1, CAST(N'2018-03-28T10:48:00.000' AS DateTime), 8257, 7465987848)
SET IDENTITY_INSERT [dbo].[History$] OFF
GO
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (1259468520, N'Андроньевская площадь, дом 7, квартира 36', CAST(N'2013-08-15' AS Date), N'Отделение по району Левобережный ОУФМС России по городу Москве в САО', CAST(N'1983-07-26' AS Date), N'Гор. Благовещенск Амурской области')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (1328745956, N'Тамбовская улица, дом 8, квартира 15', CAST(N'2012-03-23' AS Date), N'Отделение по району Бутырский ОУФМС России по городу Москве в СВАО', CAST(N'1999-06-21' AS Date), N'Гор. Дмитров')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (1346497256, N'Сурский проезд, дом 3, квартира 28', CAST(N'2013-11-12' AS Date), N'Отделение по району Нагорный ОУФМС России по городу Москве в ЮАО', CAST(N'1994-02-08' AS Date), N'Гор. Заречный Свердловской области')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (1348794682, N'Банный проезд, дом 5, квартира 132', CAST(N'2009-10-22' AS Date), N'Отделение по району Нагатино-Садовники ОУФМС России по городу Москве в ЮАО', CAST(N'1980-12-18' AS Date), N'Гор. Москва')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (1359546798, N'Варшавское шоссе, дом 168, квартира 42', CAST(N'2003-01-07' AS Date), N'Отделение по району Восточное Измайлово ОУФМС России по городу Москве в ВАО', CAST(N'1998-02-25' AS Date), N'Гор. Омск')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (1380986458, N'Улица Татьяны Макаровой, дом 7, квартира 36', CAST(N'2014-12-14' AS Date), N'Отделение по району Академический ОУФМС России по городу Москве в ЮЗАО', CAST(N'1998-10-15' AS Date), N'Гор. Киров Кировской области')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (1388698852, N'Чагинская улица, дом 2, квартира 16', CAST(N'2009-06-10' AS Date), N'Отделение по району Капотня ОУФМС России по городу Москве в ЮВАО', CAST(N'1992-11-11' AS Date), N'Г. Орёл')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (2156164582, N'Улица Строителей, дом 74, квартира 175', CAST(N'2012-01-10' AS Date), N'Отделение по району Хорошёвский ОУФМС России по городу Москве в САО', CAST(N'1985-10-08' AS Date), N'Г. Тюмень')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (2326789582, N'Улица Судакова, дом 13, квартира 198', CAST(N'2015-09-28' AS Date), N'Отделение по району Бабушкинский ОУФМС России по городу Москве в СВАО', CAST(N'1989-05-15' AS Date), N'Гор. Заречный Пензенской области')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (2354543258, N'Егорьевская улица, дом 42, квартира 213', CAST(N'2017-11-15' AS Date), N'Отделение по району Новокосино ОУФМС России по городу Москве в ВАО', CAST(N'1986-02-05' AS Date), N'Гор. Лобня Московской обл.')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (2368369785, N'Улица Вавилова, дом 42, квартира 128', CAST(N'2007-08-03' AS Date), N'Отделение по району Богородское ОУФМС России по городу Москве в ВАО', CAST(N'1987-01-22' AS Date), N'Г. Челябинск')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (2376752346, N'Давыдковская улица, дом 74, квартира 132', CAST(N'2010-06-17' AS Date), N'Отделение по району Ивановское ОУФМС России по городу Москве в ВАО', CAST(N'1994-02-15' AS Date), N'Гор. Советск Тульской области')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (2383659798, N'Шелепихинское шоссе, дом 165, квартира 82', CAST(N'2016-03-02' AS Date), N'Отделение по району Марьинский парк ОУФМС России по городу Москве в ЮВАО', CAST(N'1978-09-29' AS Date), N'Гор. Озёрск Челябинской области')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (2386258645, N'Фруктовая улица, дом 6, квартира 53', CAST(N'2005-05-16' AS Date), N'Отделение по району Гольяново ОУФМС России по городу Москве в ВАО', CAST(N'1997-09-09' AS Date), N'Гор. Уфа')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (2394743657, N'Улица Улофа Пальме, дом 6, квартира 65', CAST(N'2003-11-25' AS Date), N'Отделение по району Северное Медведково ОУФМС России по городу Москве в СВАО', CAST(N'1998-12-03' AS Date), N'Гор. Екатеринбург')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (2525764513, N'Сумской проезд, дом 3, корп. 1, квартира 177', CAST(N'2004-04-14' AS Date), N'Отделение по району Донской ОУФМС России по городу Москве в ЮАО', CAST(N'1974-04-19' AS Date), N'Гор. Москва')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (2597187562, N'Бескудниковский проезд, дом 9, квартира 74', CAST(N'2016-03-16' AS Date), N'Отделение по району Чертаново Северное ОУФМС России по городу Москве в ЮАО', CAST(N'1985-02-22' AS Date), N'Гор. Москва')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (2966956420, N'Улица Фадеева, дом 3, квартира 115', CAST(N'2017-11-24' AS Date), N'Отделение по району Ярославский ОУФМС России по городу Москве в СВАО', CAST(N'1984-11-13' AS Date), N'Гор. Самара')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (2986213025, N'Бурцевская улица, дом 36, корп. 3, квартира 45', CAST(N'2016-01-05' AS Date), N'Отделение по району Южное Медведково ОУФМС России по городу Москве в СВАО', CAST(N'1998-08-11' AS Date), N'Гор. Казань')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (3057275264, N'Улица Цандера, дом 62, квартира 123', CAST(N'2007-11-06' AS Date), N'Отделение по району Выхино ОУФМС России по городу Москве в ЮВАО', CAST(N'1989-10-24' AS Date), N'Гор. Заречный Пензенской области')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (3232201265, N'Площадь Белы Куна, дом 32, корп. 2, квартира 42', CAST(N'2005-10-03' AS Date), N'Отделение по району Бибирево ОУФМС России по городу Москве в СВАО', CAST(N'1973-08-17' AS Date), N'Г. Орёл')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (3345659887, N'Северянинский проезд, дом 19, квартира 94', CAST(N'2000-11-23' AS Date), N'Отделение по району Нижегородский ОУФМС России по городу Москве в ЮВАО', CAST(N'1995-09-28' AS Date), N'Гор. Уфа')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (3685597875, N'Улица Старый Гай, дом 45, квартира 49', CAST(N'2004-07-25' AS Date), N'Отделение по району Тимирязевский ОУФМС России по городу Москве в САО', CAST(N'1981-11-20' AS Date), N'Гор. Ставрополь')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (4511267981, N'Улица 1905 Года, дом 1, квартира 56', CAST(N'2012-03-25' AS Date), N'Отделение по району Таганский ОУФМС России по городу Москве в ЦАО', CAST(N'1997-06-13' AS Date), N'Гор. Киров Калужской области')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (4513989722, N'Площадь Соловецких Юнг, дом № 25, квартира 8', CAST(N'2014-12-01' AS Date), N'Отделение по району Арбат ОУФМС России по городу Москве в ЦАО', CAST(N'1987-02-16' AS Date), N'Гор. Приморск Калининградской обл.')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (4523589923, N'Алтуфьевское шоссе, дом 78, квартира 63', CAST(N'2010-01-30' AS Date), N'Отделение по району Бескудниковский ОУФМС России по городу Москве в САО', CAST(N'1970-09-10' AS Date), N'Гор. Краснознаменск Калининградской обл.')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (4653498532, N'Бабаевская улица, дом 2, корп. 3, квартира 74', CAST(N'2003-09-05' AS Date), N'Отделение по району Ховрино ОУФМС России по городу Москве в САО', CAST(N'1977-03-01' AS Date), N'Гор. Лобня Московской обл.')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (5582859856, N'Саратовская улица, дом 6, квартира 28', CAST(N'2014-08-11' AS Date), N'Отделение по району Лефортово ОУФМС России по городу Москве в ЮВАО', CAST(N'1972-10-25' AS Date), N'Гор. Дмитров')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (5985213577, N'Хвалынский бульвар, дом 65, квартира 32', CAST(N'2002-09-11' AS Date), N'Отделение по району Метрогородок ОУФМС России по городу Москве в ВАО', CAST(N'1994-12-01' AS Date), N'Гор. Ставрополь')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (5986656963, N'Бесединский мост, дом 6, квартира 47', CAST(N'2007-12-28' AS Date), N'Отделение по району Отрадное ОУФМС России по городу Москве в СВАО', CAST(N'1988-06-07' AS Date), N'Г.  Санкт-Петербург')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (6321169845, N'Староватутинский проезд, дом 20, квартира 45', CAST(N'2009-04-29' AS Date), N'Отделение по району Коптево ОУФМС России по городу Москве в САО', CAST(N'1983-04-27' AS Date), N'Гор. Краснослободск Волгоградской обл.')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (6784989604, N'Староорловская улица, дом 12, квартира 157', CAST(N'2006-05-22' AS Date), N'Отделение по району Молжаниновский ОУФМС России по городу Москве в САО', CAST(N'1993-09-29' AS Date), N'Гор. Сергиев Посад Московской обл.')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (6795132560, N'Гаврикова улица, дом 1, квартира 95', CAST(N'2010-05-03' AS Date), N'Отделение по району Восточный ОУФМС России по городу Москве в ВАО', CAST(N'1986-04-03' AS Date), N'Г. Ростов-на-Дону')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (6892302123, N'Улица Берзарина, дом 9, квартира 85', CAST(N'2018-02-16' AS Date), N'Отделение по району Останкинский ОУФМС России по городу Москве в СВАО', CAST(N'1987-01-28' AS Date), N'Гор. Волгоград')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (7528699505, N'Хордовый проезд, дом 2, квартира 52', CAST(N'2012-01-25' AS Date), N'Отделение по району Преображенское ОУФМС России по городу Москве в ВАО', CAST(N'1990-11-30' AS Date), N'Г. Тюмень')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (7542230521, N'Улица Академика Янгеля, дом 52, корп. 2, квартира 52', CAST(N'2007-11-08' AS Date), N'Отделение по району Беговой ОУФМС России по городу Москве в САО', CAST(N'1995-03-24' AS Date), N'Гор. Красноармейск Московской обл.')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (7842132588, N'Анненская улица, дом 85, квартира 69', CAST(N'2016-10-23' AS Date), N'Отделение по району Савёловский ОУФМС России по городу Москве в САО', CAST(N'1978-10-24' AS Date), N'Гор. Советск Тульской области')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (7964154825, N'Тверской бульвар, дом 2, квартира 75', CAST(N'2002-10-10' AS Date), N'Отделение по району Свиблово ОУФМС России по городу Москве в СВАО', CAST(N'1979-04-09' AS Date), N'Гор.  Новосибирск')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (8080976431, N'Семёновский проезд, дом 31, квартира 4', CAST(N'2003-07-08' AS Date), N'Отделение по району Текстильщики ОУФМС России по городу Москве в ЮВАО', CAST(N'1970-10-28' AS Date), N'Гор. Ставрополь')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (8087321456, N'Жебрунова улица, дом 3, корп. 4, квартира 154', CAST(N'2009-02-26' AS Date), N'Отделение по району Соколиная гора ОУФМС России по городу Москве в ВАО', CAST(N'1980-07-10' AS Date), N'Гор. Никольск Вологодской области')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (8623953684, N'Устьинский проезд, дом 16, квартира 167', CAST(N'2011-04-26' AS Date), N'Отделение по району Северный ОУФМС России по городу Москве в СВАО', CAST(N'1978-01-18' AS Date), N'Гор. Москва')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (8642446852, N'Улица Чкалова, дом 34, квартира 79', CAST(N'2010-12-20' AS Date), N'Отделение по району Марьино ОУФМС России по городу Москве в ЮВАО', CAST(N'1977-01-03' AS Date), N'Гор. Москва')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (8643498536, N'Тарный проезд, дом 6, квартира 30', CAST(N'2009-05-07' AS Date), N'Отделение по району Орехово-Борисово Северное ОУФМС России по городу Москве в ЮАО', CAST(N'1988-09-07' AS Date), N'Гор. Москва')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (9731579524, N'Улица Цюрупы, дом 52, квартира 32', CAST(N'2001-03-16' AS Date), N'Отделение по району Жулебино ОУФМС России по городу Москве в ЮВАО', CAST(N'1988-08-12' AS Date), N'Гор. Озёрск Калининградской области')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (9852161662, N'3-й Автозаводский проезд, дом 9, квартира 168', CAST(N'2003-06-06' AS Date), N'Отделение по району Тверской ОУФМС России по городу Москве в ЦАО', CAST(N'1974-08-13' AS Date), N'Гор. Радужный Владимирской обл.')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (9862659874, N'Сходненский проезд, дом 10, квартира 216', CAST(N'2008-06-12' AS Date), N'Отделение по району Марфино ОУФМС России по городу Москве в СВАО', CAST(N'1988-10-31' AS Date), N'Гор. Озёрск Калининградской области')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (9865312654, N'Барабанный переулок, дом 4, корп. 5, квартира 95', CAST(N'2013-11-15' AS Date), N'Отделение по району Алексеевский ОУФМС России по городу Москве в СВАО', CAST(N'1975-05-28' AS Date), N'Гор. Никольск Вологодской области')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (23989761320, N'Славянский бульвар, дом 46, квартира 69', CAST(N'2015-10-15' AS Date), N'Отделение по району Братеево ОУФМС России по городу Москве в ЮАО', CAST(N'1996-04-29' AS Date), N'Гор. Приморск Ленинградской обл.')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (70572013456, N'Улица Шишкина, дом 40, квартира 95', CAST(N'2002-01-04' AS Date), N'Отделение по району Рязанский ОУФМС России по городу Москве в ЮВАО', CAST(N'1992-03-02' AS Date), N'Гор. Советск Тульской области')
INSERT [dbo].[Passport$] ([Number_Series], [Adress], [DateOfIssue], [Issued], [DateOfBirth], [PlaceOfBirth]) VALUES (79536478024, N'Школьная улица, дом 75, квартира 165', CAST(N'2009-08-26' AS Date), N'Отделение по району Южнопортовый ОУФМС России по городу Москве в ЮВАО', CAST(N'1985-04-15' AS Date), N'Гор. Лобня Московской обл.')
GO
SET IDENTITY_INSERT [dbo].[Type$] ON 

INSERT [dbo].[Type$] ([IDType], [NameType]) VALUES (1, N'Кредитный')
INSERT [dbo].[Type$] ([IDType], [NameType]) VALUES (2, N'Дебетовый')
INSERT [dbo].[Type$] ([IDType], [NameType]) VALUES (3, N'Депозитный')
INSERT [dbo].[Type$] ([IDType], [NameType]) VALUES (4, N'Накопительный')
SET IDENTITY_INSERT [dbo].[Type$] OFF
GO
SET IDENTITY_INSERT [dbo].[TypeOperation$] ON 

INSERT [dbo].[TypeOperation$] ([IDTypeOperation], [NameOperation]) VALUES (1, N'Снятие')
INSERT [dbo].[TypeOperation$] ([IDTypeOperation], [NameOperation]) VALUES (2, N'Пополнение')
SET IDENTITY_INSERT [dbo].[TypeOperation$] OFF
GO
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (1, 11198151, N'3QjGHM', N'Александр ', N'Смирнов', N'Иванович', 88005353535, N'smirnov@qwer.ty', 4513989722)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (2, 11198201, N'6RElM44FHBa4g5S2VJ', N'Максим ', N'Иванов', N'Петрович', 85003296574, N'ivanovmi@qwer.ty', 4511267981)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (3, 11198251, N'7vvOdp', N'Дарья', N'Кузнецова', N'Николаевна', 89004685299, N'kuzn@qwer.ty', 9852161662)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (4, 11198301, N'9OzMPyhHqTbvHMg3Y0', N'Артём', N'Соколов', N'Алексеевич', 84569852365, N'sokolov@qwer.ty', 7542230521)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (5, 11198351, N'a58JH1bxD5BN0mhfxM', N'Никита', N'Попов', N'Кириллович', 84598523675, N'popov@qwer.ty', 4523589923)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (6, 11198401, N'aJBTahvyRnOJlnl85g', N'Дмитрий', N'Лебедев', N'Анатольевич', 87596542365, N'lebedev@qwer.ty', 6321169845)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (7, 11198451, N'CiYKA519tAMlqktBk7', N'Егор ', N'Козлов', N'Александрович', 84236985642, N'kozlov@qwer.ty', 1259468520)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (8, 11198501, N'CTtpfJgrLszusmfKiS', N'Даниил', N'Новиков', N'Сергеевич', 89423015895, N'novikov@qwer.ty', 6784989604)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (9, 11198551, N'd6WYQjwinVWkTpm2xr', N'Михаил', N'Морозов', N'Павлович', 84572268745, N'morozov@qwer.ty', 7842132588)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (10, 11198601, N'egNPSVZbahCw9eGN7h', N'Андрей', N'Петров', N'Владимирович', 84215875215, N'petrov@qwer.ty', 3685597875)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (11, 11198651, N'eU1oxIwjZnfChSbMFT', N'Алексей', N'Волков', N'Романович', 88452625254, N'volkov@qwer.ty', 4653498532)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (12, 11198701, N'EzpJHEq1w1EVwXSvgO', N'Илья', N'Соловьёв', N'Константинович', 84526825526, N'soloviev@qwer.ty', 2156164582)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (13, 11198751, N'fGxtshkeKdK0qUWojz', N'Кирилл', N'Васильев', N'Владиславович', 86138420555, N'vasiliev@qwer.ty', 9865312654)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (14, 11198801, N'gdbKuitHoZddoTPucD', N'Сергей', N'Зайцев', N'Игоревич', 84654851686, N'zaycev@qwer.ty', 2326789582)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (15, 11198851, N'GgvL9nMWcyHgHyMwxY', N'Владислав', N'Павлов', N'Викторович', 85532875267, N'pavlov@qwer.ty', 9862659874)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (16, 11198901, N'GRWAnx5BgWVsvH5A57', N'Роман', N'Семёнов', N'Васильевич', 82457157525, N'semenov@qwer.ty', 3232201265)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (17, 11198951, N'hVfU4jfWLhuGKBqjKG', N'Владимир', N'Голубев', N'Петрович', 86459524585, N'golubev@qwer.ty', 1328745956)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (18, 11199001, N'HW75uK9wGv64XVj00F', N'Тимофей', N'Виноградов', N'Тимофеевич', 84572252989, N'vinogradov@qwer.ty', 6892302123)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (19, 11199051, N'iBQKgxitWVia1UcZLc', N'Матвей', N'Богданов', N'Антонович', 86482157555, N'bogdanov@qwer.ty', 5986656963)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (20, 11199101, N'Ih4bcxT0G6fYXmA7aC', N'Георгий', N'Воробьёв', N'Валерьевич', 84688822852, N'vorobiev@qwer.ty', 7964154825)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (21, 11199151, N'itRLonnM6Qx3ClPIXb', N'Николай', N'Фёдоров', N'Иванович', 86459215585, N'phedorov@qwer.ty', 2394743657)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (22, 11199201, N'J05dxx2uXzYsbFtOiz', N'Павел', N'Михайлов', N'Петрович', 84589221015, N'michailov@qwer.ty', 8623953684)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (23, 11199251, N'j1UuMqx1ntqJkif42S', N'Арсений ', N'Беляев', N'Николаевич', 85497522542, N'belyaev@qwer.ty', 2986213025)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (24, 11199301, N'jdVOqCHWxaNi6NkzSt', N'Денис', N'Тарасов', N'Алексеевич', 85485112358, N'tarasov@qwer.ty', 2966956420)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (25, 11199351, N'jFXpiR7K6sRZFLg2s1', N'Степан', N'Белов', N'Кириллович', 86596620154, N'belov@qwer.ty', 2368369785)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (26, 11199401, N'k2TVAonWmrFnYiKNiX', N'Фёдор', N'Комаров', N'Анатольевич', 82156225962, N'komarov@qwer.ty', 1359546798)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (27, 11199451, N'Kk3Qd78OhyRa4opQU7', N'Данила', N'Орлов', N'Александрович', 86520756586, N'orlov@qwer.ty', 6795132560)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (28, 11199501, N'kp7tugUy3HsKCmmtlc', N'Антон', N'Киселёв', N'Сергеевич', 87549854856, N'kisilev@qwer.ty', 2386258645)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (29, 11199551, N'L983dBgTDQ1tGerWCq', N'Константин', N'Макаров', N'Павлович', 84689522545, N'makarov@qwer.ty', 2376752346)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (30, 11199601, N'LhS2dykZ2OTAscYf1g', N'Глеб', N'Андреев', N'Владимирович', 85498659855, N'andreev@qwer.ty', 5985213577)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (31, 11199651, N'M0JgTAhYpTmWUErWm7', N'Ярослав', N'Ковалёв', N'Романович', 82487628982, N'kovalev@qwer.ty', 2354543258)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (32, 11199701, N'm6KjH5EZqxSkNqv1bk', N'Григорий', N'Ильин', N'Константинович', 82598525558, N'ilin@qwer.ty', 7528699505)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (33, 11199751, NULL, N'Игорь', N'Гусев', N'Владиславович', 82265525855, N'gusev@qwer.ty', 8087321456)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (34, 11199801, N'mcqGZcEu3uORGiX3gw', N'Евгений', N'Титов', N'Игоревич', 87897956626, N'titov@qwer.ty', 3057275264)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (35, 11199851, N'n06XQfr9xIglyRxoBw', N'Тимур', N'Кузьмин', N'Викторович', 82058220820, N'kuzmin@qwer.ty', 9731579524)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (36, 11199901, N'O8NmOA27AH5lrD7pck', N'Руслан', N'Кудрявцев', N'Васильевич', 81358622258, N'kudryavcev@qwer.ty', 1388698852)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (37, 11199951, N'o9ReQIVwl7dO4xXo8A', N'Пётр', N'Баранов', N'Петрович', 83524988562, N'baranov@qwer.ty', 5582859856)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (38, 11200001, N'ot2V54rFnT3FZa6ken', N'Олег', N'Куликов', N'Тимофеевич', 89756982585, N'kulikov@qwer.ty', 8642446852)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (39, 11200051, N'Yt9CfHzuIzKd1QtbGQ', N'Вадим', N'Алексеев', N'Антонович', 82475285598, N'alekseev@qwer.ty', 2383659798)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (40, 11200101, N'pGoOH61p8NM6LfEmAT', N'Василий', N'Степанов', N'Валерьевич', 81418569894, N'stepanov@qwer.ty', 3345659887)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (41, 11200151, N'pRPYLY0fJYyUw9OCiY', N'Вячеслав', N'Яковлев', N'Иванович', 86245225745, N'yakovlev@qwer.ty', 70572013456)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (42, 11200201, N'PrwWUvnFbwJ6JBgGiU', N'Виктор', N'Сорокин', N'Петрович', 84575298740, N'sorokin@qwer.ty', 8080976431)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (43, 11200251, N'pvNJlnOJBrGltsZLXQ', N'Юрий', N'Сергеев', N'Алексеевич', 85082588625, N'sergeev@qwer.ty', 79536478024)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (44, 11200301, N'PY2HtuVHtJ46zA7kkO', N'Артемий', N'Романов', N'Кириллович', 82862078528, N'romanov@qwer.ty', 23989761320)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (45, 11200351, N'qDsF9DRzfIBoa9sKHp', N'Леонид', N'Захаров', N'Анатольевич', 84579652112, N'zaharov@qwer.ty', 2525764513)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (46, 11200401, N'QjkB8vTJLKhXxLF84Q', N'Давид', N'Борисов', N'Александрович', 89564628528, N'borisov@qwer.ty', 1348794682)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (47, 11200451, N'qqFHTtDNu06HVD6RWS', N'Марк', N'Королёв', N'Сергеевич', 87952826852, N'korolev@qwer.ty', 1346497256)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (48, 11200501, N'qt7fm17taYOjWQmrPD', N'Лев', N'Герасимов', N'Павлович', 89752368520, N'gerasimov@qwer.ty', 8643498536)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (49, 11200551, N'R8NOISmTE1Fv2LWNPU', N'Семён', N'Пономарёв', N'Владимирович', 87525878556, N'ponomarev@qwer.ty', 2597187562)
INSERT [dbo].[User$] ([IDUser], [Login], [Password], [Name], [Surname], [Patronymic], [Phone], [E-Mail], [Number_Series]) VALUES (50, 11200601, N'RczPSf3qZx6DRvXhzs', N'Артур', N'Григорьев', N'Романович', 85274163412, N'grigoriev@qwer.ty', 1380986458)
GO
ALTER TABLE [dbo].[BankAccount$]  WITH CHECK ADD  CONSTRAINT [FK_BankAccount$_Type$] FOREIGN KEY([Type])
REFERENCES [dbo].[Type$] ([IDType])
GO
ALTER TABLE [dbo].[BankAccount$] CHECK CONSTRAINT [FK_BankAccount$_Type$]
GO
ALTER TABLE [dbo].[Contract$]  WITH CHECK ADD  CONSTRAINT [FK_Contract$_BankAccount$] FOREIGN KEY([NumberAccount])
REFERENCES [dbo].[BankAccount$] ([NumberAccount])
GO
ALTER TABLE [dbo].[Contract$] CHECK CONSTRAINT [FK_Contract$_BankAccount$]
GO
ALTER TABLE [dbo].[Contract$]  WITH CHECK ADD  CONSTRAINT [FK_Contract$_User$] FOREIGN KEY([IDUser])
REFERENCES [dbo].[User$] ([IDUser])
GO
ALTER TABLE [dbo].[Contract$] CHECK CONSTRAINT [FK_Contract$_User$]
GO
ALTER TABLE [dbo].[History$]  WITH CHECK ADD  CONSTRAINT [FK_History$_BankAccount$] FOREIGN KEY([NumberAccount])
REFERENCES [dbo].[BankAccount$] ([NumberAccount])
GO
ALTER TABLE [dbo].[History$] CHECK CONSTRAINT [FK_History$_BankAccount$]
GO
ALTER TABLE [dbo].[History$]  WITH CHECK ADD  CONSTRAINT [FK_History$_TypeOperation$] FOREIGN KEY([TypeOperation])
REFERENCES [dbo].[TypeOperation$] ([IDTypeOperation])
GO
ALTER TABLE [dbo].[History$] CHECK CONSTRAINT [FK_History$_TypeOperation$]
GO
ALTER TABLE [dbo].[User$]  WITH CHECK ADD  CONSTRAINT [FK_User$_Passport$] FOREIGN KEY([Number_Series])
REFERENCES [dbo].[Passport$] ([Number_Series])
GO
ALTER TABLE [dbo].[User$] CHECK CONSTRAINT [FK_User$_Passport$]
GO
