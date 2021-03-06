CREATE DATABASE eriDev;

USE [eriDev]
GO
/****** Object:  Table [dbo].[Consultas]    Script Date: 01/08/2016 21:33:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Consultas](
	[IdConsulta] [int] IDENTITY(1,1) NOT NULL,
	[Tipo] [varchar](50) NOT NULL,
	[Consulta] [varchar](2000) NOT NULL,
	[NombreTablaDest] [varchar](100) NULL,
	[Descrip] [varchar](2000) NULL,
	[Cliente] [nchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdConsulta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
