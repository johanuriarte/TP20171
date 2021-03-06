USE [master]
GO
/****** Object:  Database [SILIE]    Script Date: 06/08/2017 20:03:19 ******/
CREATE DATABASE [SILIE] ON  PRIMARY 
( NAME = N'SILIE', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\SILIE.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SILIE_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\SILIE_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SILIE] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SILIE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SILIE] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [SILIE] SET ANSI_NULLS OFF
GO
ALTER DATABASE [SILIE] SET ANSI_PADDING OFF
GO
ALTER DATABASE [SILIE] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [SILIE] SET ARITHABORT OFF
GO
ALTER DATABASE [SILIE] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [SILIE] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [SILIE] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [SILIE] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [SILIE] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [SILIE] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [SILIE] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [SILIE] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [SILIE] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [SILIE] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [SILIE] SET  DISABLE_BROKER
GO
ALTER DATABASE [SILIE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [SILIE] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [SILIE] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [SILIE] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [SILIE] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [SILIE] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [SILIE] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [SILIE] SET  READ_WRITE
GO
ALTER DATABASE [SILIE] SET RECOVERY FULL
GO
ALTER DATABASE [SILIE] SET  MULTI_USER
GO
ALTER DATABASE [SILIE] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [SILIE] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'SILIE', N'ON'
GO
USE [SILIE]
GO
/****** Object:  Table [dbo].[USUARIO]    Script Date: 06/08/2017 20:03:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[USUARIO](
	[codUsuario] [int] IDENTITY(1,1) NOT NULL,
	[usuario] [varchar](30) NOT NULL,
	[contraseña] [varchar](30) NOT NULL,
	[estado] [varchar](20) NOT NULL,
	[fechaCreacion] [datetime] NOT NULL,
	[ultimaConexion] [datetime] NULL,
 CONSTRAINT [PK_USUARIO] PRIMARY KEY CLUSTERED 
(
	[codUsuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[USUARIO] ON
INSERT [dbo].[USUARIO] ([codUsuario], [usuario], [contraseña], [estado], [fechaCreacion], [ultimaConexion]) VALUES (1, N'juriarte', N'silie2017', N'activo', CAST(0x0000A12500000000 AS DateTime), CAST(0x0000A77000000000 AS DateTime))
INSERT [dbo].[USUARIO] ([codUsuario], [usuario], [contraseña], [estado], [fechaCreacion], [ultimaConexion]) VALUES (2, N'cgiles', N'silie2017', N'activo', CAST(0x0000A77000000000 AS DateTime), CAST(0x0000A77000000000 AS DateTime))
INSERT [dbo].[USUARIO] ([codUsuario], [usuario], [contraseña], [estado], [fechaCreacion], [ultimaConexion]) VALUES (3, N'rvitancio', N'silie2017', N'Activo', CAST(0x0000A7700125462F AS DateTime), CAST(0x0000A7700125462F AS DateTime))
INSERT [dbo].[USUARIO] ([codUsuario], [usuario], [contraseña], [estado], [fechaCreacion], [ultimaConexion]) VALUES (11, N'jchacon', N'silie2017', N'Activo', CAST(0x0000A783014A7421 AS DateTime), CAST(0x0000A783014A7421 AS DateTime))
INSERT [dbo].[USUARIO] ([codUsuario], [usuario], [contraseña], [estado], [fechaCreacion], [ultimaConexion]) VALUES (12, N'jgomez', N'silie2017', N'Activo', CAST(0x0000A783014BF5DD AS DateTime), CAST(0x0000A783014BF5DD AS DateTime))
INSERT [dbo].[USUARIO] ([codUsuario], [usuario], [contraseña], [estado], [fechaCreacion], [ultimaConexion]) VALUES (13, N'gvilchez', N'silie2017', N'Activo', CAST(0x0000A78300000000 AS DateTime), CAST(0x0000A78300000000 AS DateTime))
INSERT [dbo].[USUARIO] ([codUsuario], [usuario], [contraseña], [estado], [fechaCreacion], [ultimaConexion]) VALUES (14, N'jvilchez', N'silie2017', N'Activo', CAST(0x0000A78300000000 AS DateTime), CAST(0x0000A78300000000 AS DateTime))
INSERT [dbo].[USUARIO] ([codUsuario], [usuario], [contraseña], [estado], [fechaCreacion], [ultimaConexion]) VALUES (17, N'Nombreusuario', N'contraseña', N'Activo', CAST(0x0000A78C0035B56D AS DateTime), CAST(0x0000A78C0035B56D AS DateTime))
INSERT [dbo].[USUARIO] ([codUsuario], [usuario], [contraseña], [estado], [fechaCreacion], [ultimaConexion]) VALUES (18, N'nombreusuario', N'contraseña', N'Activo', CAST(0x0000A78C011619C8 AS DateTime), CAST(0x0000A78C011619C8 AS DateTime))
INSERT [dbo].[USUARIO] ([codUsuario], [usuario], [contraseña], [estado], [fechaCreacion], [ultimaConexion]) VALUES (19, N'usuarionuevo', N'contraseña', N'Activo', CAST(0x0000A78C011B7F3B AS DateTime), CAST(0x0000A78C011B7F3B AS DateTime))
SET IDENTITY_INSERT [dbo].[USUARIO] OFF
/****** Object:  Table [dbo].[EQUIPO]    Script Date: 06/08/2017 20:03:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EQUIPO](
	[codEquipo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](20) NOT NULL,
	[descripcion] [varchar](100) NULL,
 CONSTRAINT [PK_EQUIPO] PRIMARY KEY CLUSTERED 
(
	[codEquipo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[EQUIPO] ON
INSERT [dbo].[EQUIPO] ([codEquipo], [nombre], [descripcion]) VALUES (1, N'equipo1', N'equipodescripcion')
INSERT [dbo].[EQUIPO] ([codEquipo], [nombre], [descripcion]) VALUES (2, N'equipo2', N'equipodescripcion')
INSERT [dbo].[EQUIPO] ([codEquipo], [nombre], [descripcion]) VALUES (3, N'equipo3', N'deadsa')
INSERT [dbo].[EQUIPO] ([codEquipo], [nombre], [descripcion]) VALUES (4, N'Equipo los de la ric', N'Descripción del equipo los de la richi')
INSERT [dbo].[EQUIPO] ([codEquipo], [nombre], [descripcion]) VALUES (5, N'Equipo Peruano de Do', N'Solo Peruanos descripcion')
INSERT [dbo].[EQUIPO] ([codEquipo], [nombre], [descripcion]) VALUES (7, N'Equipo URP de Dota', N'descripcion equipo urp de dota')
INSERT [dbo].[EQUIPO] ([codEquipo], [nombre], [descripcion]) VALUES (8, N'Equipo Peruano ', N'descripcion equipo peruano')
SET IDENTITY_INSERT [dbo].[EQUIPO] OFF
/****** Object:  Table [dbo].[PROGRAMA]    Script Date: 06/08/2017 20:03:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PROGRAMA](
	[codPrograma] [int] NOT NULL,
	[nombre] [varchar](30) NOT NULL,
	[tipo] [varchar](20) NULL,
	[descripcion] [varchar](100) NULL,
	[icono] [varchar](100) NULL,
 CONSTRAINT [PK_PROGRAMA] PRIMARY KEY CLUSTERED 
(
	[codPrograma] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[PROGRAMA] ([codPrograma], [nombre], [tipo], [descripcion], [icono]) VALUES (1, N'Dota', N'juego', N'descripcion', N'icono')
INSERT [dbo].[PROGRAMA] ([codPrograma], [nombre], [tipo], [descripcion], [icono]) VALUES (2, N'Hots', N'juego', N'descripcion', N'icono2')
INSERT [dbo].[PROGRAMA] ([codPrograma], [nombre], [tipo], [descripcion], [icono]) VALUES (3, N'LOL', N'juego', N'descripcion', N'icono3')
INSERT [dbo].[PROGRAMA] ([codPrograma], [nombre], [tipo], [descripcion], [icono]) VALUES (5, N'Hercules Online', N'Oficio', N'Descripcion de hercules online', NULL)
/****** Object:  Table [dbo].[RUBRO_SERVICIO]    Script Date: 06/08/2017 20:03:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RUBRO_SERVICIO](
	[codRubro] [int] NOT NULL,
	[nombreServicio] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[codRubro] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[RUBRO_SERVICIO] ([codRubro], [nombreServicio]) VALUES (1, N'Alimentos y Bebidas')
INSERT [dbo].[RUBRO_SERVICIO] ([codRubro], [nombreServicio]) VALUES (2, N'Suministros de Oficina')
INSERT [dbo].[RUBRO_SERVICIO] ([codRubro], [nombreServicio]) VALUES (3, N'Imprenta y publicaciones')
INSERT [dbo].[RUBRO_SERVICIO] ([codRubro], [nombreServicio]) VALUES (4, N'Equipos e insumos de informática')
INSERT [dbo].[RUBRO_SERVICIO] ([codRubro], [nombreServicio]) VALUES (5, N'Comunicaciones')
INSERT [dbo].[RUBRO_SERVICIO] ([codRubro], [nombreServicio]) VALUES (6, N'Coleccionables')
INSERT [dbo].[RUBRO_SERVICIO] ([codRubro], [nombreServicio]) VALUES (7, N'Consola de videojuegos')
INSERT [dbo].[RUBRO_SERVICIO] ([codRubro], [nombreServicio]) VALUES (8, N'Reparación de equipos tecnológicos')
INSERT [dbo].[RUBRO_SERVICIO] ([codRubro], [nombreServicio]) VALUES (9, N'Otros')
/****** Object:  Table [dbo].[PERSONA]    Script Date: 06/08/2017 20:03:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PERSONA](
	[codPersona] [int] NOT NULL,
	[nombre] [varchar](30) NOT NULL,
	[apellidoPaterno] [varchar](30) NULL,
	[apellidoMaterno] [varchar](30) NULL,
	[DNI] [int] NOT NULL,
	[genero] [varchar](10) NOT NULL,
	[correo] [varchar](30) NOT NULL,
	[telefono] [int] NULL,
	[direccion] [varchar](max) NULL,
 CONSTRAINT [PK_PERSONA_1] PRIMARY KEY CLUSTERED 
(
	[codPersona] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[PERSONA] ([codPersona], [nombre], [apellidoPaterno], [apellidoMaterno], [DNI], [genero], [correo], [telefono], [direccion]) VALUES (1, N'Johan', N'Uriarte', N'Flores', 72902588, N'M', N'juriarte@gmail.com', 949196860, N'Jr. Diana Mz. D Lt. 16 Urb. Santa Modesta, Surco')
INSERT [dbo].[PERSONA] ([codPersona], [nombre], [apellidoPaterno], [apellidoMaterno], [DNI], [genero], [correo], [telefono], [direccion]) VALUES (2, N'Christian', N'Giles', N'Michuy', 72902511, N'M', N'cgiles@gmail.com', 949798561, N'Jr. Diana Mz. D Lt. 16 Urb. Santa Modesta, Surco')
INSERT [dbo].[PERSONA] ([codPersona], [nombre], [apellidoPaterno], [apellidoMaterno], [DNI], [genero], [correo], [telefono], [direccion]) VALUES (3, N'Rosemary', N'Vitancio', N'Zabaleta', 73635241, N'F', N'rvitancio@gmail.com', 949596864, N'Jr. Diana Mz. D Lt. 16 Urb. Santa Modesta, Surco')
INSERT [dbo].[PERSONA] ([codPersona], [nombre], [apellidoPaterno], [apellidoMaterno], [DNI], [genero], [correo], [telefono], [direccion]) VALUES (11, N'José', N'Chacón', N'', 72902858, N'M', N'jchacon@gmail.com', 97984512, N'Jr. Diana Mz. D Lt. 16 Urb. Santa Modesta, Surco')
INSERT [dbo].[PERSONA] ([codPersona], [nombre], [apellidoPaterno], [apellidoMaterno], [DNI], [genero], [correo], [telefono], [direccion]) VALUES (12, N'Jonathan', N'Gomez', N'', 78546322, N'M', N'jgomez@gmail.com', 98969593, N'Jr. Diana Mz. D Lt. 16 Urb. Santa Modesta, Surco')
INSERT [dbo].[PERSONA] ([codPersona], [nombre], [apellidoPaterno], [apellidoMaterno], [DNI], [genero], [correo], [telefono], [direccion]) VALUES (13, N'Gerson', N'Vilchez', N'Lecca', 72905633, N'M', N'gvilchez@gmail.com', 94979632, N'Jr. Diana Mz. D Lt. 16 Urb. Santa Modesta, Surco')
INSERT [dbo].[PERSONA] ([codPersona], [nombre], [apellidoPaterno], [apellidoMaterno], [DNI], [genero], [correo], [telefono], [direccion]) VALUES (14, N'Jerson', N'Vilchez', N'Lecca', 72902611, N'M', N'jvilchez@gmail.com', 94963122, N'Jr. Diana Mz. D Lt. 16 Urb. Santa Modesta, Surco')
INSERT [dbo].[PERSONA] ([codPersona], [nombre], [apellidoPaterno], [apellidoMaterno], [DNI], [genero], [correo], [telefono], [direccion]) VALUES (17, N'Nombreusuario', N'Uriarte', N'Flores', 72902588, N'Masculino', N'johanuriarte@gmail.com', 2573029, N'Surco')
INSERT [dbo].[PERSONA] ([codPersona], [nombre], [apellidoPaterno], [apellidoMaterno], [DNI], [genero], [correo], [telefono], [direccion]) VALUES (18, N'nombre', N'apellido', N'apellido', 72902588, N'Masculino', N'correo@gmail.com', 2573029, N'Santiago de Surco')
INSERT [dbo].[PERSONA] ([codPersona], [nombre], [apellidoPaterno], [apellidoMaterno], [DNI], [genero], [correo], [telefono], [direccion]) VALUES (19, N'nombre', N'apellido', N'apellido', 72902588, N'Masculino', N'johanuriarte@gmail.com', 2573029, N'Surco')
/****** Object:  StoredProcedure [dbo].[sp_CargarDatosProgramas]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_CargarDatosProgramas]
@codPrograma int
AS

SELECT p.nombre,p.tipo,p.descripcion
from PROGRAMA p
WHERE p.codPrograma = @codPrograma
GO
/****** Object:  StoredProcedure [dbo].[SP_ActualizarEquipo]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[SP_ActualizarEquipo]
@codEquipo int,
@nombre varchar(20), 
@descripcion varchar(100)
AS


BEGIN
	UPDATE EQUIPO
	SET nombre = @nombre,
	descripcion = @descripcion
	WHERE codEquipo = @codEquipo
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ActualizarEstadoCliente]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_ActualizarEstadoCliente]
@codUsuario int,
@estado varchar(20)
as
update USUARIO SET estado = @estado WHERE codUsuario=@codUsuario
GO
/****** Object:  StoredProcedure [dbo].[sp_ListarRubroServicios]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_ListarRubroServicios]
AS
SELECT      codRubro,nombreServicio
FROM            RUBRO_SERVICIO
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertActProgramas]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertActProgramas]

 @nombre nvarchar(30),
 @tipo nvarchar(20),
 @descripcion nvarchar(100),
 @tipoGuardadoPro int,
 @codPrograma  int 
 AS
 IF @tipoGuardadoPro = 1
  BEGIN
  SET @codPrograma = (select COUNT(*) from PROGRAMA)
  SET @codPrograma = @codPrograma + 1

INSERT INTO DBO.PROGRAMA
  (codPrograma,nombre, tipo, descripcion) 
  VALUES(@codPrograma, @nombre,@tipo,@descripcion)

   END

   IF @tipoGuardadoPro = 2
BEGIN

UPDATE PROGRAMA 
 SET nombre  = @nombre,
     tipo = @tipo,
     descripcion = @descripcion
 WHERE codPrograma  = @codPrograma
END
GO
/****** Object:  StoredProcedure [dbo].[sp_EliminarProgramas]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_EliminarProgramas]
@codPrograma int

 AS


BEGIN
	if((select COUNT(*) from PROGRAMA where codPrograma = @codPrograma)='1')
	BEGIN
		
		DELETE FROM PROGRAMA WHERE  codPrograma = @codPrograma
		
		select 0		
	END
	
	else
	BEGIN
		select 1
	END
END
select COUNT(*) from PROGRAMA where codPrograma = 1
GO
/****** Object:  StoredProcedure [dbo].[SP_ExcepcionMismoNombreEquipo]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ExcepcionMismoNombreEquipo]
@nombreEquipo varchar(20)
AS
BEGIN
	if((select COUNT(*) from EQUIPO
	where EQUIPO.nombre = @nombreEquipo) = '0')
	BEGIN
		
		select 0		
	END
	
	else
	BEGIN
		select 1
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_CargarProgramas]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_CargarProgramas]

AS

SELECT codPrograma,nombre from PROGRAMA
GO
/****** Object:  StoredProcedure [dbo].[sp_ConsultaIngresoPrograma]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ConsultaIngresoPrograma]

AS

SELECT p.codPrograma  as codigoP, p.nombre as nom,p.tipo as tip ,p.descripcion as descp
from PROGRAMA p
GO
/****** Object:  StoredProcedure [dbo].[SP_ConsultarCliente]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_ConsultarCliente]
@codUsuario int
as
SELECT codUsuario, usuario, contraseña, estado, fechaCreacion, ultimaConexion FROM USUARIO where codUsuario=@codUsuario
GO
/****** Object:  StoredProcedure [dbo].[SP_RegistrarUsuario]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_RegistrarUsuario]

@usuario varchar(30),
@contraseña varchar(30)

AS INSERT INTO USUARIO VALUES(@usuario, @contraseña, 'Activo', GETDATE(), GETDATE())

select * from USUARIO
GO
/****** Object:  Table [dbo].[TICKET]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TICKET](
	[codTicket] [int] NOT NULL,
	[descripcion] [varchar](100) NOT NULL,
	[estado] [varchar](20) NOT NULL,
	[fecha] [datetime] NOT NULL,
	[codUsuario] [int] NOT NULL,
 CONSTRAINT [PK_TICKET] PRIMARY KEY CLUSTERED 
(
	[codTicket] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[SP_RegistrarPersona]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_RegistrarPersona]

@nombre varchar(30),
@apellidoPaterno varchar(30),
@apellidoMaterno varchar(30),
@DNI int,
@genero varchar(10),
@correo varchar(30),
@telefono int,
@direccion varchar(40)

AS

DECLARE @codPersona int 
SET @codPersona = (SELECT max(codUsuario) from USUARIO)

INSERT INTO PERSONA(codPersona,nombre,apellidoPaterno,apellidoMaterno,DNI,genero,correo,telefono,direccion) 
VALUES(@codPersona,@nombre, @apellidoPaterno, @apellidoMaterno, @DNI, @genero, @correo, @telefono, @direccion)
GO
/****** Object:  StoredProcedure [dbo].[up_ObtenerDatosUsuario]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_ObtenerDatosUsuario]
@nombreUsuario VARCHAR(30)
AS
SELECT US.codUsuario, US.usuario, US.contraseña, US.estado, US.fechaCreacion, US.ultimaConexion, PER.codPersona, PER.nombre, PER.apellidoPaterno, PER.apellidoMaterno, PER.dni, PER.genero, PER.correo, PER.telefono, PER.direccion
FROM USUARIO US
JOIN PERSONA PER ON US.codUsuario = PER.codPersona
WHERE US.usuario = @nombreUsuario
GO
/****** Object:  Table [dbo].[ADMINISTRADOR]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADMINISTRADOR](
	[codAdministrador] [int] NOT NULL,
 CONSTRAINT [PK_ADMINISTRADOR] PRIMARY KEY CLUSTERED 
(
	[codAdministrador] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CLIENTE_DE_CABINA]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENTE_DE_CABINA](
	[codCliente] [int] NOT NULL,
 CONSTRAINT [PK_CLIENTE_DE_CABINA] PRIMARY KEY CLUSTERED 
(
	[codCliente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CLIENTE_DE_CABINA] ([codCliente]) VALUES (13)
INSERT [dbo].[CLIENTE_DE_CABINA] ([codCliente]) VALUES (19)
/****** Object:  Table [dbo].[CABINA_DE_INTERNET]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CABINA_DE_INTERNET](
	[codCabina] [int] NOT NULL,
	[nombre] [varchar](300) NOT NULL,
	[direccion] [varchar](300) NOT NULL,
	[estado] [nchar](20) NOT NULL,
	[fechaCreacion] [datetime] NOT NULL,
	[diaPago] [int] NOT NULL,
	[imagen] [varchar](50) NULL,
	[latitude] [varchar](max) NULL,
	[longitude] [varchar](max) NULL,
	[descripcion] [varchar](max) NULL,
	[website] [varchar](max) NULL,
 CONSTRAINT [PK_CABINA_DE_INTERNET] PRIMARY KEY CLUSTERED 
(
	[codCabina] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CABINA_DE_INTERNET] ([codCabina], [nombre], [direccion], [estado], [fechaCreacion], [diaPago], [imagen], [latitude], [longitude], [descripcion], [website]) VALUES (1, N'LAN CENTER Sillas Rojas', N'Av. Alfredo Benavides 5405, Santiago de Surco 15039', N'Activo              ', CAST(0x0000A6CF00000000 AS DateTime), 12, N'FotoPerfilSillasRojas', N'-12.130318', N'-76.979642', N'LAN CENTER SILLAS ROJAS Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt laoreet dolore magna aliquam tincidunt erat volutpat laoreet dolore magna aliquam tincidunt erat volutpat.', N'www.facebook.com')
INSERT [dbo].[CABINA_DE_INTERNET] ([codCabina], [nombre], [direccion], [estado], [fechaCreacion], [diaPago], [imagen], [latitude], [longitude], [descripcion], [website]) VALUES (2, N'LAN CENTER Caminos del Inca', N'Av. Alfredo Benavides 5339', N'activo              ', CAST(0x0000A77000000000 AS DateTime), 12, N'Foto', N'-12.129873', N'-76.981044', N'LAN CENTER CAMINOS DEL INCA Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt laoreet dolore magna aliquam tincidunt erat volutpat laoreet dolore magna aliquam tincidunt erat volutpat.', N'www.facebook.com')
INSERT [dbo].[CABINA_DE_INTERNET] ([codCabina], [nombre], [direccion], [estado], [fechaCreacion], [diaPago], [imagen], [latitude], [longitude], [descripcion], [website]) VALUES (3, N'LAN CENTER BOLICHERA', N'Bolichera', N'Solicitud           ', CAST(0x0000A77001284CCC AS DateTime), 12, N'', NULL, NULL, N'LAN CENTER BOLICHERA Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt laoreet dolore magna aliquam tincidunt erat volutpat laoreet dolore magna aliquam tincidunt erat volutpat.', N'www.facebook.com')
INSERT [dbo].[CABINA_DE_INTERNET] ([codCabina], [nombre], [direccion], [estado], [fechaCreacion], [diaPago], [imagen], [latitude], [longitude], [descripcion], [website]) VALUES (17, N'LAN CENTER NAZARENAS', N'Calle Monte Marupa 115, Santia', N'Activo              ', CAST(0x0000A78C0035B59D AS DateTime), 99, N'', N'-12.13426194180981', N'-76.98116013030244', N'LAN CENTER NAZARENAS Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt laoreet dolore magna aliquam tincidunt erat volutpat laoreet dolore magna aliquam tincidunt erat volutpat.', N'www.facebook.com')
INSERT [dbo].[CABINA_DE_INTERNET] ([codCabina], [nombre], [direccion], [estado], [fechaCreacion], [diaPago], [imagen], [latitude], [longitude], [descripcion], [website]) VALUES (18, N'LAN CENTER DE PRUEBA', N'Jirón Tintoreros 337, Lima 150', N'Activo              ', CAST(0x0000A78C01161A25 AS DateTime), 99, N'', N'-12.129576119735198', N'-76.97841446242677', NULL, NULL)
/****** Object:  Table [dbo].[ALBUM]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ALBUM](
	[codAlbum] [int] NOT NULL,
	[nombre] [nchar](30) NULL,
	[descripcion] [nchar](100) NULL,
	[codCabina] [int] NULL,
 CONSTRAINT [PK_ALBUM] PRIMARY KEY CLUSTERED 
(
	[codAlbum] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COMENTARIO]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COMENTARIO](
	[codComentario] [int] NOT NULL,
	[estado] [varchar](20) NOT NULL,
	[fecha] [datetime] NOT NULL,
	[descripcion] [varchar](100) NULL,
	[codCabina] [int] NOT NULL,
	[codCliente] [int] NOT NULL,
 CONSTRAINT [PK_COMENTARIO] PRIMARY KEY CLUSTERED 
(
	[codComentario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CLIENTE_POR_EQUIPO]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CLIENTE_POR_EQUIPO](
	[codClienteEquipo] [int] IDENTITY(1,1) NOT NULL,
	[codEquipo] [int] NOT NULL,
	[codCliente] [int] NOT NULL,
	[estado] [varchar](20) NOT NULL,
	[lider] [bit] NOT NULL,
 CONSTRAINT [PK_CLIENTE_POR_EQUIPO] PRIMARY KEY CLUSTERED 
(
	[codClienteEquipo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CLIENTE_POR_EQUIPO] ON
INSERT [dbo].[CLIENTE_POR_EQUIPO] ([codClienteEquipo], [codEquipo], [codCliente], [estado], [lider]) VALUES (3, 7, 13, N'Activo', 1)
INSERT [dbo].[CLIENTE_POR_EQUIPO] ([codClienteEquipo], [codEquipo], [codCliente], [estado], [lider]) VALUES (4, 8, 13, N'Activo', 1)
SET IDENTITY_INSERT [dbo].[CLIENTE_POR_EQUIPO] OFF
/****** Object:  Table [dbo].[MAQUINA]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MAQUINA](
	[codMaquina] [int] IDENTITY(1,1) NOT NULL,
	[numero] [varchar](10) NULL,
	[nombre] [varchar](30) NOT NULL,
	[estado] [nchar](20) NOT NULL,
	[codCabina] [int] NOT NULL,
 CONSTRAINT [PK_MAQUINA] PRIMARY KEY CLUSTERED 
(
	[codMaquina] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[MAQUINA] ON
INSERT [dbo].[MAQUINA] ([codMaquina], [numero], [nombre], [estado], [codCabina]) VALUES (1, N'03', N'PCLABINF-03', N'Disponible          ', 1)
INSERT [dbo].[MAQUINA] ([codMaquina], [numero], [nombre], [estado], [codCabina]) VALUES (2, N'01', N'PCLABINF-01', N'Ocupado             ', 1)
INSERT [dbo].[MAQUINA] ([codMaquina], [numero], [nombre], [estado], [codCabina]) VALUES (3, N'02', N'PCLABINF-02', N'Ocupado             ', 1)
INSERT [dbo].[MAQUINA] ([codMaquina], [numero], [nombre], [estado], [codCabina]) VALUES (4, N'4', N'PC04', N'Disponible          ', 1)
INSERT [dbo].[MAQUINA] ([codMaquina], [numero], [nombre], [estado], [codCabina]) VALUES (5, N'5', N'PC05', N'Disponible          ', 1)
SET IDENTITY_INSERT [dbo].[MAQUINA] OFF
/****** Object:  Table [dbo].[CALIFICACION]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CALIFICACION](
	[codCalificacion] [int] NOT NULL,
	[puntaje] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[codCabina] [int] NOT NULL,
	[codCliente] [int] NOT NULL,
 CONSTRAINT [PK_CALIFICACION] PRIMARY KEY CLUSTERED 
(
	[codCalificacion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PUBLICIDAD]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PUBLICIDAD](
	[codPublicidad] [int] NOT NULL,
	[imagen] [varchar](100) NULL,
	[slider] [nchar](10) NOT NULL,
	[descripcion] [nchar](50) NULL,
	[fechaCreacion] [datetime] NOT NULL,
	[fechaVencimiento] [datetime] NULL,
	[codCabina] [int] NOT NULL,
 CONSTRAINT [PK_PUBLICIDAD] PRIMARY KEY CLUSTERED 
(
	[codPublicidad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PROMOCION]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROMOCION](
	[codPromocion] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](100) NULL,
	[descripcion] [nvarchar](100) NOT NULL,
	[horasConsumidas] [int] NOT NULL,
	[horasPromocion] [int] NOT NULL,
	[fechaInicio] [datetime] NOT NULL,
	[fechaFin] [datetime] NOT NULL,
	[FinSemanaFlag] [bit] NOT NULL,
	[estado] [bit] NOT NULL,
	[codCabina] [int] NOT NULL,
 CONSTRAINT [PK_PROMOCION] PRIMARY KEY CLUSTERED 
(
	[codPromocion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PROMOCION] ON
INSERT [dbo].[PROMOCION] ([codPromocion], [nombre], [descripcion], [horasConsumidas], [horasPromocion], [fechaInicio], [fechaFin], [FinSemanaFlag], [estado], [codCabina]) VALUES (8, N'Promocion Lan Center', N'Descripcion Promocion', 5, 1, CAST(0x0000A78300000000 AS DateTime), CAST(0x0000A79800000000 AS DateTime), 0, 1, 1)
INSERT [dbo].[PROMOCION] ([codPromocion], [nombre], [descripcion], [horasConsumidas], [horasPromocion], [fechaInicio], [fechaFin], [FinSemanaFlag], [estado], [codCabina]) VALUES (9, N'Promocion nueva', N'Descripcion de promocion', 5, 1, CAST(0x0000A7860083D600 AS DateTime), CAST(0x0000A7A200F73140 AS DateTime), 1, 0, 1)
SET IDENTITY_INSERT [dbo].[PROMOCION] OFF
/****** Object:  Table [dbo].[PROGRAMA_POR_CABINA]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROGRAMA_POR_CABINA](
	[codProgramaCabina] [int] NOT NULL,
	[codPrograma] [int] NOT NULL,
	[codCabina] [int] NOT NULL,
 CONSTRAINT [PK_PROGRAMA_POR_CABINA] PRIMARY KEY CLUSTERED 
(
	[codProgramaCabina] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[PROGRAMA_POR_CABINA] ([codProgramaCabina], [codPrograma], [codCabina]) VALUES (1, 1, 1)
INSERT [dbo].[PROGRAMA_POR_CABINA] ([codProgramaCabina], [codPrograma], [codCabina]) VALUES (2, 2, 1)
INSERT [dbo].[PROGRAMA_POR_CABINA] ([codProgramaCabina], [codPrograma], [codCabina]) VALUES (3, 3, 1)
INSERT [dbo].[PROGRAMA_POR_CABINA] ([codProgramaCabina], [codPrograma], [codCabina]) VALUES (4, 5, 1)
/****** Object:  StoredProcedure [dbo].[sp_ActualizarEstado]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_ActualizarEstado]
@codCabina  int,
@estado nchar(20)
as
Update CABINA_DE_INTERNET  SET estado=@estado WHERE  codCabina=@codCabina 


Select * from CABINA_DE_INTERNET
GO
/****** Object:  Table [dbo].[SERVICIO]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SERVICIO](
	[codServicio] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](30) NOT NULL,
	[descripcion] [varchar](100) NULL,
	[codCabina] [int] NOT NULL,
	[rubro] [int] NULL,
	[estado] [int] NULL,
 CONSTRAINT [PK_SERVICIO] PRIMARY KEY CLUSTERED 
(
	[codServicio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SERVICIO] ON
INSERT [dbo].[SERVICIO] ([codServicio], [nombre], [descripcion], [codCabina], [rubro], [estado]) VALUES (1, N'Nombre de servicio uno', N'Descripción del servicio uno', 1, 1, NULL)
INSERT [dbo].[SERVICIO] ([codServicio], [nombre], [descripcion], [codCabina], [rubro], [estado]) VALUES (2, N'Servicio adicional  nuevo', N'Descripcion servicio adicional nuevo', 1, 2, 1)
SET IDENTITY_INSERT [dbo].[SERVICIO] OFF
/****** Object:  Table [dbo].[PAGO]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAGO](
	[codPago] [int] NOT NULL,
	[tipo] [nchar](20) NOT NULL,
	[monto] [decimal](6, 2) NOT NULL,
	[fechaPago] [datetime] NOT NULL,
	[estado] [nchar](20) NOT NULL,
	[codCabina] [int] NOT NULL,
 CONSTRAINT [PK_PAGO] PRIMARY KEY CLUSTERED 
(
	[codPago] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_ConsultarCabina]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_ConsultarCabina]
@codCabina  int
as
select * from CABINA_DE_INTERNET WHERE  codCabina=@codCabina
GO
/****** Object:  StoredProcedure [dbo].[SP_ListadoUsuarios]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_ListadoUsuarios]
as
select * from USUARIO 
INNER JOIN CLIENTE_DE_CABINA
ON USUARIO.codUsuario = CLIENTE_DE_CABINA.codCliente
GO
/****** Object:  StoredProcedure [dbo].[sp_ListadoCabinaInernet]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ListadoCabinaInernet]
AS
SELECT * FROM CABINA_DE_INTERNET WHERE estado!='Solicitud'
GO
/****** Object:  StoredProcedure [dbo].[up_ObtenerCabinaPorCodigo]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_ObtenerCabinaPorCodigo]
@codCabina int
AS

SELECT codCabina, nombre, direccion, estado, fechacreacion, diaPago, imagen, latitude, longitude, descripcion, website
FROM CABINA_DE_INTERNET
WHERE codCabina = @codCabina
GO
/****** Object:  StoredProcedure [dbo].[SP_RegistrarClienteCab]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_RegistrarClienteCab]



AS 
DECLARE @codclient int
	SET @codclient = (SELECT max(codUsuario) FROM USUARIO)

INSERT INTO CLIENTE_DE_CABINA VALUES(@codclient)
GO
/****** Object:  StoredProcedure [dbo].[sp_Registrar_cabinadeinternet]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_Registrar_cabinadeinternet]
	@nombre varchar(30),
	@direccion varchar(30),
	@estado nchar(20),
	@diaPago int,
	@imagen varchar(50),
	@latitude varchar(MAX),
	@longitude varchar(MAX)
	
	AS
	
	DECLARE @codCabinaInternet int
	SET @codCabinaInternet = (SELECT max(codUsuario) FROM USUARIO)

	INSERT INTO CABINA_DE_INTERNET (codCabina, nombre,direccion,estado,fechacreacion,diapago,imagen, latitude, longitude)	
	VALUES( @codCabinaInternet, @nombre, @direccion, @estado, GETDATE(), @diaPago, @imagen, @latitude, @longitude)
GO
/****** Object:  StoredProcedure [dbo].[up_ValidarCabinaPorNombre]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_ValidarCabinaPorNombre]
@nombreCabina varchar(max)
AS

IF EXISTS (SELECT 1 FROM CABINA_DE_INTERNET WHERE nombre = @nombreCabina)
BEGIN
	SELECT 1
END
ELSE
BEGIN
	SELECT 0
END
GO
/****** Object:  StoredProcedure [dbo].[up_ObtenerTodasCabinas]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_ObtenerTodasCabinas]
AS
SELECT codCabina, nombre, direccion, estado, fechacreacion, diaPago, imagen, latitude, longitude
FROM CABINA_DE_INTERNET
WHERE estado = 'activo'
GO
/****** Object:  StoredProcedure [dbo].[up_ObtenerProgramasPorCabina]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_ObtenerProgramasPorCabina]
@codCabina int
AS

SELECT PRO.codPrograma, PRO.nombre, PRO.tipo, PRO.descripcion, PRO.icono, PROCAB.codCabina
FROM PROGRAMA PRO
JOIN PROGRAMA_POR_CABINA PROCAB ON PRO.codPrograma = PROCAB.codPrograma
WHERE PROCAB.codCabina = @codCabina
GO
/****** Object:  StoredProcedure [dbo].[SP_RegistrarSolicitudClienteEquipo]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_RegistrarSolicitudClienteEquipo]

@usuario varchar(30),
@codEquipo int,
@estado varchar(20),
@lider bit
AS
BEGIN

DECLARE @codUsuario int =  (select codUsuario from USUARIO WHERE usuario = @usuario)


Insert into CLIENTE_POR_EQUIPO(codCliente,codEquipo,estado,lider)
VALUES(@codUsuario,@codequipo,@estado ,@lider)

END
GO
/****** Object:  StoredProcedure [dbo].[sp_RegistrarServicioAdicional]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_RegistrarServicioAdicional]
@nombreServicio varchar(30),
@descripcion varchar(100),
@rubro int,
@codCabina int
AS
insert into servicio values(@nombreServicio,@descripcion,@codCabina,@rubro,1)
GO
/****** Object:  StoredProcedure [dbo].[SP_MostrarServiciosxCabina]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_MostrarServiciosxCabina]
@codCabina int
AS
	
SELECT s.codServicio, s.nombre, s.descripcion,r.nombreServicio,(CASE WHEN s.estado=1 THEN 'Disponible' ELSE 'No Disponible'  END) as estado
FROM     CABINA_DE_INTERNET c INNER JOIN
                  SERVICIO AS s ON c.codCabina = s.codCabina
				    inner join RUBRO_SERVICIO r ON s.rubro=r.codRubro
					where c.codCabina=@codCabina
GO
/****** Object:  StoredProcedure [dbo].[sp_mostrarPromociones]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_mostrarPromociones]
@codCabina int
AS

update promocion SET estado=0  where fechaFin<GETDATE()
select codPromocion, nombre, descripcion, horasConsumidas, horasPromocion ,fechaInicio, fechaFin, CONVERT(VARCHAR(24),fechaInicio,108) as horaInicio, CONVERT(VARCHAR(24),fechaFin,108) as horaFin,
 CASE WHEN FinSemanaFlag=1 then 'Sí' else 'No' end AS FinSemanaFlag, CASE WHEN estado=1 THEN 'Activo' ELSE 'Inactivo' END AS estado from promocion where codCabina=@codCabina
GO
/****** Object:  StoredProcedure [dbo].[SP_RegistrarEquipo]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_RegistrarEquipo]

@nombre varchar(20), 
@estado varchar(20), 
@descripcion varchar(100),
@lider bit,
@codCliente int
AS


BEGIN

	


	Insert into EQUIPO(nombre,descripcion)
	VALUES(@nombre,@descripcion)

	declare @codEquipo int
	Set @codEquipo = (Select MAX(codEquipo) from EQUIPO)

	INSERT INTO CLIENTE_POR_EQUIPO(codCliente,codEquipo,estado,lider)
	VALUES(@codCliente,@codEquipo,@estado,@lider)

END
GO
/****** Object:  StoredProcedure [dbo].[sp_SelectMaquinas]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_SelectMaquinas]

@nom AS VARCHAR(50)
AS 
SELECT 
dbo.MAQUINA.codMaquina,
dbo.MAQUINA.numero,
dbo.MAQUINA.nombre,

dbo.MAQUINA.estado,
dbo.MAQUINA.codCabina

FROM     dbo.MAQUINA where dbo.MAQUINA.nombre = @nom
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarServicioAdicional]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_ModificarServicioAdicional]
@nombreServicio varchar(30),
@descripcion varchar(100),
@rubro int,
@estado int,
@codServicio int
AS
 UPDATE servicio SET nombre=@nombreServicio, descripcion=@descripcion,rubro=@rubro,estado=@estado
             where codServicio=@codServicio
GO
/****** Object:  StoredProcedure [dbo].[SP_ListarSolicitudesRecibidas]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[SP_ListarSolicitudesRecibidas]
@codCliente int
AS
BEGIN
	Select * from EQUIPO
	INNER JOIN CLIENTE_POR_EQUIPO
	ON CLIENTE_POR_EQUIPO.codEquipo = EQUIPO.codEquipo
	where CLIENTE_POR_EQUIPO.estado='Solicitud' AND CLIENTE_POR_EQUIPO.codCliente=@codCliente

END
GO
/****** Object:  StoredProcedure [dbo].[SP_ListarSolicitudesEnviadasClientePorEquipo]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ListarSolicitudesEnviadasClientePorEquipo]
@codCliente int,
@codEquipo int
AS


BEGIN
	SELECT Usuario.usuario,CLIENTE_POR_EQUIPO.codClienteEquipo,CLIENTE_POR_EQUIPO.codCliente,CLIENTE_POR_EQUIPO.codEquipo,CLIENTE_POR_EQUIPO.estado,CLIENTE_POR_EQUIPO.lider FROM CLIENTE_POR_EQUIPO
	INNER JOIN CLIENTE_POR_EQUIPO AS LIDER
	ON CLIENTE_POR_EQUIPO.codEquipo = LIDER.codEquipo
	Inner join USUARIO
	ON USUARIO.codUsuario = CLIENTE_POR_EQUIPO.codCliente
	where CLIENTE_POR_EQUIPO.estado='Solicitud' and Lider.codCliente=@codCliente AND LIDER.lider='TRUE' and CLIENTE_POR_EQUIPO.codEquipo=@codEquipo
	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ListarEquipos]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ListarEquipos]
@codCliente int
AS
BEGIN
	Select * from EQUIPO
	INNER JOIN CLIENTE_POR_EQUIPO
	ON CLIENTE_POR_EQUIPO.codEquipo = EQUIPO.codEquipo
	where CLIENTE_POR_EQUIPO.codCliente=@codCliente and CLIENTE_POR_EQUIPO.estado='Activo'

END
GO
/****** Object:  StoredProcedure [dbo].[SP_ListarClientesPorEquipo]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ListarClientesPorEquipo]
@codEquipo int,
@codCliente int
AS
BEGIN
	Select * from CLIENTE_POR_EQUIPO
	INNER JOIN USUARIO
	ON CLIENTE_POR_EQUIPO.codCliente = USUARIO.codUsuario
	where CLIENTE_POR_EQUIPO.codEquipo=@codEquipo and CLIENTE_POR_EQUIPO.codCliente!=@codCliente and CLIENTE_POR_EQUIPO.estado='Activo'

END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertActProgramasXCabina]    Script Date: 06/08/2017 20:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertActProgramasXCabina]

 @codPrograma int,
 @codCabina int,
 @tipoGuardadoPro int,
 @codProgramaXCabina  int 
 AS
 IF @tipoGuardadoPro = 1
  BEGIN
  SET @codProgramaXCabina = (select COUNT(*) from PROGRAMA_POR_CABINA )
  SET  @codProgramaXCabina =  @codProgramaXCabina + 1

INSERT INTO DBO.PROGRAMA_POR_CABINA
  (codProgramaCabina,codPrograma,codCabina) 
  VALUES( @codProgramaXCabina,  @codPrograma, @codCabina)

   END

   IF @tipoGuardadoPro = 2
BEGIN

UPDATE PROGRAMA_POR_CABINA 
 SET codPrograma  =  @codPrograma,
     codCabina =@codCabina
 where codProgramaCabina =  @codProgramaXCabina
   
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ExcepcionUsuarioExistaNoMiembro]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[SP_ExcepcionUsuarioExistaNoMiembro]
@codequipo int,
@usuario varchar(30)
AS
BEGIN
	if((select COUNT(*) from USUARIO
	where USUARIO.usuario = @usuario) = '0')
	BEGIN
		
		select 0		
	END
	
	else if((select COUNT(*) from CLIENTE_POR_EQUIPO
	Inner join USUARIO
	ON USUARIO.codUsuario = CLIENTE_POR_EQUIPO.codCliente
	where USUARIO.usuario = @usuario AND CLIENTE_POR_EQUIPO.codEquipo = @codequipo ) = '1')
	BEGIN
		select 1
	END
	else
	BEGIN
		select 2
	END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_EliminarAbandonarEquipo]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[SP_EliminarAbandonarEquipo]
@codCliente int,
@codEquipo int
AS


BEGIN
	DELETE FROM CLIENTE_POR_EQUIPO 
	WHERE codCliente = @codCliente
	AND codEquipo = @codEquipo
		
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ingresarPromociones]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_ingresarPromociones]
 
 @nombre nvarchar(50),
  @descripcion nvarchar(100),
  @horasConsumidas int,
  @horasPromocion int,
  @fechaInicio datetime,
  @fechaFin datetime,
  @finSemanaFlag bit,
  @estado bit,
  @codCabina int
   AS
   
   INSERT INTO promocion VALUES(@nombre,@descripcion, @horasConsumidas,@horasPromocion,@fechaInicio,@fechaFin,@finSemanaFlag,@estado,@codCabina)
GO
/****** Object:  StoredProcedure [dbo].[sp_ConsultaMaquina]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_ConsultaMaquina]

AS 
SELECT 
dbo.MAQUINA.codMaquina,
dbo.MAQUINA.numero,
dbo.MAQUINA.nombre,

dbo.MAQUINA.estado,
dbo.MAQUINA.codCabina

FROM     dbo.MAQUINA
GO
/****** Object:  StoredProcedure [dbo].[sp_ConsultaIngresoProgramaXCabina]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ConsultaIngresoProgramaXCabina]

AS

	SELECT pc.codProgramaCabina as codigoP,p.codPrograma as codp, p.nombre as nomP,ci.codCabina as codc,ci.nombre as nomC
	from PROGRAMA_POR_CABINA pc
	INNER JOIN PROGRAMA p
	ON pc.codPrograma= p.codPrograma
	INNER JOIN CABINA_DE_INTERNET ci
	ON pc.codCabina= ci.codCabina
GO
/****** Object:  StoredProcedure [dbo].[sp_CargarServicioxCodServ]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_CargarServicioxCodServ]
@codServicio int
AS
SELECT        codServicio, nombre, descripcion, rubro, estado
FROM            SERVICIO where codServicio=@codServicio
GO
/****** Object:  StoredProcedure [dbo].[SP_CargarProgramaPorCabina]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CargarProgramaPorCabina]
@codCabina int
AS
BEGIN
	Select * from PROGRAMA_POR_CABINA 
	INNER JOIN PROGRAMA
	ON PROGRAMA_POR_CABINA.codPrograma = PROGRAMA.codPrograma
	WHERE PROGRAMA_POR_CABINA.codCabina = @codCabina

END
GO
/****** Object:  StoredProcedure [dbo].[SP_CargarMaquinasDisponibles]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CargarMaquinasDisponibles]
@codCabina int
AS
BEGIN
	Select * from MAQUINA 
	WHERE MAQUINA.estado='Disponible' and codCabina=@codCabina

END
GO
/****** Object:  StoredProcedure [dbo].[sp_eliminarPromocion]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_eliminarPromocion]
 
 @codPromocion int

   AS
   
   DELETE FROM promocion where codPromocion=@codPromocion;
GO
/****** Object:  StoredProcedure [dbo].[Noduplicado]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Noduplicado]
@num as varchar(10)
as
SELECT COUNT(*) FROM dbo.MAQUINA

WHERE numero = @num
GO
/****** Object:  Table [dbo].[MAQUINA_POR_CLIENTE]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MAQUINA_POR_CLIENTE](
	[codMaquinaCliente] [int] IDENTITY(1,1) NOT NULL,
	[horasConsumidas] [int] NULL,
	[minutosConsumidos] [int] NULL,
	[horaPromocion] [int] NULL,
	[codCliente] [int] NULL,
	[fechaHoraIngreso] [datetime] NULL,
	[fechaHoraSalida] [datetime] NULL,
	[estado] [varchar](20) NULL,
	[codMaquina] [int] NULL,
 CONSTRAINT [PK_MAQUINA_POR_CLIENTE] PRIMARY KEY CLUSTERED 
(
	[codMaquinaCliente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[MAQUINA_POR_CLIENTE] ON
INSERT [dbo].[MAQUINA_POR_CLIENTE] ([codMaquinaCliente], [horasConsumidas], [minutosConsumidos], [horaPromocion], [codCliente], [fechaHoraIngreso], [fechaHoraSalida], [estado], [codMaquina]) VALUES (3, 12, 5, 2, 13, CAST(0x0000A78C006AF3A6 AS DateTime), CAST(0x0000A78C0132578F AS DateTime), N'Finalizado          ', 3)
INSERT [dbo].[MAQUINA_POR_CLIENTE] ([codMaquinaCliente], [horasConsumidas], [minutosConsumidos], [horaPromocion], [codCliente], [fechaHoraIngreso], [fechaHoraSalida], [estado], [codMaquina]) VALUES (4, 2, 2, 0, 13, CAST(0x0000A78C0111B3A2 AS DateTime), CAST(0x0000A78C013355AD AS DateTime), N'Finalizado          ', 2)
INSERT [dbo].[MAQUINA_POR_CLIENTE] ([codMaquinaCliente], [horasConsumidas], [minutosConsumidos], [horaPromocion], [codCliente], [fechaHoraIngreso], [fechaHoraSalida], [estado], [codMaquina]) VALUES (5, 4, 1, 1, 13, CAST(0x0000A78C00F12132 AS DateTime), CAST(0x0000A78C01336547 AS DateTime), N'Finalizado          ', 3)
INSERT [dbo].[MAQUINA_POR_CLIENTE] ([codMaquinaCliente], [horasConsumidas], [minutosConsumidos], [horaPromocion], [codCliente], [fechaHoraIngreso], [fechaHoraSalida], [estado], [codMaquina]) VALUES (6, NULL, NULL, NULL, 13, CAST(0x0000A78C00D0C30E AS DateTime), NULL, N'Activo', 2)
INSERT [dbo].[MAQUINA_POR_CLIENTE] ([codMaquinaCliente], [horasConsumidas], [minutosConsumidos], [horaPromocion], [codCliente], [fechaHoraIngreso], [fechaHoraSalida], [estado], [codMaquina]) VALUES (7, NULL, NULL, NULL, 13, CAST(0x0000A78C008F0A6C AS DateTime), NULL, N'Activo', 3)
SET IDENTITY_INSERT [dbo].[MAQUINA_POR_CLIENTE] OFF
/****** Object:  StoredProcedure [dbo].[SP_ActualizarAceptarSolicitudesEquipo]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ActualizarAceptarSolicitudesEquipo]
@codClienteEquipo int
AS


BEGIN
	UPDATE CLIENTE_POR_EQUIPO
	SET estado= 'Activo'
	WHERE CLIENTE_POR_EQUIPO.codClienteEquipo = @codClienteEquipo
END
GO
/****** Object:  Table [dbo].[GRUPO]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GRUPO](
	[codGrupo] [int] NOT NULL,
	[nombre] [varchar](30) NOT NULL,
	[descripcion] [varchar](100) NULL,
	[icono] [varchar](100) NULL,
	[codProgramaCabina] [int] NOT NULL,
 CONSTRAINT [PK_GRUPO] PRIMARY KEY CLUSTERED 
(
	[codGrupo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[SP_ActualizarLiderEquipo]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ActualizarLiderEquipo]
@codClienteAntiguo int,
@codEquipoAntiguo int,
@codClienteEquipoNuevo int
AS


BEGIN
	Update CLIENTE_POR_EQUIPO
	set lider='False'
	Where codCliente = @codClienteAntiguo
	AND codEquipo = @codEquipoAntiguo
	
	Update CLIENTE_POR_EQUIPO
	set lider='True'
	Where CLIENTE_POR_EQUIPO.codClienteEquipo = @codClienteEquipoNuevo
	
		
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ActualizarRechazarSolicitudesEquipo]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ActualizarRechazarSolicitudesEquipo]
@codClienteEquipo int
AS


BEGIN
	DELETE FROM CLIENTE_POR_EQUIPO 
	WHERE codClienteEquipo = @codClienteEquipo
		
END
GO
/****** Object:  StoredProcedure [dbo].[sp_actualizarPromociones]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_actualizarPromociones]
 @codPromocion int,
 @nombre nvarchar(50),
  @descripcion nvarchar(100),
  @horasConsumidas int,
  @horasPromocion int,
  @fechaInicio datetime,
  @fechaFin datetime,
  @finSemanaFlag bit,
  @estado bit
   AS
   
   UPDATE promocion set nombre=@nombre, descripcion=@descripcion, horasConsumidas=@horasConsumidas, horasPromocion=@horasPromocion , fechaInicio=@fechaInicio, fechaFin=@fechaFin,FinSemanaFlag=@finSemanaFlag,estado=@estado
    WHERE codPromocion=@codPromocion
GO
/****** Object:  Table [dbo].[PRODUCTO]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PRODUCTO](
	[codProducto] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](30) NOT NULL,
	[descripcion] [varchar](100) NULL,
	[imagen] [varchar](100) NULL,
	[precio] [decimal](6, 2) NULL,
	[codServicio] [int] NOT NULL,
 CONSTRAINT [PK_PRODUCTO] PRIMARY KEY CLUSTERED 
(
	[codProducto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PRODUCTO] ON
INSERT [dbo].[PRODUCTO] ([codProducto], [nombre], [descripcion], [imagen], [precio], [codServicio]) VALUES (1, N'PS3', N'LALAL', N'OO', CAST(50.00 AS Decimal(6, 2)), 1)
INSERT [dbo].[PRODUCTO] ([codProducto], [nombre], [descripcion], [imagen], [precio], [codServicio]) VALUES (3, N'prod1', N'prod2', N'../img/AABC.png', CAST(44.00 AS Decimal(6, 2)), 1)
SET IDENTITY_INSERT [dbo].[PRODUCTO] OFF
/****** Object:  Table [dbo].[EVENTO]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EVENTO](
	[codEvento] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](30) NOT NULL,
	[imagen] [varchar](100) NULL,
	[vacantes] [int] NOT NULL,
	[precioInscripcion] [decimal](10, 3) NOT NULL,
	[fechaInicio] [datetime] NOT NULL,
	[fechaFin] [datetime] NOT NULL,
	[descripcion] [varchar](100) NULL,
	[inscripciones] [bit] NULL,
	[codProgramaCabina] [int] NOT NULL,
 CONSTRAINT [PK_EVENTO] PRIMARY KEY CLUSTERED 
(
	[codEvento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[EVENTO] ON
INSERT [dbo].[EVENTO] ([codEvento], [nombre], [imagen], [vacantes], [precioInscripcion], [fechaInicio], [fechaFin], [descripcion], [inscripciones], [codProgramaCabina]) VALUES (1, N'Copa de HOTS 2017', N'imagen1', 36, CAST(100.000 AS Decimal(10, 3)), CAST(0x0000A84500B84BB0 AS DateTime), CAST(0x0000A84701499700 AS DateTime), N'Copa de hots en la universidad catolica', 1, 1)
INSERT [dbo].[EVENTO] ([codEvento], [nombre], [imagen], [vacantes], [precioInscripcion], [fechaInicio], [fechaFin], [descripcion], [inscripciones], [codProgramaCabina]) VALUES (8, N'Copa dota', NULL, 12, CAST(12.000 AS Decimal(10, 3)), CAST(0x0000A84600C90CC0 AS DateTime), CAST(0x0000A84700C90CC0 AS DateTime), N'Habra un evento muy bonito', 1, 2)
SET IDENTITY_INSERT [dbo].[EVENTO] OFF
/****** Object:  StoredProcedure [dbo].[actualizar_maquina]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[actualizar_maquina]
  
   ( @cod int,
    @num VARCHAR(50),
    @nom VARCHAR(50),
 
    @est VARCHAR (50))

    AS
UPDATE  dbo.MAQUINA
   SET numero = @num,
        nombre = @nom,
       
        estado = @est
    
     
 WHERE codMaquina=@cod
GO
/****** Object:  StoredProcedure [dbo].[inserta_maquina]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[inserta_maquina]
  
    
    @num AS VARCHAR(50),
    @nom AS VARCHAR(50),
    @est AS VARCHAR (50),
	@coo AS INT

AS
BEGIN

   

        INSERT INTO dbo.MAQUINA VALUES  (@num, @nom, @est,@coo)

        
     


END
GO
/****** Object:  Table [dbo].[IMAGEN]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IMAGEN](
	[codImagen] [int] NOT NULL,
	[descripcion] [nchar](100) NULL,
	[imagen] [nchar](100) NULL,
	[codAlbum] [int] NULL,
 CONSTRAINT [PK_IMAGEN] PRIMARY KEY CLUSTERED 
(
	[codImagen] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GRUPO_POR_CLIENTE]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GRUPO_POR_CLIENTE](
	[codGrupo] [int] NOT NULL,
	[codCliente] [int] NOT NULL,
	[estado] [varchar](20) NOT NULL,
	[fechaIngreso] [datetime] NOT NULL,
 CONSTRAINT [PK_GRUPO_POR_CLIENTE] PRIMARY KEY CLUSTERED 
(
	[codGrupo] ASC,
	[codCliente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EVENTO_POR_EQUIPO]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EVENTO_POR_EQUIPO](
	[codEventoEquipo] [int] NOT NULL,
	[codEvento] [int] NOT NULL,
	[codEquipo] [int] NOT NULL,
	[puesto] [int] NULL,
	[fechaInscripcion] [datetime] NOT NULL,
 CONSTRAINT [PK_EVENTO_POR_CLIENTE_1] PRIMARY KEY CLUSTERED 
(
	[codEventoEquipo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[EVENTO_POR_EQUIPO] ([codEventoEquipo], [codEvento], [codEquipo], [puesto], [fechaInscripcion]) VALUES (1, 1, 1, 3, CAST(0x0000A12500000000 AS DateTime))
INSERT [dbo].[EVENTO_POR_EQUIPO] ([codEventoEquipo], [codEvento], [codEquipo], [puesto], [fechaInscripcion]) VALUES (2, 1, 2, 0, CAST(0x0000A12500000000 AS DateTime))
INSERT [dbo].[EVENTO_POR_EQUIPO] ([codEventoEquipo], [codEvento], [codEquipo], [puesto], [fechaInscripcion]) VALUES (3, 1, 3, 1, CAST(0x0000A12500000000 AS DateTime))
INSERT [dbo].[EVENTO_POR_EQUIPO] ([codEventoEquipo], [codEvento], [codEquipo], [puesto], [fechaInscripcion]) VALUES (4, 1, 7, 1, CAST(0x0000A12500000000 AS DateTime))
INSERT [dbo].[EVENTO_POR_EQUIPO] ([codEventoEquipo], [codEvento], [codEquipo], [puesto], [fechaInscripcion]) VALUES (5, 8, 7, 1, CAST(0x0000A12500000000 AS DateTime))
/****** Object:  StoredProcedure [dbo].[cargargrillaevento]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[cargargrillaevento]

 AS 
SELECT 
dbo.EVENTO.codEvento,
dbo.EVENTO.nombre,
dbo.EVENTO.imagen,
dbo.EVENTO.vacantes,
dbo.EVENTO.precioInscripcion,
dbo.EVENTO.fechaInicio,
dbo.EVENTO.fechaFin,
dbo.EVENTO.descripcion,
dbo.EVENTO.inscripciones,
dbo.EVENTO.codProgramaCabina

FROM     dbo.EVENTO
GO
/****** Object:  Table [dbo].[ENFRENTAMIENTO]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ENFRENTAMIENTO](
	[codEnfrentamiento] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[fecha] [datetime] NOT NULL,
	[etapa] [int] NOT NULL,
	[codEvento] [int] NULL,
 CONSTRAINT [PK_ENFRENTAMIENTO] PRIMARY KEY CLUSTERED 
(
	[codEnfrentamiento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[ConsultarEvento]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ConsultarEvento]

@nom AS VARCHAR(30)
AS 
SELECT 
dbo.EVENTO.codEvento,
dbo.EVENTO.nombre,
dbo.EVENTO.imagen,
dbo.EVENTO.vacantes,
dbo.EVENTO.precioInscripcion,
dbo.EVENTO.fechaInicio,
dbo.EVENTO.fechaFin,
dbo.EVENTO.descripcion,
dbo.EVENTO.inscripciones,
dbo.EVENTO.codProgramaCabina

FROM     dbo.EVENTO where dbo.EVENTO.nombre = @nom
GO
/****** Object:  Table [dbo].[PREMIO]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PREMIO](
	[codPremio] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](30) NOT NULL,
	[descripcion] [varchar](100) NULL,
	[puesto] [int] NOT NULL,
	[codEvento] [int] NOT NULL,
 CONSTRAINT [PK_PREMIO] PRIMARY KEY CLUSTERED 
(
	[codPremio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PREMIO] ON
INSERT [dbo].[PREMIO] ([codPremio], [nombre], [descripcion], [puesto], [codEvento]) VALUES (2, N'premio10', N'descripcion', 2, 1)
INSERT [dbo].[PREMIO] ([codPremio], [nombre], [descripcion], [puesto], [codEvento]) VALUES (3, N'nombre 1', N'ganaras tal tal y tal', 4, 1)
INSERT [dbo].[PREMIO] ([codPremio], [nombre], [descripcion], [puesto], [codEvento]) VALUES (4, N'premio2', N'asdas', 3, 1)
INSERT [dbo].[PREMIO] ([codPremio], [nombre], [descripcion], [puesto], [codEvento]) VALUES (5, N'nombre 1', N'asda', 3, 1)
INSERT [dbo].[PREMIO] ([codPremio], [nombre], [descripcion], [puesto], [codEvento]) VALUES (6, N'galleta', N'galleta bien rica', 1, 1)
SET IDENTITY_INSERT [dbo].[PREMIO] OFF
/****** Object:  StoredProcedure [dbo].[SP_AsignarMaquinaACliente]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_AsignarMaquinaACliente]

@usuario varchar(30),
@contraseña varchar(30),
@codmaquina int,
@estado varchar(20),
@fechaHoraIngreso datetime
AS


BEGIN
	declare @codCliente int
	
	if((select COUNT(*) from USUARIO 
	where usuario = @usuario and contraseña =@contraseña)='1' )
	BEGIN
		
		
		set @codcliente = (select codusuario from USUARIO where usuario = @usuario)
		
		insert into MAQUINA_POR_CLIENTE(codCliente,codMaquina,estado,fechaHoraIngreso)
		values(@codCliente,@codmaquina,@estado,@fechaHoraIngreso)
		
		update MAQUINA
		set estado = 'Ocupado'
		where codMaquina=@codmaquina
		
		select 0		
	END
	
	else
	BEGIN
		select 1
	END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ActualizarMaquinaClientePromocion]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[SP_ActualizarMaquinaClientePromocion]
@codMaquinaCliente int,
@horaPromocion int
AS


BEGIN
	UPDATE MAQUINA_POR_CLIENTE
	SET horaPromocion = @horaPromocion
	WHERE codMaquinaCliente = @codMaquinaCliente
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ActualizarEvento]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ActualizarEvento]
@codEvento int,
@nombre varchar(30), 
@precioInscripcion decimal(10, 3),
@vacantes int,
@fechaInicio Datetime,
@fechaFin Datetime,
@descripcion varchar(100),
@inscripciones bit,
@codProgramaCabina int
AS


BEGIN
	UPDATE EVENTO
	SET nombre = @nombre,
	precioInscripcion = @precioInscripcion,
	vacantes = @vacantes,
	fechaInicio = @fechaInicio,
	fechaFin = @fechaFin,
	descripcion = @descripcion,
	inscripciones = @inscripciones,
	codProgramaCabina = @codProgramaCabina
	WHERE codEvento = @codEvento
END
GO
/****** Object:  StoredProcedure [dbo].[sp_actualizarProducto]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_actualizarProducto]
					 @nombre varchar(30),
					   @descripcion varchar(100),
					   @precio numeric(18,2),
					   @imagen varchar(50),
					   @codProducto int
					 AS
					   UPDATE PRODUCTO SET nombre=@nombre,descripcion=@descripcion, imagen=@imagen, precio=@precio where
					   codProducto=@codProducto
GO
/****** Object:  StoredProcedure [dbo].[SP_EnviarDatosDeMaquinaYPromociones]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_EnviarDatosDeMaquinaYPromociones]
@codCliente int,
@codCabina int
as
select horasPromocion, horasConsumidas 
from PROMOCION 
WHERE PROMOCION.estado='true' and PROMOCION.codCabina=@codCabina;

declare @horaInicioPromocion datetime
declare @horaFinPromocion datetime

set @horaInicioPromocion = (select fechaInicio from PROMOCION 
WHERE PROMOCION.estado='true' and PROMOCION.codCabina=@codCabina);

set @horaFinPromocion = (select fechaFin from PROMOCION 
WHERE PROMOCION.estado='true' and PROMOCION.codCabina=@codCabina);

select SUM(MAQUINA_POR_CLIENTE.horasConsumidas),SUM(MAQUINA_POR_CLIENTE.minutosConsumidos),SUM(MAQUINA_POR_CLIENTE.horaPromocion) from MAQUINA_POR_CLIENTE
INNER JOIN MAQUINA
on MAQUINA.codMaquina = MAQUINA_POR_CLIENTE.codMaquina
Where MAQUINA_POR_CLIENTE.codCliente = @codCliente
and MAQUINA_POR_CLIENTE.fechaHoraIngreso>= @horaInicioPromocion
and MAQUINA_POR_CLIENTE.fechaHoraSalida <= @horaFinPromocion
and MAQUINA.codCabina = @codCabina
GO
/****** Object:  StoredProcedure [dbo].[sp_eliminarServicio]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_eliminarServicio]
					   @codServicio int
					   AS

					   delete from PRODUCTO whERE codServicio=@codServicio
					   delete from SERVICIO where codServicio=@codServicio
GO
/****** Object:  StoredProcedure [dbo].[SP_EliminarProgramaXCabina]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_EliminarProgramaXCabina]

@codProgXCabina int

AS


BEGIN
	if((select COUNT(*) from EVENTO where  codProgramaCabina= @codProgXCabina)='0')
	BEGIN
		
		DELETE FROM PROGRAMA_POR_CABINA  where  codProgramaCabina = @codProgXCabina
		
		select 0		
	END
	
	else
	BEGIN
		select 1
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_eliminarProducto]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_eliminarProducto]
					   		   @codProducto int
					   AS

					   delete from PRODUCTO whERE codProducto=@codProducto
GO
/****** Object:  StoredProcedure [dbo].[sp_FinalizarAsignarMaquina]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_FinalizarAsignarMaquina]
@codMaquinaCliente  int,
@estado nchar(20),
@fechaHoraSalida datetime,
@horasConsumidas int,
@minutosConsumidos int,
@codMaquina int
as
Update MAQUINA_POR_CLIENTE 
SET fechaHoraSalida = @fechaHoraSalida,
horasConsumidas = @horasConsumidas,
minutosConsumidos = @minutosConsumidos,
estado=@estado,
horaPromocion = 0
WHERE  codMaquinaCliente=@codMaquinaCliente 

update MAQUINA
set estado = 'Disponible'
where codMaquina = @codMaquina

Select * from CABINA_DE_INTERNET
GO
/****** Object:  StoredProcedure [dbo].[SP_ListarEventos]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ListarEventos]
@codCabina int
AS
BEGIN
	Select codEvento,Evento.nombre as 'nombreevento',vacantes,precioInscripcion,fechaInicio,fechaFin,EVENTO.descripcion,PROGRAMA_POR_CABINA.codProgramaCabina, PROGRAMA.nombre as 'nombreprograma',inscripciones from EVENTO

	INNER JOIN PROGRAMA_POR_CABINA 
	ON EVENTO.codProgramaCabina = PROGRAMA_POR_CABINA.codProgramaCabina
	INNER JOIN PROGRAMA
	ON PROGRAMA_POR_CABINA.codPrograma = PROGRAMA.codPrograma
	WHERE PROGRAMA_POR_CABINA.codCabina = @codCabina

END
GO
/****** Object:  StoredProcedure [dbo].[SP_ListarMaquinasAsignadas]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ListarMaquinasAsignadas]
@codCabina int
AS
BEGIN
	Select * FROM MAQUINA_POR_CLIENTE
	INNER JOIN USUARIO
	on USUARIO.codUsuario = MAQUINA_POR_CLIENTE.codCliente
	INNER JOIN MAQUINA
	on MAQUINA.codMaquina = MAQUINA_POR_CLIENTE.codMaquina
	WHERE MAQUINA.codCabina = 1 and MAQUINA_POR_CLIENTE.estado = 'Activo' ;
	
	

END
GO
/****** Object:  StoredProcedure [dbo].[SP_RegistrarEvento]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_RegistrarEvento]

@nombre varchar(30), 
@precioInscripcion decimal(10, 3),
@vacantes int,
@fechaInicio Datetime,
@fechaFin Datetime,
@descripcion varchar(100),
@inscripciones bit,
@codProgramaCabina int

AS


BEGIN
	INSERT INTO EVENTO(nombre,precioInscripcion,vacantes,fechaInicio,fechaFin,descripcion,inscripciones,codProgramaCabina) 
	VALUES (@nombre,@precioInscripcion,@vacantes,@fechaInicio,@fechaFin,@descripcion,@inscripciones,@codProgramaCabina);

END
GO
/****** Object:  StoredProcedure [dbo].[SP_MostrarProductosxServicio]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_MostrarProductosxServicio] 
@codServicio int
AS

SELECT p.codProducto,p.nombre, p.descripcion, p.imagen, p.precio
FROM     PRODUCTO p INNER JOIN
                  SERVICIO s ON p.codServicio = s.codServicio
				  where s.codServicio=@codServicio
GO
/****** Object:  StoredProcedure [dbo].[sp_RegistrarProducto]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_RegistrarProducto]
@nombreProducto varchar(30),
@descripcion varchar(100),
@precio decimal(6,2),
@imagen varchar(100),
@codServicio int
AS
insert into PRODUCTO values(@nombreProducto,@descripcion,@imagen,@precio,@codServicio)
GO
/****** Object:  StoredProcedure [dbo].[SP_RegistrarPremio]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SP_RegistrarPremio]

@codEvento int,
@nombre varchar(30), 
@descripcion varchar(100),
@puesto int

AS


BEGIN
	INSERT INTO PREMIO(nombre,descripcion,puesto,codEvento) 
	VALUES (@nombre,@descripcion,@puesto,@codEvento);

END
GO
/****** Object:  StoredProcedure [dbo].[SP_ListarPremios]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[SP_ListarPremios]
@codEvento int
AS
BEGIN
	Select * from PREMIO
	where PREMIO.codEvento=@codEvento

END
GO
/****** Object:  StoredProcedure [dbo].[SP_ListarEventosDeEquipo]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[SP_ListarEventosDeEquipo]
@codEquipo int
AS
BEGIN
	Select EVENTO_POR_EQUIPO.codEventoEquipo,EVENTO.nombre,EVENTO_POR_EQUIPO.fechaInscripcion,EVENTO_POR_EQUIPO.puesto  from EVENTO_POR_EQUIPO
	INNER JOIN EVENTO
	ON EVENTO.codEvento = EVENTO_POR_EQUIPO.codEvento
	where EVENTO_POR_EQUIPO.codEquipo=@codEquipo

END
GO
/****** Object:  StoredProcedure [dbo].[SP_ListarEventoPorEquipo]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ListarEventoPorEquipo]
@codEvento int
AS
BEGIN
	Select codEventoEquipo , EVENTO_POR_EQUIPO.codEquipo, codEvento , nombre, 
	( CASE puesto
	WHEN 0 THEN 'ND'
	WHEN puesto THEN (CONVERT(varchar(20),puesto))
	END ) AS puesto , fechaInscripcion from EVENTO_POR_EQUIPO

	INNER JOIN EQUIPO
	on EVENTO_POR_EQUIPO.codEquipo = EQUIPO.codEquipo
	Where codEvento = @codEvento

END
GO
/****** Object:  StoredProcedure [dbo].[SP_EliminarPremio]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[SP_EliminarPremio]

@codPremio int

AS


BEGIN
	
		
		DELETE FROM PREMIO WHERE codPremio = @codPremio
		select 0		
	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_EliminarEvento]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_EliminarEvento]

@codEvento int

AS


BEGIN
	if((select COUNT(*) from EVENTO_POR_EQUIPO where codEvento = @codEvento)='0')
	BEGIN
		
		DELETE FROM PREMIO WHERE codEvento = @codEvento
		DELETE FROM EVENTO WHERE codEvento = @codEvento
		DELETE FROM ENFRENTAMIENTO WHERE codEvento = @codEvento
		select 0		
	END
	
	else
	BEGIN
		select 1
	END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_EliminarEquipo]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_EliminarEquipo]

@codEquipo int

AS


BEGIN
	if((select COUNT(*) from EVENTO_POR_EQUIPO where codEquipo = @codEquipo)='0' 
	AND(select COUNT(*) from CLIENTE_POR_EQUIPO where codEquipo = @codEquipo)='1' )
	BEGIN
		
		DELETE FROM CLIENTE_POR_EQUIPO WHERE codEquipo = @codEquipo
		DELETE FROM Equipo WHERE codEquipo = @codEquipo
		select 0		
	END
	
	else
	BEGIN
		select 1
	END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ActualizarPremio]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ActualizarPremio]
@codPremio int,
@nombre varchar(30), 
@descripcion varchar(100),
@puesto int

AS


BEGIN
	UPDATE PREMIO
	SET nombre = @nombre,
	descripcion = @descripcion,
	puesto = @puesto
	WHERE codPremio = @codPremio
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ActualizarEvento_Por_Equipo]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[SP_ActualizarEvento_Por_Equipo]
@codEventoPorEquipo int,
@puesto int
AS


BEGIN
	UPDATE Evento_Por_Equipo
	SET puesto = @puesto
	WHERE codEventoEquipo = @codEventoPorEquipo
END
GO
/****** Object:  Table [dbo].[EVENTO_POR_EQUIPO_POR_ENFRENTAMIENTO]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EVENTO_POR_EQUIPO_POR_ENFRENTAMIENTO](
	[codEventoEquipoEnfrentamiento] [int] IDENTITY(1,1) NOT NULL,
	[codEnfrentamiento] [int] NOT NULL,
	[codEventoEquipo] [int] NOT NULL,
	[estado] [varchar](50) NULL,
 CONSTRAINT [PK_EVENTO_POR_EQUIPO_POR_ENFRENTAMIENTO] PRIMARY KEY CLUSTERED 
(
	[codEventoEquipoEnfrentamiento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[cargargrillapremio]    Script Date: 06/08/2017 20:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[cargargrillapremio]

 AS 
SELECT 
dbo.PREMIO.codPremio,
dbo.PREMIO.nombre,
dbo.PREMIO.descripcion,
dbo.PREMIO.puesto,
dbo.PREMIO.codEvento

FROM     dbo.PREMIO
GO
/****** Object:  ForeignKey [FK_PERSONA_USUARIO]    Script Date: 06/08/2017 20:03:23 ******/
ALTER TABLE [dbo].[PERSONA]  WITH CHECK ADD  CONSTRAINT [FK_PERSONA_USUARIO] FOREIGN KEY([codPersona])
REFERENCES [dbo].[USUARIO] ([codUsuario])
GO
ALTER TABLE [dbo].[PERSONA] CHECK CONSTRAINT [FK_PERSONA_USUARIO]
GO
/****** Object:  ForeignKey [FK_TICKET_USUARIO]    Script Date: 06/08/2017 20:03:32 ******/
ALTER TABLE [dbo].[TICKET]  WITH CHECK ADD  CONSTRAINT [FK_TICKET_USUARIO] FOREIGN KEY([codUsuario])
REFERENCES [dbo].[USUARIO] ([codUsuario])
GO
ALTER TABLE [dbo].[TICKET] CHECK CONSTRAINT [FK_TICKET_USUARIO]
GO
/****** Object:  ForeignKey [FK_ADMINISTRADOR_PERSONA]    Script Date: 06/08/2017 20:03:32 ******/
ALTER TABLE [dbo].[ADMINISTRADOR]  WITH CHECK ADD  CONSTRAINT [FK_ADMINISTRADOR_PERSONA] FOREIGN KEY([codAdministrador])
REFERENCES [dbo].[PERSONA] ([codPersona])
GO
ALTER TABLE [dbo].[ADMINISTRADOR] CHECK CONSTRAINT [FK_ADMINISTRADOR_PERSONA]
GO
/****** Object:  ForeignKey [FK_CLIENTE_DE_CABINA_PERSONA]    Script Date: 06/08/2017 20:03:32 ******/
ALTER TABLE [dbo].[CLIENTE_DE_CABINA]  WITH CHECK ADD  CONSTRAINT [FK_CLIENTE_DE_CABINA_PERSONA] FOREIGN KEY([codCliente])
REFERENCES [dbo].[PERSONA] ([codPersona])
GO
ALTER TABLE [dbo].[CLIENTE_DE_CABINA] CHECK CONSTRAINT [FK_CLIENTE_DE_CABINA_PERSONA]
GO
/****** Object:  ForeignKey [FK_CABINA_DE_INTERNET_PERSONA]    Script Date: 06/08/2017 20:03:32 ******/
ALTER TABLE [dbo].[CABINA_DE_INTERNET]  WITH CHECK ADD  CONSTRAINT [FK_CABINA_DE_INTERNET_PERSONA] FOREIGN KEY([codCabina])
REFERENCES [dbo].[PERSONA] ([codPersona])
GO
ALTER TABLE [dbo].[CABINA_DE_INTERNET] CHECK CONSTRAINT [FK_CABINA_DE_INTERNET_PERSONA]
GO
/****** Object:  ForeignKey [FK_ALBUM_CABINA_DE_INTERNET]    Script Date: 06/08/2017 20:03:32 ******/
ALTER TABLE [dbo].[ALBUM]  WITH CHECK ADD  CONSTRAINT [FK_ALBUM_CABINA_DE_INTERNET] FOREIGN KEY([codCabina])
REFERENCES [dbo].[CABINA_DE_INTERNET] ([codCabina])
GO
ALTER TABLE [dbo].[ALBUM] CHECK CONSTRAINT [FK_ALBUM_CABINA_DE_INTERNET]
GO
/****** Object:  ForeignKey [FK_COMENTARIO_CABINA_DE_INTERNET]    Script Date: 06/08/2017 20:03:32 ******/
ALTER TABLE [dbo].[COMENTARIO]  WITH CHECK ADD  CONSTRAINT [FK_COMENTARIO_CABINA_DE_INTERNET] FOREIGN KEY([codCabina])
REFERENCES [dbo].[CABINA_DE_INTERNET] ([codCabina])
GO
ALTER TABLE [dbo].[COMENTARIO] CHECK CONSTRAINT [FK_COMENTARIO_CABINA_DE_INTERNET]
GO
/****** Object:  ForeignKey [FK_COMENTARIO_CLIENTE_DE_CABINA]    Script Date: 06/08/2017 20:03:32 ******/
ALTER TABLE [dbo].[COMENTARIO]  WITH CHECK ADD  CONSTRAINT [FK_COMENTARIO_CLIENTE_DE_CABINA] FOREIGN KEY([codCliente])
REFERENCES [dbo].[CLIENTE_DE_CABINA] ([codCliente])
GO
ALTER TABLE [dbo].[COMENTARIO] CHECK CONSTRAINT [FK_COMENTARIO_CLIENTE_DE_CABINA]
GO
/****** Object:  ForeignKey [FK_CLIENTE_POR_EQUIPO_CLIENTE_DE_CABINA]    Script Date: 06/08/2017 20:03:32 ******/
ALTER TABLE [dbo].[CLIENTE_POR_EQUIPO]  WITH CHECK ADD  CONSTRAINT [FK_CLIENTE_POR_EQUIPO_CLIENTE_DE_CABINA] FOREIGN KEY([codCliente])
REFERENCES [dbo].[CLIENTE_DE_CABINA] ([codCliente])
GO
ALTER TABLE [dbo].[CLIENTE_POR_EQUIPO] CHECK CONSTRAINT [FK_CLIENTE_POR_EQUIPO_CLIENTE_DE_CABINA]
GO
/****** Object:  ForeignKey [FK_CLIENTE_POR_EQUIPO_EQUIPO]    Script Date: 06/08/2017 20:03:32 ******/
ALTER TABLE [dbo].[CLIENTE_POR_EQUIPO]  WITH CHECK ADD  CONSTRAINT [FK_CLIENTE_POR_EQUIPO_EQUIPO] FOREIGN KEY([codEquipo])
REFERENCES [dbo].[EQUIPO] ([codEquipo])
GO
ALTER TABLE [dbo].[CLIENTE_POR_EQUIPO] CHECK CONSTRAINT [FK_CLIENTE_POR_EQUIPO_EQUIPO]
GO
/****** Object:  ForeignKey [FK_MAQUINA_CABINA_DE_INTERNET]    Script Date: 06/08/2017 20:03:32 ******/
ALTER TABLE [dbo].[MAQUINA]  WITH CHECK ADD  CONSTRAINT [FK_MAQUINA_CABINA_DE_INTERNET] FOREIGN KEY([codCabina])
REFERENCES [dbo].[CABINA_DE_INTERNET] ([codCabina])
GO
ALTER TABLE [dbo].[MAQUINA] CHECK CONSTRAINT [FK_MAQUINA_CABINA_DE_INTERNET]
GO
/****** Object:  ForeignKey [FK_CALIFICACION_CABINA_DE_INTERNET]    Script Date: 06/08/2017 20:03:32 ******/
ALTER TABLE [dbo].[CALIFICACION]  WITH CHECK ADD  CONSTRAINT [FK_CALIFICACION_CABINA_DE_INTERNET] FOREIGN KEY([codCabina])
REFERENCES [dbo].[CABINA_DE_INTERNET] ([codCabina])
GO
ALTER TABLE [dbo].[CALIFICACION] CHECK CONSTRAINT [FK_CALIFICACION_CABINA_DE_INTERNET]
GO
/****** Object:  ForeignKey [FK_CALIFICACION_CLIENTE_DE_CABINA]    Script Date: 06/08/2017 20:03:32 ******/
ALTER TABLE [dbo].[CALIFICACION]  WITH CHECK ADD  CONSTRAINT [FK_CALIFICACION_CLIENTE_DE_CABINA] FOREIGN KEY([codCliente])
REFERENCES [dbo].[CLIENTE_DE_CABINA] ([codCliente])
GO
ALTER TABLE [dbo].[CALIFICACION] CHECK CONSTRAINT [FK_CALIFICACION_CLIENTE_DE_CABINA]
GO
/****** Object:  ForeignKey [FK_PUBLICIDAD_CABINA_DE_INTERNET]    Script Date: 06/08/2017 20:03:32 ******/
ALTER TABLE [dbo].[PUBLICIDAD]  WITH CHECK ADD  CONSTRAINT [FK_PUBLICIDAD_CABINA_DE_INTERNET] FOREIGN KEY([codCabina])
REFERENCES [dbo].[CABINA_DE_INTERNET] ([codCabina])
GO
ALTER TABLE [dbo].[PUBLICIDAD] CHECK CONSTRAINT [FK_PUBLICIDAD_CABINA_DE_INTERNET]
GO
/****** Object:  ForeignKey [FK_PROMOCION_CABINA_DE_INTERNET]    Script Date: 06/08/2017 20:03:32 ******/
ALTER TABLE [dbo].[PROMOCION]  WITH CHECK ADD  CONSTRAINT [FK_PROMOCION_CABINA_DE_INTERNET] FOREIGN KEY([codCabina])
REFERENCES [dbo].[CABINA_DE_INTERNET] ([codCabina])
GO
ALTER TABLE [dbo].[PROMOCION] CHECK CONSTRAINT [FK_PROMOCION_CABINA_DE_INTERNET]
GO
/****** Object:  ForeignKey [FK_PROGRAMA_POR_CABINA_CABINA_DE_INTERNET]    Script Date: 06/08/2017 20:03:32 ******/
ALTER TABLE [dbo].[PROGRAMA_POR_CABINA]  WITH CHECK ADD  CONSTRAINT [FK_PROGRAMA_POR_CABINA_CABINA_DE_INTERNET] FOREIGN KEY([codCabina])
REFERENCES [dbo].[CABINA_DE_INTERNET] ([codCabina])
GO
ALTER TABLE [dbo].[PROGRAMA_POR_CABINA] CHECK CONSTRAINT [FK_PROGRAMA_POR_CABINA_CABINA_DE_INTERNET]
GO
/****** Object:  ForeignKey [FK_PROGRAMA_POR_CABINA_PROGRAMA]    Script Date: 06/08/2017 20:03:32 ******/
ALTER TABLE [dbo].[PROGRAMA_POR_CABINA]  WITH CHECK ADD  CONSTRAINT [FK_PROGRAMA_POR_CABINA_PROGRAMA] FOREIGN KEY([codPrograma])
REFERENCES [dbo].[PROGRAMA] ([codPrograma])
GO
ALTER TABLE [dbo].[PROGRAMA_POR_CABINA] CHECK CONSTRAINT [FK_PROGRAMA_POR_CABINA_PROGRAMA]
GO
/****** Object:  ForeignKey [FK_SERVICIO_CABINA_DE_INTERNET]    Script Date: 06/08/2017 20:03:32 ******/
ALTER TABLE [dbo].[SERVICIO]  WITH CHECK ADD  CONSTRAINT [FK_SERVICIO_CABINA_DE_INTERNET] FOREIGN KEY([codCabina])
REFERENCES [dbo].[CABINA_DE_INTERNET] ([codCabina])
GO
ALTER TABLE [dbo].[SERVICIO] CHECK CONSTRAINT [FK_SERVICIO_CABINA_DE_INTERNET]
GO
/****** Object:  ForeignKey [FK_SERVICIO_RUBRO_SERVICIO]    Script Date: 06/08/2017 20:03:32 ******/
ALTER TABLE [dbo].[SERVICIO]  WITH CHECK ADD  CONSTRAINT [FK_SERVICIO_RUBRO_SERVICIO] FOREIGN KEY([rubro])
REFERENCES [dbo].[RUBRO_SERVICIO] ([codRubro])
GO
ALTER TABLE [dbo].[SERVICIO] CHECK CONSTRAINT [FK_SERVICIO_RUBRO_SERVICIO]
GO
/****** Object:  ForeignKey [FK_PAGO_CABINA_DE_INTERNET]    Script Date: 06/08/2017 20:03:32 ******/
ALTER TABLE [dbo].[PAGO]  WITH CHECK ADD  CONSTRAINT [FK_PAGO_CABINA_DE_INTERNET] FOREIGN KEY([codCabina])
REFERENCES [dbo].[CABINA_DE_INTERNET] ([codCabina])
GO
ALTER TABLE [dbo].[PAGO] CHECK CONSTRAINT [FK_PAGO_CABINA_DE_INTERNET]
GO
/****** Object:  ForeignKey [FK_MAQUINA_POR_CLIENTE_CLIENTE_DE_CABINA1]    Script Date: 06/08/2017 20:03:33 ******/
ALTER TABLE [dbo].[MAQUINA_POR_CLIENTE]  WITH CHECK ADD  CONSTRAINT [FK_MAQUINA_POR_CLIENTE_CLIENTE_DE_CABINA1] FOREIGN KEY([codCliente])
REFERENCES [dbo].[CLIENTE_DE_CABINA] ([codCliente])
GO
ALTER TABLE [dbo].[MAQUINA_POR_CLIENTE] CHECK CONSTRAINT [FK_MAQUINA_POR_CLIENTE_CLIENTE_DE_CABINA1]
GO
/****** Object:  ForeignKey [FK_MAQUINA_POR_CLIENTE_MAQUINA1]    Script Date: 06/08/2017 20:03:33 ******/
ALTER TABLE [dbo].[MAQUINA_POR_CLIENTE]  WITH CHECK ADD  CONSTRAINT [FK_MAQUINA_POR_CLIENTE_MAQUINA1] FOREIGN KEY([codMaquina])
REFERENCES [dbo].[MAQUINA] ([codMaquina])
GO
ALTER TABLE [dbo].[MAQUINA_POR_CLIENTE] CHECK CONSTRAINT [FK_MAQUINA_POR_CLIENTE_MAQUINA1]
GO
/****** Object:  ForeignKey [FK_GRUPO_PROGRAMA_POR_CABINA]    Script Date: 06/08/2017 20:03:33 ******/
ALTER TABLE [dbo].[GRUPO]  WITH CHECK ADD  CONSTRAINT [FK_GRUPO_PROGRAMA_POR_CABINA] FOREIGN KEY([codProgramaCabina])
REFERENCES [dbo].[PROGRAMA_POR_CABINA] ([codProgramaCabina])
GO
ALTER TABLE [dbo].[GRUPO] CHECK CONSTRAINT [FK_GRUPO_PROGRAMA_POR_CABINA]
GO
/****** Object:  ForeignKey [FK_PRODUCTO_SERVICIO]    Script Date: 06/08/2017 20:03:33 ******/
ALTER TABLE [dbo].[PRODUCTO]  WITH CHECK ADD  CONSTRAINT [FK_PRODUCTO_SERVICIO] FOREIGN KEY([codServicio])
REFERENCES [dbo].[SERVICIO] ([codServicio])
GO
ALTER TABLE [dbo].[PRODUCTO] CHECK CONSTRAINT [FK_PRODUCTO_SERVICIO]
GO
/****** Object:  ForeignKey [FK_EVENTO_PROGRAMA_POR_CABINA]    Script Date: 06/08/2017 20:03:33 ******/
ALTER TABLE [dbo].[EVENTO]  WITH CHECK ADD  CONSTRAINT [FK_EVENTO_PROGRAMA_POR_CABINA] FOREIGN KEY([codProgramaCabina])
REFERENCES [dbo].[PROGRAMA_POR_CABINA] ([codProgramaCabina])
GO
ALTER TABLE [dbo].[EVENTO] CHECK CONSTRAINT [FK_EVENTO_PROGRAMA_POR_CABINA]
GO
/****** Object:  ForeignKey [FK_IMAGEN_ALBUM]    Script Date: 06/08/2017 20:03:33 ******/
ALTER TABLE [dbo].[IMAGEN]  WITH CHECK ADD  CONSTRAINT [FK_IMAGEN_ALBUM] FOREIGN KEY([codAlbum])
REFERENCES [dbo].[ALBUM] ([codAlbum])
GO
ALTER TABLE [dbo].[IMAGEN] CHECK CONSTRAINT [FK_IMAGEN_ALBUM]
GO
/****** Object:  ForeignKey [FK_GRUPO_POR_CLIENTE_CLIENTE_DE_CABINA]    Script Date: 06/08/2017 20:03:33 ******/
ALTER TABLE [dbo].[GRUPO_POR_CLIENTE]  WITH CHECK ADD  CONSTRAINT [FK_GRUPO_POR_CLIENTE_CLIENTE_DE_CABINA] FOREIGN KEY([codCliente])
REFERENCES [dbo].[CLIENTE_DE_CABINA] ([codCliente])
GO
ALTER TABLE [dbo].[GRUPO_POR_CLIENTE] CHECK CONSTRAINT [FK_GRUPO_POR_CLIENTE_CLIENTE_DE_CABINA]
GO
/****** Object:  ForeignKey [FK_GRUPO_POR_CLIENTE_GRUPO]    Script Date: 06/08/2017 20:03:33 ******/
ALTER TABLE [dbo].[GRUPO_POR_CLIENTE]  WITH CHECK ADD  CONSTRAINT [FK_GRUPO_POR_CLIENTE_GRUPO] FOREIGN KEY([codGrupo])
REFERENCES [dbo].[GRUPO] ([codGrupo])
GO
ALTER TABLE [dbo].[GRUPO_POR_CLIENTE] CHECK CONSTRAINT [FK_GRUPO_POR_CLIENTE_GRUPO]
GO
/****** Object:  ForeignKey [FK_EVENTO_POR_CLIENTE_EQUIPO]    Script Date: 06/08/2017 20:03:33 ******/
ALTER TABLE [dbo].[EVENTO_POR_EQUIPO]  WITH CHECK ADD  CONSTRAINT [FK_EVENTO_POR_CLIENTE_EQUIPO] FOREIGN KEY([codEquipo])
REFERENCES [dbo].[EQUIPO] ([codEquipo])
GO
ALTER TABLE [dbo].[EVENTO_POR_EQUIPO] CHECK CONSTRAINT [FK_EVENTO_POR_CLIENTE_EQUIPO]
GO
/****** Object:  ForeignKey [FK_EVENTO_POR_CLIENTE_EVENTO]    Script Date: 06/08/2017 20:03:33 ******/
ALTER TABLE [dbo].[EVENTO_POR_EQUIPO]  WITH CHECK ADD  CONSTRAINT [FK_EVENTO_POR_CLIENTE_EVENTO] FOREIGN KEY([codEvento])
REFERENCES [dbo].[EVENTO] ([codEvento])
GO
ALTER TABLE [dbo].[EVENTO_POR_EQUIPO] CHECK CONSTRAINT [FK_EVENTO_POR_CLIENTE_EVENTO]
GO
/****** Object:  ForeignKey [FK_ENFRENTAMIENTO_EVENTO]    Script Date: 06/08/2017 20:03:33 ******/
ALTER TABLE [dbo].[ENFRENTAMIENTO]  WITH CHECK ADD  CONSTRAINT [FK_ENFRENTAMIENTO_EVENTO] FOREIGN KEY([codEvento])
REFERENCES [dbo].[EVENTO] ([codEvento])
GO
ALTER TABLE [dbo].[ENFRENTAMIENTO] CHECK CONSTRAINT [FK_ENFRENTAMIENTO_EVENTO]
GO
/****** Object:  ForeignKey [FK_PREMIO_EVENTO]    Script Date: 06/08/2017 20:03:33 ******/
ALTER TABLE [dbo].[PREMIO]  WITH CHECK ADD  CONSTRAINT [FK_PREMIO_EVENTO] FOREIGN KEY([codEvento])
REFERENCES [dbo].[EVENTO] ([codEvento])
GO
ALTER TABLE [dbo].[PREMIO] CHECK CONSTRAINT [FK_PREMIO_EVENTO]
GO
/****** Object:  ForeignKey [FK_EVENTO_POR_EQUIPO_POR_ENFRENTAMIENTO_ENFRENTAMIENTO]    Script Date: 06/08/2017 20:03:33 ******/
ALTER TABLE [dbo].[EVENTO_POR_EQUIPO_POR_ENFRENTAMIENTO]  WITH CHECK ADD  CONSTRAINT [FK_EVENTO_POR_EQUIPO_POR_ENFRENTAMIENTO_ENFRENTAMIENTO] FOREIGN KEY([codEnfrentamiento])
REFERENCES [dbo].[ENFRENTAMIENTO] ([codEnfrentamiento])
GO
ALTER TABLE [dbo].[EVENTO_POR_EQUIPO_POR_ENFRENTAMIENTO] CHECK CONSTRAINT [FK_EVENTO_POR_EQUIPO_POR_ENFRENTAMIENTO_ENFRENTAMIENTO]
GO
/****** Object:  ForeignKey [FK_EVENTO_POR_EQUIPO_POR_ENFRENTAMIENTO_EVENTO_POR_EQUIPO]    Script Date: 06/08/2017 20:03:33 ******/
ALTER TABLE [dbo].[EVENTO_POR_EQUIPO_POR_ENFRENTAMIENTO]  WITH CHECK ADD  CONSTRAINT [FK_EVENTO_POR_EQUIPO_POR_ENFRENTAMIENTO_EVENTO_POR_EQUIPO] FOREIGN KEY([codEventoEquipo])
REFERENCES [dbo].[EVENTO_POR_EQUIPO] ([codEventoEquipo])
GO
ALTER TABLE [dbo].[EVENTO_POR_EQUIPO_POR_ENFRENTAMIENTO] CHECK CONSTRAINT [FK_EVENTO_POR_EQUIPO_POR_ENFRENTAMIENTO_EVENTO_POR_EQUIPO]
GO
