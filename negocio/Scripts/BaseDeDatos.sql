USE [master]
GO
/****** Object:  Database [Preguntas]    Script Date: 2/11/2023 19:45:12 ******/
CREATE DATABASE [Preguntas]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Preguntas', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Preguntas.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Preguntas_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Preguntas_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Preguntas] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Preguntas].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Preguntas] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Preguntas] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Preguntas] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Preguntas] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Preguntas] SET ARITHABORT OFF 
GO
ALTER DATABASE [Preguntas] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Preguntas] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Preguntas] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Preguntas] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Preguntas] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Preguntas] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Preguntas] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Preguntas] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Preguntas] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Preguntas] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Preguntas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Preguntas] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Preguntas] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Preguntas] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Preguntas] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Preguntas] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Preguntas] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Preguntas] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Preguntas] SET  MULTI_USER 
GO
ALTER DATABASE [Preguntas] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Preguntas] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Preguntas] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Preguntas] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Preguntas] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Preguntas] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Preguntas] SET QUERY_STORE = ON
GO
ALTER DATABASE [Preguntas] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Preguntas]
GO
/****** Object:  Table [dbo].[Opcion_A]    Script Date: 2/11/2023 19:45:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Opcion_A](
	[Id] [int] NOT NULL,
	[Pregunta] [int] NOT NULL,
	[Descripcion] [varchar](max) NULL,
	[Validez] [bit] NOT NULL,
 CONSTRAINT [PK_2] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Opcion_B]    Script Date: 2/11/2023 19:45:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Opcion_B](
	[Id] [int] NOT NULL,
	[Pregunta] [int] NOT NULL,
	[Descripcion] [varchar](max) NULL,
	[Validez] [bit] NOT NULL,
 CONSTRAINT [PK_3] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Opcion_C]    Script Date: 2/11/2023 19:45:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Opcion_C](
	[Id] [int] NOT NULL,
	[Pregunta] [int] NOT NULL,
	[Descripcion] [varchar](max) NULL,
	[Validez] [bit] NOT NULL,
 CONSTRAINT [PK_4] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Opcion_D]    Script Date: 2/11/2023 19:45:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Opcion_D](
	[Id] [int] NOT NULL,
	[Pregunta] [int] NOT NULL,
	[Descripcion] [varchar](max) NULL,
	[Validez] [bit] NOT NULL,
 CONSTRAINT [PK_5] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Preguntas]    Script Date: 2/11/2023 19:45:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Preguntas](
	[Id] [int] NOT NULL,
	[Descripcion] [varchar](max) NULL,
	[Numero] [int] NOT NULL,
	[Categoria] [varchar](50) NULL,
	[Respuesta] [varchar](max) NULL,
 CONSTRAINT [PK_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Opcion_A] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (1, 1, N'Argentina', 0)
INSERT [dbo].[Opcion_A] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (2, 2, N'1930', 1)
INSERT [dbo].[Opcion_A] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (3, 3, N'48', 1)
INSERT [dbo].[Opcion_A] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (4, 4, N'Mexico', 0)
INSERT [dbo].[Opcion_A] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (5, 5, N'Brasil', 1)
INSERT [dbo].[Opcion_A] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (6, 6, N'Brasil', 0)
INSERT [dbo].[Opcion_A] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (7, 7, N'Brasil', 1)
INSERT [dbo].[Opcion_A] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (8, 8, N'Brasil', 0)
INSERT [dbo].[Opcion_A] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (9, 9, N'Holanda', 0)
INSERT [dbo].[Opcion_A] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (10, 10, N'Lionel Messi', 0)
INSERT [dbo].[Opcion_A] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (11, 1, N'Real Madrid', 1)
INSERT [dbo].[Opcion_A] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (12, 2, N'Boca Juniors', 0)
INSERT [dbo].[Opcion_A] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (13, 3, N'Rivaldo', 0)
INSERT [dbo].[Opcion_A] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (14, 4, N'AC Milan', 0)
INSERT [dbo].[Opcion_A] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (15, 5, N'Lionel Messi', 0)
INSERT [dbo].[Opcion_A] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (16, 6, N'Iker Casillas', 1)
INSERT [dbo].[Opcion_A] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (17, 7, N'Giorgio Chiellini', 0)
INSERT [dbo].[Opcion_A] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (18, 8, N'10', 0)
INSERT [dbo].[Opcion_A] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (19, 9, N'Benfica', 0)
INSERT [dbo].[Opcion_A] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (20, 10, N'Lionel Messi', 0)
GO
INSERT [dbo].[Opcion_B] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (1, 1, N'Brasil', 1)
INSERT [dbo].[Opcion_B] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (2, 2, N'1928', 0)
INSERT [dbo].[Opcion_B] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (3, 3, N'36', 0)
INSERT [dbo].[Opcion_B] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (4, 4, N'Argentina', 0)
INSERT [dbo].[Opcion_B] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (5, 5, N'Chile', 0)
INSERT [dbo].[Opcion_B] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (6, 6, N'Argentina', 0)
INSERT [dbo].[Opcion_B] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (7, 7, N'Alemania', 0)
INSERT [dbo].[Opcion_B] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (8, 8, N'Alemania', 1)
INSERT [dbo].[Opcion_B] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (9, 9, N'Alemania', 1)
INSERT [dbo].[Opcion_B] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (10, 10, N'Ronaldo Luís Nazário', 0)
INSERT [dbo].[Opcion_B] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (11, 1, N'AC Milan', 0)
INSERT [dbo].[Opcion_B] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (12, 2, N'River Plate', 0)
INSERT [dbo].[Opcion_B] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (13, 3, N'Samuel Eto''o', 0)
INSERT [dbo].[Opcion_B] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (14, 4, N'Juventus', 0)
INSERT [dbo].[Opcion_B] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (15, 5, N'Cristiano Ronaldo', 1)
INSERT [dbo].[Opcion_B] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (16, 6, N'Cristiano Ronaldo', 0)
INSERT [dbo].[Opcion_B] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (17, 7, N'Luis Suarez', 1)
INSERT [dbo].[Opcion_B] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (18, 8, N'19', 0)
INSERT [dbo].[Opcion_B] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (19, 9, N'FC Porto', 0)
INSERT [dbo].[Opcion_B] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (20, 10, N'Cristiano Ronaldo', 1)
GO
INSERT [dbo].[Opcion_C] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (1, 1, N'Holanda', 0)
INSERT [dbo].[Opcion_C] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (2, 2, N'1929', 0)
INSERT [dbo].[Opcion_C] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (3, 3, N'30', 0)
INSERT [dbo].[Opcion_C] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (4, 4, N'Arabia Saudita', 0)
INSERT [dbo].[Opcion_C] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (5, 5, N'Uruguay', 0)
INSERT [dbo].[Opcion_C] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (6, 6, N'Uruguay', 0)
INSERT [dbo].[Opcion_C] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (7, 7, N'Italia', 0)
INSERT [dbo].[Opcion_C] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (8, 8, N'Italia', 0)
INSERT [dbo].[Opcion_C] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (9, 9, N'Argentina', 0)
INSERT [dbo].[Opcion_C] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (10, 10, N'Cristiano Ronaldo', 0)
INSERT [dbo].[Opcion_C] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (11, 1, N'FC Barcelona', 0)
INSERT [dbo].[Opcion_C] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (12, 2, N'Independiente', 1)
INSERT [dbo].[Opcion_C] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (13, 3, N'Lionel Messi', 1)
INSERT [dbo].[Opcion_C] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (14, 4, N'Napoli', 1)
INSERT [dbo].[Opcion_C] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (15, 5, N'Alfredo Di Stéfano', 0)
INSERT [dbo].[Opcion_C] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (16, 6, N'Lionel Messi', 0)
INSERT [dbo].[Opcion_C] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (17, 7, N'Yann Sommer', 0)
INSERT [dbo].[Opcion_C] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (18, 8, N'18', 0)
INSERT [dbo].[Opcion_C] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (19, 9, N'Sporting CP', 1)
INSERT [dbo].[Opcion_C] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (20, 10, N'Pele', 0)
GO
INSERT [dbo].[Opcion_D] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (1, 1, N'Italia', 0)
INSERT [dbo].[Opcion_D] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (2, 2, N'1931', 0)
INSERT [dbo].[Opcion_D] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (3, 3, N'32', 0)
INSERT [dbo].[Opcion_D] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (4, 4, N'Qatar', 1)
INSERT [dbo].[Opcion_D] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (5, 5, N'Ecuador', 0)
INSERT [dbo].[Opcion_D] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (6, 6, N'Ninguna de las anteriores', 1)
INSERT [dbo].[Opcion_D] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (7, 7, N'Argentina', 0)
INSERT [dbo].[Opcion_D] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (8, 8, N'Argentina', 0)
INSERT [dbo].[Opcion_D] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (9, 9, N'Italia', 0)
INSERT [dbo].[Opcion_D] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (10, 10, N'Miroslav Klose', 1)
INSERT [dbo].[Opcion_D] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (11, 1, N'Manchester United', 0)
INSERT [dbo].[Opcion_D] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (12, 2, N'Flamengo', 0)
INSERT [dbo].[Opcion_D] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (13, 3, N'César Rodríguez', 0)
INSERT [dbo].[Opcion_D] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (14, 4, N'Roma', 0)
INSERT [dbo].[Opcion_D] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (15, 5, N'Thomas Müller', 0)
INSERT [dbo].[Opcion_D] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (16, 6, N'Carles Puyol', 0)
INSERT [dbo].[Opcion_D] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (17, 7, N'David Luiz', 0)
INSERT [dbo].[Opcion_D] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (18, 8, N'30', 1)
INSERT [dbo].[Opcion_D] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (19, 9, N'Braga', 0)
INSERT [dbo].[Opcion_D] ([Id], [Pregunta], [Descripcion], [Validez]) VALUES (20, 10, N'Romario', 0)
GO
INSERT [dbo].[Preguntas] ([Id], [Descripcion], [Numero], [Categoria], [Respuesta]) VALUES (1, N'¿Cuál fue la selección que obtuvo más títulos mundiales a lo largo de la historia?', 1, N'Selecciones', N'Brasil es el equipo con más títulos de la copa mundial consiguiéndolo en 5 ocasiones.')
INSERT [dbo].[Preguntas] ([Id], [Descripcion], [Numero], [Categoria], [Respuesta]) VALUES (2, N'¿En qué año se disputó el primer mundial?', 2, N'Selecciones', N'Se desarrolló en Uruguay entre el 13 y el 30 de julio de 1930.')
INSERT [dbo].[Preguntas] ([Id], [Descripcion], [Numero], [Categoria], [Respuesta]) VALUES (3, N'¿Cuántos equipos participaran en La Copa Mundial de la FIFA México/Estados Unidos/Canadá 2026?', 3, N'Selecciones', N'La Copa Mundial de la FIFA 2026 tendrá un formato nuevo, el torneo tendrá a 48 equipos divididos en doce grupos de cuatro equipos cada uno.')
INSERT [dbo].[Preguntas] ([Id], [Descripcion], [Numero], [Categoria], [Respuesta]) VALUES (4, N'¿En dónde se disputó el último mundial?', 4, N'Selecciones', N'La sede del último mundial de futbol fue en Qatar en el año 2022.')
INSERT [dbo].[Preguntas] ([Id], [Descripcion], [Numero], [Categoria], [Respuesta]) VALUES (5, N'¿En dónde se disputó la última copa América?', 5, N'Selecciones', N'La sede de la última Copa América fue en Brasil en el año 2021.')
INSERT [dbo].[Preguntas] ([Id], [Descripcion], [Numero], [Categoria], [Respuesta]) VALUES (6, N'¿Cuál es la selección con más copas América?', 6, N'Selecciones', N'En la actualidad, hay un empate entre Argentina y Uruguay con 15 Copas Américas para cada uno.')
INSERT [dbo].[Preguntas] ([Id], [Descripcion], [Numero], [Categoria], [Respuesta]) VALUES (7, N'¿Cuál es la selección con mayor número de participaciones en mundiales?', 7, N'Selecciones', N'La selección con mayor número de participaciones en mundiales es Brasil con 22 participaciones (presente en todos los torneos).')
INSERT [dbo].[Preguntas] ([Id], [Descripcion], [Numero], [Categoria], [Respuesta]) VALUES (8, N'¿Cuál es la selección que disputó más finales en mundiales?', 8, N'Selecciones', N'La selección con más finales disputadas en mundiales es Alemania con 8 finales jugadas.')
INSERT [dbo].[Preguntas] ([Id], [Descripcion], [Numero], [Categoria], [Respuesta]) VALUES (9, N'¿Cuál es la selección con más subcampeonatos mundiales?', 9, N'Selecciones', N'La selección con más subcampeonatos mundiales es Alemania con 4 subcampeonatos.')
INSERT [dbo].[Preguntas] ([Id], [Descripcion], [Numero], [Categoria], [Respuesta]) VALUES (10, N'¿Cuál es el jugador con más goles anotados en mundiales?', 10, N'Selecciones', N'Miroslav Klose es el máximo anotador en mundiales con 16 tantos, le sigue el brasileño Ronaldo Nazário con 15 tantos.')
INSERT [dbo].[Preguntas] ([Id], [Descripcion], [Numero], [Categoria], [Respuesta]) VALUES (11, N'¿Qué equipo es el máximo ganador de la UEFA Champions League?', 1, N'Equipos', N'El máximo ganador de la competición es él Real Madrid con 14 títulos')
INSERT [dbo].[Preguntas] ([Id], [Descripcion], [Numero], [Categoria], [Respuesta]) VALUES (12, N'¿Qué equipo es el máximo ganador de la Copa Libertadores de América?', 2, N'Equipos', N'El máximo ganador de la competición es Independiente con 7 títulos.')
INSERT [dbo].[Preguntas] ([Id], [Descripcion], [Numero], [Categoria], [Respuesta]) VALUES (13, N'¿Quién es el máximo goleador del FC Barcelona?', 3, N'Equipos', N'A día de hoy, Lionel Messi es el máximo anotador del FC Barcelona con 672 goles.')
INSERT [dbo].[Preguntas] ([Id], [Descripcion], [Numero], [Categoria], [Respuesta]) VALUES (14, N'¿En qué club italiano jugó Diego Armando Maradona?', 4, N'Equipos', N'Diego Armando Maradona jugó en el Nápoli de Italia (1984-1990).')
INSERT [dbo].[Preguntas] ([Id], [Descripcion], [Numero], [Categoria], [Respuesta]) VALUES (15, N'¿Quién es el máximo goleador de la historia de la Champions League?', 5, N'Equipos', N'El máximo anotador de la Champions League es Cristiano Ronaldo con 141 goles.')
INSERT [dbo].[Preguntas] ([Id], [Descripcion], [Numero], [Categoria], [Respuesta]) VALUES (16, N'¿Quién es el jugador con más partidos disputados en la Champions League?', 6, N'Equipos', N'El jugador con más partidos disputados en Champions League es Iker Casillas con 177 partidos.')
INSERT [dbo].[Preguntas] ([Id], [Descripcion], [Numero], [Categoria], [Respuesta]) VALUES (17, N'¿Qué jugador fue expulsado por morder a otro en el Mundial de 2014?', 7, N'Equipos', N'Fue el uruguayo Luis Suárez tras morder al jugador italiano Giorgio Chiellini.')
INSERT [dbo].[Preguntas] ([Id], [Descripcion], [Numero], [Categoria], [Respuesta]) VALUES (18, N'¿Cuál fue el número de la camiseta con la que debuto Lionel Messi en el FC Barcelona?', 8, N'Equipos', N'Lo hizo con el 30 en la espalda, número que portó a lo largo de sus primeras dos campañas como profesional.')
INSERT [dbo].[Preguntas] ([Id], [Descripcion], [Numero], [Categoria], [Respuesta]) VALUES (19, N'¿En que equipo de Portugal hizo su debut Cristiano Ronaldo?', 9, N'Equipos', N'Con apenas 17 años, Cristiano Ronaldo hizo su debut en el Sporting C. P.')
INSERT [dbo].[Preguntas] ([Id], [Descripcion], [Numero], [Categoria], [Respuesta]) VALUES (20, N'¿Quién es el máximo goleador de la historia del fútbol en partidos oficiales? ', 10, N'Equipos', N'Actualmente, el máximo goleador de la historia en partidos oficiales es el portugués Cristiano Ronaldo con 847 goles en 1.177 partidos.')
GO
USE [master]
GO
ALTER DATABASE [Preguntas] SET  READ_WRITE 
GO
