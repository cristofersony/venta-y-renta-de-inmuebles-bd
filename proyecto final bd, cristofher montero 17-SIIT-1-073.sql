/*Nombre; Cristofher. Matricula; 17-SIIT-1-073*/
/*Nombre; jhoan. Matricula; 17-SIIT-1-028*/
/*Nombre; yeuris. Matricula; 17-SIIT-1-081*/
/*Nombre; Marlon. Matricula; 17-SIIT-1-013*/
/*Nombre; Yasser. Matricula; 17-SIIT-1-093*/

USE [master]
GO
/****** Object:  Database [venta y renta de inmuebles]    Script Date: 9/4/2019 11:55:54 p. m. ******/
CREATE DATABASE [venta y renta de inmuebles]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'venta y renta de inmuebles', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\venta y renta de inmuebles.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'venta y renta de inmuebles_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\venta y renta de inmuebles_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [venta y renta de inmuebles] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [venta y renta de inmuebles].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [venta y renta de inmuebles] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [venta y renta de inmuebles] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [venta y renta de inmuebles] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [venta y renta de inmuebles] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [venta y renta de inmuebles] SET ARITHABORT OFF 
GO
ALTER DATABASE [venta y renta de inmuebles] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [venta y renta de inmuebles] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [venta y renta de inmuebles] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [venta y renta de inmuebles] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [venta y renta de inmuebles] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [venta y renta de inmuebles] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [venta y renta de inmuebles] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [venta y renta de inmuebles] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [venta y renta de inmuebles] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [venta y renta de inmuebles] SET  DISABLE_BROKER 
GO
ALTER DATABASE [venta y renta de inmuebles] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [venta y renta de inmuebles] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [venta y renta de inmuebles] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [venta y renta de inmuebles] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [venta y renta de inmuebles] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [venta y renta de inmuebles] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [venta y renta de inmuebles] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [venta y renta de inmuebles] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [venta y renta de inmuebles] SET  MULTI_USER 
GO
ALTER DATABASE [venta y renta de inmuebles] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [venta y renta de inmuebles] SET DB_CHAINING OFF 
GO
ALTER DATABASE [venta y renta de inmuebles] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [venta y renta de inmuebles] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [venta y renta de inmuebles] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [venta y renta de inmuebles] SET QUERY_STORE = OFF
GO
USE [venta y renta de inmuebles]
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 9/4/2019 11:55:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clientes](
	[clienteID] [int] NOT NULL,
	[nombre] [nvarchar](60) NULL,
	[cedula] [nvarchar](20) NULL,
	[telefono] [nvarchar](15) NULL,
	[celular] [nvarchar](15) NULL,
	[direccion] [nvarchar](100) NULL,
	[email] [nvarchar](80) NULL,
 CONSTRAINT [PK_clientes] PRIMARY KEY CLUSTERED 
(
	[clienteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[condicion]    Script Date: 9/4/2019 11:55:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[condicion](
	[condicion] [nvarchar](20) NOT NULL,
	[inmueble id] [int] NULL,
	[cant. de pisos] [numeric](18, 0) NULL,
	[numero de pisos en venta] [numeric](18, 0) NULL,
	[numero de pisos en renta] [numeric](18, 0) NULL,
	[cant. de habitaciones] [numeric](18, 0) NULL,
	[cant. de salas] [numeric](18, 0) NULL,
	[cant. de cocinas] [numeric](18, 0) NULL,
	[cant. de baños] [numeric](18, 0) NULL,
	[cant. de terrazas] [numeric](18, 0) NULL,
	[cant. de galerias] [numeric](18, 0) NULL,
	[cant. de balcones] [numeric](18, 0) NULL,
	[estado fisico] [image] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empleados]    Script Date: 9/4/2019 11:55:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleados](
	[vendedorID] [int] NOT NULL,
	[nombre] [nvarchar](60) NULL,
	[cedula] [nvarchar](20) NULL,
	[telefono] [nvarchar](15) NULL,
	[celular] [nvarchar](15) NULL,
	[direccion] [nvarchar](100) NULL,
	[email] [nvarchar](80) NULL,
 CONSTRAINT [PK_empleados] PRIMARY KEY CLUSTERED 
(
	[vendedorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[inmuebles]    Script Date: 9/4/2019 11:55:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[inmuebles](
	[inmuebleID] [int] NOT NULL,
	[ubicacion de la propiedad] [nvarchar](100) NULL,
	[codigo postal] [nvarchar](10) NULL,
	[numero de casa] [nvarchar](10) NULL,
	[numero de departamento] [nvarchar](10) NULL,
 CONSTRAINT [PK_inmuebles] PRIMARY KEY CLUSTERED 
(
	[inmuebleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[negociacion]    Script Date: 9/4/2019 11:55:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[negociacion](
	[tipo de negociacion] [nvarchar](2) NULL,
	[inmueble ID] [int] NULL,
	[vendedor id] [int] NULL,
	[comprador id] [int] NULL,
	[precio de venta] [money] NULL,
	[acuerdo de renta] [nvarchar](80) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[clientes] ([clienteID], [nombre], [cedula], [telefono], [celular], [direccion], [email]) VALUES (11, N'Pedro Perez', N'00200889776', N'8095348799', N'8298998098', N'NULLAv. Alexander Fleming A Esq. José Ortega Y Gasset Apdo Postal', N'pedroperez@hotmail.com')
INSERT [dbo].[clientes] ([clienteID], [nombre], [cedula], [telefono], [celular], [direccion], [email]) VALUES (12, N'Pablo Juarez', N'00400567890', N'8095287766', N'8498765432', N'Av. Josefa Brea No. 266 Esq. 35 Oeste Ens. Luperón Sto. Dgo', N'pablojuarez@hotmail.com')
INSERT [dbo].[clientes] ([clienteID], [nombre], [cedula], [telefono], [celular], [direccion], [email]) VALUES (13, N'Daniela Gonzales', N'40460698789', N'8096779090', N'8099007453', N'Manuel Maria Castillo No.20 Esq. Dr. Baez Frente Al Palacio Presidencial Santo Domingo', N'daniela234@gmail.com')
INSERT [dbo].[clientes] ([clienteID], [nombre], [cedula], [telefono], [celular], [direccion], [email]) VALUES (14, N'Rafael Gerez', N'20289098767', N'8096775334', N'8293338899', N'Av. Independencia 85 Lmf', N'rafaelgerez2@hotmail.com')
INSERT [dbo].[clientes] ([clienteID], [nombre], [cedula], [telefono], [celular], [direccion], [email]) VALUES (15, N'Raul perdomo', N'00278906348', N'8095287654', N'8290879875', N'Santo Domingo, República Dominicana', N'raulperdomo@gmail.com')
INSERT [dbo].[clientes] ([clienteID], [nombre], [cedula], [telefono], [celular], [direccion], [email]) VALUES (16, N'Ezequiel Padilla', N'00988945678', N'8095668989', N'8490008888', N'Av J F Kennedy F-17 Plaza Sambil', N'ezequielpadilla@hotmail.com')
INSERT [dbo].[clientes] ([clienteID], [nombre], [cedula], [telefono], [celular], [direccion], [email]) VALUES (17, N'Enmanuel Ramirez', N'50598923759', N'8093235890', N'8499990077', N'Santo Domingo, República Dominicana', N'enmanuel009@gmail.com')
INSERT [dbo].[clientes] ([clienteID], [nombre], [cedula], [telefono], [celular], [direccion], [email]) VALUES (18, N'Yudit Contreras', N'20248940382', N'8095334578', N'809890745', N'G.m. Ricart 79, Santo Domingo', N'yuditcontreras@gmail.com')
INSERT [dbo].[clientes] ([clienteID], [nombre], [cedula], [telefono], [celular], [direccion], [email]) VALUES (19, N'Jeison Moreta', N'30385950232', N'8095288787', N'8293557685', N'C/del Sol No. 8, Edificio Momumental, Santiago', N'jeisonabduzcan@gmail.com')
INSERT [dbo].[clientes] ([clienteID], [nombre], [cedula], [telefono], [celular], [direccion], [email]) VALUES (20, N'Randy Piña', N'20038493912', N'8092223443', N'8490089128', N'Dr. C. Dargam No.26, Santo Domingo', N'randypiña@hotmail.com')
INSERT [dbo].[condicion] ([condicion], [inmueble id], [cant. de pisos], [numero de pisos en venta], [numero de pisos en renta], [cant. de habitaciones], [cant. de salas], [cant. de cocinas], [cant. de baños], [cant. de terrazas], [cant. de galerias], [cant. de balcones], [estado fisico]) VALUES (N'buena', 1234, CAST(1 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[condicion] ([condicion], [inmueble id], [cant. de pisos], [numero de pisos en venta], [numero de pisos en renta], [cant. de habitaciones], [cant. de salas], [cant. de cocinas], [cant. de baños], [cant. de terrazas], [cant. de galerias], [cant. de balcones], [estado fisico]) VALUES (N'buena', 1235, CAST(24 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), NULL)
INSERT [dbo].[condicion] ([condicion], [inmueble id], [cant. de pisos], [numero de pisos en venta], [numero de pisos en renta], [cant. de habitaciones], [cant. de salas], [cant. de cocinas], [cant. de baños], [cant. de terrazas], [cant. de galerias], [cant. de balcones], [estado fisico]) VALUES (N'excelente', 1236, CAST(12 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[condicion] ([condicion], [inmueble id], [cant. de pisos], [numero de pisos en venta], [numero de pisos en renta], [cant. de habitaciones], [cant. de salas], [cant. de cocinas], [cant. de baños], [cant. de terrazas], [cant. de galerias], [cant. de balcones], [estado fisico]) VALUES (N'buena', 1237, CAST(3 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[condicion] ([condicion], [inmueble id], [cant. de pisos], [numero de pisos en venta], [numero de pisos en renta], [cant. de habitaciones], [cant. de salas], [cant. de cocinas], [cant. de baños], [cant. de terrazas], [cant. de galerias], [cant. de balcones], [estado fisico]) VALUES (N'buena', 1238, CAST(2 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[condicion] ([condicion], [inmueble id], [cant. de pisos], [numero de pisos en venta], [numero de pisos en renta], [cant. de habitaciones], [cant. de salas], [cant. de cocinas], [cant. de baños], [cant. de terrazas], [cant. de galerias], [cant. de balcones], [estado fisico]) VALUES (N'excelente', 1239, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), NULL)
INSERT [dbo].[condicion] ([condicion], [inmueble id], [cant. de pisos], [numero de pisos en venta], [numero de pisos en renta], [cant. de habitaciones], [cant. de salas], [cant. de cocinas], [cant. de baños], [cant. de terrazas], [cant. de galerias], [cant. de balcones], [estado fisico]) VALUES (N'buena', 1244, CAST(5 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[condicion] ([condicion], [inmueble id], [cant. de pisos], [numero de pisos en venta], [numero de pisos en renta], [cant. de habitaciones], [cant. de salas], [cant. de cocinas], [cant. de baños], [cant. de terrazas], [cant. de galerias], [cant. de balcones], [estado fisico]) VALUES (N'buena', 1245, CAST(10 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[condicion] ([condicion], [inmueble id], [cant. de pisos], [numero de pisos en venta], [numero de pisos en renta], [cant. de habitaciones], [cant. de salas], [cant. de cocinas], [cant. de baños], [cant. de terrazas], [cant. de galerias], [cant. de balcones], [estado fisico]) VALUES (N'regular', 1246, CAST(24 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[condicion] ([condicion], [inmueble id], [cant. de pisos], [numero de pisos en venta], [numero de pisos en renta], [cant. de habitaciones], [cant. de salas], [cant. de cocinas], [cant. de baños], [cant. de terrazas], [cant. de galerias], [cant. de balcones], [estado fisico]) VALUES (N'buena', 1247, CAST(5 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[empleados] ([vendedorID], [nombre], [cedula], [telefono], [celular], [direccion], [email]) VALUES (1, N'Cluadio Guzaman', N'00200340892', N'8298776578', N'8298209098', N'av. livertad #34 esq. 17 de agosto, san cristobal. RD', N'claudioguzman@gamail.com')
INSERT [dbo].[empleados] ([vendedorID], [nombre], [cedula], [telefono], [celular], [direccion], [email]) VALUES (2, N'Rosa Eunice Bertrez', N'00400590801', N'8099887654', N'8498899093', N'Eduardo Vicioso No. 1, La Julia, Santo Domingo, Rep. Dom', N'rosanna23@gmail.com')
INSERT [dbo].[empleados] ([vendedorID], [nombre], [cedula], [telefono], [celular], [direccion], [email]) VALUES (3, N'Juan Perez', N'00500209980', N'8097854322', N'8498744327', N'30 De Marzo 9 santo domingo R.D', N'juanperez@hotmail.com')
INSERT [dbo].[empleados] ([vendedorID], [nombre], [cedula], [telefono], [celular], [direccion], [email]) VALUES (4, N'Pablo Ramirez', N'40290888458', N'8299887445', N'8095678990', N'J Saltitopa Santo Domingo, República Dominicana', N'pabloramirez@gmail.com')
INSERT [dbo].[empleados] ([vendedorID], [nombre], [cedula], [telefono], [celular], [direccion], [email]) VALUES (5, N'Clarilenny Gomez', N'20290934578', N'8292349090', N'829600800', N'J Contreras 65-b', N'clarygomez@hotmail.com')
INSERT [dbo].[empleados] ([vendedorID], [nombre], [cedula], [telefono], [celular], [direccion], [email]) VALUES (6, N'Alberto Mejia', N'12345768900', N'8095287676', N'8299007890', N'Aut. 30 de Mayo Km 7½ Urb. Tropical, Santo Domingo Distrito Nacional, 11105', N'albertomej09@gmail.com')
INSERT [dbo].[empleados] ([vendedorID], [nombre], [cedula], [telefono], [celular], [direccion], [email]) VALUES (7, N'Saul perez', N'00200789667', N'8095283455', N'8496770989', N'Av. John F. Kennedy no. 34 Ensanche Naco', N'saulperez@gmail.com')
INSERT [dbo].[empleados] ([vendedorID], [nombre], [cedula], [telefono], [celular], [direccion], [email]) VALUES (8, N'Roberto perozo', N'09098765348', N'8092258978', N'8095678763', N'Juan de Morfa No.12 San Carlos Sto Dgo', N'robertoperozo02@hotmail.com')
INSERT [dbo].[empleados] ([vendedorID], [nombre], [cedula], [telefono], [celular], [direccion], [email]) VALUES (9, N'Eriana Pralta', N'34345556891', N'8092334678', N'8098733456', N'Centro de los Héroes', N'erianaperalta@hotmail.com')
INSERT [dbo].[empleados] ([vendedorID], [nombre], [cedula], [telefono], [celular], [direccion], [email]) VALUES (10, N'Angelica matos', N'10123458990', N'8099887569', N'8491567834', N'Santo Domingo, República Dominicana', N'angelica123@gmail.com')
INSERT [dbo].[inmuebles] ([inmuebleID], [ubicacion de la propiedad], [codigo postal], [numero de casa], [numero de departamento]) VALUES (1234, N'av. abraham linconl, santo domingo. R.D', N'605', N'#34', N'0')
INSERT [dbo].[inmuebles] ([inmuebleID], [ubicacion de la propiedad], [codigo postal], [numero de casa], [numero de departamento]) VALUES (1235, N'av. winston churchill, santo domingo. R.D', N'1099', N'0', N'#24')
INSERT [dbo].[inmuebles] ([inmuebleID], [ubicacion de la propiedad], [codigo postal], [numero de casa], [numero de departamento]) VALUES (1236, N'av. winston churchill, santo domingo. R.D', N'1099', N'0', N'#10')
INSERT [dbo].[inmuebles] ([inmuebleID], [ubicacion de la propiedad], [codigo postal], [numero de casa], [numero de departamento]) VALUES (1237, N'av. abraham linconl, santo domingo. R.D', N'605', N'#56', N'0')
INSERT [dbo].[inmuebles] ([inmuebleID], [ubicacion de la propiedad], [codigo postal], [numero de casa], [numero de departamento]) VALUES (1238, N'av. livertad, san cristobla. R.D', N'91000', N'#32', N'0')
INSERT [dbo].[inmuebles] ([inmuebleID], [ubicacion de la propiedad], [codigo postal], [numero de casa], [numero de departamento]) VALUES (1239, N'carretera sanchez, san cristobal. R.D', N'91000', N'#40', N'0')
INSERT [dbo].[inmuebles] ([inmuebleID], [ubicacion de la propiedad], [codigo postal], [numero de casa], [numero de departamento]) VALUES (1244, N'av. constitucion, san cristobal. R.D', N'91000', N'0', N'#5')
INSERT [dbo].[inmuebles] ([inmuebleID], [ubicacion de la propiedad], [codigo postal], [numero de casa], [numero de departamento]) VALUES (1245, N'carretera Duarte, santo domingo. R.D.', N'11003', N'0', N'#9')
INSERT [dbo].[inmuebles] ([inmuebleID], [ubicacion de la propiedad], [codigo postal], [numero de casa], [numero de departamento]) VALUES (1246, N'av. winston churchill, santo domingo. R.D', N'1099', N'0', N'#11')
INSERT [dbo].[inmuebles] ([inmuebleID], [ubicacion de la propiedad], [codigo postal], [numero de casa], [numero de departamento]) VALUES (1247, N'av. constitucion, san cristobal. R.D', N'91000', N'0', N'#4')
INSERT [dbo].[negociacion] ([tipo de negociacion], [inmueble ID], [vendedor id], [comprador id], [precio de venta], [acuerdo de renta]) VALUES (N'R', 1234, 1, 11, 0.0000, N'9,000 al mes')
INSERT [dbo].[negociacion] ([tipo de negociacion], [inmueble ID], [vendedor id], [comprador id], [precio de venta], [acuerdo de renta]) VALUES (N'VR', 1235, 2, 12, 7000000.0000, N'10,000 al mes')
INSERT [dbo].[negociacion] ([tipo de negociacion], [inmueble ID], [vendedor id], [comprador id], [precio de venta], [acuerdo de renta]) VALUES (N'VR', 1236, 3, 13, 3000000.0000, N'8,500 al mes')
INSERT [dbo].[negociacion] ([tipo de negociacion], [inmueble ID], [vendedor id], [comprador id], [precio de venta], [acuerdo de renta]) VALUES (N'V', 1237, 4, 14, 9000000.0000, N'0')
INSERT [dbo].[negociacion] ([tipo de negociacion], [inmueble ID], [vendedor id], [comprador id], [precio de venta], [acuerdo de renta]) VALUES (N'V', 1238, 5, 15, 5000000.0000, N'0')
INSERT [dbo].[negociacion] ([tipo de negociacion], [inmueble ID], [vendedor id], [comprador id], [precio de venta], [acuerdo de renta]) VALUES (N'VR', 1239, 6, 16, 2900000.0000, N'7,000 al mes')
INSERT [dbo].[negociacion] ([tipo de negociacion], [inmueble ID], [vendedor id], [comprador id], [precio de venta], [acuerdo de renta]) VALUES (N'R', 1244, 7, 17, 0.0000, N'7,000 al mes')
INSERT [dbo].[negociacion] ([tipo de negociacion], [inmueble ID], [vendedor id], [comprador id], [precio de venta], [acuerdo de renta]) VALUES (N'VR', 1245, 8, 18, 3000000.0000, N'8,000 al mes')
INSERT [dbo].[negociacion] ([tipo de negociacion], [inmueble ID], [vendedor id], [comprador id], [precio de venta], [acuerdo de renta]) VALUES (N'V', 1246, 9, 19, 3100000.0000, N'0')
INSERT [dbo].[negociacion] ([tipo de negociacion], [inmueble ID], [vendedor id], [comprador id], [precio de venta], [acuerdo de renta]) VALUES (N'R', 1247, 10, 20, 0.0000, N'8,500 al mes')
ALTER TABLE [dbo].[condicion]  WITH CHECK ADD  CONSTRAINT [FK_condicion_inmuebles] FOREIGN KEY([inmueble id])
REFERENCES [dbo].[inmuebles] ([inmuebleID])
GO
ALTER TABLE [dbo].[condicion] CHECK CONSTRAINT [FK_condicion_inmuebles]
GO
ALTER TABLE [dbo].[negociacion]  WITH CHECK ADD  CONSTRAINT [FK_negociacion_clientes] FOREIGN KEY([comprador id])
REFERENCES [dbo].[clientes] ([clienteID])
GO
ALTER TABLE [dbo].[negociacion] CHECK CONSTRAINT [FK_negociacion_clientes]
GO
ALTER TABLE [dbo].[negociacion]  WITH CHECK ADD  CONSTRAINT [FK_negociacion_empleados] FOREIGN KEY([vendedor id])
REFERENCES [dbo].[empleados] ([vendedorID])
GO
ALTER TABLE [dbo].[negociacion] CHECK CONSTRAINT [FK_negociacion_empleados]
GO
ALTER TABLE [dbo].[negociacion]  WITH CHECK ADD  CONSTRAINT [FK_negociacion_inmuebles] FOREIGN KEY([inmueble ID])
REFERENCES [dbo].[inmuebles] ([inmuebleID])
GO
ALTER TABLE [dbo].[negociacion] CHECK CONSTRAINT [FK_negociacion_inmuebles]
GO
USE [master]
GO
ALTER DATABASE [venta y renta de inmuebles] SET  READ_WRITE 
GO
