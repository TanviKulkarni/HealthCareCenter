USE [master]
GO

/****** Object:  Database [HealthCare]    Script Date: 01/16/2017 10:50:38 ******/
CREATE DATABASE [HealthCare] ON  PRIMARY 
( NAME = N'HealthCare', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\HealthCare.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HealthCare_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\HealthCare_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [HealthCare] SET COMPATIBILITY_LEVEL = 100
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HealthCare].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [HealthCare] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [HealthCare] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [HealthCare] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [HealthCare] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [HealthCare] SET ARITHABORT OFF 
GO

ALTER DATABASE [HealthCare] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [HealthCare] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [HealthCare] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [HealthCare] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [HealthCare] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [HealthCare] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [HealthCare] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [HealthCare] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [HealthCare] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [HealthCare] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [HealthCare] SET  DISABLE_BROKER 
GO

ALTER DATABASE [HealthCare] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [HealthCare] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [HealthCare] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [HealthCare] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [HealthCare] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [HealthCare] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [HealthCare] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [HealthCare] SET  READ_WRITE 
GO

ALTER DATABASE [HealthCare] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [HealthCare] SET  MULTI_USER 
GO

ALTER DATABASE [HealthCare] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [HealthCare] SET DB_CHAINING OFF 
GO

USE [HealthCare]
GO

/****** Object:  Table [dbo].[Registration]    Script Date: 01/16/2017 10:52:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Registration](
	[RegId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[DateOfBirth] [date] NULL,
	[Age] [int] NULL,
	[EmailId] [nvarchar](50) NULL,
	[Pass] [nvarchar](50) NULL,
 CONSTRAINT [PK_Registration] PRIMARY KEY CLUSTERED 
(
	[RegId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


USE [HealthCare]
GO

/****** Object:  Table [dbo].[Demographics]    Script Date: 01/16/2017 10:53:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Demographics](
	[DermId] [int] IDENTITY(1,1) NOT NULL,
	[Gender] [nchar](10) NULL,
	[Name] [nvarchar](50) NULL,
	[Race] [nvarchar](50) NULL,
	[Ethniciy] [nvarchar](50) NULL,
	[PreferredLanguage] [nvarchar](50) NULL,
	[HomePhone] [varchar](max) NULL,
	[WorkPhone] [varchar](max) NULL,
	[EmailId] [nvarchar](50) NULL,
	[DirectAddress] [varchar](max) NULL,
	[Phy_Addrs1] [varchar](max) NULL,
	[Phy_Addrs2] [varchar](max) NULL,
	[Phy_City] [varchar](max) NULL,
	[Phy_State] [nvarchar](50) NULL,
	[Phy_Zip] [nvarchar](50) NULL,
	[Bill_Addrs1] [varchar](max) NULL,
	[Bill_Addrs2] [varchar](max) NULL,
	[Bill_City] [nvarchar](50) NULL,
	[Bill_State] [nvarchar](50) NULL,
	[Bill_Zip] [nvarchar](50) NULL,
	[Bill_insurance] [nvarchar](50) NULL,
	[How_Hear_abt_us] [nvarchar](50) NULL,
	[Refering_Provider] [nvarchar](50) NULL,
	[Emp_Name] [nvarchar](50) NULL,
	[Emp_Addrs1] [varchar](max) NULL,
	[Emp_Addrs2] [varchar](max) NULL,
	[Emp_City] [nvarchar](50) NULL,
	[Emp_State] [nvarchar](50) NULL,
	[Emp_Zip] [nvarchar](50) NULL,
	[Emerg1_Name] [nvarchar](50) NULL,
	[Emerg1_Addrs1] [varchar](max) NULL,
	[Emerg1_Addrs2] [varchar](max) NULL,
	[Emerg1_City] [nvarchar](50) NULL,
	[Emerg1_State] [nvarchar](50) NULL,
	[Emerg1_Zip] [nvarchar](50) NULL,
	[Emerg1_HomePh] [varchar](max) NULL,
	[Emerg1_CellPh] [varchar](max) NULL,
	[Emerg1_WorkPh] [varchar](max) NULL,
	[Emerg1_Reletion] [nvarchar](50) NULL,
	[Emerg2_Name] [nvarchar](50) NULL,
	[Emerg2_Addrs1] [varchar](max) NULL,
	[Emerg2_Addrs2] [varchar](max) NULL,
	[Emerg2_City] [nvarchar](50) NULL,
	[Emerg2_State] [nvarchar](50) NULL,
	[Emerg2_Zip] [nvarchar](50) NULL,
	[Emerg2_HomePh] [varchar](max) NULL,
	[Emerg2_CellPh] [varchar](max) NULL,
	[Emerg2_WorkPh] [varchar](max) NULL,
	[Emerg2_Relation] [nvarchar](50) NULL,
	[Emerg3_Name] [nvarchar](50) NULL,
	[Emerg3_Addrs1] [varchar](max) NULL,
	[Emerg3_Addrs2] [varchar](max) NULL,
	[Emerg3_City] [nvarchar](50) NULL,
	[Emerg3_State] [nvarchar](50) NULL,
	[Emerg3_Zip] [nvarchar](50) NULL,
	[Emerg3_HomePh] [varchar](max) NULL,
	[Emerg3_CellPh] [varchar](max) NULL,
	[Emerg3_WorkPh] [varchar](max) NULL,
	[Emerg3_Relation] [nvarchar](50) NULL,
 CONSTRAINT [PK_Demographics] PRIMARY KEY CLUSTERED 
(
	[DermId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


USE [HealthCare]
GO

/****** Object:  Table [dbo].[Medi_History]    Script Date: 01/16/2017 10:53:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Medi_History](
	[Medi_Id] [int] NOT NULL,
	[AAA] [nchar](10) NULL,
	[ADHD] [nchar](10) NULL,
	[Alcohol] [nchar](10) NULL,
	[Alcohol_Dependent] [nchar](10) NULL,
	[Allergies] [nchar](10) NULL,
	[Alziemer] [nchar](10) NULL,
	[Anxiety] [nchar](10) NULL,
	[Arthritis] [nchar](10) NULL,
	[Asthma] [nchar](10) NULL,
	[Atrial_Fibrillation] [nchar](10) NULL,
	[Back_Pain] [nchar](10) NULL,
	[Bleeding_problem] [nchar](10) NULL,
	[CAD] [nchar](10) NULL,
	[Cancer] [nchar](10) NULL,
	[Cancer_Breast] [nchar](10) NULL,
	[Cancer_Colon] [nchar](10) NULL,
	[Cancer_Prostate] [nchar](10) NULL,
	[Cancer_Skin] [nchar](10) NULL,
	[Cancer_Thyroid] [nchar](10) NULL,
	[CHF] [nchar](10) NULL,
	[COPD] [nchar](10) NULL,
	[Crohns_Disease] [nchar](10) NULL,
	[CVA] [nchar](10) NULL,
	[Dementia] [nchar](10) NULL,
	[Depression] [nchar](10) NULL,
	[Diabetes] [nchar](10) NULL,
	[Epilepsy] [nchar](10) NULL,
	[Erectile_Dysfunction] [nchar](10) NULL,
	[Fibromyalgia] [nchar](10) NULL,
	[GIBleeding] [nchar](10) NULL,
	[Gout] [nchar](10) NULL,
	[Head_Concussion] [nchar](10) NULL,
	[Headaches] [nchar](10) NULL,
	[Hearing_Loss] [nchar](10) NULL,
	[Heart_Attack] [nchar](10) NULL,
	[Heart_Disease] [nchar](10) NULL,
	[HeartBurn] [nchar](10) NULL,
	[High_BloodPresure] [nchar](10) NULL,
	[High_Cholesterol] [nchar](10) NULL,
	[HTN] [nchar](10) NULL,
	[Hyperlipidemia] [nchar](10) NULL,
	[HyperThyrodism] [nchar](10) NULL,
	[IDDM] [nchar](10) NULL,
	[Insomnia] [nchar](10) NULL,
	[Irritable_Bowel_Syndrome] [nchar](10) NULL,
	[MI] [nchar](10) NULL,
	[NIDDM] [nchar](10) NULL,
	[Obesity] [nchar](10) NULL,
	[Osterioporosis] [nchar](10) NULL,
	[PID] [nchar](10) NULL,
	[Reflux] [nchar](10) NULL,
	[Siezers] [nchar](10) NULL,
	[SickleCell] [nchar](10) NULL,
	[Stroke] [nchar](10) NULL,
	[Surg_Appendectomy] [nchar](10) NULL,
	[Surg_Bypass] [nchar](10) NULL,
	[Surg_CABG] [nchar](10) NULL,
	[Surg_Cholecystectomy] [nchar](10) NULL,
	[Surg_Coronary] [nchar](10) NULL,
	[Surg_Hysterectomy] [nchar](10) NULL,
	[Surg_JointReplacement] [nchar](10) NULL,
	[Surg_Mastectony] [nchar](10) NULL,
	[Surg_Sinus] [nchar](10) NULL,
	[Surg_Thyroidectomy] [nchar](10) NULL,
	[ThyroidCondition] [nchar](10) NULL,
	[Tonsilitis] [nchar](10) NULL,
	[Tubericulosis_Exposure] [nchar](10) NULL,
	[Ulcer] [nchar](10) NULL,
	[Ulcers] [nchar](10) NULL,
	[UTI_Chronic] [nchar](10) NULL,
	[Vission_Loss] [nchar](10) NULL
) ON [PRIMARY]

GO


