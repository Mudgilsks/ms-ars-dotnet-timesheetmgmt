--USE [master]
--GO
--/****** Object:  Database [TimesheetDB]    Script Date: 05/11/2018 01:06:39 ******/
--CREATE DATABASE [TimesheetDB] ON  PRIMARY 
--( NAME = N'TimesheetDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\TimesheetDB.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
-- LOG ON 
--( NAME = N'TimesheetDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\TimesheetDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
--GO
ALTER DATABASE [TimesheetDB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TimesheetDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TimesheetDB] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [TimesheetDB] SET ANSI_NULLS OFF
GO
ALTER DATABASE [TimesheetDB] SET ANSI_PADDING OFF
GO
ALTER DATABASE [TimesheetDB] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [TimesheetDB] SET ARITHABORT OFF
GO
ALTER DATABASE [TimesheetDB] SET AUTO_CLOSE ON
GO
ALTER DATABASE [TimesheetDB] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [TimesheetDB] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [TimesheetDB] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [TimesheetDB] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [TimesheetDB] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [TimesheetDB] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [TimesheetDB] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [TimesheetDB] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [TimesheetDB] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [TimesheetDB] SET  ENABLE_BROKER
GO
ALTER DATABASE [TimesheetDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [TimesheetDB] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [TimesheetDB] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [TimesheetDB] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [TimesheetDB] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [TimesheetDB] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [TimesheetDB] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [TimesheetDB] SET  READ_WRITE
GO
ALTER DATABASE [TimesheetDB] SET RECOVERY SIMPLE
GO
ALTER DATABASE [TimesheetDB] SET  MULTI_USER
GO
ALTER DATABASE [TimesheetDB] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [TimesheetDB] SET DB_CHAINING OFF
GO
USE [TimesheetDB]
GO
/****** Object:  Table [dbo].[ExpenseAuditTB]    Script Date: 05/11/2018 01:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExpenseAuditTB](
	[ApprovaExpenselLogID] [int] IDENTITY(1,1) NOT NULL,
	[ApprovalUser] [int] NULL,
	[ProcessedDate] [datetime] NULL,
	[CreatedOn] [datetime] NULL,
	[Comment] [varchar](100) NULL,
	[Status] [int] NULL,
	[ExpenseID] [int] NULL,
	[UserID] [int] NULL,
 CONSTRAINT [PK_ExpenseAuditTB] PRIMARY KEY CLUSTERED 
(
	[ApprovaExpenselLogID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ExpenseAuditTB] ON
INSERT [dbo].[ExpenseAuditTB] ([ApprovaExpenselLogID], [ApprovalUser], [ProcessedDate], [CreatedOn], [Comment], [Status], [ExpenseID], [UserID]) VALUES (5, 48, CAST(0x0000A8D80137A810 AS DateTime), CAST(0x0000A8D80137A80F AS DateTime), N'', 1, 3, 47)
INSERT [dbo].[ExpenseAuditTB] ([ApprovaExpenselLogID], [ApprovalUser], [ProcessedDate], [CreatedOn], [Comment], [Status], [ExpenseID], [UserID]) VALUES (6, 48, CAST(0x0000A8DC00077DD0 AS DateTime), CAST(0x0000A8D8013D8E03 AS DateTime), N'ok', 2, 3, 47)
INSERT [dbo].[ExpenseAuditTB] ([ApprovaExpenselLogID], [ApprovalUser], [ProcessedDate], [CreatedOn], [Comment], [Status], [ExpenseID], [UserID]) VALUES (7, 48, CAST(0x0000A8DD00106B22 AS DateTime), CAST(0x0000A8DD00106B22 AS DateTime), N'', 1, 1, 47)
INSERT [dbo].[ExpenseAuditTB] ([ApprovaExpenselLogID], [ApprovalUser], [ProcessedDate], [CreatedOn], [Comment], [Status], [ExpenseID], [UserID]) VALUES (8, 48, CAST(0x0000A8DD001116FC AS DateTime), CAST(0x0000A8DD001116FC AS DateTime), N'Approved ', 2, 1, 47)
SET IDENTITY_INSERT [dbo].[ExpenseAuditTB] OFF
/****** Object:  Table [dbo].[Expense]    Script Date: 05/11/2018 01:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Expense](
	[ExpenseID] [int] IDENTITY(1,1) NOT NULL,
	[PurposeorReason] [varchar](50) NULL,
	[ExpenseStatus] [int] NULL,
	[FromDate] [date] NULL,
	[ToDate] [date] NULL,
	[VoucherID] [varchar](50) NULL,
	[HotelBills] [int] NULL,
	[TravelBills] [int] NULL,
	[MealsBills] [int] NULL,
	[LandLineBills] [int] NULL,
	[TransportBills] [int] NULL,
	[MobileBills] [int] NULL,
	[Miscellaneous] [int] NULL,
	[TotalAmount] [int] NULL,
	[UserID] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[Comment] [varchar](100) NULL,
	[ProjectID] [int] NULL,
 CONSTRAINT [PK_Expense] PRIMARY KEY CLUSTERED 
(
	[ExpenseID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Expense] ON
INSERT [dbo].[Expense] ([ExpenseID], [PurposeorReason], [ExpenseStatus], [FromDate], [ToDate], [VoucherID], [HotelBills], [TravelBills], [MealsBills], [LandLineBills], [TransportBills], [MobileBills], [Miscellaneous], [TotalAmount], [UserID], [CreatedOn], [Comment], [ProjectID]) VALUES (1, N'Demo', 2, CAST(0x2E3E0B00 AS Date), CAST(0x323E0B00 AS Date), NULL, 50000, 0, 8000, 0, 0, 0, 0, 58000, 47, CAST(0x0000A8DD00106B14 AS DateTime), N'Approved ', 2)
SET IDENTITY_INSERT [dbo].[Expense] OFF
/****** Object:  Table [dbo].[Roles]    Script Date: 05/11/2018 01:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[Rolename] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON
INSERT [dbo].[Roles] ([RoleID], [Rolename]) VALUES (1, N'Admin')
INSERT [dbo].[Roles] ([RoleID], [Rolename]) VALUES (2, N'Users')
INSERT [dbo].[Roles] ([RoleID], [Rolename]) VALUES (3, N'SuperAdmin')
SET IDENTITY_INSERT [dbo].[Roles] OFF
/****** Object:  Table [dbo].[Registration]    Script Date: 05/11/2018 01:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Registration](
	[RegistrationID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Mobileno] [varchar](20) NULL,
	[EmailID] [varchar](100) NULL,
	[Username] [varchar](20) NULL,
	[Password] [varchar](100) NULL,
	[ConfirmPassword] [varchar](100) NULL,
	[Gender] [varchar](10) NULL,
	[Birthdate] [datetime] NULL,
	[RoleID] [int] NULL,
	[AssignTo] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[EmployeeID] [varchar](10) NULL,
	[DateofJoining] [date] NULL,
	[ForceChangePassword] [int] NULL,
 CONSTRAINT [PK_Registration] PRIMARY KEY CLUSTERED 
(
	[RegistrationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Registration] ON
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (1, N'SuperAdmin', N'9998887770', N'SuperAdmin@gmail.com', N'SuperAdmin', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(0x0000816500000000 AS DateTime), 3, CAST(0x0000A7E300AFA2EB AS DateTime), N'EMP1', NULL, NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (2, N'Admin', N'9998887770', N'Admin@gg.com', N'Admin', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(0x0000816400000000 AS DateTime), 1, CAST(0x0000A7D800B7A919 AS DateTime), N'EMP2', NULL, NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (3, N'Aatish Admin', N'9998887770', N'aatish.dhatrak@demo.com', N'AatishAdmin', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(0x000070F700000000 AS DateTime), 1, CAST(0x0000A809017F5B73 AS DateTime), N'EMP3', NULL, NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (4, N'Neha Admin', N'9998887770', N'neha.bhagwat@demo.com', N'NehaAdmin', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'F', CAST(0x0000790300000000 AS DateTime), 1, CAST(0x0000A8090181E687 AS DateTime), N'EMP4', NULL, NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (5, N'Anuj Sondekar', N'9998887770', N'anuj.sondekar@demo.com', N'AnujSondekar', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(0x0000852800000000 AS DateTime), 2, CAST(0x0000A8090186CA80 AS DateTime), N'EMP5', CAST(0x253E0B00 AS Date), NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (6, N'Firoz Shaikh', N'9998887770', N'firoz.shaikh@demo.com', N'FirozShaikh', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(0x0000854800000000 AS DateTime), 2, CAST(0x0000A8090186CA80 AS DateTime), N'EMP6', CAST(0x253E0B00 AS Date), NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (7, N'Mahesh Kakad', N'9998887770', N'mahesh.kakad@demo.com', N'MaheshKakad', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(0x00007EE900000000 AS DateTime), 2, CAST(0x0000A8090186CA80 AS DateTime), N'EMP7', CAST(0x253E0B00 AS Date), NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (8, N'Tejal Rajgor', N'9998887770', N'tejal.rajgor@demo.com', N'TejalRajgor', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'F', CAST(0x000081C200000000 AS DateTime), 2, CAST(0x0000A8090186CA80 AS DateTime), N'EMP8', CAST(0x253E0B00 AS Date), NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (9, N'Pratik Patil', N'9998887770', N'pratik.patil@demo.com', N'PratikPatil', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(0x0000804E00000000 AS DateTime), 2, CAST(0x0000A8090186CA80 AS DateTime), N'EMP9', CAST(0x253E0B00 AS Date), NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (10, N'Kinjal Parikh', N'9998887770', N'kinjal.parikh@demo.com', N'KinjalParikh', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'F', CAST(0x0000830100000000 AS DateTime), 2, CAST(0x0000A8090186CA80 AS DateTime), N'EMP10', CAST(0x253E0B00 AS Date), NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (11, N'Leshu Samanta', N'9998887770', N'leshu.majumdar@demo.com', N'LeshuSamanta', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'F', CAST(0x00007E5300000000 AS DateTime), 2, CAST(0x0000A8090186CA80 AS DateTime), N'EMP11', CAST(0x253E0B00 AS Date), NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (12, N'Vaishnavi Iyer', N'9998887770', N'vaishnavi.iyer@demo.com', N'VaishnaviIyer', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'F', CAST(0x0000896300000000 AS DateTime), 2, CAST(0x0000A8090186CA80 AS DateTime), N'EMP12', CAST(0x253E0B00 AS Date), NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (13, N'Manjiri Sawant', N'9998887770', N'manjiri.sawant@demo.com', N'ManjiriSawant', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'F', CAST(0x000080B500000000 AS DateTime), 2, CAST(0x0000A8090186CA80 AS DateTime), N'EMP13', CAST(0x253E0B00 AS Date), NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (14, N'Sukanya Iyer', N'9998887770', N'sukanya.iyer@demo.com', N'SukanyaIyer', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'F', CAST(0x0000881200000000 AS DateTime), 2, CAST(0x0000A8090186CA80 AS DateTime), N'EMP14', CAST(0x253E0B00 AS Date), NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (15, N'Sucheta Kirkire', N'9998887770', N'sucheta.kirkire@demo.com', N'SuchetaKirkire', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'F', CAST(0x00007DAF00000000 AS DateTime), 2, CAST(0x0000A8090186CA80 AS DateTime), N'EMP15', CAST(0x253E0B00 AS Date), NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (16, N'Hemashree Patil', N'9998887770', N'hemashree.patil@demo.com', N'HemashreePatil', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'F', CAST(0x00007ED900000000 AS DateTime), 2, CAST(0x0000A8090186CA80 AS DateTime), N'EMP16', CAST(0x253E0B00 AS Date), NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (17, N'Pushpa Gohil', N'9998887770', N'pushpa.gohil@demo.com', N'PushpaGohil', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'F', CAST(0x0000787700000000 AS DateTime), 2, CAST(0x0000A8090186CA80 AS DateTime), N'EMP17', CAST(0x253E0B00 AS Date), NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (18, N'Ramakrishnan Ramaswamy', N'9998887770', N'krishnan.ramaswamy@demo.com', N'Ramakrishnan', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(0x00007ECC00000000 AS DateTime), 2, CAST(0x0000A8090186CA80 AS DateTime), N'EMP18', CAST(0x253E0B00 AS Date), NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (19, N'Amol Patil', N'9998887770', N'amol.patil@demo.com', N'AmolPatil', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(0x0000813800000000 AS DateTime), 2, CAST(0x0000A8090186CA80 AS DateTime), N'EMP19', CAST(0x253E0B00 AS Date), NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (20, N'Tanmay More', N'9998887770', N'tanmay.more@demo.com', N'TanmayMore', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(0x0000815000000000 AS DateTime), 2, CAST(0x0000A8090186CA80 AS DateTime), N'EMP20', CAST(0x253E0B00 AS Date), NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (21, N'Faisal sheikh', N'9998887770', N'faisal.sheikh@demo.com', N'faisalsheikh', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(0x0000860500000000 AS DateTime), 2, CAST(0x0000A8090186CA80 AS DateTime), N'EMP21', CAST(0x253E0B00 AS Date), NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (22, N'Ganesh Hegde', N'9998887770', N'ganesh.hegde@demo.com', N'GaneshHegde', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(0x0000869000000000 AS DateTime), 2, CAST(0x0000A8090186CA80 AS DateTime), N'EMP22', CAST(0x253E0B00 AS Date), NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (23, N'Nilesh Rajbhar', N'9998887770', N'nilesh.rajbhar@demo.com', N'NileshRajbhar', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(0x0000886200000000 AS DateTime), 2, CAST(0x0000A8090186CA80 AS DateTime), N'EMP23', CAST(0x253E0B00 AS Date), NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (24, N'Aniket Dhumale', N'9998887770', N'aniket.dhumale@demo.com', N'AniketDhumale', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(0x00008A4100000000 AS DateTime), 2, CAST(0x0000A8090186CA80 AS DateTime), N'EMP24', CAST(0x253E0B00 AS Date), NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (25, N'Meenakshi Vaishya', N'9998887770', N'meenakshi.vaishya@demo.com', N'MeenakshiVaishya', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'F', CAST(0x0000847400000000 AS DateTime), 2, CAST(0x0000A8090186CA80 AS DateTime), N'EMP25', CAST(0x253E0B00 AS Date), NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (26, N'M Khan', N'9998887770', N'm.Khan@demo.com', N'MKhan', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', NULL, 2, CAST(0x0000A8090186CA80 AS DateTime), N'EMP26', CAST(0x253E0B00 AS Date), NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (27, N'Neha Bhagwat', N'9998887770', N'neha.bhagwat@demo.com', N'NehaBhagwat', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'F', CAST(0x0000790300000000 AS DateTime), 2, CAST(0x0000A8090186CA80 AS DateTime), N'EMP27', CAST(0x253E0B00 AS Date), NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (28, N'M Challa', N'9998887770', N'meherzad.challa@demo.com', N'MChalla', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(0x00006AE700000000 AS DateTime), 2, CAST(0x0000A8090186CA80 AS DateTime), N'EMP28', CAST(0x253E0B00 AS Date), NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (29, N'SGN', N'9998887770', N'narasimhan@demo.com', N'narasimhan', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(0x0000541100000000 AS DateTime), 2, CAST(0x0000A8090186CA80 AS DateTime), N'EMP29', CAST(0x253E0B00 AS Date), NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (30, N'Prerana Khetmal', N'9998887770', N'prerana.khetmal@demo.com', N'PreranaKhetmal', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'F', CAST(0x00007FF100000000 AS DateTime), 2, CAST(0x0000A8090186CA80 AS DateTime), N'EMP30', CAST(0x253E0B00 AS Date), NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (31, N'Salomi Jaria', N'9998887770', N'salomi.jaria@demo.com', N'SalomiJaria', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'F', CAST(0x00007ACE00000000 AS DateTime), 2, CAST(0x0000A8090186CA80 AS DateTime), N'EMP31', CAST(0x253E0B00 AS Date), NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (32, N'Aatish Kumar Dhatrak', N'9998887770', N'aatish.dhatrak@demo.com', N'AatishKumar', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(0x000070F700000000 AS DateTime), 2, CAST(0x0000A809017F5B73 AS DateTime), N'EMP32', CAST(0x253E0B00 AS Date), NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (33, N'Srinivasa Nadgowda', N'9998887770', N'shrinivas@nanabhoyms.com', N'Srinivasa', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(0x00006CD800000000 AS DateTime), 2, CAST(0x0000A809017F5B73 AS DateTime), N'EMP33', CAST(0x253E0B00 AS Date), NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (34, N'Deepak Khatija', N'9998887770', N'deepak.khatija@nanabhoyms.com', N'DeepakKhatija', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(0x0000842700000000 AS DateTime), 2, CAST(0x0000A809017F5B73 AS DateTime), N'EMP34', CAST(0x253E0B00 AS Date), NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (35, N'Jayanthi Hegde', N'9998887770', N'jayanthi.hegde@demo.com', N'JayanthiHegde', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'F', CAST(0x00005F0E00000000 AS DateTime), 2, CAST(0x0000A809017F5B73 AS DateTime), N'EMP35', CAST(0x253E0B00 AS Date), NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (36, N'Sushma Waghmare', N'9998887770', N'sushma.waghmare@demo.com', N'Sushma', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'F', CAST(0x000083A300000000 AS DateTime), 2, CAST(0x0000A809017F5B73 AS DateTime), N'EMP36', CAST(0x253E0B00 AS Date), NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (37, N'Aishwarya Bhagwat', N'9998887770', N'aishwarya.bhagwat@demo.com', N'Aishwarya', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'F', CAST(0x000083ED00000000 AS DateTime), 2, CAST(0x0000A809017F5B73 AS DateTime), N'EMP37', CAST(0x253E0B00 AS Date), NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (38, N'Jyoti Gupta', N'9998887770', N'jyoti.gupta@demo.com', N'JyotiGupta', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'F', CAST(0x000084BB00000000 AS DateTime), 2, CAST(0x0000A809017F5B73 AS DateTime), N'EMP38', CAST(0x253E0B00 AS Date), NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (39, N'Doryodhan Jadhav', N'9998887770', N'dooryodhan.jadhav@demo.com', N'Doryodhan', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(0x000083D500000000 AS DateTime), 2, CAST(0x0000A809017F5B73 AS DateTime), N'EMP39', CAST(0x253E0B00 AS Date), NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (40, N'Shankar Iyer', N'9998887770', N'shankar@nanabhoyms.com', N'Shankar', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(0x00005DA200000000 AS DateTime), 2, CAST(0x0000A809017F5B73 AS DateTime), N'EMP40', CAST(0x253E0B00 AS Date), NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (41, N'Nidhi Parikh', N'9998887770', N'nidhi.parikh@demo.com ', N'NidhiParikh', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'F', CAST(0x0000A809017F5B73 AS DateTime), 2, CAST(0x0000A809017F5B73 AS DateTime), N'EMP41', CAST(0x253E0B00 AS Date), NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (42, N'SGN Admin', N'9998887770', N'narasimhan@demo.com', N'SGNAdmin', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(0x0000541100000000 AS DateTime), 1, CAST(0x0000A8090186CA80 AS DateTime), N'EMP42', NULL, NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (43, N'Vinod Tailor', N'9998887770', N'VinodTailor@demo.com', N'VinodTailor', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(0x0000A809017F5B73 AS DateTime), 2, NULL, N'EMP43', CAST(0x253E0B00 AS Date), NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (44, N'Salomi Admin', N'9998887770', N'salomi.jaria@demo.com', N'SalomiAdmin', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'F', CAST(0x00007ACE00000000 AS DateTime), 1, CAST(0x0000A8090186CA80 AS DateTime), N'EMP44', NULL, NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (45, N'Shankar Admin', N'9998887770', N'shankar@nanabhoyms.com', N'ShankarAdmin', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(0x00005DA200000000 AS DateTime), 1, CAST(0x0000A809017F5B73 AS DateTime), N'EMP45', NULL, NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (46, N'Srinivasa Admin', N'9998887770', N'shrinivas@nanabhoyms.com', N'SrinivasaAdmin', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(0x00006CD800000000 AS DateTime), 1, CAST(0x0000A809017F5B73 AS DateTime), N'EMP46', NULL, NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (47, N'Sai', N'9998887770', N'demo@gmail.com', N'demouser', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', NULL, 2, CAST(0x0000A80E01878EB6 AS DateTime), N'EMP47', CAST(0x253E0B00 AS Date), NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (48, N'demoadmin', N'9998887770', N'demo@gmail.com', N'demoadmin', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', NULL, 1, CAST(0x0000A80F000160A3 AS DateTime), N'EMP48', NULL, NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (49, N'Demo', N'9998887770', N'demo@gmail.com', N'demodemo', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(0x00005F7D00000000 AS DateTime), 2, CAST(0x0000A84300928A89 AS DateTime), N'EMP49', CAST(0x253E0B00 AS Date), NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (50, N'adds', N'9998887770', N'ss@gg.com', N'demodeep', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(0x0000722300000000 AS DateTime), 2, CAST(0x0000A8CA00F44729 AS DateTime), N'EMP50', CAST(0x253E0B00 AS Date), NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (51, N'Demox', N'9998887770', N'demox@gg.com', N'demoxx', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(0x0000816500000000 AS DateTime), 2, CAST(0x0000A8CA00F893D6 AS DateTime), N'EMP51', CAST(0x253E0B00 AS Date), NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (52, N'Demoy', N'9998887770', N'mahesh.kakad@demo.com', N'demoyy', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(0x00007EE900000000 AS DateTime), 2, CAST(0x0000A8090186CA80 AS DateTime), N'EMP52', CAST(0x253E0B00 AS Date), NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (53, N'Demoz', N'9998887770', N'mahesh.kakad@demo.com', N'demozz', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(0x00007EE900000000 AS DateTime), 2, CAST(0x0000A8090186CA80 AS DateTime), N'EMP53', CAST(0x253E0B00 AS Date), NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (54, N'DEMOAA', N'9998887770', N'demoaa@gg.com', N'DemoAA', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(0x000080C200000000 AS DateTime), 2, CAST(0x0000A8CA0101A808 AS DateTime), N'EMP54', CAST(0x253E0B00 AS Date), NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (55, N'demoxx', N'9998887770', N'demoadminx@gg.mm.vom', N'demoadminx', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', NULL, 1, CAST(0x0000A8CA010355AC AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Registration] ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]) VALUES (56, N'MessageRegistration', N'9998887770', N'MessageRegistration@gg.com', N'MessageRegistration', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', NULL, 1, CAST(0x0000A8CA0104197F AS DateTime), NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Registration] OFF
/****** Object:  Table [dbo].[ProjectMaster]    Script Date: 05/11/2018 01:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProjectMaster](
	[ProjectID] [int] IDENTITY(1,1) NOT NULL,
	[ProjectName] [varchar](100) NULL,
	[NatureofIndustry] [varchar](100) NULL,
	[ProjectCode] [varchar](10) NULL,
 CONSTRAINT [PK_ProjectMaster] PRIMARY KEY CLUSTERED 
(
	[ProjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ProjectMaster] ON
INSERT [dbo].[ProjectMaster] ([ProjectID], [ProjectName], [NatureofIndustry], [ProjectCode]) VALUES (1, N'ABC Bearings Ltd', N'Bearings', N'A001')
INSERT [dbo].[ProjectMaster] ([ProjectID], [ProjectName], [NatureofIndustry], [ProjectCode]) VALUES (2, N'Alok Industries Ltd', N'Textile', N'A002')
INSERT [dbo].[ProjectMaster] ([ProjectID], [ProjectName], [NatureofIndustry], [ProjectCode]) VALUES (3, N'Ambuja Cement Ltd', N'Cement', N'A003')
INSERT [dbo].[ProjectMaster] ([ProjectID], [ProjectName], [NatureofIndustry], [ProjectCode]) VALUES (4, N'Anil Bioplus Ltd (Anil Group Ahmedabad)', N'Chemicals', N'A004')
INSERT [dbo].[ProjectMaster] ([ProjectID], [ProjectName], [NatureofIndustry], [ProjectCode]) VALUES (5, N'Ansa Pack    (Simplex Group)', N'Packaging', N'A005')
INSERT [dbo].[ProjectMaster] ([ProjectID], [ProjectName], [NatureofIndustry], [ProjectCode]) VALUES (6, N'Aries Agro Ltd', N'Fertilizer', N'A006')
INSERT [dbo].[ProjectMaster] ([ProjectID], [ProjectName], [NatureofIndustry], [ProjectCode]) VALUES (7, N'Arkema India Pvt Ltd', N'Chemicals', N'A007')
INSERT [dbo].[ProjectMaster] ([ProjectID], [ProjectName], [NatureofIndustry], [ProjectCode]) VALUES (8, N'ATC Tires Pvt Ltd  (Yokohama Group)', N'Industrial Tyres', N'A008')
INSERT [dbo].[ProjectMaster] ([ProjectID], [ProjectName], [NatureofIndustry], [ProjectCode]) VALUES (9, N'Atul Bioscience Ltd. (Lalbhai Group)', N'Chemicals', N'A009')
INSERT [dbo].[ProjectMaster] ([ProjectID], [ProjectName], [NatureofIndustry], [ProjectCode]) VALUES (10, N'Atul Ltd.   (Lalbhai Group)', N'Chemicals', N'A010')
SET IDENTITY_INSERT [dbo].[ProjectMaster] OFF
/****** Object:  Table [dbo].[NotificationsTB]    Script Date: 05/11/2018 01:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NotificationsTB](
	[NotificationsID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [varchar](50) NULL,
	[Message] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
 CONSTRAINT [PK_NotificationsTB] PRIMARY KEY CLUSTERED 
(
	[NotificationsID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[NotificationsTB] ON
INSERT [dbo].[NotificationsTB] ([NotificationsID], [Status], [Message], [CreatedOn], [FromDate], [ToDate]) VALUES (4, N'D', N'Fill Timesheet', CAST(0x0000A8D300C667FC AS DateTime), CAST(0x0000A87D009B2E90 AS DateTime), CAST(0x0000A87D009DEDB0 AS DateTime))
INSERT [dbo].[NotificationsTB] ([NotificationsID], [Status], [Message], [CreatedOn], [FromDate], [ToDate]) VALUES (5, N'D', N'Fill TimeSheet by 5 May', CAST(0x0000A8D300D313FA AS DateTime), CAST(0x0000A899009B2E90 AS DateTime), CAST(0x0000A899009DEDB0 AS DateTime))
INSERT [dbo].[NotificationsTB] ([NotificationsID], [Status], [Message], [CreatedOn], [FromDate], [ToDate]) VALUES (6, N'D', N'Fill TimeSheet by 1st May', CAST(0x0000A8D300E1953E AS DateTime), CAST(0x0000A8D6009B2E90 AS DateTime), CAST(0x0000A8D6009DEDB0 AS DateTime))
INSERT [dbo].[NotificationsTB] ([NotificationsID], [Status], [Message], [CreatedOn], [FromDate], [ToDate]) VALUES (7, N'D', N'Demo', CAST(0x0000A8D300FDED33 AS DateTime), CAST(0x0000A8D6009B2E90 AS DateTime), CAST(0x0000A8D6009DEDB0 AS DateTime))
INSERT [dbo].[NotificationsTB] ([NotificationsID], [Status], [Message], [CreatedOn], [FromDate], [ToDate]) VALUES (8, N'D', N'Welcome', CAST(0x0000A8D60099FB8D AS DateTime), CAST(0x0000A8F5009B2E90 AS DateTime), CAST(0x0000A8F5009DEDB0 AS DateTime))
INSERT [dbo].[NotificationsTB] ([NotificationsID], [Status], [Message], [CreatedOn], [FromDate], [ToDate]) VALUES (9, N'A', N'Fill Time Sheet', CAST(0x0000A8D6009D9E97 AS DateTime), CAST(0x0000A913009C8E20 AS DateTime), CAST(0x0000A913009DEDB0 AS DateTime))
SET IDENTITY_INSERT [dbo].[NotificationsTB] OFF
/****** Object:  Table [dbo].[TimeSheetMaster]    Script Date: 05/11/2018 01:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TimeSheetMaster](
	[TimeSheetMasterID] [int] IDENTITY(1,1) NOT NULL,
	[FromDate] [date] NULL,
	[ToDate] [date] NULL,
	[TotalHours] [int] NULL,
	[UserID] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[Comment] [varchar](100) NULL,
	[TimeSheetStatus] [int] NULL,
 CONSTRAINT [PK_TimeSheetMaster] PRIMARY KEY CLUSTERED 
(
	[TimeSheetMasterID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TimeSheetMaster] ON
INSERT [dbo].[TimeSheetMaster] ([TimeSheetMasterID], [FromDate], [ToDate], [TotalHours], [UserID], [CreatedOn], [Comment], [TimeSheetStatus]) VALUES (1, CAST(0x333E0B00 AS Date), CAST(0x393E0B00 AS Date), 35, 47, CAST(0x0000A8DD00100525 AS DateTime), N'Approved', 2)
SET IDENTITY_INSERT [dbo].[TimeSheetMaster] OFF
/****** Object:  Table [dbo].[TimeSheetDetails]    Script Date: 05/11/2018 01:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TimeSheetDetails](
	[TimeSheetID] [int] IDENTITY(1,1) NOT NULL,
	[DaysofWeek] [varchar](50) NULL,
	[Hours] [int] NULL,
	[Period] [date] NULL,
	[ProjectID] [int] NULL,
	[UserID] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[TimeSheetMasterID] [int] NULL,
	[TotalHours] [int] NULL,
 CONSTRAINT [PK_TimeSheetDetails] PRIMARY KEY CLUSTERED 
(
	[TimeSheetID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TimeSheetDetails] ON
INSERT [dbo].[TimeSheetDetails] ([TimeSheetID], [DaysofWeek], [Hours], [Period], [ProjectID], [UserID], [CreatedOn], [TimeSheetMasterID], [TotalHours]) VALUES (1, N'Sunday', 5, CAST(0x333E0B00 AS Date), 1, 47, CAST(0x0000A8DD0010052B AS DateTime), 1, NULL)
INSERT [dbo].[TimeSheetDetails] ([TimeSheetID], [DaysofWeek], [Hours], [Period], [ProjectID], [UserID], [CreatedOn], [TimeSheetMasterID], [TotalHours]) VALUES (2, N'Monday', 5, CAST(0x343E0B00 AS Date), 1, 47, CAST(0x0000A8DD0010052F AS DateTime), 1, NULL)
INSERT [dbo].[TimeSheetDetails] ([TimeSheetID], [DaysofWeek], [Hours], [Period], [ProjectID], [UserID], [CreatedOn], [TimeSheetMasterID], [TotalHours]) VALUES (3, N'Tuesday', 5, CAST(0x353E0B00 AS Date), 1, 47, CAST(0x0000A8DD00100530 AS DateTime), 1, NULL)
INSERT [dbo].[TimeSheetDetails] ([TimeSheetID], [DaysofWeek], [Hours], [Period], [ProjectID], [UserID], [CreatedOn], [TimeSheetMasterID], [TotalHours]) VALUES (4, N'Wednesday', 5, CAST(0x363E0B00 AS Date), 1, 47, CAST(0x0000A8DD00100531 AS DateTime), 1, NULL)
INSERT [dbo].[TimeSheetDetails] ([TimeSheetID], [DaysofWeek], [Hours], [Period], [ProjectID], [UserID], [CreatedOn], [TimeSheetMasterID], [TotalHours]) VALUES (5, N'Thursday', 5, CAST(0x373E0B00 AS Date), 1, 47, CAST(0x0000A8DD00100532 AS DateTime), 1, NULL)
INSERT [dbo].[TimeSheetDetails] ([TimeSheetID], [DaysofWeek], [Hours], [Period], [ProjectID], [UserID], [CreatedOn], [TimeSheetMasterID], [TotalHours]) VALUES (6, N'Friday', 5, CAST(0x383E0B00 AS Date), 1, 47, CAST(0x0000A8DD00100532 AS DateTime), 1, NULL)
INSERT [dbo].[TimeSheetDetails] ([TimeSheetID], [DaysofWeek], [Hours], [Period], [ProjectID], [UserID], [CreatedOn], [TimeSheetMasterID], [TotalHours]) VALUES (7, N'Saturday', 5, CAST(0x393E0B00 AS Date), 1, 47, CAST(0x0000A8DD00100534 AS DateTime), 1, NULL)
SET IDENTITY_INSERT [dbo].[TimeSheetDetails] OFF
/****** Object:  Table [dbo].[TimeSheetAuditTB]    Script Date: 05/11/2018 01:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TimeSheetAuditTB](
	[ApprovalTimeSheetLogID] [int] IDENTITY(1,1) NOT NULL,
	[ApprovalUser] [int] NULL,
	[ProcessedDate] [datetime] NULL,
	[CreatedOn] [datetime] NULL,
	[Comment] [varchar](100) NULL,
	[Status] [int] NULL,
	[TimeSheetID] [int] NULL,
	[UserID] [int] NULL,
 CONSTRAINT [PK_TimeSheetAuditTB] PRIMARY KEY CLUSTERED 
(
	[ApprovalTimeSheetLogID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TimeSheetAuditTB] ON
INSERT [dbo].[TimeSheetAuditTB] ([ApprovalTimeSheetLogID], [ApprovalUser], [ProcessedDate], [CreatedOn], [Comment], [Status], [TimeSheetID], [UserID]) VALUES (1, 48, CAST(0x0000A8DD0010053B AS DateTime), CAST(0x0000A8DD00100538 AS DateTime), N'', 1, 1, 47)
INSERT [dbo].[TimeSheetAuditTB] ([ApprovalTimeSheetLogID], [ApprovalUser], [ProcessedDate], [CreatedOn], [Comment], [Status], [TimeSheetID], [UserID]) VALUES (2, 48, CAST(0x0000A8DD0010FD56 AS DateTime), CAST(0x0000A8DD0010FD56 AS DateTime), N'Approved', 2, 1, 47)
SET IDENTITY_INSERT [dbo].[TimeSheetAuditTB] OFF
/****** Object:  Table [dbo].[ELMAH_Error]    Script Date: 05/11/2018 01:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ELMAH_Error](
	[ErrorId] [uniqueidentifier] NOT NULL,
	[Application] [nvarchar](60) NOT NULL,
	[Host] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](100) NOT NULL,
	[Source] [nvarchar](60) NOT NULL,
	[Message] [nvarchar](500) NOT NULL,
	[User] [nvarchar](50) NOT NULL,
	[StatusCode] [int] NOT NULL,
	[TimeUtc] [datetime] NOT NULL,
	[Sequence] [int] IDENTITY(1,1) NOT NULL,
	[AllXml] [ntext] NOT NULL,
 CONSTRAINT [PK_ELMAH_Error] PRIMARY KEY NONCLUSTERED 
(
	[ErrorId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ELMAH_Error_App_Time_Seq] ON [dbo].[ELMAH_Error] 
(
	[Application] ASC,
	[TimeUtc] DESC,
	[Sequence] DESC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ELMAH_Error] ON
INSERT [dbo].[ELMAH_Error] ([ErrorId], [Application], [Host], [Type], [Source], [Message], [User], [StatusCode], [TimeUtc], [Sequence], [AllXml]) VALUES (N'b0e03786-1e7d-437e-bed9-c41917a70db9', N'/LM/W3SVC/4/ROOT', N'SAI-PC', N'System.NullReferenceException', N'WebTimeSheetManagement', N'Object reference not set to an instance of an object.', N'', 0, CAST(0x0000A8DC0136F46D AS DateTime), 1, N'<error
  host="SAI-PC"
  type="System.NullReferenceException"
  message="Object reference not set to an instance of an object."
  source="WebTimeSheetManagement"
  detail="System.NullReferenceException: Object reference not set to an instance of an object.&#xD;&#xA;   at WebTimeSheetManagement.Controllers.LoginController.Login(LoginViewModel loginViewModel) in D:\Projects\WebTimeSheetManagement\WebTimeSheetManagement\Controllers\LoginController.cs:line 113&#xD;&#xA;   at lambda_method(Closure , ControllerBase , Object[] )&#xD;&#xA;   at System.Web.Mvc.ActionMethodDispatcher.Execute(ControllerBase controller, Object[] parameters)&#xD;&#xA;   at System.Web.Mvc.ReflectedActionDescriptor.Execute(ControllerContext controllerContext, IDictionary`2 parameters)&#xD;&#xA;   at System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)&#xD;&#xA;   at System.Web.Mvc.Async.AsyncControllerActionInvoker.&lt;BeginInvokeSynchronousActionMethod&gt;b__39(IAsyncResult asyncResult, ActionInvocation innerInvokeState)&#xD;&#xA;   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`2.CallEndDelegate(IAsyncResult asyncResult)&#xD;&#xA;   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()&#xD;&#xA;   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)&#xD;&#xA;   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.&lt;InvokeActionMethodFilterAsynchronouslyRecursive&gt;b__3d()&#xD;&#xA;   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.&lt;&gt;c__DisplayClass46.&lt;InvokeActionMethodFilterAsynchronouslyRecursive&gt;b__3f()&#xD;&#xA;   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.&lt;&gt;c__DisplayClass46.&lt;InvokeActionMethodFilterAsynchronouslyRecursive&gt;b__3f()&#xD;&#xA;   at System.Web.Mvc.Async.AsyncControllerActionInvoker.&lt;&gt;c__DisplayClass33.&lt;BeginInvokeActionMethodWithFilters&gt;b__32(IAsyncResult asyncResult)&#xD;&#xA;   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)&#xD;&#xA;   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()&#xD;&#xA;   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)&#xD;&#xA;   at System.Web.Mvc.Async.AsyncControllerActionInvoker.&lt;&gt;c__DisplayClass21.&lt;&gt;c__DisplayClass2b.&lt;BeginInvokeAction&gt;b__1c()&#xD;&#xA;   at System.Web.Mvc.Async.AsyncControllerActionInvoker.&lt;&gt;c__DisplayClass21.&lt;BeginInvokeAction&gt;b__1e(IAsyncResult asyncResult)"
  time="2018-05-10T18:52:09.1111059Z">
  <serverVariables>
    <item
      name="ALL_HTTP">
      <value
        string="HTTP_CACHE_CONTROL:max-age=0&#xD;&#xA;HTTP_CONNECTION:keep-alive&#xD;&#xA;HTTP_CONTENT_LENGTH:240&#xD;&#xA;HTTP_CONTENT_TYPE:application/x-www-form-urlencoded&#xD;&#xA;HTTP_ACCEPT:text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8&#xD;&#xA;HTTP_ACCEPT_ENCODING:gzip, deflate, br&#xD;&#xA;HTTP_ACCEPT_LANGUAGE:en-US,en;q=0.9&#xD;&#xA;HTTP_COOKIE:ASP.NET_SessionId=yufyns22dycacb13sx2mcjiv; __RequestVerificationToken=C-3kUdfJ503BChLB8Y-_ydyEuXICxJUVTFAsignmQn9fPhMn_ciQajoZOWeiKWCT2-mgMks-VE4Gg9AMUPDrZ8CkaFcogqDiPpQ9NNuGljg1&#xD;&#xA;HTTP_HOST:localhost:49649&#xD;&#xA;HTTP_REFERER:http://localhost:49649/&#xD;&#xA;HTTP_USER_AGENT:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36&#xD;&#xA;HTTP_ORIGIN:http://localhost:49649&#xD;&#xA;HTTP_UPGRADE_INSECURE_REQUESTS:1&#xD;&#xA;" />
    </item>
    <item
      name="ALL_RAW">
      <value
        string="Cache-Control: max-age=0&#xD;&#xA;Connection: keep-alive&#xD;&#xA;Content-Length: 240&#xD;&#xA;Content-Type: application/x-www-form-urlencoded&#xD;&#xA;Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8&#xD;&#xA;Accept-Encoding: gzip, deflate, br&#xD;&#xA;Accept-Language: en-US,en;q=0.9&#xD;&#xA;Cookie: ASP.NET_SessionId=yufyns22dycacb13sx2mcjiv; __RequestVerificationToken=C-3kUdfJ503BChLB8Y-_ydyEuXICxJUVTFAsignmQn9fPhMn_ciQajoZOWeiKWCT2-mgMks-VE4Gg9AMUPDrZ8CkaFcogqDiPpQ9NNuGljg1&#xD;&#xA;Host: localhost:49649&#xD;&#xA;Referer: http://localhost:49649/&#xD;&#xA;User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36&#xD;&#xA;Origin: http://localhost:49649&#xD;&#xA;Upgrade-Insecure-Requests: 1&#xD;&#xA;" />
    </item>
    <item
      name="APPL_MD_PATH">
      <value
        string="/LM/W3SVC/4/ROOT" />
    </item>
    <item
      name="APPL_PHYSICAL_PATH">
      <value
        string="D:\Projects\WebTimeSheetManagement\WebTimeSheetManagement\" />
    </item>
    <item
      name="AUTH_TYPE">
      <value
        string="" />
    </item>
    <item
      name="AUTH_USER">
      <value
        string="" />
    </item>
    <item
      name="AUTH_PASSWORD">
      <value
        string="" />
    </item>
    <item
      name="LOGON_USER">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_USER">
      <value
        string="" />
    </item>
    <item
      name="CERT_COOKIE">
      <value
        string="" />
    </item>
    <item
      name="CERT_FLAGS">
      <value
        string="" />
    </item>
    <item
      name="CERT_ISSUER">
      <value
        string="" />
    </item>
    <item
      name="CERT_KEYSIZE">
      <value
        string="" />
    </item>
    <item
      name="CERT_SECRETKEYSIZE">
      <value
        string="" />
    </item>
    <item
      name="CERT_SERIALNUMBER">
      <value
        string="" />
    </item>
    <item
      name="CERT_SERVER_ISSUER">
      <value
        string="" />
    </item>
    <item
      name="CERT_SERVER_SUBJECT">
      <value
        string="" />
    </item>
    <item
      name="CERT_SUBJECT">
      <value
        string="" />
    </item>
    <item
      name="CONTENT_LENGTH">
      <value
        string="240" />
    </item>
    <item
      name="CONTENT_TYPE">
      <value
        string="application/x-www-form-urlencoded" />
    </item>
    <item
      name="GATEWAY_INTERFACE">
      <value
        string="CGI/1.1" />
    </item>
    <item
      name="HTTPS">
      <value
        string="off" />
    </item>
    <item
      name="HTTPS_KEYSIZE">
      <value
        string="" />
    </item>
    <item
      name="HTTPS_SECRETKEYSIZE">
      <value
        string="" />
    </item>
    <item
      name="HTTPS_SERVER_ISSUER">
      <value
        string="" />
    </item>
    <item
      name="HTTPS_SERVER_SUBJECT">
      <value
        string="" />
    </item>
    <item
      name="INSTANCE_ID">
      <value
        string="4" />
    </item>
    <item
      name="INSTANCE_META_PATH">
      <value
        string="/LM/W3SVC/4" />
    </item>
    <item
      name="LOCAL_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="PATH_INFO">
      <value
        string="/" />
    </item>
    <item
      name="PATH_TRANSLATED">
      <value
        string="D:\Projects\WebTimeSheetManagement\WebTimeSheetManagement" />
    </item>
    <item
      name="QUERY_STRING">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_HOST">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_PORT">
      <value
        string="51539" />
    </item>
    <item
      name="REQUEST_METHOD">
      <value
        string="POST" />
    </item>
    <item
      name="SCRIPT_NAME">
      <value
        string="/" />
    </item>
    <item
      name="SERVER_NAME">
      <value
        string="localhost" />
    </item>
    <item
      name="SERVER_PORT">
      <value
        string="49649" />
    </item>
    <item
      name="SERVER_PORT_SECURE">
      <value
        string="0" />
    </item>
    <item
      name="SERVER_PROTOCOL">
      <value
        string="HTTP/1.1" />
    </item>
    <item
      name="SERVER_SOFTWARE">
      <value
        string="Microsoft-IIS/10.0" />
    </item>
    <item
      name="URL">
      <value
        string="/" />
    </item>
    <item
      name="HTTP_CACHE_CONTROL">
      <value
        string="max-age=0" />
    </item>
    <item
      name="HTTP_CONNECTION">
      <value
        string="keep-alive" />
    </item>
    <item
      name="HTTP_CONTENT_LENGTH">
      <value
        string="240" />
    </item>
    <item
      name="HTTP_CONTENT_TYPE">
      <value
        string="application/x-www-form-urlencoded" />
    </item>
    <item
      name="HTTP_ACCEPT">
      <value
        string="text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8" />
    </item>
    <item
      name="HTTP_ACCEPT_ENCODING">
      <value
        string="gzip, deflate, br" />
    </item>
    <item
      name="HTTP_ACCEPT_LANGUAGE">
      <value
        string="en-US,en;q=0.9" />
    </item>
    <item
      name="HTTP_COOKIE">
      <value
        string="ASP.NET_SessionId=yufyns22dycacb13sx2mcjiv; __RequestVerificationToken=C-3kUdfJ503BChLB8Y-_ydyEuXICxJUVTFAsignmQn9fPhMn_ciQajoZOWeiKWCT2-mgMks-VE4Gg9AMUPDrZ8CkaFcogqDiPpQ9NNuGljg1" />
    </item>
    <item
      name="HTTP_HOST">
      <value
        string="localhost:49649" />
    </item>
    <item
      name="HTTP_REFERER">
      <value
        string="http://localhost:49649/" />
    </item>
    <item
      name="HTTP_USER_AGENT">
      <value
        string="Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36" />
    </item>
    <item
      name="HTTP_ORIGIN">
      <value
        string="http://localhost:49649" />
    </item>
    <item
      name="HTTP_UPGRADE_INSECURE_REQUESTS">
      <value
        string="1" />
    </item>
  </serverVariables>
  <form>
    <item
      name="__RequestVerificationToken">
      <value
        string="VcQAemHPMz9PrZKy5X0dv3gEyAnilLt0WZtLPPcjI8Nv10NRYf2gk9uGwAW2NYVxx9xO6APCpwGbDA9ZRM5dZuMmQjeUgkz1PbMkGxQkRto1" />
    </item>
    <item
      name="Username">
      <value
        string="demouser" />
    </item>
    <item
      name="Password">
      <value
        string="1234567" />
    </item>
    <item
      name="CaptchaDeText">
      <value
        string="f22ed465e2e84454b5ceb8e10ef1920d" />
    </item>
    <item
      name="CaptchaInputText">
      <value
        string="yusnu" />
    </item>
  </form>
  <cookies>
    <item
      name="ASP.NET_SessionId">
      <value
        string="yufyns22dycacb13sx2mcjiv" />
    </item>
    <item
      name="__RequestVerificationToken">
      <value
        string="C-3kUdfJ503BChLB8Y-_ydyEuXICxJUVTFAsignmQn9fPhMn_ciQajoZOWeiKWCT2-mgMks-VE4Gg9AMUPDrZ8CkaFcogqDiPpQ9NNuGljg1" />
    </item>
  </cookies>
</error>')
SET IDENTITY_INSERT [dbo].[ELMAH_Error] OFF
/****** Object:  Table [dbo].[Documents]    Script Date: 05/11/2018 01:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Documents](
	[DocumentID] [int] IDENTITY(1,1) NOT NULL,
	[DocumentName] [varchar](50) NULL,
	[DocumentBytes] [varbinary](max) NULL,
	[UserID] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ExpenseID] [int] NULL,
	[DocumentType] [varchar](10) NULL,
 CONSTRAINT [PK_Documents] PRIMARY KEY CLUSTERED 
(
	[DocumentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Documents] ON
INSERT [dbo].[Documents] ([DocumentID], [DocumentName], [DocumentBytes], [UserID], [CreatedOn], [ExpenseID], [DocumentType]) VALUES (1, N'download.png', 0x89504E470D0A1A0A0000000D49484452000000C9000000FB0803000000F7AA4091000000E1504C5445FFFFFF000000F4F4F591919BAEAEB5FCFCFC5A5A6BD6D6DA0F0F37D9D9DCF1F1F2E4E4E6AAAAB1898994E8E8EA9A9AA3B7B7BD00002883838F47475C000008797986CCCCD0C4C4C9A3A3ABDEDEE1D0D0D49898A1B4B4BA6F6F7D0000324141573A3A5217173B00001F62627200002352526500002E00002A27274471717F656575E08A953C3C5400001D7D7D89F1CFD32F2F4A0000141F1F3FEAB4BA1B1B3D000018D86676E397A0CD1138F9EBEDF3D7DAC80008E49BA4DB7380DE818DE9B0B7D75F6FF7E4E6D23E55D44B5FCE2442CA0025EAB3B9D0304BC90018CB002FEEC5C95E9A05AA00001B4449444154789CED5D0B9B9B36B31E2E02232EC6601060637B6D631BC7EBD89B4DD3A44DDA7CED69BF93FFFF83CE8C005F9234C93ABB9B7D4E799F275A8225462F9290461A8D005AB4F8D160888FEE1C7E687E66D54DF651FCFA9EBC515DB3E69A9DA4AFD2343F7E46E03DA150E68A777A83F7E41F535122007FDFDB27C90020D0017281F78D69AF89AFC87F5C99EFC0BE01880B53E9BDDC821E000C92AED2DBFB00E5753F83F0BAD753D8688E0130A537BF7A102630E6D0E3A74C6EAABF568E4422BA4A12000D9994C8244C8F312B2618AA1DDE37AC7D69960062EB6B005DA73B0488441E03CCEC42525F34D11F0A130FAED4CF30C9D698AD40E52A249AAA0698B100B355C6FC405BC11FFB30C5243B1EF2D09B993355F5BB35930413659100558530A344234F5547B050398787C19798403CBAD2C059AE563DBFFEB9BC1A99F5656F75B3EAC154E5D68E8FBD3C9D59D3D5950B43C92419F5E6311563A4D8C6D5CD82C36AA58C30D5F266772AEE1EB1F1A0836FC96B1ACB191384AE3975ED6AB0B2ABBF55EDEAEF76AB31DF60CB9AD5B5CB9565E23BC3AA691987DAB5E1C784F70FBE8BBD025F52BF793CEF78B6ED01F30D1554BC7274A70BE0D64CE8B7D9598BBFC676B2E213C9C4F0BC612234CFEBFA0307E980E67B5E6817C2B353E8A97063436ADB69F1204CCA22DCD157B118D737D4F178BC29219D842EC4BBF1C48121B24844F56BB019EF9A7A8EE500630891FC9AE3E72175D3F17882ACC56EE28383D57120409B8CC75E808FDCB102C5DCC06A3C0E1F84488B162D5AB468D1A2458BFB839A34E33F8495249699206C101872F03164E0E838F4836EE2A0A29D24FE3F3FEC14F418C0146A33E4F79204B5B11445DC3B0902EF220E54CCA24807B36E77600BBCAD719F4206491FF5A304AF1D197E1315871E0C7D94502BE61EDDC8520A1F840AC737661D55027C8D9ACCE82CA370552B1B7BA8148E44ED00D89B6F79B0D4681869BFABEA468CCA991FA4582CDDEEBD65FF1CDE203E5C23132C132D05D11D6858B906038DF4937E9335D219BD6F52211C4CFA192678613E4C9950EE4E6A3E31C9756C26201C6780541C87A81C99F406DAF6DBB4BA041F009F32B1DC0722C2BBC7DA95096C0675ED2284727661CE8FB54B638BA13EF866FD54A15740159250D7AE64987E39D1A5509320D0B2EADAEE06DD14B4C275B7E9307003077F74039D81D6DF020C83C0F5D511469B7CCB833176E0838E7FEAEF0947498374B8D3DC20FE72D24BA90CFDC3836D1DDF57EAFBFED0CB86FE5005819758B930C45F87BE0F0CB3A58A2F3CEE00BF497488CD8743133CBAFF40A5D2A2458B7F0358681846C4312CB4B4C0508F2914430ACD2E855E80514258CB90A2E73291EBD18F8949A12F288C1D0A530DC3508D647483201345EA518653C9F0A58C44CA70293ACB0F32D65246206574A58C6125433FCAF0CEA99888945168AB147A9C42EE51A8DA14B29442B0644881F5ED89CC43F810327E4CE1B768D1E24960DE09C1BBBA1A95908D76230DFCABABC5619D6D3BEAD13A5BE17DE1015FC4E26A01707555CBC8F14EE6D27D3FA17040BA4330EAE160D2E8CC8F6B8BB7F88FCD3B06FEB1AE502F8B978B2EE88BABAB2B915C5D2D4D2831C5EC3C53EC86A976C1274C8D4BF073361CF82E63DD9A4A2954364BC1502E5D8B1DA9B4987B8D3242292307937403F0FB52F77571A0BC2519F6CC5459B3C608FB258E996F996A21954C59832899EA7481AB100C5D5D65A555F6BDB5F2119379B5C22C352D81645C7F70D4B15546CBEBA1BDBBB44CAA754694A18EF8187585C25C8B482EB10EE8E72DBEB1594C2BA613947073582D259D0E4BC85B5579208B099D8AB29B4080FAC13A5B9BB3746C9F33E961821DEFF716C85F3211FBC5343946282C60F09D4CFAD3FD0ABC4A061013061513D9B7E5FD693F85703FEDD74C98D4B3E90D1F1F5411C117ACEDAF1501337CBDE1474CE69209BE7880A64C92B3590FA47239935EBFDF5F5299A094B12D575C8534AAA89834A834ECC5A10E1313A6482266BFACA868D21003826AD207137C5C2664897185256F22952C421DDBD78E1338465C49995CBAD05F95C95432D98045AF2BDECA8C9D143B1452F11E1D1BE3FE384146EDC42F65A17C990952513A906285CC8A4C51942D38588E5AF3C6668A62C104EF5FD8E60F762B202D70CCD0A467053E85CDEB9A2944647794403FBE64144EEA3B42513057034A110D1BEEAB567D6ED1E25F0C9550854C06A7E1C98FFF14DE31D1BDCA3803BBEE7446059F773A8BC8A470207A9DCE72982C3B9D5E162C3A9DB9371B753A53B6EB743AD740D1276C8AE1CCA6E86E4CD1139DA20B8DA25B25853C1C51F40E41260AA58CD23ACAD0A58CD8A5E876256332AA657476950C8FA20799943194320614DD8C64C67E4CD9B768D1A2458B162D5AB468D1E289207186BAE33895558B97E8F83F9AE3499D6ACA26733C103AC540241F2D9F71199DAC256CA7B2BF319D8FE6AC1E11EEA0DFEB6ADA40272E9E56F6C703CA5AA2E46423025B258699B21D6804F76326DAB63F91D3F34365AD131757F946D3BD07419F360471A532EFCAFA720D019CF95CA1F9FDA01F43DEFF47652EADA746FDE95CA10945ADFF4DD62F0F04C9C4EB574651713F907F9D97B9930CD28AC9B54BC68183CFCCC05A0D93FD1AA35B3078824CFA3A644992147B62A2911D67F7338BCC0726FD84EC461363FFC3997C52BBFA0E8681D2BBFE4AED9213F5F542D040994F7F1C9340EBF734D7D586F213E4E6FD8D56B578AAF6995FC8161F610C44F051A9786ED4DF69558BA72974CB9FFDC016AF0F7D7F381C5619E0F43F5D7E856BBB3373E8414C1108FAC7DF2E199D2CE2EC61F515B686ED4CCFBF07E961F9DA8FA2BCB183D5AA2A1005B408BD2ECB80B9645F5CFD6896DBD287B82CF30C8626DC0BD66574FC8F9DD056E9F26E0DCA1E6F0F976B37D6EA8C6DAA2145461FFF5C081193C96C5A6FD3E4EE2C4E8453C6626006F7D37E0D9471C88817E6606A427CAB21BF84E5760F0F2083E1A8FE44360B7A9FB7E1F603D007B4EFD71DBAF7C344C071DFAFB74D72A816BEEFF0049E8A63A9BAC3CF32C98C590E7CBA9E158DE5333271BAFA6E6D38EC9ECA0461D435DB0B3CEB0226CD0AB3C43F30812C8B4BD6B14CFF9CC9D63407D93D9509840D11B0F6EBF02AB984C979EDAA33363ED9EB40E833AC5D7653BB847BAC5DF7D36317B6EC9C7811806A5A7AC12513F70E4F30C7BB5158AF93EB8B55A8D763C0F1A608372A18CA0660128685C717D8E227D58FD96D271CA849A7081316DC14E1F8FB2DFF15A3080DAC598A14111BA0EAE350BBCB32BA9A22EAF7CFF1B219CC7A786D31486DCCA485D7C0F09D31FB9888D7D1294CBFDFDB003D85245479513D29E4A1FC31B47834648766E5AC56AB4EA6AD5623AC45C6A4C3A1C03BD83E16AB9BF1971E711F58AC26CDA53DBA0D2046D157C917127C02F365D05C6A09B90AC97DAEAEB15DACB085F43C8E773A2A7F3017220D462AF726D565BA56B970F1DBC53E5EEAFD22E2FCD89F547B8272B3B22522ABA8CAEFCD037A753940A98CB508D2C2A98C95ABC59DF6A7317664D29D2E51338DE6B75369E8431671CB2589E8F76EEF35DB9F815219D04964FBE57C0BAACAF4C117D37C8C933271C8662FCF0C697A454C966AEDFD487D682AA74C80413CA3BF77ECE3E3431F5FB981C96328A8BF254BB5C3B31FBC86554661C0AB590FD390BE8FEED4C7C7D28AACBA766986016638FCD89864AAC6A147BF9215D9F4BE73FE0914E525D47DBCA95089F8D252AD458BA7013F6FAEA89D9422A2B6618727069D7839074EB7431B835CD6614583AEA2E8FFF0D0BBA36A2712A6A2AC2F68274239F4F15DC577952CAA34F9139F6AF45DE933B989976CC58F9D69728F44E0F07D943DE3FACEFA495C66C7FE04C7086E1C09468384134F640A307E839A16F62D56014C6CE3401A8BC3C0B92F22A7FD496AA08C883A07E752ED57F307228883F9626F9D3359601FCFFB8B5E819AE902BB5F102FA724E4619840BA5FF422885F2EE617F7F15859A2B8AE5DE453ED5026D06C11A7DA5541972ED2BE23EFE768C65DBC92591B7DDF65E0C5F8306F869C35139F738FB19DA98ECF98D08858ADB6A1331C22A316CFDCCFAD325C867A2C2C7B46269578C69D3B8D20B3CE6E725B17224D9469A49FAC3ADE7AB21B35D994632E156FDFE4B65C0B119DD56D22F599FB9B76AFF413BEC22FA3B5A01211771B0AB778EAE0A945BB72685205EC34B580C6C40FE5C4E21CF5DC8A04B3688645B52E9F5BE15A18EA2A0FC2B1605E1E161BD8B3C7D118E57C57517F179918870157F5F06EF35DA720E78E5D734D3B69EA5D5AF4857F2426DEA14868EF4D358EB8531F7F8A83A60585ED8A0CFF2EE2CC7A1C268661CCEA7A4C5FFA187B833BEB8C47544CCA24333716B83343C0ED6C9D3F0E1342B5E7ECBE98586A54E4F94896F49C2DE1B16A17CD935F631B89CD8A49F95D4CFC440837CD33AC5D692604D6D4E9A3B5F8592CD7B4A88FF75C21743DBDEB9AD619FC32B7802C84BA7C504639832D32C9BF9EEE3E9047D4B1AB1176EC5E5E3A17AC33B668D1A2458B162D5AB4F801F08F666783685B02596447B0DD4601A8E5D6C5E19D57463A9851104402441465A749101F9B70DF0587F9692903615E3E14365DD198D0758742F8702D47F50A5EBAE0EBB722A311B7A37311CC841D77851858A75651012CA0BC944BDE4CA67A01C9C0C1F0E652F504D2C12474EA4980CA6F6A8F352E21680D70428E6249C746D22E3986C532F04FADA2B2ED627DE97B9C8986898A0A52360353732F66828A81D6ACE55BDBB5C11A26E59A3CE9D06CA755796881A15B9FE472C604D2CEA536526B134ED632D3C0B3342E2E67E2EF8EF64D669C95B0AC989831E9A21F337176EBF54A9C310916C6A74FFD26E0DBEA9587FFA9BA23167978F164ADEE945D373BFE7FCE2AAFA975ED2226B276ADEB32D99A66E99F5AAA9571272B2E6B275996CDF12D72C3053BA0DAC532532B2FB591F6D4C0F7EA76B22D8A3086D428428B66D50CAA5D3700CC2F8A009F4FC71775AB76B29371244C247FB9D12DBD30D2E3D55AC6E5D35DF4A0C3A45F6A599427195A080069AB06CCB44808C780AC723CEEE18FE6C15226FD8EAFB09461D952863489E3ADD9FAFF2324ABF1E62606777763438E255B3CD0614A9FC5D5EE600C67DFEC640B117732543B85CA23C70357787CEDD10CF7FC112D2A6FB967D75452837B02A9C4F3CBFB13A0CE41CE705B6CCCC2C7F4CB7462A9C6B8ECE34570F1642AD44CB2CA307CF3A8DB0ECFECBB20CB9108F8DFC9249A2F16FB9496501ED347E93913E42194D1627AF99AA92C13C1A0B0C9586DF5882DBE19A54E0D39578FB58B7D57CFB81D56966A637B87756BFA9836D4CA9E8AA4B65453E4B4BA1E7C31458B163F049AA228E40D937C0FEE521AD5D76E04C9548D56EAD20959AA290FB436745C3C93269DE23B2C3AC986BB14EB8C56B1C919E615AC88462542557672278DF5506B5CCAE1185352821A7F9097A1B62592ABD80532B9C172502A4D8B01EF87924973D2E47D439EE8286185E491F482DD4D47745F4EB176C9FEC4825051508F873931995F8F80AFD8EE01992887C10AA4FDF93EA7DA357F79374BB523AA1D02D17CB9C43EBEB2E13ECCADD02E40AE180FC664B95C2C69C3B7AACAB9824C5AA30F2FEDE36B1B897ADC2547C31513C6B9CA6FC15B148D8C874063C39DCE982AB6C054E7D22281EA40A30099E469E5F399865E0BB8BDBDBD9A30AC591EB230A3AF3DE652907922BFC522B7971DECDDC5BCB554FB7F056EA72A7864ACC6800EB0055251E8B01ADB0666DB76B35D50C56B2EE756B0FDD0FD7B1834938C1AACDA97A85E3E8055B5CD4687358D852DBE1E4F3220C36105ECC9B8F054251C8FEB36127746638D75E984EFA17B1B8E27DFBFB31C6534A74F3031196F39B0C1E54361B2541B98A5EC19C9DBF792611F5F7F850BB63A8959ED96EDCA79E1FBD92D2B2DDEABCB742BE720F59BCB55C6DABECBB1D2B14D2FE8166E8CAC6262DA6A27350F8ABDDCC15C33E99E4CDC5D8E739D511D2659222E57B42A26D1D8982DBDC237AD112CC14889090B47EC7A661C8AFB8489B69915F7E0B6E09C8915F06A65E3421093542DA967B48D62B6BEA6B97AA52F4B7E7456BB68A7BF64E2DE67ED9A92A59A05AA59F5BFDFC1C44FE2D8B52A3B48DA55DE61D8C7470AACE3588CD8328BE3FAE5737786852FBA713C305D0D7FFD7E35996444551F6F4771AC276AACADE38BA777FCF5DA023A4471C0C923460011F6F1D8E9CEF2DC6539A26E83661ED1DA9558A30630C4DBEB7B98199BE5B47CA2E6F841F4D67902E6BA8C2E5E206BD1A2458B162D5AB46871BF6051A0055DB54BBE4CC1DE6E7D3AEF174426703C3F34E97CDBA85644B500AFC9B39A0B2A5E1EA66DACED56402C1381BFDDE290D509B6AA8C8FD1B72E6A7D38245707A06E83661F6A16B8DBF34372936A08EDBAA45447010AD1AA63886D4A936E83ED573586A1BE14820C6A32C3D37C3F11FE2486813370C0EFF2A1E3FBC37A98DE23AF83B0F57D5F53E7C26F8E2CB206BEDF15D2BE6B2812FCD17374DF77D5818C0E8266FC9501F01BE6FABE5327F2A235EA01A7D918574368B1C73411CA10CD99C29951C9F0BFBE6F8F5D915B388CBECEA4D99950BAD0D5BB983F5E9FF05D3391A1D4E748D3F2EAC3AE7C7CE7B65DD97791CDDDDAA449CB091F9D6CAF551674FA18668B35CFD30774CAD7099AC3B15ED649803C8878E38A895FC2B7401E3CBE8C4AA3344B9A5FF0F3244EF4EE982CEE52B75C37A62F5779B9AE988CD83CDA06B5A655B9FC723651B993F65D6B934E88DA786654AE1B26D7F196EDF806BCBCA95EBAF60F4CC8F64AE46504EA342A6705D6307C1A77F2FC1BD413C96495C5496E5E9579A8F9039E6CF4AE3B90F643220E6A2A23418DA162D2F1478D4255314950B7CBFD5326D874E2121A3301B11E231335698CD7BEC804C8631F5B64B1DE783BE322FE86DD4D920916A3B9368B2CD3345F83441976879E5BBDF5B07EF9476F3ED7ECE6A858932F14211BC069EDDAC98C29D5D62E36055509E9ECB5B461321C4893B0E1BAA96ECD0457E3764181BA7635F886952015B368EFA84266F21CF1A10B3C723407BCC04C0CC3F0EB0ADF97C6055961AC537501CCAF275754C730344E3377AECE35C318AAF6D630044474102C80A118F21C35710BC29885359378B532B0199E784A0EC39951A89093B798C230666993AD5AA831F8BA8117B32AC333D5566DB208239B300C508ECDEDCCCC9A09ACBA6832D3AC9234DF129E651E783211D819454FB38CD131B1998C9E55492D6CEEA659D7218E3F52CE3CB399BFA0B36531954C94998D8CB41151456FF1EF819CB3D520DE4D1C2037BD8E70C6E39D0501D6899C97E331CDEFED3658D7C7E3F166AD8EC7136C5BD66E3C796ACB3A641D23CACCF5B057D7E76238156EE279DBD4A06310F9CEF4F0D333F16CEF06F6DCB63D6FC73D11A45B8F56299E16E46A6644FD89DE75B4440FE46CEA2C93FD09DF1D16587973D2249DFEF9704B93DF01EB7A75330A4440EBB20E0ED406BE36BA19C5604826E1ED64E41193DE06FAABDB10BCFD6EB76620469DEF303A7B185885AAFA513CBDEAF492AA677475552DADBA4CBC6B2EFB45558129E31CBC8D3901B20754BFC77EEE4120EDEAA338622CE91E578266993CF814478CB038395B569EFE99551DA378B025E30B41DE8F444E7B04122DA956E7FA73F2A66C5C2B2960D522D713FBF91C5B4B6F3EDD90E39CD83095F9CBEDD79FFDC8900EFC809DFC97D54EFD58F3235D3319B0267A15A7C5BF01344EF56EA493B4DA89339D923B4870988A7A6B89B75332253A38555394BDF212BF47CAA47982C01F073A45F15D0A6BA5B6E3C9513DF92B94323A75F48C4EE2058C9F487338214FE2CDC8B1D6F1E4624CB42719A407904F35D21CE4E1BD52A529A546FF891FE3E60CE6E31D32A4EAEAB4CE588A2893E7629FF5C9A841F0E589F62B3F44F250617966758315A7C5C2C3C9C5BC5E9A146441B7A5CD37DDAEB421235B5E8B46FFF6C9B9D8082E8FB94EA5ED55A60455B6A494CAA976F10993EA5CEC53954632E99E58AA9D1F40BDAF7CA337DEABFDED099313BD8EB2F5F25326D516B5AA4721265B79603731F1CE99A834BD10DAD24B49A6B89F32F97815902D61AEEE787FAF1CD4B93E62583109FA7DAC5D0586E7273D9FF9E126877D0E46D1C1C5F0502C2B4581CF3059D74C12C521E7650D931033B13AD4AEFEFC8C49EC0A3AE4FA2B65B2643B3E39AB5D0372BF37A8CA442AA7E3B3DA454C50334DCF2AA4F349EDC296020D93EB23936C3FBD7E491A36E0B8603F9DEE1B2636EC9413AB04851D9990BF159F0E9FAEFCB655335FC6276582CD0A75EC0DB98B6DB24549129DB16D5CCAE63BB64EBDFBEEE571E8ACF10D873F31277106142518B2C363C8351A19EAA9587F3BA0620F5F9509D902BA42636CE0748715793A413EC4A26F0A1E9FC16F18CA480D9B3CF66D7150E05F7FCD548DA6AED4908F46A3656D684A667A8903DDDE3486483259E3AFFB03157AD5EACB655319C57434EF828E51E6A28BE1F5618A6C4749E60B1AAAEC174D4324EF86C2057F3E1AF90932C1014E74D533C1B08F65BF1F2D6843DBCB2516887DDD8B2801F8DDAFD4AE164F10A8CC793437E271B901E76812C66D59A138D67BCFB329A03F9E8CFE14C16E26FBCDDA533693528D0B1586CD4055756FA83EF28D097C365999A8318DC737F875186F8A2F3DF00782DD569D8365584A09870939799011F0EDD4927BB1976C69536128FC891609D4B3A93B3B159A39D278C3C41DD8960A3CF2D6167EC152BBC3F230DCE0182C0C8B1F7756DC97414CBC5E78AD61679ABA493DFD3AD815A1CED68E8D216C0BA3FA0A575B10F6FFF8AC1F0B5926A1BAF5A8D7124AAD636B431A413A86712BF7CD79B95CFA50203EEED07B72A8178FBCD2C6319139A9CB649864993C2788460566B666B08E33D380C2CCE26F5B97797CA864DE86F9B7353A25C96C1C1EFBB3999CD31E6091B8060D41F235F5EBC6FAA91269D1A2C5BF098EAEEBBE4AA1E0183A994D616A52E8C578DB510585309421451CCA50C844312D3938564AA19D51C86574E6CBE83AA192C13E9161DD4986F9898C73C377E66A9A96A8140E3D0A8585A16BC614DA3E9D10CB1D0A6120438AD295891C4E51FC94C238A3D01214C51B52A82632BA3C63163E2F23933252DF3DC860DD838C011C6468BE2D65981FCB786ACB302D5AB4784CBC7BF62BBC7EF6ECD96FF0FED9AB671FE00D5EBF7BFE1C83F74D945FD9AFEA497CC4AFF57FDE63822702F6ECC58BDF7E7DFD3386BFA9EFFE78F1EB8717BFE3F5FB576F5FBC78F5A68EF4B7FA67C3E4DDBB1784DF2497D7EF7EFAE5DD0FCAF82760FFC50CFDF9FA0F80377FC087B7F0E2D98B5774FFD50B80B72FAA38BFFEFCEEE7B7F5D4E25FD53DF597FFC0FBB7CF3EBCFAEFD361F23FC8E4EFD7FFFBEEDDB3373593FFBC7BFB015EFDF1EEDD6FAFAB386FFE7EF1E78BD32535F5EDB3E76FE0F58BE7F0FC099549C5E4EFDFFEC4565131F9E9C387F7F0EAD9EFCF6A2258266F7FFEE99409FBF0E25DD5529E12935FEADAF51766ED393279D7D4AED7CF9A66725A26BFFF24FF50ED223CFFE5D9A367F99FF0E1F79FDEBE79FF37B0DF5EBDFFCFCF3FBD7AFDD79F3FFDF4FB07FA94BD7B5EC7F953FDB9299F0F181FF1166BD77BBCFAE3178AFDD78FCAFC399E63A618BE7EF58DFAFCF9F3F7F01AC3E7AFDF63D6DF37D97FC3DEB093F8CF2909269017CF65A2162D5AB468D1A2458B162D5AFC10FC1F5662391D7559A2490000000049454E44AE426082, 47, CAST(0x0000A8DD00106B19 AS DateTime), 1, N'Single')
SET IDENTITY_INSERT [dbo].[Documents] OFF
/****** Object:  Table [dbo].[DescriptionTB]    Script Date: 05/11/2018 01:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DescriptionTB](
	[DescriptionID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](100) NULL,
	[ProjectID] [int] NULL,
	[TimeSheetMasterID] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[UserID] [int] NULL,
 CONSTRAINT [PK_DescriptionTB] PRIMARY KEY CLUSTERED 
(
	[DescriptionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[DescriptionTB] ON
INSERT [dbo].[DescriptionTB] ([DescriptionID], [Description], [ProjectID], [TimeSheetMasterID], [CreatedOn], [UserID]) VALUES (1, N'Demo', 1, 1, CAST(0x0000A8DD00100535 AS DateTime), 47)
SET IDENTITY_INSERT [dbo].[DescriptionTB] OFF
/****** Object:  Table [dbo].[AuditTB]    Script Date: 05/11/2018 01:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AuditTB](
	[AuditID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [varchar](50) NULL,
	[SessionID] [varchar](50) NULL,
	[IPAddress] [varchar](50) NULL,
	[PageAccessed] [varchar](200) NULL,
	[LoggedInAt] [datetime] NULL,
	[LoggedOutAt] [datetime] NULL,
	[LoginStatus] [varchar](200) NULL,
	[ControllerName] [varchar](200) NULL,
	[ActionName] [varchar](200) NULL,
	[UrlReferrer] [varchar](200) NULL,
 CONSTRAINT [PK_AuditTB] PRIMARY KEY CLUSTERED 
(
	[AuditID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[AuditTB] ON
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (1, N'', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/', CAST(0x0000A8DD000FC151 AS DateTime), NULL, N'A', N'Login', N'Login', NULL)
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (2, N'', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/DefaultCaptcha/Generate?t=72ec858df82542d7977681457c108b23', CAST(0x0000A8DD000FC16F AS DateTime), NULL, N'A', N'DefaultCaptcha', N'Generate', N'/')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (3, N'', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/', CAST(0x0000A8DD000FC90E AS DateTime), NULL, N'A', N'Login', N'Login', N'/')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (4, N'47', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/User/Dashboard', CAST(0x0000A8DD000FCAE8 AS DateTime), NULL, N'A', N'User', N'Dashboard', N'/')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (5, N'47', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/Notification/GetNotification', CAST(0x0000A8DD000FD149 AS DateTime), NULL, N'A', N'Notification', N'GetNotification', N'/User/Dashboard')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (6, N'47', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/TimeSheet/Add', CAST(0x0000A8DD000FEC9E AS DateTime), NULL, N'A', N'TimeSheet', N'Add', N'/User/Dashboard')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (7, N'47', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/TimeSheet/ListofProjects', CAST(0x0000A8DD000FF346 AS DateTime), NULL, N'A', N'TimeSheet', N'ListofProjects', N'/TimeSheet/Add')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (8, N'47', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/TimeSheet/CheckIsDateAlreadyUsed', CAST(0x0000A8DD000FF59E AS DateTime), NULL, N'A', N'TimeSheet', N'CheckIsDateAlreadyUsed', N'/TimeSheet/Add')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (9, N'47', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/TimeSheet/Add', CAST(0x0000A8DD00100522 AS DateTime), NULL, N'A', N'TimeSheet', N'Add', N'/TimeSheet/Add')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (10, N'47', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/TimeSheet/Add', CAST(0x0000A8DD0010053F AS DateTime), NULL, N'A', N'TimeSheet', N'Add', N'/TimeSheet/Add')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (11, N'47', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/TimeSheet/ListofProjects', CAST(0x0000A8DD001006DF AS DateTime), NULL, N'A', N'TimeSheet', N'ListofProjects', N'/TimeSheet/Add')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (12, N'47', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/Expense/Add', CAST(0x0000A8DD001007DD AS DateTime), NULL, N'A', N'Expense', N'Add', N'/TimeSheet/Add')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (13, N'47', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/Expense/ListofProjects', CAST(0x0000A8DD00100E5D AS DateTime), NULL, N'A', N'Expense', N'ListofProjects', N'/Expense/Add')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (14, N'47', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/Notification/GetNotification', CAST(0x0000A8DD00100EF6 AS DateTime), NULL, N'A', N'Notification', N'GetNotification', N'/Expense/Add')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (15, N'47', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/Expense/Add', CAST(0x0000A8DD00106B10 AS DateTime), NULL, N'A', N'Expense', N'Add', N'/Expense/Add')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (16, N'47', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/Notification/GetNotification', CAST(0x0000A8DD00106D97 AS DateTime), NULL, N'A', N'Notification', N'GetNotification', N'/Expense/Add')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (17, N'47', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/Expense/ListofProjects', CAST(0x0000A8DD00106E6E AS DateTime), NULL, N'A', N'Expense', N'ListofProjects', N'/Expense/Add')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (18, N'47', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/Login/Logout', CAST(0x0000A8DD00107066 AS DateTime), NULL, N'A', N'Login', N'Logout', N'/Expense/Add')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (19, N'', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/', CAST(0x0000A8DD0010706B AS DateTime), NULL, N'A', N'Login', N'Login', N'/Expense/Add')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (20, N'', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/DefaultCaptcha/Generate?t=b133e9d1525642a58dce2209ffdef446', CAST(0x0000A8DD00107089 AS DateTime), NULL, N'A', N'DefaultCaptcha', N'Generate', N'/')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (21, N'', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/', CAST(0x0000A8DD00107AAB AS DateTime), NULL, N'A', N'Login', N'Login', N'/')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (22, N'48', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/Admin/Dashboard', CAST(0x0000A8DD00107C0F AS DateTime), NULL, N'A', N'Admin', N'Dashboard', N'/')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (23, N'48', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/ShowAllTimeSheet/TimeSheet', CAST(0x0000A8DD0010845C AS DateTime), NULL, N'A', N'ShowAllTimeSheet', N'TimeSheet', N'/Admin/Dashboard')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (24, N'48', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/ShowAllTimeSheet/LoadTimeSheetData', CAST(0x0000A8DD0010863F AS DateTime), NULL, N'A', N'ShowAllTimeSheet', N'LoadTimeSheetData', N'/ShowAllTimeSheet/TimeSheet')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (25, N'48', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/ShowAllTimeSheet/Details/1', CAST(0x0000A8DD00108843 AS DateTime), NULL, N'A', N'ShowAllTimeSheet', N'Details', N'/ShowAllTimeSheet/TimeSheet')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (26, N'48', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/ShowAllTimeSheet/TimeSheet', CAST(0x0000A8DD00109376 AS DateTime), NULL, N'A', N'ShowAllTimeSheet', N'TimeSheet', N'/ShowAllTimeSheet/Details/1')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (27, N'48', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/ShowAllTimeSheet/LoadTimeSheetData', CAST(0x0000A8DD00109400 AS DateTime), NULL, N'A', N'ShowAllTimeSheet', N'LoadTimeSheetData', N'/ShowAllTimeSheet/TimeSheet')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (28, N'48', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/ShowAllTimeSheet/Details/1', CAST(0x0000A8DD00109648 AS DateTime), NULL, N'A', N'ShowAllTimeSheet', N'Details', N'/ShowAllTimeSheet/TimeSheet')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (29, N'48', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/ShowAllTimeSheet/Details/1', CAST(0x0000A8DD0010D6B7 AS DateTime), NULL, N'A', N'ShowAllTimeSheet', N'Details', N'/ShowAllTimeSheet/TimeSheet')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (30, N'48', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/ShowAllTimeSheet/Details/1', CAST(0x0000A8DD0010E66A AS DateTime), NULL, N'A', N'ShowAllTimeSheet', N'Details', NULL)
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (31, N'48', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/ShowAllTimeSheet/Approval', CAST(0x0000A8DD0010FD4F AS DateTime), NULL, N'A', N'ShowAllTimeSheet', N'Approval', N'/ShowAllTimeSheet/Details/1')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (32, N'48', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/ShowAllTimeSheet/TimeSheet', CAST(0x0000A8DD0010FE8E AS DateTime), NULL, N'A', N'ShowAllTimeSheet', N'TimeSheet', N'/ShowAllTimeSheet/Details/1')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (33, N'48', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/ShowAllTimeSheet/LoadTimeSheetData', CAST(0x0000A8DD0010FF9B AS DateTime), NULL, N'A', N'ShowAllTimeSheet', N'LoadTimeSheetData', N'/ShowAllTimeSheet/TimeSheet')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (34, N'48', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/ExpenseExport/Report', CAST(0x0000A8DD00110165 AS DateTime), NULL, N'A', N'ExpenseExport', N'Report', N'/ShowAllTimeSheet/TimeSheet')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (35, N'48', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/Team/Members', CAST(0x0000A8DD0011085B AS DateTime), NULL, N'A', N'Team', N'Members', N'/ExpenseExport/Report')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (36, N'48', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/Team/LoadUsersData', CAST(0x0000A8DD0011094E AS DateTime), NULL, N'A', N'Team', N'LoadUsersData', N'/Team/Members')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (37, N'48', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/ShowAllExpense/Expense', CAST(0x0000A8DD00110A19 AS DateTime), NULL, N'A', N'ShowAllExpense', N'Expense', N'/Team/Members')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (38, N'48', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/ShowAllExpense/LoadExpenseData', CAST(0x0000A8DD00110B37 AS DateTime), NULL, N'A', N'ShowAllExpense', N'LoadExpenseData', N'/ShowAllExpense/Expense')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (39, N'48', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/ShowAllExpense/Details/1', CAST(0x0000A8DD00110D32 AS DateTime), NULL, N'A', N'ShowAllExpense', N'Details', N'/ShowAllExpense/Expense')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (40, N'48', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/ShowAllExpense/Approval', CAST(0x0000A8DD001116F6 AS DateTime), NULL, N'A', N'ShowAllExpense', N'Approval', N'/ShowAllExpense/Details/1')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (41, N'48', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/ShowAllExpense/Expense', CAST(0x0000A8DD00111847 AS DateTime), NULL, N'A', N'ShowAllExpense', N'Expense', N'/ShowAllExpense/Details/1')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (42, N'48', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/ShowAllExpense/LoadExpenseData', CAST(0x0000A8DD001118C0 AS DateTime), NULL, N'A', N'ShowAllExpense', N'LoadExpenseData', N'/ShowAllExpense/Expense')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (43, N'48', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/TimeSheetExport/TimeSheetReport', CAST(0x0000A8DD00111B08 AS DateTime), NULL, N'A', N'TimeSheetExport', N'TimeSheetReport', N'/ShowAllExpense/Expense')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (44, N'48', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/TimeSheetExport/ListofEmployees', CAST(0x0000A8DD001120AA AS DateTime), NULL, N'A', N'TimeSheetExport', N'ListofEmployees', N'/TimeSheetExport/TimeSheetReport')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (45, N'48', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/TimeSheetExport/TimeSheetReport', CAST(0x0000A8DD00112806 AS DateTime), NULL, N'A', N'TimeSheetExport', N'TimeSheetReport', N'/TimeSheetExport/TimeSheetReport')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (46, N'48', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/ExpenseExport/Report', CAST(0x0000A8DD00113CF7 AS DateTime), NULL, N'A', N'ExpenseExport', N'Report', N'/TimeSheetExport/TimeSheetReport')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (47, N'48', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/ExpenseExport/ExportToExcel', CAST(0x0000A8DD00114274 AS DateTime), NULL, N'A', N'ExpenseExport', N'ExportToExcel', N'/ExpenseExport/Report')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (48, N'48', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/Login/Logout', CAST(0x0000A8DD00115183 AS DateTime), NULL, N'A', N'Login', N'Logout', N'/ExpenseExport/Report')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (49, N'', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/', CAST(0x0000A8DD0011518A AS DateTime), NULL, N'A', N'Login', N'Login', N'/ExpenseExport/Report')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (50, N'', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/DefaultCaptcha/Generate?t=48ecad0288c045c5b34d626fd3719835', CAST(0x0000A8DD0011519E AS DateTime), NULL, N'A', N'DefaultCaptcha', N'Generate', N'/')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (51, N'', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/', CAST(0x0000A8DD00115ADF AS DateTime), NULL, N'A', N'Login', N'Login', N'/')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (52, N'', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/SuperAdmin/Dashboard', CAST(0x0000A8DD00115C76 AS DateTime), NULL, N'A', N'SuperAdmin', N'Dashboard', N'/')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (53, N'', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/TimeSheetMasterExport/Report', CAST(0x0000A8DD001168F0 AS DateTime), NULL, N'A', N'TimeSheetMasterExport', N'Report', N'/SuperAdmin/Dashboard')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (54, N'', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/TimeSheetMasterExport/Report', CAST(0x0000A8DD00116E1F AS DateTime), NULL, N'A', N'TimeSheetMasterExport', N'Report', N'/TimeSheetMasterExport/Report')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (55, N'', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/ExpenseMasterExport/Report', CAST(0x0000A8DD00117BAA AS DateTime), NULL, N'A', N'ExpenseMasterExport', N'Report', N'/TimeSheetMasterExport/Report')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (56, N'', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/ExpenseMasterExport/ExportToExcel', CAST(0x0000A8DD0011860D AS DateTime), NULL, N'A', N'ExpenseMasterExport', N'ExportToExcel', N'/ExpenseMasterExport/Report')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (57, N'', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/AllRoles/Roles', CAST(0x0000A8DD00119761 AS DateTime), NULL, N'A', N'AllRoles', N'Roles', N'/ExpenseMasterExport/Report')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (58, N'', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/AllRoles/LoadRolesData', CAST(0x0000A8DD00119D1A AS DateTime), NULL, N'A', N'AllRoles', N'LoadRolesData', N'/AllRoles/Roles')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (59, N'', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/Registration/Registration', CAST(0x0000A8DD0011A7BC AS DateTime), NULL, N'A', N'Registration', N'Registration', N'/AllRoles/Roles')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (60, N'', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/AllUsers/Users', CAST(0x0000A8DD0011B07F AS DateTime), NULL, N'A', N'AllUsers', N'Users', N'/Registration/Registration')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (61, N'', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/AllUsers/Users', CAST(0x0000A8DD0011B117 AS DateTime), NULL, N'A', N'AllUsers', N'Users', N'/Registration/Registration')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (62, N'', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/AllUsers/LoadUsersData', CAST(0x0000A8DD0011B19F AS DateTime), NULL, N'A', N'AllUsers', N'LoadUsersData', N'/AllUsers/Users')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (63, N'', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/AllUsers/LoadUsersData', CAST(0x0000A8DD0011B5C5 AS DateTime), NULL, N'A', N'AllUsers', N'LoadUsersData', N'/AllUsers/Users')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (64, N'', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/AllUsers/LoadUsersData', CAST(0x0000A8DD0011B81A AS DateTime), NULL, N'A', N'AllUsers', N'LoadUsersData', N'/AllUsers/Users')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (65, N'', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/Login/Logout', CAST(0x0000A8DD0011F9B0 AS DateTime), NULL, N'A', N'Login', N'Logout', N'/AllUsers/Users')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (66, N'', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/', CAST(0x0000A8DD0011F9B8 AS DateTime), NULL, N'A', N'Login', N'Login', N'/AllUsers/Users')
INSERT [dbo].[AuditTB] ([AuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer]) VALUES (67, N'', N'yufyns22dycacb13sx2mcjiv', N'::1', N'http://localhost:49649/DefaultCaptcha/Generate?t=338849e970af43658199085761195a6c', CAST(0x0000A8DD0011FA4D AS DateTime), NULL, N'A', N'DefaultCaptcha', N'Generate', N'/')
SET IDENTITY_INSERT [dbo].[AuditTB] OFF
/****** Object:  Table [dbo].[AssignedRoles]    Script Date: 05/11/2018 01:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AssignedRoles](
	[AssignedRolesID] [int] IDENTITY(1,1) NOT NULL,
	[AssignToAdmin] [int] NULL,
	[Status] [varchar](1) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[RegistrationID] [int] NULL,
 CONSTRAINT [PK_AssignedRoles] PRIMARY KEY CLUSTERED 
(
	[AssignedRolesID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'It is Registration Table  RegistrationID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AssignedRoles'
GO
SET IDENTITY_INSERT [dbo].[AssignedRoles] ON
INSERT [dbo].[AssignedRoles] ([AssignedRolesID], [AssignToAdmin], [Status], [CreatedOn], [CreatedBy], [RegistrationID]) VALUES (1, 48, N'A', CAST(0x0000A8CA00CB4506 AS DateTime), 1, 5)
INSERT [dbo].[AssignedRoles] ([AssignedRolesID], [AssignToAdmin], [Status], [CreatedOn], [CreatedBy], [RegistrationID]) VALUES (2, 48, N'A', CAST(0x0000A8CA00CB4509 AS DateTime), 1, 6)
INSERT [dbo].[AssignedRoles] ([AssignedRolesID], [AssignToAdmin], [Status], [CreatedOn], [CreatedBy], [RegistrationID]) VALUES (3, 48, N'A', CAST(0x0000A8CA00CB450A AS DateTime), 1, 7)
INSERT [dbo].[AssignedRoles] ([AssignedRolesID], [AssignToAdmin], [Status], [CreatedOn], [CreatedBy], [RegistrationID]) VALUES (4, 48, N'A', CAST(0x0000A8CA00CB450B AS DateTime), 1, 8)
INSERT [dbo].[AssignedRoles] ([AssignedRolesID], [AssignToAdmin], [Status], [CreatedOn], [CreatedBy], [RegistrationID]) VALUES (5, 48, N'A', CAST(0x0000A8CA00CB450B AS DateTime), 1, 9)
INSERT [dbo].[AssignedRoles] ([AssignedRolesID], [AssignToAdmin], [Status], [CreatedOn], [CreatedBy], [RegistrationID]) VALUES (6, 48, N'A', CAST(0x0000A8CA00CB450C AS DateTime), 1, 10)
INSERT [dbo].[AssignedRoles] ([AssignedRolesID], [AssignToAdmin], [Status], [CreatedOn], [CreatedBy], [RegistrationID]) VALUES (7, 48, N'A', CAST(0x0000A8CA00CB450D AS DateTime), 1, 11)
INSERT [dbo].[AssignedRoles] ([AssignedRolesID], [AssignToAdmin], [Status], [CreatedOn], [CreatedBy], [RegistrationID]) VALUES (8, 48, N'A', CAST(0x0000A8CA00CB450D AS DateTime), 1, 12)
INSERT [dbo].[AssignedRoles] ([AssignedRolesID], [AssignToAdmin], [Status], [CreatedOn], [CreatedBy], [RegistrationID]) VALUES (9, 48, N'A', CAST(0x0000A8CA00CB450E AS DateTime), 1, 13)
INSERT [dbo].[AssignedRoles] ([AssignedRolesID], [AssignToAdmin], [Status], [CreatedOn], [CreatedBy], [RegistrationID]) VALUES (10, 48, N'A', CAST(0x0000A8CA00CB450E AS DateTime), 1, 14)
INSERT [dbo].[AssignedRoles] ([AssignedRolesID], [AssignToAdmin], [Status], [CreatedOn], [CreatedBy], [RegistrationID]) VALUES (11, 3, N'A', CAST(0x0000A8CA00D3BBEC AS DateTime), 1, 15)
INSERT [dbo].[AssignedRoles] ([AssignedRolesID], [AssignToAdmin], [Status], [CreatedOn], [CreatedBy], [RegistrationID]) VALUES (13, 48, N'A', CAST(0x0000A8CA00EB320E AS DateTime), 1, 47)
INSERT [dbo].[AssignedRoles] ([AssignedRolesID], [AssignToAdmin], [Status], [CreatedOn], [CreatedBy], [RegistrationID]) VALUES (14, 4, N'A', CAST(0x0000A8CA00F13943 AS DateTime), 1, 49)
SET IDENTITY_INSERT [dbo].[AssignedRoles] OFF
/****** Object:  StoredProcedure [dbo].[Usp_CheckIsDateAlreadyUsed_New]    Script Date: 05/11/2018 01:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Usp_CheckIsDateAlreadyUsed_New]
@FromDate datetime,
@ToDate datetime,
@UserID int
as
begin

SELECT COUNT(1)
  FROM [TimesheetDB].[dbo].[TimeSheet_New]
  where ToDateTime between @FromDate and @ToDate and UserID =@UserID
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_CheckIsDateAlreadyUsed]    Script Date: 05/11/2018 01:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Usp_CheckIsDateAlreadyUsed]
@FromDate date,
@ToDate date,
@UserID int
as
begin

SELECT COUNT(1)
  FROM [TimesheetDB].[dbo].[Expense]
  where ToDate between @FromDate and @ToDate and UserID =@UserID
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_ChangeTimesheetStatus]    Script Date: 05/11/2018 01:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_ChangeTimesheetStatus]
@Status int,
@TimeSheetID int,
@Comment varchar(100)
as
begin
Update dbo.TimeSheetAuditTB
set 
Status = @Status,
Comment = @Comment,
ProcessedDate =getdate()
where TimeSheetID = @TimeSheetID and Status <> 1
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_ChangeExpenseStatus]    Script Date: 05/11/2018 01:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Usp_ChangeExpenseStatus]
@Status int,
@ExpenseID int,
@Comment varchar(100)
as
begin
Update dbo.ExpenseAuditTB
set 
Status = @Status,
Comment = @Comment,
ProcessedDate =getdate()
where ExpenseID = @ExpenseID and Status <> 1
end
GO
/****** Object:  StoredProcedure [dbo].[SqlQueryNotificationStoredProcedure-0c5ac2aa-528a-470a-8b3f-3ee58ada42dc]    Script Date: 05/11/2018 01:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SqlQueryNotificationStoredProcedure-0c5ac2aa-528a-470a-8b3f-3ee58ada42dc] AS BEGIN BEGIN TRANSACTION; RECEIVE TOP(0) conversation_handle FROM [SqlQueryNotificationService-0c5ac2aa-528a-470a-8b3f-3ee58ada42dc]; IF (SELECT COUNT(*) FROM [SqlQueryNotificationService-0c5ac2aa-528a-470a-8b3f-3ee58ada42dc] WHERE message_type_name = 'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer') > 0 BEGIN if ((SELECT COUNT(*) FROM sys.services WHERE name = 'SqlQueryNotificationService-0c5ac2aa-528a-470a-8b3f-3ee58ada42dc') > 0)   DROP SERVICE [SqlQueryNotificationService-0c5ac2aa-528a-470a-8b3f-3ee58ada42dc]; if (OBJECT_ID('SqlQueryNotificationService-0c5ac2aa-528a-470a-8b3f-3ee58ada42dc', 'SQ') IS NOT NULL)   DROP QUEUE [SqlQueryNotificationService-0c5ac2aa-528a-470a-8b3f-3ee58ada42dc]; DROP PROCEDURE [SqlQueryNotificationStoredProcedure-0c5ac2aa-528a-470a-8b3f-3ee58ada42dc]; END COMMIT TRANSACTION; END
GO
/****** Object:  StoredProcedure [dbo].[Usp_UpdateUserRole]    Script Date: 05/11/2018 01:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_UpdateUserRole]  
@RegistrationID int  
as      
begin      
Delete from AssignedRoles where RegistrationID = @RegistrationID  
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_UpdateTimeSheetStatus]    Script Date: 05/11/2018 01:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Usp_UpdateTimeSheetStatus]  
@TimeSheetMasterID int,  
@Comment varchar(100),  
@TimeSheetStatus int  
as  
begin  
update TimeSheetMaster  
set TimeSheetMaster.TimeSheetStatus =@TimeSheetStatus,  
TimeSheetMaster.Comment =@Comment  
where TimeSheetMaster.TimeSheetMasterID =@TimeSheetMasterID  
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_UpdatePasswordbyRegistrationID]    Script Date: 05/11/2018 01:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Usp_UpdatePasswordbyRegistrationID]
@RegistrationID int,
@Password varchar(100)
as
begin
Update Registration
set Registration.Password = @Password
where Registration.RegistrationID =@RegistrationID
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_Updatepassword]    Script Date: 05/11/2018 01:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Usp_Updatepassword]
@NewPassword varchar(100),
@UserID int
as
begin

update Registration 
set Password = @NewPassword
where Registration.RegistrationID = @UserID  
  
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_UpdateExpenseStatus]    Script Date: 05/11/2018 01:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Usp_UpdateExpenseStatus]
@ExpenseID int,
@Comment varchar(100),
@ExpenseStatus int
as
begin
update Expense
set Expense.ExpenseStatus =@ExpenseStatus,
Expense.Comment =@Comment
where Expense.ExpenseID =@ExpenseID
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_UpdateAssignToUser]    Script Date: 05/11/2018 01:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Usp_UpdateAssignToUser]
@AssignTo int,
@RegistrationID int
as
begin
  update Registration
  set Registration.AssignTo = @AssignTo
  where Registration.RegistrationID = @RegistrationID
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetWeekTimeSheetDetails]    Script Date: 05/11/2018 01:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_GetWeekTimeSheetDetails]
@TimeSheetMasterID int
as
begin
select TM.DaysofWeek
      ,TM.Hours
      ,TM.Period
      ,PM.ProjectName
      ,TM.CreatedOn
      from TimeSheetDetails TM
Inner join ProjectMaster PM on TM.ProjectID = PM.ProjectID 
where TimeSheetMasterID = @TimeSheetMasterID
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetUsersCountbyAdminByAdminID]    Script Date: 05/11/2018 01:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_GetUsersCountbyAdminByAdminID] 
@AdminID int 
as
begin
 select ApprovalUser,
    count(case when Status = 1 then 1 else NULL end) SubmittedCount,
    count(case when Status = 2 then 1 else NULL end) ApprovedCount,
    count(case when Status = 3 then 1 else NULL end) RejectedCount
from TimeSheetAuditTB
where ApprovalUser = @AdminID 
group by ApprovalUser
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetUsersCountbyAdmin]    Script Date: 05/11/2018 01:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Usp_GetUsersCountbyAdmin]
@AdminID int 
as
begin
Select Count (1) as UsersCount FROM AssignedRoles where AssignToAdmin =@AdminID  
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetUsersCount]    Script Date: 05/11/2018 01:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Usp_GetUsersCount]
as
begin
Select Count (1) as UsersCount FROM [TimesheetDB].[dbo].[Registration]where RoleID =2
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetUsernamebyRegistrationID]    Script Date: 05/11/2018 01:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_GetUsernamebyRegistrationID]  
@RegistrationID int  
as  
begin  
SELECT   replace(Name, ' ', '')
FROM Registration  
where RegistrationID =@RegistrationID 
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetUserDetailsByRegistrationID]    Script Date: 05/11/2018 01:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Usp_GetUserDetailsByRegistrationID]
@RegistrationID int
as
begin
select
EmployeeID,  
Name,
Mobileno,
EmailID,
Username,
Case when Gender ='M' then 'Male'  when Gender ='F' then 'Female' End Gender,
CONVERT(VARCHAR(10), Birthdate, 101) as Birthdate,
CONVERT(VARCHAR(10), DateofJoining, 101) as DateofJoining
from Registration where RoleID =2 and RegistrationID =@RegistrationID
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetTimeSheetsCountByUserID]    Script Date: 05/11/2018 01:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_GetTimeSheetsCountByUserID]   
@UserID int   
as  
begin  
 select UserID,  
    count(case when Status = 1 then 1 else NULL end) SubmittedCount,  
    count(case when Status = 2 then 1 else NULL end) ApprovedCount,  
    count(case when Status = 3 then 1 else NULL end) RejectedCount  
from TimeSheetAuditTB 
where UserID = @UserID   
group by UserID  
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetTimeSheetsCountByAdminID]    Script Date: 05/11/2018 01:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_GetTimeSheetsCountByAdminID] 
@AdminID int 
as
begin
 select ApprovalUser,
    count(case when Status = 1 then 1 else NULL end) SubmittedCount,
    count(case when Status = 2 then 1 else NULL end) ApprovedCount,
    count(case when Status = 3 then 1 else NULL end) RejectedCount
from TimeSheetAuditTB
where ApprovalUser = @AdminID 
group by ApprovalUser
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetTimeSheetMasterIDTimeSheet]    Script Date: 05/11/2018 01:06:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_GetTimeSheetMasterIDTimeSheet]  
@FromDate Date = null,  
@ToDate Date  = null,  
@UserID int  
as  
begin  
  

SELECT [TimeSheetMasterID]  
FROM [TimesheetDB].[dbo].[TimeSheetMaster]  
where FromDate  between @FromDate and @ToDate and UserID = @UserID  
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetTimeSheetbyFromDateandToDateTimeSheet]    Script Date: 05/11/2018 01:06:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_GetTimeSheetbyFromDateandToDateTimeSheet]  
@FromDate date = null,  
@ToDate date  = null
as  
begin  
  
SELECT [TimeSheetMasterID]  
FROM [TimesheetDB].[dbo].[TimeSheetMaster]  
where FromDate  between @FromDate and @ToDate 
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetReportofTimeSheet]    Script Date: 05/11/2018 01:06:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_GetReportofTimeSheet]  
@FromDate date = null,  
@ToDate date  = null ,
@AssignTo int  
as  
begin  
  
select TM.TimeSheetMasterID,  
       TM.TotalHours,  
       REG.Name   
 from TimeSheetMaster TM  
 Inner Join Registration REG on TM.UserID = REG.RegistrationID  
 where FromDate  between @FromDate and @ToDate and REG.AssignTo =@AssignTo  
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetReportofExpense]    Script Date: 05/11/2018 01:06:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_GetReportofExpense]    
@FromDate date = null,      
@ToDate date  = null,  
@AssignTo int        
as    
begin    
    
SELECT     
       PM.ProjectName           
      ,[PurposeorReason]    
      ,Reg.Name    
      ,case when ExpenseStatus =1 then 'Submitted' when ExpenseStatus =2 then 'Approved' when ExpenseStatus =3 then 'Rejected' end as Status    
      ,EA.Comment as Comment   
      ,[FromDate]    
      ,[ToDate]    
      ,[VoucherID]    
      ,[HotelBills]    
      ,[TravelBills]    
      ,[MealsBills]    
      ,[LandLineBills]    
      ,[TransportBills]    
      ,[MobileBills]    
      ,[Miscellaneous]    
      ,[TotalAmount]    
      ,ex.CreatedOn        
  FROM [TimesheetDB].[dbo].[Expense] ex    
  inner join Registration Reg on reg.RegistrationID = ex.UserID    
  inner join ProjectMaster PM on ex.ProjectID =PM.ProjectID 
  inner join AssignedRoles AR on reg.RegistrationID = AR.RegistrationID   
  inner join ExpenseAuditTB EA on ex.ExpenseID = EA.ExpenseID 
  where FromDate  between @FromDate and @ToDate and AR.AssignToAdmin =@AssignTo and EA.Status = 2      
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetProjectNamesbyTimeSheetMasterID]    Script Date: 05/11/2018 01:06:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Usp_GetProjectNamesbyTimeSheetMasterID]
@TimeSheetMasterID int
as
begin

  SELECT 
      TM.ProjectID,
      PM.ProjectName
  FROM [TimeSheetDetails] TM
  inner join ProjectMaster PM on TM.ProjectID =PM.ProjectID 
  where  TM.TimeSheetMasterID =@TimeSheetMasterID 
  group by TM.[ProjectID],PM.ProjectName
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetProjectCount]    Script Date: 05/11/2018 01:06:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Usp_GetProjectCount]
as
begin
  Select Count (1) as ProjectCount FROM [TimesheetDB].[dbo].[ProjectMaster]
  end
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetPeriodsbyTimeSheetMasterID]    Script Date: 05/11/2018 01:06:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_GetPeriodsbyTimeSheetMasterID]      
@TimeSheetMasterID int      
as      
begin      
      
SELECT       
      CONVERT(varchar(10),T.Period) as Period    
  FROM [TimesheetDB].[dbo].[TimeSheetDetails] T       
  inner join TimeSheetAuditTB TA on T.TimeSheetMasterID = TA.TimeSheetID  
  where TimeSheetMasterID =@TimeSheetMasterID       
  group by Period      
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetListofUsers]    Script Date: 05/11/2018 01:06:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_GetListofUsers]    
as    
begin    
select Registration.RegistrationID, UPPER(Registration.Name) as Name ,    
case when ISNULL(Registration.AssignTo,0) = 0 then 'false' else 'true' end as selectedUsers,    
UPPER(T2.Name) as AssignToAdmin    
from Registration     
left JOIN Registration T2 ON Registration.AssignTo = T2.RegistrationID    
where Registration.RoleID = 2  and Registration.AssignTo is null  
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetListofUnAssignedUsers]    Script Date: 05/11/2018 01:06:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Usp_GetListofUnAssignedUsers]      
      
as      
begin      
      
select * from dbo.Registration R       
where R.RoleID =2 and r.RegistrationID not in (
Select RegistrationID from dbo.AssignedRoles
)    
      
      
--RoleID Rolename      
--1 Admin      
--2 Users      
--3 SuperAdmin      
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetListofAdmins]    Script Date: 05/11/2018 01:06:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_GetListofAdmins]  
  
as  
begin  
select RegistrationID, UPPER(Name) as Name from Registration where RoleID = 1  
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetHoursbyTimeSheetMasterID]    Script Date: 05/11/2018 01:06:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_GetHoursbyTimeSheetMasterID]    
@TimeSheetMasterID int   ,
@ProjectID int 
as    
begin    
    
SELECT     
      Hours 
  FROM [TimeSheetDetails]     
  where TimeSheetMasterID =@TimeSheetMasterID and ProjectID =@ProjectID
  
  union all
  
  SELECT     
      SUM(Hours) 
  FROM [TimeSheetDetails]     
  where TimeSheetMasterID =@TimeSheetMasterID and ProjectID =@ProjectID 
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetExpenseAuditCountByUserID]    Script Date: 05/11/2018 01:06:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Usp_GetExpenseAuditCountByUserID]
@UserID int   
as  
begin  
 select UserID,  
    count(case when Status = 1 then 1 else NULL end) SubmittedCount,  
    count(case when Status = 2 then 1 else NULL end) ApprovedCount,  
    count(case when Status = 3 then 1 else NULL end) RejectedCount  
from ExpenseAuditTB  
where UserID = @UserID   
group by UserID  
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetExpenseAuditCountByAdminID]    Script Date: 05/11/2018 01:06:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Usp_GetExpenseAuditCountByAdminID] 
@AdminID int 
as
begin
 select ApprovalUser,
    count(case when Status = 1 then 1 else NULL end) SubmittedCount,
    count(case when Status = 2 then 1 else NULL end) ApprovedCount,
    count(case when Status = 3 then 1 else NULL end) RejectedCount
from ExpenseAuditTB
where ApprovalUser = @AdminID 
group by ApprovalUser
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetAllReportofExpense]    Script Date: 05/11/2018 01:06:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_GetAllReportofExpense]    
@FromDate date = null,      
@ToDate date  = null
  
as    
begin    
    
SELECT     
       PM.ProjectName           
      ,[PurposeorReason]    
      ,Reg.Name    
      ,case when ExpenseStatus =1 then 'Submitted' when ExpenseStatus =2 then 'Approved' when ExpenseStatus =3 then 'Rejected' end as Status    
      ,[Comment]    
      ,[FromDate]    
      ,[ToDate]    
      ,[VoucherID]    
      ,[HotelBills]    
      ,[TravelBills]    
      ,[MealsBills]    
      ,[LandLineBills]    
      ,[TransportBills]    
      ,[MobileBills]    
      ,[Miscellaneous]    
      ,[TotalAmount]    
      ,ex.CreatedOn        
  FROM [TimesheetDB].[dbo].[Expense] ex    
  inner join Registration Reg on reg.RegistrationID = ex.UserID    
  inner join ProjectMaster PM on ex.ProjectID =PM.ProjectID    
  where FromDate  between @FromDate and @ToDate  
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetAdminIDbyUserID]    Script Date: 05/11/2018 01:06:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[Usp_GetAdminIDbyUserID]
@UserID int
as
begin
SELECT 
      [AssignToAdmin]
  FROM [TimesheetDB].[dbo].[AssignedRoles] where RegistrationID = @UserID
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetAdminDetailsByRegistrationID]    Script Date: 05/11/2018 01:06:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Usp_GetAdminDetailsByRegistrationID]  
@RegistrationID int  
as  
begin  
select  
EmployeeID,    
Name,  
Mobileno,  
EmailID,  
Username,  
Case when Gender ='M' then 'Male'  when Gender ='F' then 'Female' End Gender,  
CONVERT(VARCHAR(10), Birthdate, 101) as Birthdate,  
CONVERT(VARCHAR(10), DateofJoining, 101) as DateofJoining  
from Registration where RoleID =1 and RegistrationID =@RegistrationID  
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetAdminCount]    Script Date: 05/11/2018 01:06:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Usp_GetAdminCount]
as
begin
Select Count (1) as AdminCount FROM [TimesheetDB].[dbo].[Registration] where RoleID =1
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_DisableExistingNotifications]    Script Date: 05/11/2018 01:06:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[Usp_DisableExistingNotifications]
as
begin

update NotificationsTB
set NotificationsTB.Status ='D'

end
GO
/****** Object:  StoredProcedure [dbo].[Usp_DeleteTimeSheet]    Script Date: 05/11/2018 01:06:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_DeleteTimeSheet]
@TimeSheetID int,
@UserID int
as
begin

Delete from TimeSheetMaster where TimeSheetMasterID =@TimeSheetID and UserID =@UserID

if exists (select TimeSheetID from dbo.TimeSheetDetails where TimeSheetID =@TimeSheetID and UserID =@UserID)
begin
Delete from TimeSheetDetails where TimeSheetID =@TimeSheetID and UserID =@UserID
end

if exists (select TimeSheetID from dbo.TimeSheetAuditTB where TimeSheetID =@TimeSheetID and UserID =@UserID)
begin
Delete from TimeSheetAuditTB where TimeSheetID =@TimeSheetID and UserID =@UserID
end

end
GO
/****** Object:  StoredProcedure [dbo].[Usp_DeleteExpenseandDocuments]    Script Date: 05/11/2018 01:06:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_DeleteExpenseandDocuments]  
@ExpenseID int ,
@UserID int 
as  
begin  
Delete from Expense where ExpenseID =@ExpenseID and UserID =@UserID  
  
if exists (select DocumentID from dbo.Documents where ExpenseID =@ExpenseID and UserID =@UserID )  
begin  
Delete from Documents where ExpenseID =@ExpenseID and UserID =@UserID  
end  
  
if exists (select ApprovaExpenselLogID from dbo.ExpenseAuditTB where ExpenseID =@ExpenseID and UserID =@UserID)  
begin  
Delete from ExpenseAuditTB where ExpenseID =@ExpenseID and UserID =@UserID  
end  
  
  
end
GO
/****** Object:  StoredProcedure [dbo].[GetUserIDbyTimeSheetID]    Script Date: 05/11/2018 01:06:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[GetUserIDbyTimeSheetID]
@TimeSheetMasterID int
as
begin
select top 1 UserID from TimeSheetMaster where TimeSheetMasterID =@TimeSheetMasterID
end
GO
/****** Object:  StoredProcedure [dbo].[GetUserIDbyExpenseID]    Script Date: 05/11/2018 01:06:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[GetUserIDbyExpenseID]
@ExpenseID int
as
begin
select top 1 UserID from Expense where ExpenseID =@ExpenseID
end
GO
/****** Object:  StoredProcedure [dbo].[GetDescriptionbyTimeSheetMasterID]    Script Date: 05/11/2018 01:06:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[GetDescriptionbyTimeSheetMasterID]      
@TimeSheetMasterID int   ,  
@ProjectID int   
as      
begin      

select Description from DescriptionTB where TimeSheetMasterID =@TimeSheetMasterID and ProjectID =@ProjectID  
end
GO
/****** Object:  StoredProcedure [dbo].[ELMAH_LogError]    Script Date: 05/11/2018 01:06:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ELMAH_LogError]
(
    @ErrorId UNIQUEIDENTIFIER,
    @Application NVARCHAR(60),
    @Host NVARCHAR(30),
    @Type NVARCHAR(100),
    @Source NVARCHAR(60),
    @Message NVARCHAR(500),
    @User NVARCHAR(50),
    @AllXml NTEXT,
    @StatusCode INT,
    @TimeUtc DATETIME
)
AS

    SET NOCOUNT ON

    INSERT
    INTO
        [ELMAH_Error]
        (
            [ErrorId],
            [Application],
            [Host],
            [Type],
            [Source],
            [Message],
            [User],
            [AllXml],
            [StatusCode],
            [TimeUtc]
        )
    VALUES
        (
            @ErrorId,
            @Application,
            @Host,
            @Type,
            @Source,
            @Message,
            @User,
            @AllXml,
            @StatusCode,
            @TimeUtc
        )
GO
/****** Object:  StoredProcedure [dbo].[ELMAH_GetErrorXml]    Script Date: 05/11/2018 01:06:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ELMAH_GetErrorXml]
(
    @Application NVARCHAR(60),
    @ErrorId UNIQUEIDENTIFIER
)
AS

    SET NOCOUNT ON

    SELECT 
        [AllXml]
    FROM 
        [ELMAH_Error]
    WHERE
        [ErrorId] = @ErrorId
    AND
        [Application] = @Application
GO
/****** Object:  StoredProcedure [dbo].[ELMAH_GetErrorsXml]    Script Date: 05/11/2018 01:06:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ELMAH_GetErrorsXml]
(
    @Application NVARCHAR(60),
    @PageIndex INT = 0,
    @PageSize INT = 15,
    @TotalCount INT OUTPUT
)
AS 

    SET NOCOUNT ON

    DECLARE @FirstTimeUTC DATETIME
    DECLARE @FirstSequence INT
    DECLARE @StartRow INT
    DECLARE @StartRowIndex INT

    SELECT 
        @TotalCount = COUNT(1) 
    FROM 
        [ELMAH_Error]
    WHERE 
        [Application] = @Application

    -- Get the ID of the first error for the requested page

    SET @StartRowIndex = @PageIndex * @PageSize + 1

    IF @StartRowIndex <= @TotalCount
    BEGIN

        SET ROWCOUNT @StartRowIndex

        SELECT  
            @FirstTimeUTC = [TimeUtc],
            @FirstSequence = [Sequence]
        FROM 
            [ELMAH_Error]
        WHERE   
            [Application] = @Application
        ORDER BY 
            [TimeUtc] DESC, 
            [Sequence] DESC

    END
    ELSE
    BEGIN

        SET @PageSize = 0

    END

    -- Now set the row count to the requested page size and get
    -- all records below it for the pertaining application.

    SET ROWCOUNT @PageSize

    SELECT 
        errorId     = [ErrorId], 
        application = [Application],
        host        = [Host], 
        type        = [Type],
        source      = [Source],
        message     = [Message],
        [user]      = [User],
        statusCode  = [StatusCode], 
        time        = CONVERT(VARCHAR(50), [TimeUtc], 126) + 'Z'
    FROM 
        [ELMAH_Error] error
    WHERE
        [Application] = @Application
    AND
        [TimeUtc] <= @FirstTimeUTC
    AND 
        [Sequence] <= @FirstSequence
    ORDER BY
        [TimeUtc] DESC, 
        [Sequence] DESC
    FOR
        XML AUTO
GO
/****** Object:  Default [DF_ELMAH_Error_ErrorId]    Script Date: 05/11/2018 01:06:40 ******/
ALTER TABLE [dbo].[ELMAH_Error] ADD  CONSTRAINT [DF_ELMAH_Error_ErrorId]  DEFAULT (newid()) FOR [ErrorId]
GO
