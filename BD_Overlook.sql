﻿USE [master]
GO
/****** Object:  Database [Overlook]    Script Date: 15/11/2016 12:04:04 p.m. ******/
CREATE DATABASE [Overlook]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Overlook', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Overlook.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Overlook_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Overlook_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Overlook] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Overlook].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Overlook] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Overlook] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Overlook] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Overlook] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Overlook] SET ARITHABORT OFF 
GO
ALTER DATABASE [Overlook] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Overlook] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Overlook] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Overlook] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Overlook] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Overlook] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Overlook] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Overlook] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Overlook] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Overlook] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Overlook] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Overlook] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Overlook] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Overlook] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Overlook] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Overlook] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Overlook] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Overlook] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Overlook] SET  MULTI_USER 
GO
ALTER DATABASE [Overlook] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Overlook] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Overlook] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Overlook] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Overlook] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Overlook]
GO
/****** Object:  Table [dbo].[Estrategia]    Script Date: 15/11/2016 12:04:04 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estrategia](
	[ID_Estrategia] [int] NOT NULL,
	[Descripcion] [nvarchar](max) NULL,
 CONSTRAINT [PK_Estrategia] PRIMARY KEY CLUSTERED 
(
	[ID_Estrategia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EstrategiaHeroe]    Script Date: 15/11/2016 12:04:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstrategiaHeroe](
	[ID_Estrategia] [int] NOT NULL,
	[ID_Heroe] [int] NOT NULL,
 CONSTRAINT [PK_EstrategiaHeroe] PRIMARY KEY CLUSTERED 
(
	[ID_Estrategia] ASC,
	[ID_Heroe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EstrategiaMapa]    Script Date: 15/11/2016 12:04:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstrategiaMapa](
	[ID_Estrategia] [int] NOT NULL,
	[ID_Mapa] [int] NOT NULL,
 CONSTRAINT [PK_EstrategiaMapa] PRIMARY KEY CLUSTERED 
(
	[ID_Estrategia] ASC,
	[ID_Mapa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Habilidad]    Script Date: 15/11/2016 12:04:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Habilidad](
	[ID_Habilidad] [int] NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Descripcion] [nvarchar](max) NULL,
 CONSTRAINT [PK_Habilidad] PRIMARY KEY CLUSTERED 
(
	[ID_Habilidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HabilidadHeroe]    Script Date: 15/11/2016 12:04:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HabilidadHeroe](
	[ID_Habilidad] [int] NOT NULL,
	[ID_Heroe] [int] NOT NULL,
 CONSTRAINT [PK_HabilidadHeroe] PRIMARY KEY CLUSTERED 
(
	[ID_Habilidad] ASC,
	[ID_Heroe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Heroe]    Script Date: 15/11/2016 12:04:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Heroe](
	[ID_Heroe] [int] NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Rol] [nvarchar](50) NULL,
	[Imagen] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[ID_MapasPro] [nchar](2) NULL,
	[ID_HabilidadHeroe] [nchar](2) NULL,
	[ID_EstrategiaHeroe] [nchar](2) NULL,
	[Video] [nvarchar](50) NULL,
 CONSTRAINT [PK_Heroes] PRIMARY KEY CLUSTERED 
(
	[ID_Heroe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Mapa]    Script Date: 15/11/2016 12:04:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mapa](
	[ID_Mapa] [int] NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Tipo] [nvarchar](50) NULL,
	[Imagen] [nvarchar](max) NULL,
 CONSTRAINT [PK_Mapa] PRIMARY KEY CLUSTERED 
(
	[ID_Mapa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Noticia]    Script Date: 15/11/2016 12:04:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Noticia](
	[ID_Noticia] [int] NOT NULL,
	[Titulo] [nvarchar](500) NOT NULL,
	[Sinopsis] [nvarchar](300) NOT NULL,
	[Imagen] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Fecha] [date] NOT NULL,
	[Autor] [nvarchar](50) NULL,
	[Fuente] [nvarchar](50) NULL,
 CONSTRAINT [PK_Noticia] PRIMARY KEY CLUSTERED 
(
	[ID_Noticia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[Heroe] ([ID_Heroe], [Nombre], [Rol], [Imagen], [Descripcion], [ID_MapasPro], [ID_HabilidadHeroe], [ID_EstrategiaHeroe], [Video]) VALUES (1, N'Genji', N'Ataque', N'\Assets\Imagenes\Genji.png', N'Genji lanza precisos y letales shuriken a sus objetivos y usa su moderna katana para desviar proyectiles o infligir cortes veloces que hacen sangrar a los enemigos.', NULL, NULL, NULL, N'\Assets\idle-video-Genji.mp4')
INSERT [dbo].[Heroe] ([ID_Heroe], [Nombre], [Rol], [Imagen], [Descripcion], [ID_MapasPro], [ID_HabilidadHeroe], [ID_EstrategiaHeroe], [Video]) VALUES (2, N'Mccree', N'Ataque', N'\Assets\Imagenes\Mccree.png', N'Armado con su Pacificador, McCree da cuenta de los objetivos con una precisión letal, para después huir del peligro a una velocidad vertiginosa.', NULL, NULL, NULL, N'\Assets\idle-video-Mccree.mp4')
INSERT [dbo].[Heroe] ([ID_Heroe], [Nombre], [Rol], [Imagen], [Descripcion], [ID_MapasPro], [ID_HabilidadHeroe], [ID_EstrategiaHeroe], [Video]) VALUES (3, N'Pharah', N'Ataque', N'\Assets\Imagenes\Pharah.png', N'Surcando los cielos en su armadura de combate y armada con un lanzacohetes que dispara misiles altamente explosivos y de conmoción, Pharah es decisiva en el campo de batalla.', NULL, NULL, NULL, N'\Assets\idle-video-Pharah.mp4')
INSERT [dbo].[Heroe] ([ID_Heroe], [Nombre], [Rol], [Imagen], [Descripcion], [ID_MapasPro], [ID_HabilidadHeroe], [ID_EstrategiaHeroe], [Video]) VALUES (4, N'Reaper', N'Ataque', N'\Assets\Imagenes\Reaper.png', N'Sus escopetas infernales, la fantasmal habilidad de volverse inmune al daño y el poder de desplazarse por las tinieblas hacen de Reaper uno de los seres más letales de la Tierra.', NULL, NULL, NULL, N'\Assets\idle-video-Reaper.mp4')
INSERT [dbo].[Heroe] ([ID_Heroe], [Nombre], [Rol], [Imagen], [Descripcion], [ID_MapasPro], [ID_HabilidadHeroe], [ID_EstrategiaHeroe], [Video]) VALUES (5, N'Soldado:76', N'Ataque', N'\Assets\Imagenes\Soldado.png', N'Provisto de armamento de alta tecnología, como un rifle de pulsos experimental capaz de lanzar espirales de potentes cohetes hélice, Soldado: 76 cuenta con la velocidad y la experiencia de un guerrero veterano.', NULL, NULL, NULL, N'\Assets\idle-video-Soldado.mp4')
INSERT [dbo].[Heroe] ([ID_Heroe], [Nombre], [Rol], [Imagen], [Descripcion], [ID_MapasPro], [ID_HabilidadHeroe], [ID_EstrategiaHeroe], [Video]) VALUES (6, N'Sombra', N'Ataque', N'\Assets\Imagenes\Sombra.png', N'Su invisibilidad y sus ataques debilitantes han hecho que Sombra desarrolle unas técnicas de infiltración insuperables. Su hackeo puede alterar la estrategia de los enemigos, lo que los convierte en blancos más fáciles, y su PEM supone una ventaja ante grupos de enemigos. La baliza y el camuflaje de Sombra la convierten en un objetivo difícil de atrapar.', NULL, NULL, NULL, N'\Assets\idle-video-Sombra.mp4')
INSERT [dbo].[Heroe] ([ID_Heroe], [Nombre], [Rol], [Imagen], [Descripcion], [ID_MapasPro], [ID_HabilidadHeroe], [ID_EstrategiaHeroe], [Video]) VALUES (7, N'Tracer', N'Ataque', N'\Assets\Imagenes\Tracer.png', N'Armada con dos pistolas de pulsos, bombas energéticas de tiempo y un humor rápido como el viento, Tracer es capaz de «trasladarse» instantáneamente de un sitio a otro y retroceder en su línea temporal mientras combate el mal por todo el mundo.', NULL, NULL, NULL, N'\Assets\idle-video-Tracer.mp4')
INSERT [dbo].[Heroe] ([ID_Heroe], [Nombre], [Rol], [Imagen], [Descripcion], [ID_MapasPro], [ID_HabilidadHeroe], [ID_EstrategiaHeroe], [Video]) VALUES (8, N'Bastion', N'Defensa', N'\Assets\Imagenes\Bastion.png', N'Sus protocolos de reparación y su capacidad de adoptar modos de asalto inmóvil, reconocimiento móvil y tanque devastador aumentan considerablemente las probabilidades de victoria de Bastion.', NULL, NULL, NULL, N'\Assets\idle-video-Bastion.mp4')
INSERT [dbo].[Heroe] ([ID_Heroe], [Nombre], [Rol], [Imagen], [Descripcion], [ID_MapasPro], [ID_HabilidadHeroe], [ID_EstrategiaHeroe], [Video]) VALUES (9, N'Hanzo', N'Defensa', N'\Assets\Imagenes\Hanzo.png', N'Las versátiles flechas de Hanzo pueden revelar a sus enemigos o fragmentarse para atacar a varios objetivos. Es capaz de escalar muros para disparar flechas desde las alturas, y también puede invocar a un titánico espíritu dragón.', NULL, NULL, NULL, N'\Assets\idle-video-Hanzo.mp4')
INSERT [dbo].[Heroe] ([ID_Heroe], [Nombre], [Rol], [Imagen], [Descripcion], [ID_MapasPro], [ID_HabilidadHeroe], [ID_EstrategiaHeroe], [Video]) VALUES (10, N'Junkrat', N'Defensa', N'\Assets\Imagenes\Junkrat.png', N'El armamento antipersona de Junkrat está compuesto de un lanzagranadas que lanza proyectiles que rebotan, minas de conmoción que hacen saltar a los enemigos por los aires y cepos que los inmovilizan por completo.', NULL, NULL, NULL, N'\Assets\idle-video-Junkrat.mp4')
INSERT [dbo].[Heroe] ([ID_Heroe], [Nombre], [Rol], [Imagen], [Descripcion], [ID_MapasPro], [ID_HabilidadHeroe], [ID_EstrategiaHeroe], [Video]) VALUES (11, N'Mei', N'Defensa', N'\Assets\Imagenes\Mei.png', N'Los dispositivos de manipulación climática de Mei ralentizan a los oponentes y protegen ubicaciones. Su pistola endotérmica lanza carámbanos dañinos y ráfagas heladas. Además, Mei puede crionizarse para protegerse de ataques u obstruir los movimientos del equipo rival con muros de hielo.', NULL, NULL, NULL, N'\Assets\idle-video-Mei.mp4')
INSERT [dbo].[Heroe] ([ID_Heroe], [Nombre], [Rol], [Imagen], [Descripcion], [ID_MapasPro], [ID_HabilidadHeroe], [ID_EstrategiaHeroe], [Video]) VALUES (12, N'Torbjorn', N'Defensa', N'\Assets\Imagenes\Torbjorn.png', N'El amplio arsenal de Torbjörn incluye una remachadora y un martillo, además de una forja personal que usa para construir torretas, mejorarlas y distribuir packs de armadura.', NULL, NULL, NULL, N'\Assets\idle-video-Torbjorn.mp4')
INSERT [dbo].[Heroe] ([ID_Heroe], [Nombre], [Rol], [Imagen], [Descripcion], [ID_MapasPro], [ID_HabilidadHeroe], [ID_EstrategiaHeroe], [Video]) VALUES (13, N'Widowmaker', N'Defensa', N'\Assets\Imagenes\Widowmaker.png', N'Widowmaker va equipada de lo que haga falta para eliminar a sus objetivos, como minas que despiden gas venenoso, un visor que otorga infravisión a su escuadrón y un potente rifle de francotirador que puede disparar en modo automático.', NULL, NULL, NULL, N'\Assets\idle-video-Widowmaker.mp4')
INSERT [dbo].[Heroe] ([ID_Heroe], [Nombre], [Rol], [Imagen], [Descripcion], [ID_MapasPro], [ID_HabilidadHeroe], [ID_EstrategiaHeroe], [Video]) VALUES (14, N'Dva', N'Tank', N'\Assets\Imagenes\Dva.png', N'El meca de D.Va es ágil y poderoso. Sus dos cañones de fusión arrasan con todo a corta distancia, y puede usar sus impulsores para superar a enemigos y obstáculos, además de absorber proyectiles con su matriz de defensa.', NULL, NULL, NULL, N'\Assets\idle-video-Dva.mp4')
INSERT [dbo].[Heroe] ([ID_Heroe], [Nombre], [Rol], [Imagen], [Descripcion], [ID_MapasPro], [ID_HabilidadHeroe], [ID_EstrategiaHeroe], [Video]) VALUES (15, N'Reinhardt', N'Tank', N'\Assets\Imagenes\Reinhardt.png', N'Ataviado de una armadura potenciada y equipado con su martillo, Reinhardt realiza embestidas propulsadas por el campo de batalla y defiende a su escuadrón con un enorme campo protector.', NULL, NULL, NULL, N'\Assets\idle-video-Reinhardt.mp4')
INSERT [dbo].[Heroe] ([ID_Heroe], [Nombre], [Rol], [Imagen], [Descripcion], [ID_MapasPro], [ID_HabilidadHeroe], [ID_EstrategiaHeroe], [Video]) VALUES (16, N'Roadhog', N'Tank', N'\Assets\Imagenes\Roadhog.png', N'Roadhog emplea su insigne garfio para atraer a los enemigos y hacerlos trizas con los disparos de su chatarrera. Es lo bastante robusto como para aguantar cantidades ingentes de daño y puede recuperar la salud con un inhalador portátil.', NULL, NULL, NULL, N'\Assets\idle-video-Roadhog.mp4')
INSERT [dbo].[Heroe] ([ID_Heroe], [Nombre], [Rol], [Imagen], [Descripcion], [ID_MapasPro], [ID_HabilidadHeroe], [ID_EstrategiaHeroe], [Video]) VALUES (17, N'Winston', N'Tank', N'\Assets\Imagenes\Winston.png', N'Winston cuenta con una fuerza bestial e inventos impresionantes, como unos propulsores, un cañón tesla que lanza descargas eléctricas, un proyector de escudos portátil y más.', NULL, NULL, NULL, N'\Assets\idle-video-Winston.mp4')
INSERT [dbo].[Heroe] ([ID_Heroe], [Nombre], [Rol], [Imagen], [Descripcion], [ID_MapasPro], [ID_HabilidadHeroe], [ID_EstrategiaHeroe], [Video]) VALUES (18, N'Zarya', N'Tank', N'\Assets\Imagenes\Zarya.png', N'Zarya es una ayuda inestimable en el frente de cualquier batalla gracias a sus potentes barreras personales, que convierten el daño en energía para su enorme cañón de partículas.', NULL, NULL, NULL, N'\Assets\idle-video-Zarya.mp4')
INSERT [dbo].[Heroe] ([ID_Heroe], [Nombre], [Rol], [Imagen], [Descripcion], [ID_MapasPro], [ID_HabilidadHeroe], [ID_EstrategiaHeroe], [Video]) VALUES (19, N'Ana', N'Healer', N'\Assets\Imagenes\Ana.png', N'Ana posee un arsenal versátil que le permite curar y potenciar a sus aliados desde lejos, mientras que los disparos de su rifle biótico, los dardos tranquilizantes y los efectos de las granadas bióticas logran neutralizar a aquellos que suponen una amenaza para sus compañeros.', NULL, NULL, NULL, N'\Assets\idle-video-Ana.mp4')
INSERT [dbo].[Heroe] ([ID_Heroe], [Nombre], [Rol], [Imagen], [Descripcion], [ID_MapasPro], [ID_HabilidadHeroe], [ID_EstrategiaHeroe], [Video]) VALUES (20, N'Lucio', N'Healer', N'\Assets\Imagenes\Lucio.png', N'En el campo de batalla, el sofisticado amplificador sónico de Lúcio golpea a los enemigos con proyectiles y repele a los rivales con descargas de sonido. Sus canciones pueden curar o aumentar la velocidad de movimiento de su equipo, y puede cambiar de canción cuando quiera.', NULL, NULL, NULL, N'\Assets\idle-video-Lucio.mp4')
INSERT [dbo].[Heroe] ([ID_Heroe], [Nombre], [Rol], [Imagen], [Descripcion], [ID_MapasPro], [ID_HabilidadHeroe], [ID_EstrategiaHeroe], [Video]) VALUES (21, N'Mercy', N'Healer', N'\Assets\Imagenes\Mercy.png', N'El traje Valkyrie de Mercy la ayuda a mantenerse cerca de sus compañeros de equipo cual ángel de la guarda, y los sana, los resucita o los fortalece con el haz que emana de su bastón caduceo.', NULL, NULL, NULL, N'\Assets\idle-video-Mercy.mp4')
INSERT [dbo].[Heroe] ([ID_Heroe], [Nombre], [Rol], [Imagen], [Descripcion], [ID_MapasPro], [ID_HabilidadHeroe], [ID_EstrategiaHeroe], [Video]) VALUES (22, N'Symmetra', N'Healer', N'\Assets\Imagenes\Symmetra.png', N'Symmetra usa su proyector de haces que manipulan la luz para despachar a los adversarios, escudar a sus compañeros, construir teletransportadores y desplegar torretas centinela que lanzan rayos de partículas.', NULL, NULL, NULL, N'\Assets\idle-video-Symmetra.mp4')
INSERT [dbo].[Heroe] ([ID_Heroe], [Nombre], [Rol], [Imagen], [Descripcion], [ID_MapasPro], [ID_HabilidadHeroe], [ID_EstrategiaHeroe], [Video]) VALUES (23, N'Zenyatta', N'Healer', N'\Assets\Imagenes\Zenyatta.png', N'Zenyatta se sirve de orbes de armonía y discordia para sanar a sus compañeros de equipo y debilitar a los oponentes, y siempre busca un estado de trascendencia que lo hace inmune al daño.', NULL, NULL, NULL, N'\Assets\idle-video-Zenyatta.mp4')
INSERT [dbo].[Mapa] ([ID_Mapa], [Nombre], [Descripcion], [Tipo], [Imagen]) VALUES (1, N'Templo de Anubis', N'Nestled among the ancient ruins of the Giza Plateau on the outskirts of Cairo, the Temple of Anubis is one of many new excavations in the area. While most believe that the site is of interest for archaelogical reasons, it also hides the entrance to a research facility that extends deep beneath the earth. The facility is alleged to house an artificial intelligence, but the whole truth is known only to a select few. Not even the agents of Helix Security International who guard the facility know what they''re protecting.', N'Asalto', N'https://hydra-media.cursecdn.com/overwatch.gamepedia.com/thumb/6/60/Temple_of_Anubis_003.jpg/800px-Temple_of_Anubis_003.jpg?version=bf3674b1e9339cb4b22381b17f670289')
INSERT [dbo].[Mapa] ([ID_Mapa], [Nombre], [Descripcion], [Tipo], [Imagen]) VALUES (2, N'Hanamura', N'Hanamura is a well-preserved village of unassuming shops and quiet streets, known mostly for its idyllic cherry blossom festival every spring. But to those who know its history, Hanamura is the ancestral home of the Shimada ninja clan, which had grown over the centuries to become a powerful criminal organization. As its neighboring cities expanded, Hanamura was encircled, and eventually it was incorporated as a district within a larger city. For now, the imposing compound of the Shimada family lies empty, but that peace may soon be broken.', N'Asalto', N'https://hydra-media.cursecdn.com/overwatch.gamepedia.com/thumb/a/a3/Hanamura_001.jpg/800px-Hanamura_001.jpg?version=4397278921a6f15c7348812dede93b7f')
INSERT [dbo].[Mapa] ([ID_Mapa], [Nombre], [Descripcion], [Tipo], [Imagen]) VALUES (3, N'Industrias Volskaya', N'Russia was one of the countries hit hardest by the Omnic Crisis, but during the rebuilding process, it rode the wave of the mechanized labor industry''s revitalization and entered a period of rapid growth. However, after recent attacks from the long-dormant Siberian omnium, Russia has returned to war footing, guarding its sparkling cities with the massive, human-piloted Svyatogor mechs developed and produced by Volskaya Industries', N'Asalto', N'http://mundooverwatch.com.br/2015/wp-content/uploads/2016/02/Volskaya_007.jpg')
INSERT [dbo].[Mapa] ([ID_Mapa], [Nombre], [Descripcion], [Tipo], [Imagen]) VALUES (4, N'Observatorio: Gibraltar', N'At its height, Overwatch maintained a number of bases around the world, each with its own purpose: peacekeeping, scientific research, or in the case of Watchpoint: Gibraltar, providing an orbital launch facility. The base was mothballed along with the rest of Overwatch''s installations, but there have been recent reports of activity within the perimeter. Could this indicate the presence of former Overwatch agents, or is this the work of organizations with more nefarious intentions?', N'Escolta', N'http://d1mt9jmphk9kik.cloudfront.net/teamdignitas/image1464279361.jpg')
INSERT [dbo].[Mapa] ([ID_Mapa], [Nombre], [Descripcion], [Tipo], [Imagen]) VALUES (5, N'Dorado', N'It is Festival de la Luz in Dorado, an annual celebration of the end of the Omnic Crisis and the period of darkness – both figurative and literal – that engulfed Mexico when the omnics destroyed much of the country’s power grid and infrastructure. But there is a new dawn, as LumériCo and its CEO, war hero and former president Guillermo Portero, are unveiling a string of fusion plants that promise to deliver clean, free energy to the Mexican people.

The attacking team begins in Missión Dorado, a historic location famous for the sound of the ornamental bells that hang amidst its arches.', N'Escolta', N'http://i.imgur.com/3TrklYs.jpg')
INSERT [dbo].[Mapa] ([ID_Mapa], [Nombre], [Descripcion], [Tipo], [Imagen]) VALUES (6, N'Ruta 66', N'Though the travelers and road trippers who used to cross the US on historic Route 66 are gone, the Main Street of America still stands, a testament to a simpler time. The gas stations, roadside shops, and cafes have gone into disuse, and the fabled Deadlock Gorge is mostly seen from the comfort of transcontinental train cars. But amid the fading monuments of that earlier era, the outlaws of the Deadlock Gang are planning their biggest heist yet.', N'Escolta', N'http://vignette4.wikia.nocookie.net/overwatch/images/4/49/Route66_7.png/revision/latest?cb=20160323030910')
INSERT [dbo].[Mapa] ([ID_Mapa], [Nombre], [Descripcion], [Tipo], [Imagen]) VALUES (7, N'Torre Lijiang', N'Lijiang Tower was built in the heart of a modern Chinese metropolis, its busy streets lined with stores, gardens, restaurants, and famous night markets, where foods from around the region are available at all hours. The tower itself is home to one of the leading companies in China''s state-of-the-art space industry, Lucheng Interstellar, an organization with a long pioneering history that is currently pushing the boundaries of space exploration.
', N'Control', N'http://vignette2.wikia.nocookie.net/overwatch/images/e/ed/Lijiang_screenshot_34.jpg/revision/latest?cb=20160711182404')
INSERT [dbo].[Mapa] ([ID_Mapa], [Nombre], [Descripcion], [Tipo], [Imagen]) VALUES (8, N'Ilios', N'Situated atop a small island rising from the Aegean Sea, Ilios is a postcard-perfect Mediterranean town, with a bustling harborside, winding paths for rambling hillside strolls, and gorgeous vistas. It is the ideal vacation stop for people looking for a place to relax, or for those interested in exploring the ruins scattered at the top of the island, where many artifacts and relics of the ancient world have been recently unearthed. The ruins were declared an internationally protected heritage site. However, Talon attempted to steal the artifacts.', N'Control', N'http://vignette3.wikia.nocookie.net/overwatch/images/7/7a/Ilios_screenshot_14.png/revision/latest?cb=20160712054330')
INSERT [dbo].[Mapa] ([ID_Mapa], [Nombre], [Descripcion], [Tipo], [Imagen]) VALUES (9, N'Nepal', N'Years ago, a group of omnic robots experienced what they described as a spiritual awakening. They abandoned their programmed lives to establish a monastery high in the Himalayas, where like-minded omnics could gather to meditate on the nature of their existence. Led by their spiritual leader, Tekhartha Mondatta, they took over the ruins of an ancient monastery and turned it into the home of the Shambali, a place where omnics and humans alike make pilgrimages in the hopes of finding a greater truth. ', N'Control', N'http://vignette2.wikia.nocookie.net/overwatch/images/6/62/Nepal_screenshot_16.png/revision/latest?cb=20160711233016')
INSERT [dbo].[Mapa] ([ID_Mapa], [Nombre], [Descripcion], [Tipo], [Imagen]) VALUES (10, N'King''s Row', N'King''s Row is an upscale, cosmopolitan neighborhood of London, but just beneath its peaceful surface, tensions between omnics and humans are running high. While much of modern England was built on the backs of omnic laborers, they have been denied the basic rights that humans have, with most omnics forced to live in the dense, claustrophobic city-beneath-the-city known by some as "the Underworld." Of greater concern is that recent demonstrations by pro-omnic-rights protestors have resulted in violent clashes with the police, and a solution is nowhere in sight.', N'Asalto/Escolta', N'http://www.owfire.com/images/maps/kings-row-1.jpg')
INSERT [dbo].[Mapa] ([ID_Mapa], [Nombre], [Descripcion], [Tipo], [Imagen]) VALUES (11, N'Numbani', N'Known as the "City of Harmony," Numbani is one of the few places where omnics and humans live as equals. This collaboration has led to the creation of one of the world''s greatest and most technologically advanced cities in the short time since its establishment after the end of the Omnic Crisis. As part of this year''s Unity Day festivities celebrating the city''s founding, the gauntlet of the infamous Doomfist is being exhibited at the Numbani Heritage Museum.', N'Asalto/Escolta', N'http://vignette3.wikia.nocookie.net/overwatch/images/e/eb/Numbani_screenshot_5.jpg/revision/latest/scale-to-width-down/2000?cb=20160504022045')
INSERT [dbo].[Mapa] ([ID_Mapa], [Nombre], [Descripcion], [Tipo], [Imagen]) VALUES (12, N'Hollywood', N'Welcome to the glitz and glamour of Hollywood, California, where palm trees and fancy cars line the streets, and movie stars, directors, and high-powered studio executives rub shoulders for a chat and a drink at Galand''s. Down the street from the Mandarin Theatre, Goldshire Studios'' omnic film auteur, HAL-Fred Glitchbot, has created his two latest films, They Come from Beyond the Moon and Six-Gun Killer, to varying amounts of critical and commercial acllaim. However, even Tinseltown has been gripped by anti-omnic sentiment, and the outspoken director has become a prime target in the escalating conflict.', N'Asalto/Escolta', N'http://www.owfire.com/images/maps/hollywood-1.jpg')
INSERT [dbo].[Mapa] ([ID_Mapa], [Nombre], [Descripcion], [Tipo], [Imagen]) VALUES (13, N'Eichenwalde', N'The town was the site of one of the most famous battles during the Omnic Crisis. It was here that the leader of the Crusaders, Balderich von Adler, and a handful of his best soldiers made a last stand against an advancing automaton army. Outnumbered and outgunned, they were ultimately slain during the resulting combat. However, thanks to their valiant efforts, the German military was able to push back the omnic offensive and win the fight.In the present day, Eichenwalde lies abandoned, and the forest has slowly begun overtaking the village. However, the scars of war will never completely fade.', N'Asalto/Escolta', N'http://d.ibtimes.co.uk/en/full/1542452/overwatch-eichenwalde-map.png')
USE [master]
GO
ALTER DATABASE [Overlook] SET  READ_WRITE 
GO
