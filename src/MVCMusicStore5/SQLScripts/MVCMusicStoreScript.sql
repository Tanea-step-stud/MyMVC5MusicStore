USE [master]
GO
/****** Object:  Database [MVCMusicStore]    Script Date: 3/27/2016 3:15:40 PM ******/
CREATE DATABASE [MVCMusicStore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MusicDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLSERVEREXPRESS\MSSQL\DATA\MvcMusicStore.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MusicDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLSERVEREXPRESS\MSSQL\DATA\MvcMusicStore_log.ldf' , SIZE = 3456KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MVCMusicStore] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MVCMusicStore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MVCMusicStore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MVCMusicStore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MVCMusicStore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MVCMusicStore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MVCMusicStore] SET ARITHABORT OFF 
GO
ALTER DATABASE [MVCMusicStore] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [MVCMusicStore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MVCMusicStore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MVCMusicStore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MVCMusicStore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MVCMusicStore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MVCMusicStore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MVCMusicStore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MVCMusicStore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MVCMusicStore] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MVCMusicStore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MVCMusicStore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MVCMusicStore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MVCMusicStore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MVCMusicStore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MVCMusicStore] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MVCMusicStore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MVCMusicStore] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MVCMusicStore] SET  MULTI_USER 
GO
ALTER DATABASE [MVCMusicStore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MVCMusicStore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MVCMusicStore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MVCMusicStore] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [MVCMusicStore] SET DELAYED_DURABILITY = DISABLED 
GO
USE [MVCMusicStore]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 3/27/2016 3:15:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Album]    Script Date: 3/27/2016 3:15:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Album](
	[GenreId] [int] NOT NULL,
	[ArtistId] [int] NOT NULL,
	[Title] [nvarchar](160) NOT NULL,
	[Price] [numeric](10, 2) NOT NULL,
	[Id] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Album] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Artist]    Script Date: 3/27/2016 3:15:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artist](
	[ArtistId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](120) NULL,
PRIMARY KEY CLUSTERED 
(
	[ArtistId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 3/27/2016 3:15:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3/27/2016 3:15:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[NormalizedName] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3/27/2016 3:15:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3/27/2016 3:15:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3/27/2016 3:15:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3/27/2016 3:15:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](max) NULL,
	[NormalizedUserName] [nvarchar](max) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cart]    Script Date: 3/27/2016 3:15:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cart](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[CartId] [varchar](50) NOT NULL,
	[Count] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[Id] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Genre]    Script Date: 3/27/2016 3:15:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genre](
	[GenreId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](120) NULL,
	[Description] [nvarchar](4000) NULL,
PRIMARY KEY CLUSTERED 
(
	[GenreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'MVCMusicStore5.Models.ApplicationDbContext', N'7.0.0-beta5-13549')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 84, N'In Your Honor [Disc 1]', CAST(8.99 AS Numeric(10, 2)), N'2e1f53bd-268b-4651-88c4-006fe78b43f6')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (4, 145, N'Serie Sem Limite (Disc 1)', CAST(9.50 AS Numeric(10, 2)), N'cc6bb3c2-b63c-4b2f-9b1b-0102d6b92bf6')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (3, 109, N'Motley Crue Greatest Hits', CAST(8.99 AS Numeric(10, 2)), N'59196f5d-b157-47b8-81cf-01327d5622f1')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 58, N'Fireball', CAST(8.99 AS Numeric(10, 2)), N'4f458880-93ae-437f-a70a-01fab602a9af')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 90, N'A Matter of Life and Death', CAST(8.99 AS Numeric(10, 2)), N'9f5a43a9-599f-4c53-980d-03d35e1bd7fc')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (4, 196, N'Cake: B-Sides and Rarities', CAST(8.99 AS Numeric(10, 2)), N'34ec18bc-ff06-466b-bc0b-045847a76505')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (6, 81, N'Unplugged', CAST(8.99 AS Numeric(10, 2)), N'90cdd174-5674-46c4-a56e-052226a3c0b1')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 22, N'The Song Remains The Same (Disc 2)', CAST(8.99 AS Numeric(10, 2)), N'e2318352-42c5-4d5e-b837-055a370a6baa')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 118, N'Ten', CAST(8.99 AS Numeric(10, 2)), N'1d6e197c-c8a4-4cd9-8fef-071b3a841447')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (10, 236, N'Mascagni: Cavalleria Rusticana', CAST(8.99 AS Numeric(10, 2)), N'bdcef910-1d19-45c5-b0f5-0d57693dd70a')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (3, 114, N'Tribute', CAST(8.99 AS Numeric(10, 2)), N'813c5c3e-2140-476a-b89e-0d5866c569c3')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (7, 81, N'Unplugged', CAST(8.99 AS Numeric(10, 2)), N'a6bf60e0-6005-41d8-a600-0d7e4d8bc451')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 59, N'Santana Live', CAST(8.99 AS Numeric(10, 2)), N'de1bc0ec-f60b-4af5-83ea-0ea5759943ae')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (10, 237, N'Sibelius: Finlandia', CAST(8.99 AS Numeric(10, 2)), N'1ef2180b-08a3-4b38-b250-0eb3de5a1b02')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (3, 50, N'Garage Inc. (Disc 2)', CAST(8.99 AS Numeric(10, 2)), N'b6b3aa81-109a-462e-b493-0f349700d98a')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (3, 7, N'Plays Metallica By Four Cellos', CAST(8.99 AS Numeric(10, 2)), N'0cd3fbd9-54ed-470f-9957-0f7eb1db12a2')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (2, 89, N'Blue Moods', CAST(8.99 AS Numeric(10, 2)), N'8b02bdaa-68d2-4224-9209-0f957f78c566')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (7, 80, N'Djavan Ao Vivo - Vol. 02', CAST(8.99 AS Numeric(10, 2)), N'8df79b10-6313-4416-baba-0f9734c9c6e3')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 150, N'Rattle And Hum', CAST(8.99 AS Numeric(10, 2)), N'8c949bc7-7828-43cc-8e77-0fe0df65ae7c')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (7, 18, N'Afrociberdelia', CAST(8.99 AS Numeric(10, 2)), N'c0395f61-dba9-41b9-91cc-12713e0d1320')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (7, 6, N'Chill: Brazil (Disc 2)', CAST(8.99 AS Numeric(10, 2)), N'91517646-9188-4353-ac20-14f3819e0856')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 22, N'IV', CAST(8.99 AS Numeric(10, 2)), N'5f4f20c6-d475-4977-a084-15a1b445cd10')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 153, N'Contraband', CAST(8.99 AS Numeric(10, 2)), N'86e46afd-3e14-472b-92f3-15b085c37950')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (3, 135, N'Mezmerize', CAST(8.99 AS Numeric(10, 2)), N'0409c9b7-93af-43e0-81ff-15f312b797a7')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (10, 259, N'South American Getaway', CAST(8.99 AS Numeric(10, 2)), N'840b5a92-247b-4688-ba29-16c0b683f307')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 22, N'Led Zeppelin I', CAST(8.99 AS Numeric(10, 2)), N'62d09f7c-f77f-4ceb-bb5d-18883808496d')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (8, 100, N'Greatest Hits', CAST(8.99 AS Numeric(10, 2)), N'b8c6295e-b2ff-4edb-8c06-1adc1b89811f')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 59, N'Santana - As Years Go By', CAST(8.99 AS Numeric(10, 2)), N'34852243-b0fa-4bc0-bd14-1b9350158ae9')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (3, 11, N'Alcohol Fueled Brewtality Live! [Disc 2]', CAST(8.99 AS Numeric(10, 2)), N'59b9ed7e-aeab-4a2c-a322-1e32a5f63a4e')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (8, 19, N'Acústico MTV [Live]', CAST(8.99 AS Numeric(10, 2)), N'c5e0d75e-a8b5-4aaf-97c5-1e69da591c3f')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (7, 86, N'Roda De Funk', CAST(8.99 AS Numeric(10, 2)), N'00b11ff4-ef03-4d78-8222-1e88bed8b301')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 90, N'Brave New World', CAST(8.99 AS Numeric(10, 2)), N'e2d48ec7-5803-458f-8dd4-1f41ca3a94ae')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (7, 42, N'Milton Nascimento Ao Vivo', CAST(8.99 AS Numeric(10, 2)), N'a5359126-7eee-470d-8dea-1f8239ac1ac5')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (2, 197, N'Quiet Songs', CAST(8.99 AS Numeric(10, 2)), N'ee24a4ca-a924-410d-bd69-205d26fcd604')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 124, N'New Adventures In Hi-Fi', CAST(8.99 AS Numeric(10, 2)), N'c2c1007f-c527-418e-9ec8-2116d7571163')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (7, 46, N'Jorge Ben Jor 25 Anos', CAST(8.99 AS Numeric(10, 2)), N'593b4373-b996-4aaf-bc24-25674a1add99')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (6, 137, N'Live [Disc 1]', CAST(8.99 AS Numeric(10, 2)), N'aad62b86-ab92-493b-95ec-266ad129109d')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 84, N'The Colour And The Shape', CAST(8.99 AS Numeric(10, 2)), N'4cf8a8fb-2737-4f65-acf5-271014e06e2d')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (8, 151, N'UB40 The Best Of - Volume Two [UK]', CAST(8.99 AS Numeric(10, 2)), N'8aaddf15-149d-4ba5-8c51-27ad7e28968a')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (7, 155, N'Ao Vivo [IMPORT]', CAST(8.99 AS Numeric(10, 2)), N'ad24784d-adb9-41f9-a44d-29b409d761c6')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (10, 267, N'Nielsen: The Six Symphonies', CAST(8.99 AS Numeric(10, 2)), N'28507477-11f1-4e77-9f8e-2a5e347e1071')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (7, 56, N'Meus Momentos', CAST(8.99 AS Numeric(10, 2)), N'178a050d-9a26-4d99-a4aa-2add1e0acf62')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (2, 68, N'Miles Ahead', CAST(8.99 AS Numeric(10, 2)), N'748abb3a-98dd-4f93-adb1-2b477db3d36e')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 58, N'MK III The Final Concerts [Disc 1]', CAST(8.99 AS Numeric(10, 2)), N'12185494-e2ce-4095-94fe-2b8212380e70')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 58, N'Purpendicular', CAST(8.99 AS Numeric(10, 2)), N'015a1cbb-2b95-4dca-a976-2c0eed621434')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 150, N'War', CAST(8.99 AS Numeric(10, 2)), N'29e3965d-8189-401b-a0bc-2cb402376fbc')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (10, 221, N'Wagner: Favourite Overtures', CAST(8.99 AS Numeric(10, 2)), N'44a51531-0054-42c6-b1fd-2e0ce34b158b')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (6, 81, N'The Cream Of Clapton', CAST(8.99 AS Numeric(10, 2)), N'2de490af-6692-4705-8479-2e5bbacf9433')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (3, 90, N'Rock In Rio [CD2]', CAST(8.99 AS Numeric(10, 2)), N'cd04135e-afef-46eb-9039-2e9a40cffeb7')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 150, N'B-Sides 1980-1990', CAST(8.99 AS Numeric(10, 2)), N'f7a5adb5-9985-4f5b-9dfc-30956aad0673')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (10, 260, N'Górecki: Symphony No. 3', CAST(8.99 AS Numeric(10, 2)), N'2cf26c94-8395-4d97-b705-30a4a9bf5fdb')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 22, N'Coda', CAST(8.99 AS Numeric(10, 2)), N'aff53dc8-418a-4fd2-9dc5-31945d95dc1e')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 51, N'Greatest Hits I', CAST(8.99 AS Numeric(10, 2)), N'383043a2-c176-40e4-94bd-3242eefaceb4')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (2, 10, N'The Best Of Billy Cobham', CAST(8.99 AS Numeric(10, 2)), N'37073148-78ed-4c89-ac76-339a73706efb')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (3, 50, N'Black Album', CAST(8.99 AS Numeric(10, 2)), N'2213637d-3ea0-49b1-bd4b-340f5658f9b4')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (3, 106, N'Ace Of Spades', CAST(8.99 AS Numeric(10, 2)), N'24b1c165-a0b1-4193-96fb-36eb4e909a97')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 126, N'Raul Seixas', CAST(8.99 AS Numeric(10, 2)), N'0f222779-44da-4f87-b257-3788c8d684c6')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (6, 133, N'In Step', CAST(8.99 AS Numeric(10, 2)), N'fce3367d-bfe8-42dc-bd21-37e514f8eaa1')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (5, 278, N'MacArthur Park Suite', CAST(8.99 AS Numeric(10, 2)), N'86f5a2f8-3fb9-467c-ad9d-3ba252c8cb0d')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (10, 250, N'SCRIABIN: Vers la flamme', CAST(8.99 AS Numeric(10, 2)), N'a79dfd69-6bc2-4e57-9a60-3d6e6298b849')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 3, N'Big Ones', CAST(8.99 AS Numeric(10, 2)), N'f91d9782-bd2c-4c12-9ed5-3d75c21f5ba7')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (6, 90, N'Iron Maiden', CAST(8.99 AS Numeric(10, 2)), N'679f7fb5-0d6d-4bc2-983d-3d9981e61492')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (7, 113, N'Acústico MTV', CAST(8.99 AS Numeric(10, 2)), N'a9b04dd9-dd34-4f13-a8fa-3e06842afd6f')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 111, N'Compositores', CAST(8.99 AS Numeric(10, 2)), N'4277a13e-a7de-450f-8b01-3e1fbce777fb')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 152, N'Diver Down', CAST(8.99 AS Numeric(10, 2)), N'9dfa4b90-02e7-4b86-9c94-3f8f6afbb391')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 150, N'Pop', CAST(8.99 AS Numeric(10, 2)), N'a592c9c2-afd8-45b1-94e3-4072cd14dd2b')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 118, N'Live On Two Legs [Live]', CAST(8.99 AS Numeric(10, 2)), N'8eac4c95-8d6b-4e0c-b41b-40a0215aa73b')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (3, 90, N'Rock In Rio [CD1]', CAST(8.99 AS Numeric(10, 2)), N'737a852d-acc6-401f-8d7b-40bb2307d767')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 51, N'News Of The World', CAST(8.99 AS Numeric(10, 2)), N'd06e7671-b98f-4252-82f7-4335b4381ae5')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 132, N'A-Sides', CAST(8.99 AS Numeric(10, 2)), N'4ae1b478-adf6-41e5-bcf6-43e05eb7b47d')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (10, 232, N'Prokofiev: Symphony No.1', CAST(8.99 AS Numeric(10, 2)), N'd0836b24-0a9a-4fd2-a015-456b09aa8a38')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 110, N'Nevermind', CAST(8.99 AS Numeric(10, 2)), N'38f8bb95-438f-4f1c-b8e6-468b6eabd56a')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 22, N'Led Zeppelin II', CAST(8.99 AS Numeric(10, 2)), N'95e2caa3-abbc-49c5-a6e2-46da611ed4be')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 117, N'The Beast Live', CAST(8.99 AS Numeric(10, 2)), N'f4117d35-d37f-47e2-9959-48cb3f1838b6')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 8, N'Audioslave', CAST(8.99 AS Numeric(10, 2)), N'08f43bdd-42d7-4585-83f7-49dc3ebde482')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (2, 6, N'Warner 25 Anos', CAST(8.99 AS Numeric(10, 2)), N'1c5df21d-0c1e-4579-8911-4a1a04da91bf')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 139, N'Beyond Good And Evil', CAST(8.99 AS Numeric(10, 2)), N'49fe3420-c0ec-4077-8360-4a84a464933a')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (10, 203, N'The Best of Beethoven', CAST(8.99 AS Numeric(10, 2)), N'54d86e77-f40c-4e9a-a4f6-4a926bf38e3c')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 1, N'Let There Be Rock', CAST(8.99 AS Numeric(10, 2)), N'24d5e1a3-6dce-4b67-a9e4-4b7a5042bafe')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (10, 248, N'Mozart: Symphonies Nos. 40 & 41', CAST(8.99 AS Numeric(10, 2)), N'4776c4bb-149e-49ee-8d91-4b7d38c9dce4')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 90, N'Rock In Rio [CD2]', CAST(8.99 AS Numeric(10, 2)), N'c7232920-0a29-4c12-8aad-4d53001b4031')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 22, N'Presence', CAST(8.99 AS Numeric(10, 2)), N'8205fd8e-4af7-411c-b05b-4e2b285c4697')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 22, N'Physical Graffiti [Disc 1]', CAST(8.99 AS Numeric(10, 2)), N'9df3eb47-89ff-4c95-ba5d-50a731696ac9')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 114, N'Bark at the Moon (Remastered)', CAST(8.99 AS Numeric(10, 2)), N'32fe2718-feea-4bcf-850e-529c48afa342')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (10, 219, N'A Soprano Inspired', CAST(8.99 AS Numeric(10, 2)), N'6599e3a7-0eda-40e7-996e-52f47f7b4e84')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 5, N'Facelift', CAST(8.99 AS Numeric(10, 2)), N'9ef76e8d-00cf-4add-892b-535b83ccc744')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (3, 50, N'Ride The Lightning', CAST(8.99 AS Numeric(10, 2)), N'46e6ca43-ab34-4e98-848c-545b5a029c4c')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 120, N'Dark Side Of The Moon', CAST(8.99 AS Numeric(10, 2)), N'3dfd7648-a142-4123-aee9-563ab68b2e4e')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 23, N'Bongo Fury', CAST(8.99 AS Numeric(10, 2)), N'37639bb3-242d-4052-9ac8-56407a007268')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 90, N'Virtual XI', CAST(8.99 AS Numeric(10, 2)), N'590fff7c-3fb7-4e6b-a941-5706ab6cdcad')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 58, N'Stormbringer', CAST(8.99 AS Numeric(10, 2)), N'bce077b6-bd92-404b-8b0d-59b6c429b656')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (4, 253, N'Carried to Dust (Bonus Track Version)', CAST(8.99 AS Numeric(10, 2)), N'a643e8ec-e058-473d-8dac-5ae9c07dc594')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 90, N'Live At Donington 1992 (Disc 1)', CAST(8.99 AS Numeric(10, 2)), N'0a1795ea-fed6-458b-b241-5b4f61c50c95')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (3, 90, N'Somewhere in Time', CAST(8.99 AS Numeric(10, 2)), N'c79df9d5-8cc7-43d1-9672-5ce0d032c74d')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (7, 103, N'Barulhinho Bom', CAST(8.99 AS Numeric(10, 2)), N'bf41866d-592f-4711-8a7a-5e43e3585dbf')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 84, N'In Your Honor [Disc 2]', CAST(8.99 AS Numeric(10, 2)), N'3ceb216d-4e55-4f40-ae69-5ef2cda4a796')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (2, 68, N'The Essential Miles Davis [Disc 2]', CAST(8.99 AS Numeric(10, 2)), N'ccf3cedf-5fe6-41ef-8011-5fbdf7799b5e')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (10, 247, N'English Renaissance', CAST(8.99 AS Numeric(10, 2)), N'4c6d8c35-bad0-40bf-bbff-615058687137')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (7, 21, N'Sambas De Enredo 2001', CAST(8.99 AS Numeric(10, 2)), N'99b0521d-6f30-47e1-bf78-61873bc5d4b2')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (10, 226, N'Strauss: Waltzes', CAST(8.99 AS Numeric(10, 2)), N'd4c183ab-eafb-458a-be46-61cc505ba29c')
GO
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (3, 50, N'Load', CAST(8.99 AS Numeric(10, 2)), N'c05f4cbe-3fa1-4b90-b2ce-64afb41e8c31')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 130, N'O Samba Poconé', CAST(8.99 AS Numeric(10, 2)), N'b4237d26-1e35-44f9-8814-6579b4ca9cbb')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (2, 68, N'The Essential Miles Davis [Disc 1]', CAST(8.99 AS Numeric(10, 2)), N'b5a508de-42f7-4b7e-b8e8-67a55cac5d5d')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (7, 27, N'Quanta Gente Veio Ver (Live)', CAST(8.99 AS Numeric(10, 2)), N'2fdc2569-5152-45da-ad37-68831e74bf54')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 58, N'Slaves And Masters', CAST(8.99 AS Numeric(10, 2)), N'c772918e-97bf-4fcf-8558-6a686037f598')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 150, N'How To Dismantle An Atomic Bomb', CAST(8.99 AS Numeric(10, 2)), N'e972f411-11e7-4670-bc16-6b3735a93832')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 58, N'The Battle Rages On', CAST(8.99 AS Numeric(10, 2)), N'7d405d29-62ec-41dd-a96d-6e28c820b7ad')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 88, N'Use Your Illusion I', CAST(8.99 AS Numeric(10, 2)), N'3c4e97cb-e146-4bcb-9ee3-6e386f14d274')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 58, N'The Final Concerts (Disc 2)', CAST(8.99 AS Numeric(10, 2)), N'a60966d5-6336-4808-a187-6f011ba2af71')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 88, N'Appetite for Destruction', CAST(8.99 AS Numeric(10, 2)), N'4ad64961-f8a6-46f2-8ffa-6f6a72b9b911')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (3, 90, N'Live After Death', CAST(8.99 AS Numeric(10, 2)), N'cc293513-0b8f-446f-9ed7-6fea3502694c')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (7, 83, N'Deixa Entrar', CAST(8.99 AS Numeric(10, 2)), N'61693827-2bb6-4102-8242-71a63040b13d')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (8, 19, N'Cidade Negra - Hits', CAST(8.99 AS Numeric(10, 2)), N'35e4cf67-1069-443d-bc20-72b6759ad6c2')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 59, N'Supernatural', CAST(8.99 AS Numeric(10, 2)), N'ac2fe900-1b2e-4bb7-a1fb-74022e5d996b')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (3, 90, N'Seventh Son of a Seventh Son', CAST(8.99 AS Numeric(10, 2)), N'79d572b3-020b-43d8-9a12-75a1a23cfe9a')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 152, N'Van Halen', CAST(8.99 AS Numeric(10, 2)), N'b0316e3a-8b53-4922-be63-75c9f258eb6c')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 114, N'No More Tears (Remastered)', CAST(8.99 AS Numeric(10, 2)), N'47eccdea-5843-469f-8fb2-7690c6281eb4')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 95, N'Surfing with the Alien (Remastered)', CAST(8.99 AS Numeric(10, 2)), N'f3ef3305-78f1-4efb-b8ed-76a0f0de2092')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (10, 266, N'Szymanowski: Piano Works, Vol. 1', CAST(8.99 AS Numeric(10, 2)), N'73d4d87f-0a61-4851-b3b7-788bedd1b78a')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (2, 202, N'Worlds', CAST(8.99 AS Numeric(10, 2)), N'3045b5ad-f25a-4abf-ab39-78df9b8558ef')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 2, N'Balls to the Wall', CAST(8.99 AS Numeric(10, 2)), N'ca03e33f-3d77-427d-8d5b-7930c84d242a')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (10, 211, N'Bach: Goldberg Variations', CAST(8.99 AS Numeric(10, 2)), N'47113f03-de22-4843-8e66-79e28d01382a')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (3, 90, N'A Real Live One', CAST(8.99 AS Numeric(10, 2)), N'0fe77b84-1431-4b4e-8767-7bc3e8a5b2d8')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (10, 231, N'Bach: Toccata & Fugue in D Minor', CAST(8.99 AS Numeric(10, 2)), N'bef4464e-5162-4251-be0e-7ca64aca80c3')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (3, 50, N'...And Justice For All', CAST(8.99 AS Numeric(10, 2)), N'03ece713-4451-4da1-b14a-7d9b772b3322')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 142, N'Voodoo Lounge', CAST(8.99 AS Numeric(10, 2)), N'5720e5f1-23cf-41c8-8e63-81333855705f')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (10, 226, N'Respighi:Pines of Rome', CAST(8.99 AS Numeric(10, 2)), N'dc912ae8-4ab5-4fe4-9234-81705ff1dfc0')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (3, 50, N'Master Of Puppets', CAST(8.99 AS Numeric(10, 2)), N'b279bd17-7a82-4ea9-a9cd-81f8136086b2')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 22, N'Physical Graffiti [Disc 2]', CAST(8.99 AS Numeric(10, 2)), N'eb84e329-c927-4575-8a0c-8224bc8c8133')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (10, 212, N'Bach: The Cello Suites', CAST(8.99 AS Numeric(10, 2)), N'ef1fc780-9344-4501-b099-82dc49684fc4')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 82, N'King For A Day Fool For A Lifetime', CAST(8.99 AS Numeric(10, 2)), N'812e0462-e3de-40d4-9e97-836acb778b38')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (3, 14, N'Chemical Wedding', CAST(8.99 AS Numeric(10, 2)), N'254329a2-166b-4001-9df0-84fc9b7c820b')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 140, N'The Doors', CAST(8.99 AS Numeric(10, 2)), N'6706d509-ada6-489e-9c10-8647ac6ab296')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 94, N'Are You Experienced?', CAST(8.99 AS Numeric(10, 2)), N'1d0d8e03-6349-436e-bafa-8954b686088d')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 90, N'Live At Donington 1992 (Disc 2)', CAST(8.99 AS Numeric(10, 2)), N'd46976b8-5f49-4aa5-8ce6-8bef0d52798b')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 58, N'Machine Head', CAST(8.99 AS Numeric(10, 2)), N'8568e577-c0dc-46b2-916d-8c55800c2714')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 118, N'Riot Act', CAST(8.99 AS Numeric(10, 2)), N'e5a8bd50-79ff-4d56-b6dd-8c94e9d138d2')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (10, 224, N'The Last Night of the Proms', CAST(8.99 AS Numeric(10, 2)), N'8b10a928-238e-4bc6-8d61-8e66b5817bc6')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (7, 37, N'The Best of Ed Motta', CAST(8.99 AS Numeric(10, 2)), N'0d22c3ff-571c-4df6-abd4-90721f8da71b')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 128, N'Retrospective I (1974-1980)', CAST(8.99 AS Numeric(10, 2)), N'edbcc48c-f137-4f74-a1df-9086e6e7cc87')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 150, N'Zooropa', CAST(8.99 AS Numeric(10, 2)), N'5c4b6821-ffab-4790-8b75-9131c22f488c')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (5, 276, N'Le Freak', CAST(8.99 AS Numeric(10, 2)), N'435ab3c1-3071-40ab-acb4-915aaf308be7')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 134, N'Core', CAST(8.99 AS Numeric(10, 2)), N'c4b0535a-2ff2-4005-b853-9517331b5468')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 102, N'Misplaced Childhood', CAST(8.99 AS Numeric(10, 2)), N'727fed7c-70f2-433a-b3f6-96808dc09b71')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 200, N'Every Kind of Light', CAST(8.99 AS Numeric(10, 2)), N'c109f27f-22cb-437a-a28e-969e362eb5e4')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (3, 98, N'Living After Midnight', CAST(8.99 AS Numeric(10, 2)), N'0784e568-e99f-408e-a073-98326d6fb96a')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 141, N'The Police Greatest Hits', CAST(8.99 AS Numeric(10, 2)), N'522a037b-7aed-473e-8e89-9a644e2611ab')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 127, N'Californication', CAST(8.99 AS Numeric(10, 2)), N'673bc562-2198-4991-a2f1-9a790103297c')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (10, 230, N'A Copland Celebration, Vol. I', CAST(8.99 AS Numeric(10, 2)), N'5a115afc-27b2-45da-9b8d-9b059ac2cf72')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (7, 42, N'Minas', CAST(8.99 AS Numeric(10, 2)), N'94c2b6d8-d1e3-4bb5-b0e6-9b5dec852cf9')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (7, 17, N'Minha Historia', CAST(8.99 AS Numeric(10, 2)), N'fb90d9a9-38f9-471e-a5c7-9e51e6dce315')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (7, 41, N'Elis Regina-Minha História', CAST(8.99 AS Numeric(10, 2)), N'29ee990b-3fc9-41a7-a9fa-9e6eca04d77e')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 76, N'Chronicle, Vol. 2', CAST(8.99 AS Numeric(10, 2)), N'09f61974-4358-4619-80cf-9eb96056fb3c')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 150, N'The Best Of 1980-1990', CAST(8.99 AS Numeric(10, 2)), N'a883a5b5-600e-48d8-b6aa-9f6c3555667c')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (7, 77, N'Cássia Eller - Sem Limite [Disc 1]', CAST(8.99 AS Numeric(10, 2)), N'9f6b4c12-96a0-4210-9989-9f83469166d2')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (2, 79, N'Outbreak', CAST(8.99 AS Numeric(10, 2)), N'8b4faf67-41bc-4330-aec1-9fa01b8055be')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 22, N'In Through The Out Door', CAST(8.99 AS Numeric(10, 2)), N'5941ae01-f2bc-4ec0-a177-a0256ca7c8bc')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (7, 113, N'Arquivo II', CAST(8.99 AS Numeric(10, 2)), N'08bd822d-c0f3-461c-b558-a1ecc0a7c8b3')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 100, N'Greatest Hits', CAST(8.99 AS Numeric(10, 2)), N'1c92b0a4-4b4c-477e-b018-a26c19037937')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (10, 242, N'Adams, John: The Chairman Dances', CAST(8.99 AS Numeric(10, 2)), N'e724b7f3-393e-4663-ae37-a633bfbd3ac8')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (10, 264, N'Weill: The Seven Deadly Sins', CAST(8.99 AS Numeric(10, 2)), N'80ee092b-32fa-463b-a5cf-a670eb902371')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 150, N'Achtung Baby', CAST(8.99 AS Numeric(10, 2)), N'cc259719-ca80-4bf3-a917-a795cbe85f64')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (2, 53, N'Heart of the Night', CAST(8.99 AS Numeric(10, 2)), N'd1935b4b-1d2e-47cf-9af8-a7a89e1c05cf')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (3, 90, N'Piece Of Mind', CAST(8.99 AS Numeric(10, 2)), N'b6917566-cbf6-43de-8a33-a7c79086e740')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 90, N'The Number of The Beast', CAST(8.99 AS Numeric(10, 2)), N'979a55a7-8d18-4502-a753-a7fabf1084bb')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (10, 274, N'Mozart: Chamber Music', CAST(8.99 AS Numeric(10, 2)), N'4e4a6612-c4de-42f3-b39f-a91d527651c9')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 52, N'Greatest Kiss', CAST(8.99 AS Numeric(10, 2)), N'1fc80e73-b839-4352-bdc7-aa83744ab4e8')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (2, 27, N'Quanta Gente Veio ver--Bônus De Carnaval', CAST(8.99 AS Numeric(10, 2)), N'fff3463f-c3b6-40a8-a31d-ab1578308ce3')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (7, 96, N'Jota Quest-1995', CAST(8.99 AS Numeric(10, 2)), N'a868364a-3435-4c12-bc92-acac146e8112')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 142, N'No Security', CAST(8.99 AS Numeric(10, 2)), N'dfec4dec-ac76-4be3-9f38-aec93e4d6edc')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (10, 255, N'Bartok: Violin & Viola Concertos', CAST(8.99 AS Numeric(10, 2)), N'd236cf18-156d-4142-a9d8-af308b197292')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 58, N'Come Taste The Band', CAST(8.99 AS Numeric(10, 2)), N'0abb489c-f1a6-4405-8e46-af5bfd4f3d1c')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (5, 277, N'Ring My Bell', CAST(8.99 AS Numeric(10, 2)), N'a4c67627-512f-4cd3-8622-b1b3a24f5c39')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (10, 245, N'Berlioz: Symphonie Fantastique', CAST(8.99 AS Numeric(10, 2)), N'ad9a4366-1ae7-44e4-9276-b33fdc87adcc')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (10, 223, N'Tchaikovsky: The Nutcracker', CAST(8.99 AS Numeric(10, 2)), N'7c6cd6e7-eeea-4b53-a872-b38e5769a603')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 1, N'For Those About To Rock We Salute You', CAST(8.99 AS Numeric(10, 2)), N'1b06fca1-a2ab-48d3-89a3-b3d14ec7bd0d')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 130, N'Maquinarama', CAST(8.99 AS Numeric(10, 2)), N'34189b1a-bc43-40b7-b6cb-b489196d8aef')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 114, N'Diary of a Madman (Remastered)', CAST(8.99 AS Numeric(10, 2)), N'471e0b8f-4c94-42c9-b025-b4be79233ed0')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (7, 16, N'Prenda Minha', CAST(8.99 AS Numeric(10, 2)), N'22f0fca5-8fb3-4391-8366-b519d3c59333')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 127, N'By The Way', CAST(8.99 AS Numeric(10, 2)), N'49162e8f-3aea-486d-befc-b5efe03d3d5d')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 105, N'The Best Of Men At Work', CAST(8.99 AS Numeric(10, 2)), N'fd690373-334c-44d0-9774-b6faf4d32582')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (3, 11, N'Alcohol Fueled Brewtality Live! [Disc 1]', CAST(8.99 AS Numeric(10, 2)), N'2af70ae9-a785-48d4-a15e-b9522e8c1974')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 152, N'The Best Of Van Halen, Vol. I', CAST(8.99 AS Numeric(10, 2)), N'9bcad4f0-6e4e-416e-95d1-b9928ccefc27')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 118, N'Vs.', CAST(8.99 AS Numeric(10, 2)), N'3bae5b48-c87f-4c1a-a05e-b9a269e69921')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (7, 113, N'Arquivo Os Paralamas Do Sucesso', CAST(8.99 AS Numeric(10, 2)), N'6f9c61da-5ffc-44a3-85e2-bb3c02c55d46')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (9, 252, N'Frank', CAST(8.99 AS Numeric(10, 2)), N'b991c03f-6a9f-4f40-8f5c-bded9953122e')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (3, 90, N'Powerslave', CAST(8.99 AS Numeric(10, 2)), N'fcb05342-d343-4cc2-873f-be7c6353eca5')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (3, 12, N'Black Sabbath', CAST(8.99 AS Numeric(10, 2)), N'44ff331c-9458-4907-abcb-c1c4be6268dd')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (7, 21, N'Vozes do MPB', CAST(8.99 AS Numeric(10, 2)), N'9109972e-8a72-4c69-b380-c3527c1d11d3')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (10, 261, N'Purcell: The Fairy Queen', CAST(8.99 AS Numeric(10, 2)), N'9c86175f-48ff-42cf-ab8c-c359052b6790')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 90, N'Fear Of The Dark', CAST(8.99 AS Numeric(10, 2)), N'2177b0a6-d78f-4137-817e-c432489c51a6')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 90, N'The X Factor', CAST(8.99 AS Numeric(10, 2)), N'12ad05a2-1b6c-412f-824f-c52b1169127c')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (7, 20, N'Na Pista', CAST(8.99 AS Numeric(10, 2)), N'93c92b27-c0d3-40ba-a5f2-c6b225121cc6')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 51, N'Greatest Hits II', CAST(8.99 AS Numeric(10, 2)), N'5b5b73eb-679e-49fa-b770-c849cefef7c8')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (3, 90, N'No Prayer For The Dying', CAST(8.99 AS Numeric(10, 2)), N'b770cdfc-f1db-439f-8ea8-c921b7577073')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (7, 145, N'Serie Sem Limite (Disc 2)', CAST(8.99 AS Numeric(10, 2)), N'aa8d8e6f-c535-4c19-ae73-c94dae7f6ac0')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (7, 99, N'Mais Do Mesmo', CAST(8.99 AS Numeric(10, 2)), N'a2f9551d-08c3-4b84-9784-c9b6481060eb')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 114, N'Speak of the Devil', CAST(8.99 AS Numeric(10, 2)), N'e015f202-3aa9-4bce-9c0b-caa05ec0e259')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 76, N'Chronicle, Vol. 1', CAST(8.99 AS Numeric(10, 2)), N'c701f13c-7db6-419c-a945-cac51e8f5c65')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (10, 213, N'Handel: The Messiah (Highlights)', CAST(8.99 AS Numeric(10, 2)), N'18e16a14-2cd2-431c-ba79-cbfde1de2da2')
GO
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (6, 137, N'Live [Disc 2]', CAST(8.99 AS Numeric(10, 2)), N'6a33c660-652d-4ccc-add5-ccd023d5a343')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 114, N'Blizzard of Ozz', CAST(8.99 AS Numeric(10, 2)), N'da88b25f-b454-4924-ba82-cf95d96d8626')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (9, 21, N'Axé Bahia 2001', CAST(8.99 AS Numeric(10, 2)), N'08bb52ef-0aa1-4e83-80a5-d00853c02647')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (3, 90, N'The Number of The Beast', CAST(8.99 AS Numeric(10, 2)), N'05408c21-aadb-4f32-974d-d10973e1377c')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 22, N'BBC Sessions [Disc 2] [Live]', CAST(8.99 AS Numeric(10, 2)), N'c689f138-f7e8-4e7a-93e6-d38335b11a63')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (7, 72, N'Vinicius De Moraes', CAST(8.99 AS Numeric(10, 2)), N'532509e6-132f-4bf6-94ed-d45c9ecbc5f0')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 142, N'Hot Rocks, 1964-1971 (Disc 1)', CAST(8.99 AS Numeric(10, 2)), N'4687db9b-f295-410c-9b95-d51fd9d006c5')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 144, N'My Generation - The Very Best Of The Who', CAST(8.99 AS Numeric(10, 2)), N'edd9c488-1247-4bd9-9c8f-d5deb45bd065')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 22, N'The Song Remains The Same (Disc 1)', CAST(8.99 AS Numeric(10, 2)), N'6ca82a1e-a384-4d1c-ae29-d5ef8f7a062a')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (7, 80, N'Djavan Ao Vivo - Vol. 1', CAST(8.99 AS Numeric(10, 2)), N'054fbdb9-0f01-46e4-9489-d6683befcded')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (3, 50, N'ReLoad', CAST(8.99 AS Numeric(10, 2)), N'44dd455f-a25d-4cbc-b6a8-d899e4fff07c')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 157, N'Un-Led-Ed', CAST(8.99 AS Numeric(10, 2)), N'e2678237-6ea6-4182-95ca-d95daa0bf41e')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (3, 88, N'Use Your Illusion II', CAST(8.99 AS Numeric(10, 2)), N'a98bccf0-c512-40fb-a2f0-dba0e4384a22')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (3, 50, N'Garage Inc. (Disc 1)', CAST(8.99 AS Numeric(10, 2)), N'33b83e9e-bae6-47a0-9f8c-dc2b67bad674')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 22, N'BBC Sessions [Disc 1] [Live]', CAST(8.99 AS Numeric(10, 2)), N'60d80487-8b2e-4246-bb4c-dd7d766a42ee')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (4, 205, N'Carry On', CAST(8.99 AS Numeric(10, 2)), N'722a0435-d9c2-43d6-98d3-df9e6932e81c')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (10, 245, N'Prokofiev: Romeo & Juliet', CAST(8.99 AS Numeric(10, 2)), N'62a6d0bd-81e9-432d-973c-e0c52e8d1c6a')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 58, N'Deep Purple In Rock', CAST(8.99 AS Numeric(10, 2)), N'b70f05d6-cd0d-465c-9f72-e1d979caa49c')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 2, N'Restless and Wild', CAST(8.99 AS Numeric(10, 2)), N'65cd65f1-6138-43f1-b40f-e2086b98374e')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (10, 208, N'Pachelbel: Canon & Gigue', CAST(8.99 AS Numeric(10, 2)), N'28211314-8244-4a5e-a47c-e40980d72f94')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (7, 24, N'Chill: Brazil (Disc 1)', CAST(8.99 AS Numeric(10, 2)), N'2f1d0741-41ff-4ce7-b9a8-e4d6cf2c61da')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (3, 90, N'A Real Dead One', CAST(8.99 AS Numeric(10, 2)), N'582bd96e-1286-46ea-8bee-e53ece9fc54f')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (4, 204, N'Temple of the Dog', CAST(8.99 AS Numeric(10, 2)), N'7b862a4b-9e31-41e7-bf4a-e5f3a9f710cc')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (10, 233, N'Scheherazade', CAST(8.99 AS Numeric(10, 2)), N'333b3b9d-a135-4060-8577-e6669b3f848b')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (7, 16, N'Sozinho Remix Ao Vivo', CAST(8.99 AS Numeric(10, 2)), N'461f3409-f77c-4e73-85da-e7f00bac936b')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (3, 12, N'Black Sabbath Vol. 4 (Remaster)', CAST(8.99 AS Numeric(10, 2)), N'383190bc-574a-4f88-92c9-e7f8c121c512')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (3, 87, N'Faceless', CAST(8.99 AS Numeric(10, 2)), N'2dd65b79-2435-4864-b0f4-ea8b51c2cf6e')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (10, 217, N'Haydn: Symphonies 99 - 104', CAST(8.99 AS Numeric(10, 2)), N'b8f33b0b-8e24-4b06-a16e-eb1f822a9398')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (3, 100, N'Greatest Hits', CAST(8.99 AS Numeric(10, 2)), N'57fd6d11-8e0a-4fba-b43c-ec1261353903')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 136, N'[1997] Black Light Syndrome', CAST(8.99 AS Numeric(10, 2)), N'8c90e90a-7ddf-48fe-9415-ec4d2f0ee21a')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 22, N'Houses Of The Holy', CAST(8.99 AS Numeric(10, 2)), N'5d77e2b3-ed6c-458a-846e-ed076751f610')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (4, 8, N'Revelations', CAST(8.99 AS Numeric(10, 2)), N'4611d845-046a-4ef7-b721-ed9fd256bb24')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 22, N'Led Zeppelin III', CAST(8.99 AS Numeric(10, 2)), N'a1f7573d-5202-4c5e-b7ee-ee2720441c3f')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (2, 53, N'Morning Dance', CAST(8.99 AS Numeric(10, 2)), N'475a1cfd-cab2-4085-a9b6-ee7e178eae69')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 92, N'Emergency On Planet Earth', CAST(8.99 AS Numeric(10, 2)), N'490e0a1c-3a88-4c6f-bdff-ef107dc1ab13')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (7, 201, N'Duos II', CAST(8.99 AS Numeric(10, 2)), N'15a1bf48-12fe-472c-86d7-ef9f5f525986')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 152, N'Van Halen III', CAST(8.99 AS Numeric(10, 2)), N'56e57143-c7ea-41ab-91d3-f0c84ea7da5c')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (7, 112, N'Olodum', CAST(8.99 AS Numeric(10, 2)), N'06cfb53d-98d2-431a-bd3c-f30f3e45fe8b')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 4, N'Jagged Little Pill', CAST(8.99 AS Numeric(10, 2)), N'e6f42e65-61cc-45a0-8b0c-f3e7625dc3af')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (7, 18, N'Da Lama Ao Caos', CAST(8.99 AS Numeric(10, 2)), N'4712864a-7f7b-4e6e-815e-f4a13b370091')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 52, N'Unplugged [Live]', CAST(8.99 AS Numeric(10, 2)), N'e86c0739-a0e0-466f-bd7d-f5fe21aa7a72')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (10, 234, N'Bach: The Brandenburg Concertos', CAST(8.99 AS Numeric(10, 2)), N'e8812649-5cb9-4c42-840f-f6ac09a93cb5')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (3, 50, N'St. Anger', CAST(8.99 AS Numeric(10, 2)), N'3f8bec9c-f79c-4d68-b9ba-fa0294d37741')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 55, N'Into The Light', CAST(8.99 AS Numeric(10, 2)), N'caec8b2d-6cd0-4702-ae44-fb272936ff12')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (1, 115, N'Walking Into Clarksdale', CAST(8.99 AS Numeric(10, 2)), N'da5ee79f-dcb5-41ba-baaa-fb952a56761f')
INSERT [dbo].[Album] ([GenreId], [ArtistId], [Title], [Price], [Id]) VALUES (10, 229, N'Carmina Burana', CAST(8.99 AS Numeric(10, 2)), N'00b257eb-d4d7-42a7-a7b9-fe0f1676fe28')
SET IDENTITY_INSERT [dbo].[Artist] ON 

INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (1, N'AC/DC')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (2, N'Accept')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (3, N'Aerosmith')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (4, N'Alanis Morissette')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (5, N'Alice In Chains')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (6, N'Antônio Carlos Jobim')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (7, N'Apocalyptica')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (8, N'Audioslave')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (10, N'Billy Cobham')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (11, N'Black Label Society')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (12, N'Black Sabbath')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (14, N'Bruce Dickinson')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (15, N'Buddy Guy')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (16, N'Caetano Veloso')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (17, N'Chico Buarque')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (18, N'Chico Science & Nação Zumbi')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (19, N'Cidade Negra')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (20, N'Cláudio Zoli')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (21, N'Various Artists')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (22, N'Led Zeppelin')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (23, N'Frank Zappa & Captain Beefheart')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (24, N'Marcos Valle')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (27, N'Gilberto Gil')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (37, N'Ed Motta')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (41, N'Elis Regina')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (42, N'Milton Nascimento')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (46, N'Jorge Ben')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (50, N'Metallica')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (51, N'Queen')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (52, N'Kiss')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (53, N'Spyro Gyra')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (55, N'David Coverdale')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (56, N'Gonzaguinha')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (58, N'Deep Purple')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (59, N'Santana')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (68, N'Miles Davis')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (72, N'Vinícius De Moraes')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (76, N'Creedence Clearwater Revival')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (77, N'Cássia Eller')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (79, N'Dennis Chambers')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (80, N'Djavan')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (81, N'Eric Clapton')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (82, N'Faith No More')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (83, N'Falamansa')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (84, N'Foo Fighters')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (86, N'Funk Como Le Gusta')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (87, N'Godsmack')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (88, N'Guns N'' Roses')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (89, N'Incognito')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (90, N'Iron Maiden')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (92, N'Jamiroquai')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (94, N'Jimi Hendrix')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (95, N'Joe Satriani')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (96, N'Jota Quest')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (98, N'Judas Priest')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (99, N'Legião Urbana')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (100, N'Lenny Kravitz')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (101, N'Lulu Santos')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (102, N'Marillion')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (103, N'Marisa Monte')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (105, N'Men At Work')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (106, N'Motörhead')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (109, N'Mötley Crüe')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (110, N'Nirvana')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (111, N'O Terço')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (112, N'Olodum')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (113, N'Os Paralamas Do Sucesso')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (114, N'Ozzy Osbourne')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (115, N'Page & Plant')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (117, N'Paul D''Ianno')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (118, N'Pearl Jam')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (120, N'Pink Floyd')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (124, N'R.E.M.')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (126, N'Raul Seixas')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (127, N'Red Hot Chili Peppers')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (128, N'Rush')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (130, N'Skank')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (132, N'Soundgarden')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (133, N'Stevie Ray Vaughan & Double Trouble')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (134, N'Stone Temple Pilots')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (135, N'System Of A Down')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (136, N'Terry Bozzio, Tony Levin & Steve Stevens')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (137, N'The Black Crowes')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (139, N'The Cult')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (140, N'The Doors')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (141, N'The Police')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (142, N'The Rolling Stones')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (144, N'The Who')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (145, N'Tim Maia')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (150, N'U2')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (151, N'UB40')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (152, N'Van Halen')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (153, N'Velvet Revolver')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (155, N'Zeca Pagodinho')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (157, N'Dread Zeppelin')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (179, N'Scorpions')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (196, N'Cake')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (197, N'Aisha Duo')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (200, N'The Posies')
GO
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (201, N'Luciana Souza/Romero Lubambo')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (202, N'Aaron Goldberg')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (203, N'Nicolaus Esterhazy Sinfonia')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (204, N'Temple of the Dog')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (205, N'Chris Cornell')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (206, N'Alberto Turco & Nova Schola Gregoriana')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (208, N'English Concert & Trevor Pinnock')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (211, N'Wilhelm Kempff')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (212, N'Yo-Yo Ma')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (213, N'Scholars Baroque Ensemble')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (217, N'Royal Philharmonic Orchestra & Sir Thomas Beecham')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (219, N'Britten Sinfonia, Ivor Bolton & Lesley Garrett')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (221, N'Sir Georg Solti & Wiener Philharmoniker')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (223, N'London Symphony Orchestra & Sir Charles Mackerras')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (224, N'Barry Wordsworth & BBC Concert Orchestra')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (226, N'Eugene Ormandy')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (229, N'Boston Symphony Orchestra & Seiji Ozawa')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (230, N'Aaron Copland & London Symphony Orchestra')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (231, N'Ton Koopman')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (232, N'Sergei Prokofiev & Yuri Temirkanov')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (233, N'Chicago Symphony Orchestra & Fritz Reiner')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (234, N'Orchestra of The Age of Enlightenment')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (236, N'James Levine')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (237, N'Berliner Philharmoniker & Hans Rosbaud')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (238, N'Maurizio Pollini')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (240, N'Gustav Mahler')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (242, N'Edo de Waart & San Francisco Symphony')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (244, N'Choir Of Westminster Abbey & Simon Preston')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (245, N'Michael Tilson Thomas & San Francisco Symphony')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (247, N'The King''s Singers')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (248, N'Berliner Philharmoniker & Herbert Von Karajan')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (250, N'Christopher O''Riley')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (251, N'Fretwork')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (252, N'Amy Winehouse')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (253, N'Calexico')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (255, N'Yehudi Menuhin')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (258, N'Les Arts Florissants & William Christie')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (259, N'The 12 Cellists of The Berlin Philharmonic')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (260, N'Adrian Leaper & Doreen de Feis')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (261, N'Roger Norrington, London Classical Players')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (264, N'Kent Nagano and Orchestre de l''Opéra de Lyon')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (265, N'Julian Bream')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (266, N'Martin Roscoe')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (267, N'Göteborgs Symfoniker & Neeme Järvi')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (270, N'Gerald Moore')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (271, N'Mela Tenenbaum, Pro Musica Prague & Richard Kapp')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (274, N'Nash Ensemble')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (276, N'Chic')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (277, N'Anita Ward')
INSERT [dbo].[Artist] ([ArtistId], [Name]) VALUES (278, N'Donna Summer')
SET IDENTITY_INSERT [dbo].[Artist] OFF
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'b5d09ed7-5eb9-4bc1-b2bc-1ad15e4c8fff', 0, N'5025f33b-98c4-4cf5-b18f-abcceea70c1b', N'carolynlschroeder@hotmail.com', 0, 1, NULL, N'CAROLYNLSCHROEDER@HOTMAIL.COM', N'CAROLYNLSCHROEDER@HOTMAIL.COM', N'AQAAAAEAACcQAAAAEEumwqufyAlcvvEUkL7omF0PE+e6t+17CpkeDCfzZ1yAzcSBIZ8UAOo3VpKMFyXaVw==', NULL, 0, N'47b779ed-2b20-41e4-8cbd-dc02f312b1b4', 0, N'carolynlschroeder@hotmail.com')
SET IDENTITY_INSERT [dbo].[Genre] ON 

INSERT [dbo].[Genre] ([GenreId], [Name], [Description]) VALUES (1, N'Rock', N'Rock and Roll is a form of rock music developed in the 1950s and 1960s. Rock music combines many kinds of music from the United States, such as country music, folk music, church music, work songs, blues and jazz.')
INSERT [dbo].[Genre] ([GenreId], [Name], [Description]) VALUES (2, N'Jazz', N'Jazz is a type of music which was invented in the United States. Jazz music combines African-American music with European music. Some common jazz instruments include the saxophone, trumpet, piano, double bass, and drums.')
INSERT [dbo].[Genre] ([GenreId], [Name], [Description]) VALUES (3, N'Metal', N'Heavy Metal is a loud, aggressive style of Rock music. The bands who play heavy-metal music usually have one or two guitars, a bass guitar and drums. In some bands, electronic keyboards, organs, or other instruments are used. Heavy metal songs are loud and powerful-sounding, and have strong rhythms that are repeated. There are many different types of Heavy Metal, some of which are described below. Heavy metal bands sometimes dress in jeans, leather jackets, and leather boots, and have long hair. Heavy metal bands sometimes behave in a dramatic way when they play their instruments or sing. However, many heavy metal bands do not like to do this.')
INSERT [dbo].[Genre] ([GenreId], [Name], [Description]) VALUES (4, N'Alternative', N'Alternative rock is a type of rock music that became popular in the 1980s and became widely popular in the 1990s. Alternative rock is made up of various subgenres that have come out of the indie music scene since the 1980s, such as grunge, indie rock, Britpop, gothic rock, and indie pop. These genres are sorted by their collective types of punk, which laid the groundwork for alternative music in the 1970s.')
INSERT [dbo].[Genre] ([GenreId], [Name], [Description]) VALUES (5, N'Disco', N'Disco is a style of pop music that was popular in the mid-1970s. Disco music has a strong beat that people can dance to. People usually dance to disco music at bars called disco clubs. The word "disco" is also used to refer to the style of dancing that people do to disco music, or to the style of clothes that people wear to go disco dancing. Disco was at its most popular in the United States and Europe in the 1970s and early 1980s. Disco was brought into the mainstream by the hit movie Saturday Night Fever, which was released in 1977. This movie, which starred John Travolta, showed people doing disco dancing. Many radio stations played disco in the late 1970s.')
INSERT [dbo].[Genre] ([GenreId], [Name], [Description]) VALUES (6, N'Blues', N'The blues is a form of music that started in the United States during the start of the 20th century. It was started by former African slaves from spirituals, praise songs, and chants. The first blues songs were called Delta blues. These songs came from the area near the mouth of the Mississippi River.')
INSERT [dbo].[Genre] ([GenreId], [Name], [Description]) VALUES (7, N'Latin', N'Latin American music is the music of all countries in Latin America (and the Caribbean) and comes in many varieties. Latin America is home to musical styles such as the simple, rural conjunto music of northern Mexico, the sophisticated habanera of Cuba, the rhythmic sounds of the Puerto Rican plena, the symphonies of Heitor Villa-Lobos, and the simple and moving Andean flute. Music has played an important part recently in Latin America''s politics, the nueva canción movement being a prime example. Latin music is very diverse, with the only truly unifying thread being the use of Latin-derived languages, predominantly the Spanish language, the Portuguese language in Brazil, and to a lesser extent, Latin-derived creole languages, such as those found in Haiti.')
INSERT [dbo].[Genre] ([GenreId], [Name], [Description]) VALUES (8, N'Reggae', N'Reggae is a music genre first developed in Jamaica in the late 1960s. While sometimes used in a broader sense to refer to most types of Jamaican music, the term reggae more properly denotes a particular music style that originated following on the development of ska and rocksteady.')
INSERT [dbo].[Genre] ([GenreId], [Name], [Description]) VALUES (9, N'Pop', N'Pop music is a music genre that developed from the mid-1950s as a softer alternative to rock ''n'' roll and later to rock music. It has a focus on commercial recording, often oriented towards a youth market, usually through the medium of relatively short and simple love songs. While these basic elements of the genre have remained fairly constant, pop music has absorbed influences from most other forms of popular music, particularly borrowing from the development of rock music, and utilizing key technological innovations to produce new variations on existing themes.')
INSERT [dbo].[Genre] ([GenreId], [Name], [Description]) VALUES (10, N'Classical', N'Classical music is a very general term which normally refers to the standard music of countries in the Western world. It is music that has been composed by musicians who are trained in the art of writing music (composing) and written down in music notation so that other musicians can play it. Classical music can also be described as "art music" because great art (skill) is needed to compose it and to perform it well. Classical music differs from pop music because it is not made just in order to be popular for a short time or just to be a commercial success.')
SET IDENTITY_INSERT [dbo].[Genre] OFF
/****** Object:  Index [IPK_Artist]    Script Date: 3/27/2016 3:15:40 PM ******/
CREATE NONCLUSTERED INDEX [IPK_Artist] ON [dbo].[Artist]
(
	[ArtistId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IPK_Genre]    Script Date: 3/27/2016 3:15:40 PM ******/
CREATE NONCLUSTERED INDEX [IPK_Genre] ON [dbo].[Genre]
(
	[GenreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Album]  WITH CHECK ADD  CONSTRAINT [FK_Album_Artist] FOREIGN KEY([ArtistId])
REFERENCES [dbo].[Artist] ([ArtistId])
GO
ALTER TABLE [dbo].[Album] CHECK CONSTRAINT [FK_Album_Artist]
GO
ALTER TABLE [dbo].[Album]  WITH CHECK ADD  CONSTRAINT [FK_Album_Genre] FOREIGN KEY([GenreId])
REFERENCES [dbo].[Genre] ([GenreId])
GO
ALTER TABLE [dbo].[Album] CHECK CONSTRAINT [FK_Album_Genre]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Album] FOREIGN KEY([Id])
REFERENCES [dbo].[Album] ([Id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Album]
GO
USE [master]
GO
ALTER DATABASE [MVCMusicStore] SET  READ_WRITE 
GO
