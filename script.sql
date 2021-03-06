/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.4001)
    Source Database Engine Edition : Microsoft SQL Server Enterprise Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [master]
GO
/****** Object:  Database [resturant]    Script Date: 12/19/2017 12:44:00 PM ******/
CREATE DATABASE [resturant]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'resturant', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\resturant.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'resturant_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\resturant_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [resturant] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [resturant].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [resturant] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [resturant] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [resturant] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [resturant] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [resturant] SET ARITHABORT OFF 
GO
ALTER DATABASE [resturant] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [resturant] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [resturant] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [resturant] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [resturant] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [resturant] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [resturant] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [resturant] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [resturant] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [resturant] SET  DISABLE_BROKER 
GO
ALTER DATABASE [resturant] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [resturant] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [resturant] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [resturant] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [resturant] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [resturant] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [resturant] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [resturant] SET RECOVERY FULL 
GO
ALTER DATABASE [resturant] SET  MULTI_USER 
GO
ALTER DATABASE [resturant] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [resturant] SET DB_CHAINING OFF 
GO
ALTER DATABASE [resturant] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [resturant] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [resturant] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'resturant', N'ON'
GO
ALTER DATABASE [resturant] SET QUERY_STORE = OFF
GO
USE [resturant]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [resturant]
GO
/****** Object:  Table [dbo].[booking]    Script Date: 12/19/2017 12:44:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[booking](
	[id] [int] NOT NULL,
	[tableid] [varchar](50) NULL,
	[username] [varchar](50) NULL,
	[time] [varchar](50) NULL,
	[phone] [varchar](50) NULL,
	[amount] [varchar](50) NULL,
 CONSTRAINT [PK_booking] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[foodOrder]    Script Date: 12/19/2017 12:44:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[foodOrder](
	[id] [int] NOT NULL,
	[username] [varchar](50) NULL,
	[phone] [varchar](50) NULL,
	[foodItem] [varchar](50) NULL,
	[amount] [varchar](50) NULL,
 CONSTRAINT [PK_foodOrder] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[foods]    Script Date: 12/19/2017 12:44:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[foods](
	[id] [int] NOT NULL,
	[name] [varchar](50) NULL,
	[menuId] [varchar](50) NULL,
	[type] [varchar](50) NULL,
	[amount] [varchar](50) NULL,
 CONSTRAINT [PK_foods] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[login]    Script Date: 12/19/2017 12:44:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[login](
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[id] [int] NOT NULL,
	[phone] [varchar](50) NULL,
	[email] [varchar](50) NULL,
 CONSTRAINT [PK_login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[menu]    Script Date: 12/19/2017 12:44:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menu](
	[id] [int] NOT NULL,
	[name] [varchar](50) NULL,
	[type] [varchar](50) NULL,
 CONSTRAINT [PK_menu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[signUp]    Script Date: 12/19/2017 12:44:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[signUp](
	[id] [int] NOT NULL,
	[firstname] [varchar](50) NULL,
	[lastname] [varchar](50) NULL,
	[phone] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[username] [varchar](50) NULL,
 CONSTRAINT [PK_signUp] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tables]    Script Date: 12/19/2017 12:44:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tables](
	[id] [int] NOT NULL,
	[guestNum] [varchar](50) NULL,
	[name] [varchar](50) NULL,
	[amount] [varchar](50) NULL,
 CONSTRAINT [PK_tables] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[booking] ([id], [tableid], [username], [time], [phone], [amount]) VALUES (1, N'1', NULL, N'', NULL, N'10000')
INSERT [dbo].[booking] ([id], [tableid], [username], [time], [phone], [amount]) VALUES (2, N'2', N'sachila33', N'', N'0769415223', N'12000')
INSERT [dbo].[booking] ([id], [tableid], [username], [time], [phone], [amount]) VALUES (3, N'1', N'sachila33', N'', N'0769415223', N'10000')
INSERT [dbo].[booking] ([id], [tableid], [username], [time], [phone], [amount]) VALUES (4, N'1', N'sachila33', N'', N'0769415223', N'10000')
INSERT [dbo].[booking] ([id], [tableid], [username], [time], [phone], [amount]) VALUES (5, N'3', N'sachila33', N'', N'0769415223', N'18000')
INSERT [dbo].[booking] ([id], [tableid], [username], [time], [phone], [amount]) VALUES (6, N'1', N'sachila33', N'', N'0769415223', N'10000')
INSERT [dbo].[foodOrder] ([id], [username], [phone], [foodItem], [amount]) VALUES (1, N'sachila33', N'0769415223', NULL, N'1300')
INSERT [dbo].[foodOrder] ([id], [username], [phone], [foodItem], [amount]) VALUES (2, N'sachila33', N'0769415223', NULL, N'1300')
INSERT [dbo].[foodOrder] ([id], [username], [phone], [foodItem], [amount]) VALUES (3, N'sachila33', N'0769415223', N'undefined, rice, biriyani', N'2700')
INSERT [dbo].[foodOrder] ([id], [username], [phone], [foodItem], [amount]) VALUES (4, N'sachila33', N'0769415223', N'undefined, rice', N'1300')
INSERT [dbo].[foods] ([id], [name], [menuId], [type], [amount]) VALUES (1, N'bread', N'1', N'breakfirst', N'1000')
INSERT [dbo].[foods] ([id], [name], [menuId], [type], [amount]) VALUES (2, N'bun', N'1', N'breakfirst', N'1100')
INSERT [dbo].[foods] ([id], [name], [menuId], [type], [amount]) VALUES (3, N'rice', N'2', N'lunch', N'1300')
INSERT [dbo].[foods] ([id], [name], [menuId], [type], [amount]) VALUES (4, N'biriyani', N'2', N'lunch', N'1400')
INSERT [dbo].[foods] ([id], [name], [menuId], [type], [amount]) VALUES (5, N'kottu', N'3', N'dinner', N'1500')
INSERT [dbo].[foods] ([id], [name], [menuId], [type], [amount]) VALUES (6, N'nasi gurani', N'3', N'dinner', N'1600')
INSERT [dbo].[login] ([username], [password], [id], [phone], [email]) VALUES (N'sachila33', N'123', 2, N'0769415223', N'sachilaranawaka@gmail.com')
INSERT [dbo].[menu] ([id], [name], [type]) VALUES (1, N'classic', N'breakfirst')
INSERT [dbo].[menu] ([id], [name], [type]) VALUES (2, N'vegitarian', N'lunch')
INSERT [dbo].[menu] ([id], [name], [type]) VALUES (3, N'chineese', N'dinner')
INSERT [dbo].[signUp] ([id], [firstname], [lastname], [phone], [email], [username]) VALUES (2, N'sachila', N'ranawaka', N'0769415223', N'sachilaranawaka@gmail.com', N'sachila33')
INSERT [dbo].[tables] ([id], [guestNum], [name], [amount]) VALUES (1, N'4', N'table1', N'10000')
INSERT [dbo].[tables] ([id], [guestNum], [name], [amount]) VALUES (2, N'5', N'table2', N'12000')
INSERT [dbo].[tables] ([id], [guestNum], [name], [amount]) VALUES (3, N'4', N'table3', N'18000')
USE [master]
GO
ALTER DATABASE [resturant] SET  READ_WRITE 
GO
