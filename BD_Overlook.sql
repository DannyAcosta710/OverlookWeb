USE [master]
GO
/****** Object:  Database [Overlook]    Script Date: 18/11/2016 19:17:58 ******/
CREATE DATABASE [Overlook]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Overlook', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Overlook.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Overlook_log', FILENAME =N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Overlook_log.ldf' , SIZE = 1088KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
/****** Object:  Table [dbo].[Estrategia]    Script Date: 18/11/2016 19:17:58 ******/
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
/****** Object:  Table [dbo].[EstrategiaHeroe]    Script Date: 18/11/2016 19:17:59 ******/
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
/****** Object:  Table [dbo].[EstrategiaMapa]    Script Date: 18/11/2016 19:17:59 ******/
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
/****** Object:  Table [dbo].[Habilidad]    Script Date: 18/11/2016 19:17:59 ******/
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
/****** Object:  Table [dbo].[HabilidadHeroe]    Script Date: 18/11/2016 19:17:59 ******/
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
/****** Object:  Table [dbo].[Heroe]    Script Date: 18/11/2016 19:17:59 ******/
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
/****** Object:  Table [dbo].[Mapa]    Script Date: 18/11/2016 19:17:59 ******/
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
/****** Object:  Table [dbo].[Noticia]    Script Date: 18/11/2016 19:17:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Noticia](
	[ID_Noticia] [int] NOT NULL,
	[Titulo] [nvarchar](300) NOT NULL,
	[Sinopsis] [nvarchar](500) NOT NULL,
	[Imagen] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Fecha] [datetime] NOT NULL,
	[Autor] [nvarchar](50) NULL,
	[Fuente] [nvarchar](max) NULL,
 CONSTRAINT [PK_Noticia] PRIMARY KEY CLUSTERED 
(
	[ID_Noticia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (1, N'Shuriken', N'Genji lanza tres estrellas letales de forma consecutiva. También puede lanzar tres shuriken formando un arco.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (2, N'Desvío', N'

Genji refleja proyectiles gracias a rapidísimos movimientos con su espada, y los hace rebotar hacia el oponente.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (3, N'Corte veloz', N'Genji esprinta hacia delante rebanando con su katana y atravesando a los enemigos en su camino. Si Genji elimina a un objetivo, puede volver a usar esta habilidad de inmediato.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (4, N'Hoja del dragón', N'Genji desenvaina y blande su katana durante un breve período de tiempo. Puede propinar golpes mortales a cualquier enemigo a su alcance hasta que enfunda la espada.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (5, N'Pacificador', N'McCree dispara su fiel revólver. También puede amartillar manualmente el pacificador para vaciar con rapidez el tambor.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (6, N'Evasión', N'McCree hace una pirueta en la dirección hacia la que se mueve y recarga su pacificador en el proceso.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (7, N'Granada cegadora', N'McCree lanza una granada cegadora que explota al poco de ser lanzada. La explosión deja atontados a los enemigos en un pequeño radio.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (8, N'Sin perdón', N'Concentrarse. Marcar. Desenfundar. McCree se toma unos instantes para apuntar. Cuando está listo, dispara a todos los enemigos en su campo de visión; cuanta menos vida tengan, menos tardará en preparar un disparo mortal.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (9, N'Lanzacohetes', N'El arma principal de Pharah lanza cohetes que infligen un daño considerable en una explosión de amplio radio.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (10, N'Propulsores', N'Impulsada por los propulsores de su traje, Pharah puede ascender a grandes alturas.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (11, N'Dispara de conmoción', N'Pharah dispara un cohete desde su muñeca que repele a cualquier enemigo al que golpee.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (12, N'Bombardeo', N'Pharah dirige una ráfaga continua de minicohetes para destruir a grupos de enemigos.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (13, N'Escopetas infernales', N'Reaper extermina a sus enemigos con sus dos escopetas.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (14, N'Forma espectral', N'Reaper se convierte en una sombra durante un breve período de tiempo. Mientras está en forma espectral, no sufre daño y puede pasar a través de los enemigos, pero no puede disparar ni utilizar habilidades.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (15, N'Paso de las tinieblas', N'Tras marcar un destino, Reaper desaparece y reaparece en la ubicación seleccionada.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (16, N'Espiral de muerte', N'Reaper gira sobre el sitio y vacía sus dos escopetas infernales a una velocidad pasmosa, lo que inflige daño masivo a todos los enemigos cercanos.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (17, N'Rifle de pulsos pesado', N'El rifle de Soldado: 76 no se desestabiliza mientras descarga ráfagas automáticas de pulsos.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (18, N'Cohetes hélice', N'El rifle de pulsos de Soldado: 76 lanza pequeños cohetes en espiral en un solo disparo. La explosión que provocan daña a los enemigos en un radio pequeño.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (19, N'Sprint', N'Ya sea para huir de un tiroteo o para meterse en otro, Soldado: 76 puede echar a correr a toda velocidad. Su sprint termina cuando realiza otra acción.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (20, N'Campo biótico', N'Soldado: 76 coloca un emisor biótico en el suelo. La energía que proyecta restaura la salud de Soldado: 76 y la de cualquier compañero de equipo que se halle dentro del campo.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (21, N'Visor táctico', N'El visor de objetivos de Soldado: 76 se "fija" en la amenaza más cercana a su punto de mira. Si un enemigo desaparece de su campo de visión, 76 puede cambiar rápidamente de objetivo.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (22, N'Subfusil', N'El subfusil automático de Sombra dispara en ráfagas de corto alcance.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (23, N'Hackeo', N'Sombra hackea a los enemigos de forma temporal para impedirles usar sus habilidades, o bien hackea packs de sanación y los vuelve inservibles para el enemigo.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (24, N'Camuflaje termo-óptico', N'Sombra se vuelve invisible durante un breve período y su velocidad aumenta considerablemente. Si ataca, usa habilidades ofensivas o sufre daño, su camuflaje se desactiva.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (25, N'Baliza de translocación', N'Sombra lanza una baliza de translocación. Puede volver a ella al instante si está activa (incluso cuando se encuentre en medio de una batalla).')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (26, N'PEM', N'Sombra desata un pulso de energía electromagnética en una gran zona, lo que destruye barreras y escudos enemigos y hackea a todos los oponentes a los que alcance la descarga.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (27, N'Pistolas de pulsos ', N'Tracer dispara sus dos pistolas a una velocidad espectacular.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (28, N'Traslación ', N'Tracer altera el espacio en horizontal para desplazarse unos metros en la dirección en la que se está moviendo. Puede almacenar hasta tres cargas de Traslación, que se van regenerando en cuestión de segundos.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (29, N'Regresión ', N'Tracer viaja atrás en el tiempo, lo que restaura su salud, su munición y su posición en el mapa al estado en el que se encontraban unos segundos antes.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (30, N'Bomba de pulsos ', N'Tracer lanza una gran bomba que se adhiere a cualquier superficie o enemigo desafortunado con el que entra en contacto. Tras unos segundos, la bomba explota e inflige gran daño a todos los enemigos en su radio de explosión.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (31, N'Modo reconocimiento', N'En Modo reconocimiento, Bastion puede moverse, y está equipado con una metralleta que dispara ráfagas constantes de balas de alcance medio.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (32, N'Modo centinela', N'En Modo centinela, Bastion permanece inmóvil y protegido con una barrera frontal. Está equipado con una ametralladora que dispara ráfagas de balas. La mira del arma puede ser guiada hacia varios objetivos para infligir daño devastador a corto y medio alcance.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (33, N'Reconfiguración', N'Bastion alterna entre dos modos de combate básicos para adaptarse a las condiciones del campo de batalla.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (34, N'Autorreparación', N'Bastion restaura su salud, pero mientras el proceso de reparación tiene lugar no puede moverse ni disparar sus armas.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (35, N'Modo tanque', N'En Modo tanque, Bastion extiende unas orugas y un poderoso cañón de largo alcance. Los proyectiles explosivos del cañón destrozan a los objetivos en un amplio radio, pero Bastion solo puede permanecer en este modo durante un tiempo limitado.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (36, N'Arco de tormenta', N'Hanzo tensa el arco y dispara una flecha a su objetivo.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (37, N'Flecha sónica', N'Hanzo utiliza una flecha que contiene un dispositivo de rastreo por sónar: cualquier enemigo dentro del radio de detección quedará visiblemente marcado, de modo que perseguirlo será más fácil para Hanzo y sus aliados.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (38, N'Flecha de dispersión', N'Hanzo dispara una flecha que se fragmenta. Las distintas piezas rebotan en paredes y objetos y pueden golpear a varios objetivos al mismo tiempo.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (39, N'Ataque del dragón', N'Hanzo invoca un dragón espiritual que se desplaza por el aire en línea recta. Atraviesa muros y devora a todos los enemigos con los que se cruza.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (40, N'Lanzagranadas', N'El lanzagranadas de Junkrat dispara granadas a gran distancia. Rebotan hasta alcanzar su destino y explotan cuando golpean al enemigo.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (41, N'Mina de conmoción', N'Tras colocar unas de sus minas de conmoción caseras, Junkrat puede activarlas para dañar a los enemigos o hacerlos volar por los aires... claro que también puede acabar volándose a sí mismo.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (42, N'Cepo', N'Junkrat lanza un cepo de metal gigantesco. Si un enemigo se acerca demasiado a la trampa, esta se cierra, lo que lo inmoviliza y le inflige daño.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (43, N'Caos total', N'El retorcido sentido del humor de Junkrat perdura más allá de la tumba. Al morir, suelta varias granadas listas para explotar.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (44, N'Rueda explosiva', N'Junkrat pone en marcha una rueda bomba motorizada que puede pasar por encima de paredes y obstáculos, y la envía a través del campo de batalla. La puede detonar por control remoto para infligir daño a los enemigos atrapados en la explosión o dejar que explote por sí sola.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (45, N'Pistola endotérmica', N'La pistola de Mei lanza un chorro de escarcha concentrado de corto alcance que daña, ralentiza y puede congelar a los enemigos para que no se muevan. Además, Mei puede usar la pistola para disparar proyectiles con forma de carámbanos a media distancia.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (46, N'Criónica', N'Mei crea un grueso bloque de hielo a su alrededor de forma instantánea. Mientras se encuentra en su interior, ignora el daño y se cura, pero no puede moverse ni usar habilidades.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (47, N'Muro de hielo', N'Mei crea un enorme muro de hielo que obstruye la línea de visión, impide el movimiento y bloquea los ataques.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (48, N'Ventisca', N'Mei lanza un dron de control climático que emite ráfagas de viento y nieve en una amplia área. Los enemigos atrapados en la ventisca se ven ralentizados y sufren daño, y aquellos que permanecen en la zona durante demasiado tiempo acaban congelados.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (49, N'Remachadora ', N'La remachadora de Torbjörn puede disparar remaches a larga distancia o expulsar metal fundido en descargas breves y de corto alcance.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (50, N'Martillo de forja ', N'Torbjörn utiliza su versátil martillo para construir, mejorar y reparar torretas. Si no hay más remedio, también lo puede usar como arma.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (51, N'Torreta ', N'Torbjörn construye una ametralladora automática dotada de un sistema de seguimiento de enemigos. Puede utilizar los materiales que recoge de aliados y enemigos muertos para mejorarla, lo que aumenta su salud y añade un segundo cañón y un lanzacohetes.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (52, N'Pack de armadura ', N'Torbjörn produce una mejora de armadura que puede ser recogida por sus aliados o por él mismo para absorber daño.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (53, N'Fusión nuclear ', N'Tras sobrecalentar su forja personal, Torbjörn obtiene una gran cantidad de armadura y materiales, y es capaz de atacar, construir y reparar mucho más rápido.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (54, N'Beso de la viuda ', N'El rifle de francotirador de Widowmaker es un arma versátil ideal para realizar disparos precisos a objetivos distantes. Si los objetivos están a medio o corto alcance, el rifle también se puede disparar en modo automático.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (55, N'Gancho', N'Widowmaker dispara un gancho hacia la ubicación a la que está apuntando. Cuando el gancho impacta contra una superficie escalable, Widowmaker se desplaza hasta ella, lo que le permite ampliar su campo de visión del campo de batalla y esquivar o flanquear a sus objetivos.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (56, N'Mina venenosa ', N'Widowmaker puede adherir una mina a prácticamente cualquier superficie. Cuando un objetivo entra en el radio de detección de movimiento de la mina, esta explota y administra un gas venenoso a todos los enemigos cercanos.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (57, N'Infravisión ', N'El visor de reconocimiento de Widowmaker le permite ver la huella de calor de sus objetivos a través de paredes y objetos durante un período medio de tiempo. Además, comparte su visión mejorada con sus aliados.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (58, N'Cañones de fusión', N'El meca de D.Va está equipado con dos cañones giratorios de corto alcance. Disparan un fuego continuo muy dañino sin necesidad de recargar, pero D.Va se mueve más lento mientras están activos.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (59, N'Pistola de luz', N'Cuando está fuera de su meca, D.Va puede seguir en la lucha gracias a su pistola automática de medio alcance.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (60, N'Impulsores', N'El meca de D.Va se eleva de un salto y puede planear gracias a la inercia. Puede girar y cambiar de dirección, o atravesar a los enemigos y repelerlos.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (61, N'Matriz de defensa', N'D.Va puede activar esta matriz delantera para disparar a los proyectiles atacantes y rechazarlos.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (62, N'Autodestrucción', N'D.Va salta de su meca y configura su reactor para que explote, lo que inflige mucho daño a los oponentes cercanos.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (63, N'Martillo a reacción', N'
El martillo a reacción de Reinhardt es el arma cuerpo a cuerpo perfecta: cada golpe inflige gran daño en un amplio arco.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (64, N'Campo protector', N'Reinhardt extiende ante él un amplio campo de energía que puede absorber un daño considerable antes de desactivarse. Aunque Reinhardt puede protegerse a sí mismo y a sus compañeros mediante este campo, no podrá atacar mientras lo mantenga.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (65, N'Embestida', N'Reinhardt carga hacia delante en línea recta agarrando a los oponentes a su paso. Si choca contra un muro, los enemigos que lleve sufrirán un daño extremo.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (66, N'Onda de fuego', N'Al apuntar su Martillo a reacción hacia delante, Reinhardt lanza un proyectil de fuego que atraviesa y daña a cualquier enemigo al que toque.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (67, N'Seísmo', N'Reinhardt estampa su martillo a reacción contra el suelo, lo que derriba y daña a todos los enemigos frente a él.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (68, N'Chatarrera', N'La chatarrera de Roadhog dispara a corto alcance descargas de metralla esparcidas. Como alternativa, también puede lanzar una bola de metralla que se detona más lejos y esparce fragmentos de metal desde el punto de impacto.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (69, N'Inhalador', N'Roadhog recupera parte de su salud durante un breve período.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (70, N'Garfio', N'Roadhog lanza su cadena contra un objetivo; si lo atrapa, tira de él para situarlo a corto alcance.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (71, N'Juego sucio', N'Roadhog mete un cargador en su chatarrera y la llena de munición. Puede disparar un chorro de metralla que repele a los enemigos durante un breve período.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (72, N'Cañón tesla ', N'El arma de Winston emite una descarga eléctrica de corto alcance que se mantiene mientras se tenga pulsado el gatillo.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (73, N'Salto potenciado ', N'Gracias a los propulsores de su traje, Winston puede saltar a gran altura, de forma que al caer inflige gran daño y aturde a los enemigos cercanos.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (74, N'Campo de fuerza ', N'Winston lanza un artilugio que genera un campo de fuerza esférico que absorbe daño hasta que es destruido. Los aliados protegidos por el campo pueden contraatacar desde su interior.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (75, N'Rabia primigenia ', N'Winston se entrega a su naturaleza salvaje, lo que aumenta su salud considerablemente y hace que sea muy difícil de matar. También vigoriza sus ataques cuerpo a cuerpo y le permite usar su habilidad Salto potenciado con mayor frecuencia. En este estado, Winston solo puede realizar ataques cuerpo a cuerpo y utilizar Salto potenciado.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (76, N'Cañón de partículas', N'El cañón de partículas de Zarya dispara un haz de energía destructiva de corto alcance. Además, Zarya puede lanzar una carga explosiva para atacar a varios oponentes.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (77, N'Barrera de partículas', N'El cañón de partículas puede emitir una barrera personal que protege a Zarya de los ataques enemigos, y aprovecha la energía de esos ataques para aumentar el daño y la amplitud del haz de su arma.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (78, N'Barrera proyectada', N'Zarya cubre a un miembro de su equipo con una barrera de energía que absorbe fuego y, al mismo tiempo, aumenta el poder de su cañón de partículas.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (79, N'Bomba de gravedad', N'Zarya lanza una bomba de gravedad que atrae a los enemigos y les inflige daño mientras están atrapados.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (80, N'Rifle biótico', N'El rifle de Ana dispara dardos que pueden restaurar la salud a sus aliados o infligir daño a sus enemigos. Además, puede usar la mira del rifle para apuntar mejor a sus objetivos y realizar disparos muy precisos.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (81, N'Dardo sedante', N'Ana usa su arma secundaria para lanzar un dardo y dejar inconsciente al enemigo (que se despertará si sufre daño).')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (82, N'Granada biótica', N'Ana lanza una bomba biótica que inflige daño a los enemigos y cura a los aliados en una pequeña área de efecto. Durante un breve período de tiempo, los aliados afectados reciben sanación aumentada de todas las fuentes y los enemigos atrapados en la explosión no se pueden curar.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (83, N'Nanoestimulantes', N'Cuando Ana usa sus estimulantes de combate en uno de sus aliados, este se mueve más rápido, inflige más daño y recibe menos daño de los ataques enemigos durante un tiempo.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (84, N'Amplificador sónico', N'Lúcio puede atacar a los enemigos con proyectiles sónicos o hacerlos retroceder con descargas de sonido.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (85, N'Cambio de pista', N'Lúcio se potencia a sí mismo (y a sus compañeros de equipo más cercanos) con música. Tiene dos canciones: una amplifica la velocidad de movimiento y la otra regenera salud.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (86, N'Subidón', N'Lúcio aumenta el volumen de sus altavoces e incrementa el efecto de sus canciones')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (87, N'Barrera de sonido', N'El Amplificador sónico de Lúcio irradia ondas protectoras que otorgan escudos individuales para él y sus aliados más cercanos durante un breve período de tiempo.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (88, N'Bastón caduceo', N'Mercy activa uno de los dos rayos que se dirigen hacia un aliado. Dependiendo del rayo que mantenga, puede restaurar la salud del aliado o aumentar la cantidad de daño que este inflige.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (89, N'Pistola caducea', N'Mercy dispara con su arma secundaria. Es mejor reservarla como defensa personal para casos de emergencia.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (90, N'Ángel de la guarda', N'Mercy vuela hacia un aliado, lo que le permite acudir a su lado rápidamente para ayudar en momentos cruciales.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (91, N'Descenso angélico', N'Propulsada por su armadura Valkyrie, Mercy puede ralentizar su caída desde grandes alturas.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (92, N'Resurrección', N'Mercy irradia poder regenerativo, lo que resucita a aliados muertos cercanos y hace que vuelvan a la refriega con la salud al máximo.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (93, N'Proyector de fotones ', N'El arma de Symmetra emite un haz de corto alcance que se dirige hacia un enemigo cercano y le inflige un daño continuo que irá aumentando mientras se mantenga la conexión. El proyector también puede lanzar una esfera de energía cargada para infligir más daño.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (94, N'Torreta centinela ', N'Symmetra coloca una torreta pequeña que dispara automáticamente descargas ralentizadoras al enemigo más cercano al alcance. Se pueden construir varias torretas a la vez en el campo de batalla.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (95, N'Escudo de fotones ', N'Symmetra rodea a un aliado con un escudo de luz sólida que absorbe daño y persiste mientras el aliado siga con vida.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (96, N'Teletransportador ', N'Symmetra coloca un teletransportador de salida en su ubicación actual y lo conecta con un teletransportador de entrada en el punto de inicio de su equipo. Los aliados pueden viajar del teletransportador de entrada al de salida al instante para volver al combate inmediatamente después de ser derrotados.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (97, N'Orbe de destrucción ', N'Zenyatta proyecta orbes de energía destructiva uno a uno, aunque también puede disparar una veloz ráfaga si pasa unos segundos cargando energía.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (98, N'Orbe de armonía ', N'Zenyatta lanza un orbe sobre el hombro de un aliado. Mientras Zenyatta siga con vida, el orbe restaurará lentamente la salud de su aliado. El orbe solo se puede lanzar a un aliado a la vez.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (99, N'Orbe de discordia ', N'Aplicar un orbe de discordia a un oponente aumentará la cantidad de daño que este sufra mientras Zenyatta siga con vida. Los efectos del orbe solo los puede sufrir un enemigo a la vez.')
INSERT [dbo].[Habilidad] ([ID_Habilidad], [Nombre], [Descripcion]) VALUES (100, N'Trascendencia ', N'Zenyatta alcanza un nivel elevado de existencia durante un breve período de tiempo. Durante la trascendencia no puede utilizar habilidades ni armas, pero es inmune al daño y restaura su salud y la de los aliados cercanos automáticamente.')
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
INSERT [dbo].[Mapa] ([ID_Mapa], [Nombre], [Descripcion], [Tipo], [Imagen]) VALUES (1, N'Templo de Anubis', N'Situado entre las antiguas ruinas de la meseta de Giza, en las afueras del Cairo, el Templo de Anubis es una de muchas nuevas excavaciones en esta área. Muchos creen que este sitio es de interés por razones arqueológica, sin embargo, también esconde la entrada a un laboratorio de investigación que se extiende en lo profundo de la tierra. Se dice que estas instalaciones son el hogar de una inteligencia artificial, pero la completa verdad solo la conocen unos pocos. Ni siquiera los agentes de Helix Security International, quienes vigilan el laboratorio conocen qué están protegiendo.', N'Asalto', N'http://i.imgur.com/EU3MFZS.jpg')
INSERT [dbo].[Mapa] ([ID_Mapa], [Nombre], [Descripcion], [Tipo], [Imagen]) VALUES (2, N'Hanamura', N'Hanamura es un pueblo bien conservado de tiendas modestas y calles silenciosas, conocido mayormente por su idílico festival de sakura cada primavera. Pero para los que conocen su historia, Hanamura es el hogar ancestral del clan ninja Shimada, el cual creció durante siglos para convertirse en una poderosa organización criminal. Mientras que sus ciudades vecinas se expandían, Hanamura fue rodeada, y eventualmente incorporada como un distrito de una ciudad más grande. Por ahora, el imponente recinto de la familia Shimada yace vacío, pero esa paz podría romperse pronto.', N'Asalto', N'http://i.imgur.com/eQiatVi.png')
INSERT [dbo].[Mapa] ([ID_Mapa], [Nombre], [Descripcion], [Tipo], [Imagen]) VALUES (3, N'Industrias Volskaya', N'Rusia fue uno de los países más afectados por la Crisis Ómnica, pero durante el proceso de reconstrucción, aprovechó la revitalización de la industria de la mano de obra mecanizada, y entró en un periodo de rápido crecimiento. Sin embargo, luego de los recientes ataques por parte del durmiente Omnium siberiano, Rusia nuevamente está en pie de guerra, protegiendo sus brillantes ciudades con los enormes robots Syvatogor, piloteados por humanos, y producidos por las Industrias Volskaya.', N'Asalto', N'http://i.imgur.com/GVbb3iu.jpg')
INSERT [dbo].[Mapa] ([ID_Mapa], [Nombre], [Descripcion], [Tipo], [Imagen]) VALUES (4, N'Observatorio: Gibraltar', N'En su apogeo, Overwatch mantuvo un número de bases alrededor del mundo, cada una con un propósito: mantener la paz, investigación científica, o en el caso del Observatorio: Gibraltar, proveer una instalación de lanzamiento orbital. La base fue abandonada junto con el resto de instalaciones de Overwatch, pero recientemente se han reportado actividades en el perímetro. ¿Podría esto indicar la presencia de antiguos agentes de Overwatch? ¿O es esto obra de organizaciones con intenciones más nefastas?', N'Escolta', N'http://hydra-media.cursecdn.com/overwatch.gamepedia.com/0/05/Watchpoint_screen_6.jpg')
INSERT [dbo].[Mapa] ([ID_Mapa], [Nombre], [Descripcion], [Tipo], [Imagen]) VALUES (5, N'Dorado', N'Es el festival de la Luz en Dorado, una celebración anual sobre el final de la Crisis Ómnica, y del periodo de oscuridad – tanto literal como figurativamente – en el que se vio envuelto México cuando los ómnicos destruyeron la mayor parte de la red eléctrica e infraestructura del país. Pero hay un nuevo amancer, ya que LumériCo y su CEO, el ex-presidente y héroe de guerra Guillermo Portero, están revelando una cadena de plantas de fusión que prometen energía limpia y gratuita para el pueblo mexicano.

El equipo de Ataque comienza en Misión Dorado, un lugar histórico, gamoso por el sonido de las campanas ornamentales que cuelgan en sus arcos.', N'Escolta', N'http://i.imgur.com/3TrklYs.jpg')
INSERT [dbo].[Mapa] ([ID_Mapa], [Nombre], [Descripcion], [Tipo], [Imagen]) VALUES (6, N'Ruta 66', N'Aunque los viajeros que solían cruzar los Estados Unidos en la histórica Ruta 66 han desaparecido, la Calle Mayor de Estados Unidos aún se mantiene, como testamento de unos tiempos más simples. Las estaciones de gasolina, tiendas de carretera y cafés han entrado en desuso, y el legendario cañón Deadlock es mayormente visto desde la comodidad de tren-carros transcontinentales. Pero entre los monumentos de esa era anterior, los bandidos de la banda Deadlock están planeando su robo más grande hasta el momento.', N'Escolta', N'http://i.imgur.com/HsbBPmM.jpg')
INSERT [dbo].[Mapa] ([ID_Mapa], [Nombre], [Descripcion], [Tipo], [Imagen]) VALUES (7, N'Torre Lijiang', N'La Torre Lijiang fue construida en el corazón de una moderna metrópolis china, cuyas ocupadas calles bordeadas de tiendas, jardines, restaurantes y famosos mercados nocturnos, donde comidas de toda la región yacen disponibles a toda hora. La torre en sí es el hogar de una de las compañías líderes en lo último de la industria espacial, Lucheng Interestelar, una organización con una larga historia como pionera, que está actualmente empujando los límites de la exploración espacial.', N'Control', N'http://i.imgur.com/FNMUeGE.jpg')
INSERT [dbo].[Mapa] ([ID_Mapa], [Nombre], [Descripcion], [Tipo], [Imagen]) VALUES (8, N'Ilios', N'Situada en el tope de una elevación de una pequeña isla del Mar Egeo, Ilios es la ciudad mediterránea perfecta para una postal, con un bullicioso puerto, senderos sinuosos para pasear por las laderas, y vistas hermosas. Es la parada vacacional ideal para quienes buscan un lugar para relajarse, o para quienes estén interesados en explorar las ruinas dispersas en el tope de la isla, donde muchos artefactos y reliquias del mundo antiguo han sido recientemente excavadas. Las ruinas fueron declaradas como un patrimonio protegido internacionalmente. Sin embargo, Talon intentó robar los artefactos.', N'Control', N'http://i11d.3djuegos.com/juegos/11472/overwatch/fotos/maestras/overwatch-3454831.jpg')
INSERT [dbo].[Mapa] ([ID_Mapa], [Nombre], [Descripcion], [Tipo], [Imagen]) VALUES (9, N'Nepal', N'Hace años, un grupo de robots ómnicos experimentaron lo que describieron como un despertar espiritual. Abandonaron sus vidas programadas para establecer un monasterio en lo alto de los Himalayas, donde ómnicos de ideas afines podrían juntarse a meditar sobre la naturaleza de su existencia. Dirigidos por su líder espiritual, Tekhartha Mondatta, tomaron control de las ruinas de un monasterio ancestral y lo convirtieron en el hogar de los Shambali, un lugar donde tanto ómnicos como humanos podrían hacer peregrinaje, esperando encontrar una verdad mayor.', N'Control', N'http://i.imgur.com/FL2y7HQ.jpg')
INSERT [dbo].[Mapa] ([ID_Mapa], [Nombre], [Descripcion], [Tipo], [Imagen]) VALUES (10, N'King''s Row', N'King''s Row es un barrio exclusivo y cosmopolita de Londres, pero justo debajo de su tranquila superficie, las tensiones entre ómnicos y humanos están aumentando. Mientras que gran parte de la Inglaterra moderna fue construida gracias a obreros ómnicos, se les ha negado los derechos básicos que tienen los seres humanos, con la mayoría de ellos obligados a vivir en la densa, claustrofóbica ciudad-bajo-la-ciudad conocida por algunos como "el Inframundo." De mayor preocupación es que las recientes manifestaciones por los derechos pro-ómnicos han resultado en violentos enfrentamientos con la policía, y no hay solución no a la vista.', N'Asalto/Escolta', N'http://i.imgur.com/VMebV1C.jpg')
INSERT [dbo].[Mapa] ([ID_Mapa], [Nombre], [Descripcion], [Tipo], [Imagen]) VALUES (11, N'Numbani', N'Conocida como la "Ciudad de la Armonía", Numbani es uno de los pocos lugares donde las personas y los ómnicos viven como iguales. Esta colaboración ha llevado a la creación de una de las ciudades más grandes y tecnológicamente más avanzadas del mundo en el poco tiempo transcurrido desde su creación, tras el fin de la Crisis Ómnica. Como parte de las festividades del Día de la Unidad de este año, celebrando la fundación de la ciudad, el guante del infame Doomfist se exhibe en el Museo del Patrimonio Numbani.', N'Asalto/Escolta', N'http://i.imgur.com/TpffvMJ.jpg')
INSERT [dbo].[Mapa] ([ID_Mapa], [Nombre], [Descripcion], [Tipo], [Imagen]) VALUES (12, N'Hollywood', N'Bienvenidos al glamour de Hollywood, California; donde palmeras y coches de lujo se alinean en las calles, y estrellas de cine, directores y altos ejecutivos de estudio se reúnen para charlar y tomar una copa en Galand''s. HAL-Fred Glitchbot ha creado sus dos últimas películas, "Vienen de más allá de la luna" y "Six-Gun Killer", a diferentes niveles de aclamación crítica y comercial. Sin embargo, incluso Tinseltown ha sido agarrada por el sentimiento anti-ómnico, y el abierto director se ha convertido en un objetivo principal en el conflicto creciente.', N'Asalto/Escolta', N'http://i.imgur.com/i8FvIid.jpg')
INSERT [dbo].[Mapa] ([ID_Mapa], [Nombre], [Descripcion], [Tipo], [Imagen]) VALUES (13, N'Eichenwalde', N'La ciudad fue el sitio de una de las batallas más famosas durante la Crisis Ómnica. Fue aquí donde el líder de los cruzados, Balderich von Adler, y un puñado de sus mejores soldados ofrecieron una última resistencia contra un ejército de autómatas que avanzaba. Superados en número y en armas, fueron asesinados durante el combate resultante. Sin embargo, gracias a sus valientes esfuerzos, los militares alemanes fueron capaces de empujar la ofensiva ómnica y ganar la batalla. Al día de hoy, Eichenwalde se encuentra abandonado, y el bosque ha comenzado lentamente a superar al pueblo. Sin embargo, las cicatrices de la guerra nunca se desvanecerán por completo.', N'Asalto/Escolta', N'http://i.imgur.com/J98McaU.jpg')
INSERT [dbo].[Noticia] ([ID_Noticia], [Titulo], [Sinopsis], [Imagen], [Descripcion], [Fecha], [Autor], [Fuente]) VALUES (1, N'Nueva actualizacion de overwatch', N'Se trata de la version 1.5 de overwatch ya disponible', N'http://www.mundogamers.com/new/img/fichs/1252/front/big/overwatch_1.jpg', N'Desde ya mismo está disponible la importante actualización 1.5 de Overwatch, que por fin introduce en todas las plataformas a Sombra, el nuevo Héroe, junto a un nuevo mapa y el modo Arcade. Además, llega con un montón de cambios en varios personajes y también de carácter general. Aquí los tenéis todos:
 
Generales
- Dañar a elementos que no son jugadores (como las torretas de Torbjorn o el teletransporte de Symmetra) no recarga la habilidad especial.
- La habilidad especial tarda en rellenarse un 25% más de tiempo en todos los Héroes.
- Las partidas rápidas no permitirán la repetición de Héroes en el equipo.
 
D. Va
- Salud incrementada de 100 puntos a 200.
- Movimiento aumentado un 25% cuando estamos fuera del robot.
 
Soldado 76
- Daño de las balas incrementado de 17 a 20.
- Dispersión máximo de balas aumentado de 2.2 a 2.4.
 
Ana
- Su habilidad especial ya no aumenta la velocidad del Héroe designado.
 
Mei
- Su habilidad especial tarda un 15% más de tiempo en ser rellenada. Se suma al 25% general.
 
Lucio
- La curación por segundo decrece en un 10%.
 
Zarya
- El poder de sus barreras, tanto las propias como las lanzadas, decrece en un 20%.
 
Torbjorn
- La chatarra se genera automáticamente con el tiempo.
- La cantidad de chatarra recolectada de los enemigos caídos decrece en un 40%.
- La velocidad del martillo aumenta un 25%, pero su daño decrece un 27%.', CAST(N'2016-11-16 18:30:10.000' AS DateTime), N'Christian jara ', N'http://www.mundogamers.com/noticia-la-actualizacion-15-de-overwatch-ya-esta-disponible.16851.html')
INSERT [dbo].[Noticia] ([ID_Noticia], [Titulo], [Sinopsis], [Imagen], [Descripcion], [Fecha], [Autor], [Fuente]) VALUES (2, N'Novedades en Overwatch', N'A poco más de una semana tras su lanzamiento tenemos ya muchas novedades con respecto al nuevo FPS de Blizzard', N'http://puregaming.es/wp-content/uploads/2016/05/overwatch2-810x446_c.jpg', N'La compañía está trabajando actualmente en mejorar el algoritmo que selecciona la “Jugada destacada” de cada partida para que los personajes de apoyo como Mercy tengan más protagonismo en las mismas.

Actualmente el sistema de selección elige dichas jugadas en función del daño y las bajas realizadas, por lo que según este sistema, se benefician a determinados grupos de héroes. Como bien nos dicen los desarrolladores “es difícil que un algoritmo determine una jugada que ha estado muy chula“.

¿El modo competitivo se retrasa hasta Junio?

Los que ya jugamos en la fase de beta cerrada pudimos disfrutar por un breve periodo de tiempo de las partidas competitivas. En la fase de beta abierta Blizzard eliminó esta opción y nos informó de que no estaría disponible justo en el lanzamiento del título, si no en algún momento en el mes de Junio.

Pero esta semana, según informaba la cuenta oficial de Overwatch en Twitter, el modo competitivo se retrasa hasta el mes de Julio. A la cabeza de las listas de ventas

También esta semana hemos conocido datos que sitúan a Overwatch como el juego más vendido de la semana en el Reino Unido, uno de los mercados más importantes de videojuegos del continente.  Según los datos de venta física el 47% de las ventas de Overwatch pertenecen a PlayStation 4, el 36% a Xbox One y el 18% de las mismas a PC.

Overwatch, a la venta desde el pasado día 24 de mayo, promete ser uno de los títulos del año, tanto a nivel doméstico, como en su faceta dentro de los eSports.

', CAST(N'2016-06-02 12:34:04.000' AS DateTime), N'Daniel Acosta', N'http://puregaming.es/novedades-relativas-overwatch/')
INSERT [dbo].[Noticia] ([ID_Noticia], [Titulo], [Sinopsis], [Imagen], [Descripcion], [Fecha], [Autor], [Fuente]) VALUES (3, N'Overwatch recibe un nuevo parche', N'Blizzard ha lanzado una nueva actualización para Overwatch que ya puede ser descargada en PC, PlayStation 4 y Xbox One.', N'http://media.vandal.net/i/1200x630/26638/overwatch-2016415193320_1.jpg', N'Gracias a Blizzard se han realizado algunas mejoras en la interfaz y se han solucionado varios errores de programación. Además, se ha aprovechado la ocasión para reducir el número de veces que Mercy consigue la Jugada Destacada con su habilidad de resurrección.

Otro cambio importante lo tenemos en el mapa Eichenwalde, ya que ahora la carga se moverá un poco más rápido que antes. ACTUALIZACIONES GENERALES

General
Los jugadores verán menos jugadas destacadas protagonizadas por la habilidad Resurreción de Mercy.

Se ha aumentado la velocidad de la carga en Eichenwalde.


ACTUALIZACIONES DE LA INTERFAZ DE USUARIO

General
Se ha añadido una leyenda de nivel competitivo nueva a la pantalla de información de Partidas competitivas.

Se ha reemplazado la antigua pantalla «Ronda completada» de las partidas competitivas con una nueva pantalla que reza: «Partida completada».


CORRECCIÓN DE ERRORES

General
Se ha corregido un error que impedía que se reprodujese el aviso de asesinato triple tras una racha de 3 asesinatos o más.

Se han corregidos varios errores que causaban que algunos jugadores obtuvieran un nivel de habilidad más alto que su nivel de habilidad real.

Nota: Sólo un pequeño número de jugadores han sido afectados por estos errores, pero ajustaremos apropiadamente el nivel de habilidad de los jugadores afectados.

Héroes
Se ha corregido un error que provocaba que se mostrase la flecha equivocada en el arco de Hanzo, o que desapareciese por completo (al lanzar, sí se disparaba la flecha correcta).

Se ha corregido un error que impedía que la Rueda explosiva de Junkrat recibiese el justo crédito por provocar asesinatos, conseguir logros y otras estadísticas.

Mapas
Se ha corregido un error que permitía a Reaper usar Paso de las tinieblas para aparecer en ubicaciones no intencionadas en Hollywood.', CAST(N'2016-09-14 13:47:12.000' AS DateTime), N'Gonzalo Alfaro', N'http://www.vandal.net/noticia/1350681371/overwatch-recibe-un-nuevo-parche/')
INSERT [dbo].[Noticia] ([ID_Noticia], [Titulo], [Sinopsis], [Imagen], [Descripcion], [Fecha], [Autor], [Fuente]) VALUES (4, N'Overwatch estrena mapa y temporada competitiva con nuevo parche', N'Blizzard ha anunciado que ya está disponible el parche 1.3 de Overwatch, trayendo consigo importantes novedades al juego.', N'http://media.vandal.net/i/1200x630/34372/overwatch-2016817101238_2.jpg', N'Las novedades

Entre ellas nos encontramos con un nuevo mapa, Eichenwald, ambientado en Alemania, la segunda temporada competitiva y multitud de cambios en cómo funcionan las partidas competitivas (eliminación de la Muerte Súbita, inclusión de ligas en las que podemos ascender y descender, etcétera).  Además, se han retocado algunos héroes, de modo que la habilidad definitiva de Genji ahora dura seis segundos en vez de ocho, las curas por segundo de Mercy se han incrementado en un 20%, se ha ajustado el funcionamiento del gancho de Roadhog para que no podamos atraer a los héroes que estén fuera de nuestro campo de visión y se ha reducido el aumento de daño sobre los enemigos que provoca el Orbe de Discordia de Zenyatta del 50% al 30%.

Finalmente, el primer punto de control del mapa de Gibraltar ha sido eliminado, se han añadido dos nuevos gestos desbloqueables para todos los héroes (sentarse y reirse) y Reinhardt cuenta ahora con una nueva apariencia legendaria.   ', CAST(N'2016-07-02 11:34:45.000' AS DateTime), N'Daniel Acosta', N'http://www.vandal.net/noticia/1350680927/overwatch-estrena-mapa-y-temporada-competitiva-con-su-nuevo-parche/')
INSERT [dbo].[Noticia] ([ID_Noticia], [Titulo], [Sinopsis], [Imagen], [Descripcion], [Fecha], [Autor], [Fuente]) VALUES (5, N'Blizzard banea a 1 700 jugadores de overwatch', N'Se trata de la última oleada de castigos del shooter de acción multijugador en primera persona.', N'http://i13c.3djuegos.com/juegos/11472/overwatch/fotos/maestras/overwatch-3527424.jpg', N'Blizzard lo anunció muy claramente: aquellos jugadores que hicieran trampas empleando hacks y otros trucos para durante las partidas de Overwatch serían expulsados para siempre. Este aviso quizás no fue tomado como algo importante para los usuarios dado que nunca antes se habían tomado estas advertencias en serio, ya que el baneo hasta ahora era algo temporal o siempre se podía comenzar una nueva partida de un modo u otro por lo que nadie se cortaba a la hora de usar trucos.

Sin embargo, parece que Blizzard está cumpliendo con estas promesas y, tal y como afirma PC Gamer, ya hay más de mil jugadores a los que la compañía ha baneado de Overwatch. Destaca especialmente la cantidad de usuarios en China a los que el estudio le ha enseñado la puerta, en concreto 1.552 personas han sido invitados a salir de por vida de este juego.

De hecho ya hay quien se está quejando de que este castigo está siendo demasiado drástico. Uno de estos jugadores baneados de Overwatch cuenta su experiencia: este usuario fue expulsado después de haber sido pillado empleando el hack que permite ver a otros jugadores detrás de los muros, una ventaja que incluso empleó durante la beta de Overwatch. Esta persona narra que pese a haber modificado su IP, e incluso comprar el juego para otros dispositivos, siempre se encuentra con que Blizzard no le permite jugar online.

Si eres de los que usualmente emplean estos trucos y hacks para ser el mejor en las partidas quizás deberías pensarte dos veces si es mejor continuar empleando estas trampas en Overwatch porque quizás la próxima vez que inicies sesión te encuentres con que Blizzard te ha enseñado la puerta de salida sin pedirte permiso.', CAST(N'2016-07-23 12:45:11.000' AS DateTime), N'Gonzalo Alfaro', N'http://www.alfabetajuega.com/noticia/overwatch-ha-baneado-a-ms-de-mil-jugadores-por-hacer-trampas-n-68952')
USE [master]
GO
ALTER DATABASE [Overlook] SET  READ_WRITE 
GO
