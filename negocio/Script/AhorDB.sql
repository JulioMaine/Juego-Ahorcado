USE [master]
GO
/****** Object:  Database [Ahorcado]    Script Date: 21/11/2023 17:58:49 ******/
CREATE DATABASE [Ahorcado]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Ahorcado', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Ahorcado.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Ahorcado_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Ahorcado_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Ahorcado] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Ahorcado].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Ahorcado] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Ahorcado] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Ahorcado] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Ahorcado] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Ahorcado] SET ARITHABORT OFF 
GO
ALTER DATABASE [Ahorcado] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Ahorcado] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Ahorcado] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Ahorcado] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Ahorcado] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Ahorcado] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Ahorcado] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Ahorcado] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Ahorcado] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Ahorcado] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Ahorcado] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Ahorcado] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Ahorcado] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Ahorcado] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Ahorcado] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Ahorcado] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Ahorcado] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Ahorcado] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Ahorcado] SET  MULTI_USER 
GO
ALTER DATABASE [Ahorcado] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Ahorcado] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Ahorcado] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Ahorcado] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Ahorcado] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Ahorcado] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Ahorcado] SET QUERY_STORE = ON
GO
ALTER DATABASE [Ahorcado] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Ahorcado]
GO
/****** Object:  Table [dbo].[Palabras]    Script Date: 21/11/2023 17:58:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Palabras](
	[Id] [int] NULL,
	[Palabra] [nvarchar](50) NULL,
	[NumeroLetras] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Palabras] ([Id], [Palabra], [NumeroLetras]) VALUES (1, N'zapallo', 7)
INSERT [dbo].[Palabras] ([Id], [Palabra], [NumeroLetras]) VALUES (2, N'mariposa', 8)
INSERT [dbo].[Palabras] ([Id], [Palabra], [NumeroLetras]) VALUES (3, N'lechuga', 7)
INSERT [dbo].[Palabras] ([Id], [Palabra], [NumeroLetras]) VALUES (4, N'barco', 5)
INSERT [dbo].[Palabras] ([Id], [Palabra], [NumeroLetras]) VALUES (5, N'auto', 4)
INSERT [dbo].[Palabras] ([Id], [Palabra], [NumeroLetras]) VALUES (6, N'zapatilla', 9)
INSERT [dbo].[Palabras] ([Id], [Palabra], [NumeroLetras]) VALUES (7, N'paloma', 6)
INSERT [dbo].[Palabras] ([Id], [Palabra], [NumeroLetras]) VALUES (8, N'computadora', 11)
INSERT [dbo].[Palabras] ([Id], [Palabra], [NumeroLetras]) VALUES (9, N'teclado', 7)
INSERT [dbo].[Palabras] ([Id], [Palabra], [NumeroLetras]) VALUES (10, N'parlante', 8)
INSERT [dbo].[Palabras] ([Id], [Palabra], [NumeroLetras]) VALUES (11, N'moto', 4)
INSERT [dbo].[Palabras] ([Id], [Palabra], [NumeroLetras]) VALUES (12, N'foco', 4)
INSERT [dbo].[Palabras] ([Id], [Palabra], [NumeroLetras]) VALUES (13, N'loro', 4)
INSERT [dbo].[Palabras] ([Id], [Palabra], [NumeroLetras]) VALUES (14, N'termo', 5)
INSERT [dbo].[Palabras] ([Id], [Palabra], [NumeroLetras]) VALUES (15, N'cama', 4)
GO
USE [master]
GO
ALTER DATABASE [Ahorcado] SET  READ_WRITE 
GO
