USE [master]
GO
/****** Object:  Database [Kklab]    Script Date: 21/05/2019 01:19:43 p. m. ******/
CREATE DATABASE [Kklab]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Kklab', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Kklab.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ),
( NAME = N'kklab1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\kklab1.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Kklab_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Kklab_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Kklab] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Kklab].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Kklab] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Kklab] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Kklab] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Kklab] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Kklab] SET ARITHABORT OFF 
GO
ALTER DATABASE [Kklab] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Kklab] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Kklab] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Kklab] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Kklab] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Kklab] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Kklab] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Kklab] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Kklab] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Kklab] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Kklab] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Kklab] SET DATE_CORRELATION_OPTIMIZATION ON 
GO
ALTER DATABASE [Kklab] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Kklab] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Kklab] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Kklab] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Kklab] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Kklab] SET RECOVERY FULL 
GO
ALTER DATABASE [Kklab] SET  MULTI_USER 
GO
ALTER DATABASE [Kklab] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Kklab] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Kklab] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Kklab] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Kklab] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Kklab', N'ON'
GO
ALTER DATABASE [Kklab] SET QUERY_STORE = OFF
GO
USE [Kklab]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
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
USE [Kklab]
GO
/****** Object:  User [Saul]    Script Date: 21/05/2019 01:19:44 p. m. ******/
CREATE USER [Saul] FOR LOGIN [Saul] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [Saul]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [Saul]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [Saul]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [Saul]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [Saul]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Saul]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Saul]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [Saul]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [Saul]
GO
/****** Object:  Table [dbo].[Contenido]    Script Date: 21/05/2019 01:19:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contenido](
	[IDcontenido] [int] IDENTITY(1,1) NOT NULL,
	[Encargado] [nvarchar](30) NOT NULL,
	[NombreCurso] [nvarchar](30) NOT NULL,
	[Periodo] [nvarchar](50) NOT NULL,
	[Titulo] [nvarchar](50) NOT NULL,
	[Contenido] [nvarchar](max) NOT NULL,
	[Codigo] [nvarchar](300) NOT NULL,
	[Secreto] [nvarchar](300) NOT NULL,
	[Clicks] [int] NOT NULL,
 CONSTRAINT [PK__Contenid__285C0D93ADA8E5AD] PRIMARY KEY CLUSTERED 
(
	[IDcontenido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cursos]    Script Date: 21/05/2019 01:19:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cursos](
	[IDcursos] [int] IDENTITY(1,1) NOT NULL,
	[Encargado] [nvarchar](30) NOT NULL,
	[Nombre] [nvarchar](30) NOT NULL,
	[Periodo] [nvarchar](50) NOT NULL,
	[Codigo] [nvarchar](300) NOT NULL,
 CONSTRAINT [PK__Cursos__C1CE69B7D9D47F5F] PRIMARY KEY CLUSTERED 
(
	[IDcursos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 21/05/2019 01:19:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Lname] [nvarchar](30) NOT NULL,
	[Password] [nvarchar](30) NOT NULL,
	[FName] [nvarchar](30) NOT NULL,
	[Laname] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK__Users__1788CCAC1FB77BBF] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Contenido] ON 
GO
INSERT [dbo].[Contenido] ([IDcontenido], [Encargado], [NombreCurso], [Periodo], [Titulo], [Contenido], [Codigo], [Secreto], [Clicks]) VALUES (1, N'admin', N'1', N'1', N'Lgica', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur in auctor augue. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in mauris erat. Aliquam erat volutpat. Praesent egestas porttitor urna, et accumsan leo. Vestibulum et dui non nulla dictum placerat. Ut cursus nulla sed libero consectetur, id fermentum sem elementum. Curabitur venenatis facilisis pretium. Aliquam ut nulla mi. Donec vitae ex eget orci mattis blandit nec feugiat est. Phasellus ut erat at orci blandit ornare dictum a tortor.', N'adminMatedis1', N'adminMatedis1Lgica', 12)
GO
INSERT [dbo].[Contenido] ([IDcontenido], [Encargado], [NombreCurso], [Periodo], [Titulo], [Contenido], [Codigo], [Secreto], [Clicks]) VALUES (2, N'admin', N'1', N'1', N'Grafos', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur in auctor augue. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in mauris erat. Aliquam erat volutpat. Praesent egestas porttitor urna, et accumsan leo. Vestibulum et dui non nulla dictum placerat. Ut cursus nulla sed libero consectetur, id fermentum sem elementum. Curabitur venenatis facilisis pretium. Aliquam ut nulla mi. Donec vitae ex eget orci mattis blandit nec feugiat est. Phasellus ut erat at orci blandit ornare dictum a tortor.', N'adminMatedis1', N'adminMatedis1Grafos', 8)
GO
INSERT [dbo].[Contenido] ([IDcontenido], [Encargado], [NombreCurso], [Periodo], [Titulo], [Contenido], [Codigo], [Secreto], [Clicks]) VALUES (3, N'admin', N'1', N'1', N'arboles', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur in auctor augue. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in mauris erat. Aliquam erat volutpat. Praesent egestas porttitor urna, et accumsan leo. Vestibulum et dui non nulla dictum placerat. Ut cursus nulla sed libero consectetur, id fermentum sem elementum. Curabitur venenatis facilisis pretium. Aliquam ut nulla mi. Donec vitae ex eget orci mattis blandit nec feugiat est. Phasellus ut erat at orci blandit ornare dictum a tortor.', N'adminMatedis1', N'adminMatedis1arboles', 4)
GO
INSERT [dbo].[Contenido] ([IDcontenido], [Encargado], [NombreCurso], [Periodo], [Titulo], [Contenido], [Codigo], [Secreto], [Clicks]) VALUES (4, N'admin', N'Matedis', N'2', N'Logica', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur in auctor augue. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in mauris erat. Aliquam erat volutpat. Praesent egestas porttitor urna, et accumsan leo. Vestibulum et dui non nulla dictum placerat. Ut cursus nulla sed libero consectetur, id fermentum sem elementum. Curabitur venenatis facilisis pretium. Aliquam ut nulla mi. Donec vitae ex eget orci mattis blandit nec feugiat est. Phasellus ut erat at orci blandit ornare dictum a tortor.', N'adminMatedis2', N'adminMatedis2Logica', 9)
GO
INSERT [dbo].[Contenido] ([IDcontenido], [Encargado], [NombreCurso], [Periodo], [Titulo], [Contenido], [Codigo], [Secreto], [Clicks]) VALUES (5, N'admin', N'Matedis', N'2', N'Grafos', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur in auctor augue. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in mauris erat. Aliquam erat volutpat. Praesent egestas porttitor urna, et accumsan leo. Vestibulum et dui non nulla dictum placerat. Ut cursus nulla sed libero consectetur, id fermentum sem elementum. Curabitur venenatis facilisis pretium. Aliquam ut nulla mi. Donec vitae ex eget orci mattis blandit nec feugiat est. Phasellus ut erat at orci blandit ornare dictum a tortor.', N'adminMatedis2', N'adminMatedis2Grafos', 7)
GO
INSERT [dbo].[Contenido] ([IDcontenido], [Encargado], [NombreCurso], [Periodo], [Titulo], [Contenido], [Codigo], [Secreto], [Clicks]) VALUES (6, N'admin', N'Matedis', N'2', N'Arboles', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur in auctor augue. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in mauris erat. Aliquam erat volutpat. Praesent egestas porttitor urna, et accumsan leo. Vestibulum et dui non nulla dictum placerat. Ut cursus nulla sed libero consectetur, id fermentum sem elementum. Curabitur venenatis facilisis pretium. Aliquam ut nulla mi. Donec vitae ex eget orci mattis blandit nec feugiat est. Phasellus ut erat at orci blandit ornare dictum a tortor.', N'adminMatedis2', N'adminMatedis2Arboles', 4)
GO
SET IDENTITY_INSERT [dbo].[Contenido] OFF
GO
SET IDENTITY_INSERT [dbo].[Cursos] ON 
GO
INSERT [dbo].[Cursos] ([IDcursos], [Encargado], [Nombre], [Periodo], [Codigo]) VALUES (1033, N'admin', N'Matedis', N'1', N'adminMatedis1')
GO
INSERT [dbo].[Cursos] ([IDcursos], [Encargado], [Nombre], [Periodo], [Codigo]) VALUES (1034, N'admin', N'Matedis', N'2', N'adminMatedis2')
GO
SET IDENTITY_INSERT [dbo].[Cursos] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([UserID], [Lname], [Password], [FName], [Laname]) VALUES (1, N'admin', N'admin', N'Lucho', N'Perez')
GO
INSERT [dbo].[Users] ([UserID], [Lname], [Password], [FName], [Laname]) VALUES (12, N'jbar', N'admin', N'Juan', N'Bárragan')
GO
INSERT [dbo].[Users] ([UserID], [Lname], [Password], [FName], [Laname]) VALUES (80, N'saoa', N'admin', N'Saul', N'Olguin')
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Contenido]    Script Date: 21/05/2019 01:19:44 p. m. ******/
ALTER TABLE [dbo].[Contenido] ADD  CONSTRAINT [IX_Contenido] UNIQUE NONCLUSTERED 
(
	[Secreto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Cursos_1]    Script Date: 21/05/2019 01:19:44 p. m. ******/
ALTER TABLE [dbo].[Cursos] ADD  CONSTRAINT [IX_Cursos_1] UNIQUE NONCLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__8CFE8A7D27B126B5]    Script Date: 21/05/2019 01:19:44 p. m. ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[Lname] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__8CFE8A7DD864EF0A]    Script Date: 21/05/2019 01:19:44 p. m. ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[Lname] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Contenido]  WITH CHECK ADD  CONSTRAINT [FK_Contenido_Cursos1] FOREIGN KEY([Codigo])
REFERENCES [dbo].[Cursos] ([Codigo])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Contenido] CHECK CONSTRAINT [FK_Contenido_Cursos1]
GO
ALTER TABLE [dbo].[Cursos]  WITH CHECK ADD  CONSTRAINT [FK_Cursos_Users] FOREIGN KEY([Encargado])
REFERENCES [dbo].[Users] ([Lname])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cursos] CHECK CONSTRAINT [FK_Cursos_Users]
GO
/****** Object:  StoredProcedure [dbo].[Clickid]    Script Date: 21/05/2019 01:19:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Clickid]
 @titulo nvarchar(300)
as
update Contenido set Clicks= Clicks+1 where Secreto=@titulo
GO
/****** Object:  StoredProcedure [dbo].[ConsulCod]    Script Date: 21/05/2019 01:19:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[ConsulCod]
@cod nvarchar (30)
as
select IDcontenido,Titulo,Contenido,Secreto from Contenido
where Codigo=@cod
GO
/****** Object:  StoredProcedure [dbo].[Consuldatos]    Script Date: 21/05/2019 01:19:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Consuldatos]
@titulo nvarchar(50)
as
select Titulo,Clicks from Clicks where NombreCurso =@titulo
GO
/****** Object:  StoredProcedure [dbo].[ContadorClics]    Script Date: 21/05/2019 01:19:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[ContadorClics]
@codigo nvarchar(300)

as
select Periodo,Titulo,Clicks from Clicks
WHERE Codigo=@codigo
order by Clicks asc
GO
/****** Object:  StoredProcedure [dbo].[DeleteC]    Script Date: 21/05/2019 01:19:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[DeleteC]
@IDCursos int
as 
delete from Cursos where IDcursos=@IDCursos
GO
/****** Object:  StoredProcedure [dbo].[DeleteCont]    Script Date: 21/05/2019 01:19:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DeleteCont]
@Id int
as 
delete from Contenido where IDcontenido=@Id
GO
/****** Object:  StoredProcedure [dbo].[Deleteusers]    Script Date: 21/05/2019 01:19:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[Deleteusers]
@Id int
as
delete from Users where UserID=@Id
GO
/****** Object:  StoredProcedure [dbo].[Edit]    Script Date: 21/05/2019 01:19:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Edit]
@Nombre nvarchar(50),
@code nvarchar(300),

@p nvarchar(50),


@IDCurso int 
as
update Cursos set  Nombre=@Nombre, Periodo=@p,Codigo=@code
where IDcursos=@IDCurso 
GO
/****** Object:  StoredProcedure [dbo].[EditCon]    Script Date: 21/05/2019 01:19:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc  [dbo].[EditCon]

@Titulo nvarchar (50),
@Cont nvarchar(max),
@Id INT,
@secret nvarchar(300)
as 
UPDATE Contenido set Titulo=@Titulo,Contenido=@Cont,Secreto=@secret
where IDcontenido=@Id 
GO
/****** Object:  StoredProcedure [dbo].[Editcur]    Script Date: 21/05/2019 01:19:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Editcur]
@Nombre nvarchar(50),
@Code nvarchar(300),
@s nvarchar(300),
@p nvarchar(50)

as
update Contenido set  NombreCurso=@Nombre, Periodo=@p,Codigo=@Code, Secreto=@s
where NombreCurso= @Nombre and Codigo=@Code 
GO
/****** Object:  StoredProcedure [dbo].[Editusers]    Script Date: 21/05/2019 01:19:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Editusers]
@nombre nvarchar(30),
@pass nvarchar(30),
@fname nvarchar(30),
@laname nvarchar(30),
@id int

as
update Users set Lname=@nombre,Password=@pass,FName=@fname,Laname=@laname
where UserID=@id
GO
/****** Object:  StoredProcedure [dbo].[Insertar]    Script Date: 21/05/2019 01:19:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc  [dbo].[Insertar] 
@Encargado nvarchar(50),
@Nombre nvarchar(50),
@p nvarchar(50),
@Code nvarchar(300),
@secret nvarchar(300)

as

insert into Cursos (Encargado,Nombre,Periodo,Codigo)values (@Encargado,@Nombre,@p,@Code) 
insert into Contenido (NombreCurso,Encargado,Periodo,Titulo,Contenido,Codigo,Secreto,Clicks)values (@Nombre,@Encargado,@p,'Titulo ejemplo','Contenido Ejemplo',@Code,@secret,0)



 
GO
/****** Object:  StoredProcedure [dbo].[InsertarC]    Script Date: 21/05/2019 01:19:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[InsertarC]
@P NVARCHAR(50),
@Titulo nvarchar(50),
@Contenido nvarchar(max),
@Encargado nvarchar (30),
@Nombre nvarchar(30),
@codigo nvarchar(300),
@secret nvarchar(300)

as
insert into Contenido (Periodo,Titulo,Contenido,Encargado,NombreCurso,Codigo,Secreto,Clicks) values (@P,@Titulo,@Contenido,@Encargado,@Nombre,@codigo,@secret,0)



GO
/****** Object:  StoredProcedure [dbo].[Insertarusers]    Script Date: 21/05/2019 01:19:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Insertarusers]
@nombre nvarchar(30),
@pass nvarchar(30),
@fname nvarchar(30),
@laname nvarchar(30)
as
insert into Users values(@nombre,@pass,@fname,@laname)
GO
/****** Object:  StoredProcedure [dbo].[loadcombo]    Script Date: 21/05/2019 01:19:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[loadcombo]
@user nvarchar(30)
as
select IDcursos,Nombre,Periodo,Codigo from Cursos where Encargado=@user

GO
/****** Object:  StoredProcedure [dbo].[Showclicks]    Script Date: 21/05/2019 01:19:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Showclicks]
@user nvarchar(30),
@n nvarchar(50)
as
select Titulo,Clicks from Contenido where Encargado=@user and Codigo=@n
GO
/****** Object:  StoredProcedure [dbo].[ShowConttitle]    Script Date: 21/05/2019 01:19:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ShowConttitle]
@user nvarchar(30),
@cursoname nvarchar(50)
as 
select IDcontenido,Periodo,Titulo,Contenido,Codigo,Secreto	 from Contenido where Encargado=@user and  Codigo=@cursoname
GO
/****** Object:  StoredProcedure [dbo].[ShowProc]    Script Date: 21/05/2019 01:19:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ShowProc]
@user nvarchar(30)
as 
select IDcursos,Nombre,Periodo,Codigo from Cursos where Encargado=@user



GO
/****** Object:  StoredProcedure [dbo].[showusers]    Script Date: 21/05/2019 01:19:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[showusers]
as
select *from Users 
GO
USE [master]
GO
ALTER DATABASE [Kklab] SET  READ_WRITE 
GO
