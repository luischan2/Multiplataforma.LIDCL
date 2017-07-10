USE [Ubicate]
GO
/****** Object:  Table [dbo].[Organismos]    Script Date: 09/07/2017 19:35:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organismos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[descripcion] [nvarchar](250) NULL,
	[direccion] [nvarchar](max) NULL,
	[imagen] [nvarchar](max) NULL,
	[visita] [numeric](18, 0) NULL,
 CONSTRAINT [pk_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Organismos] ON 
GO
INSERT [dbo].[Organismos] ([Id], [nombre], [descripcion], [direccion], [imagen], [visita]) VALUES (1, N'Reniec', N'Oficina de Registro  Nacional de Estado Civil', N'los chukiswert', N'http://www.chimbotenlinea.com/sites/default/files/styles/grande/public/field/image/reniec_5.jpg?itok=BXe6f9vz', CAST(1298 AS Numeric(18, 0)))
GO
INSERT [dbo].[Organismos] ([Id], [nombre], [descripcion], [direccion], [imagen], [visita]) VALUES (2, N'Banco de la Nacion', N'El Banco de la Nación o Banco de la Nación del Perú, es el banco que representa al Estado peruano en las transacciones comerciales en el sector público o privado.', N'los chikis', N'http://exitosanoticias.pe/wp-content/uploads/2017/01/BANCO-DE-LA-NACION.jpg', CAST(1200 AS Numeric(18, 0)))
GO
INSERT [dbo].[Organismos] ([Id], [nombre], [descripcion], [direccion], [imagen], [visita]) VALUES (3, N'INDECI', N'es un organismo público, dependiente del Ministerio de Defensa, cuya labor es procurar una óptima respuesta de la sociedad en caso de desastres, supervisar la atención de las personas afectadas por los mismos.', N'ertyuioi', N'http://e.rpp-noticias.io/normal/2015/04/09/1475791.jpg', CAST(1300 AS Numeric(18, 0)))
GO
INSERT [dbo].[Organismos] ([Id], [nombre], [descripcion], [direccion], [imagen], [visita]) VALUES (4, N'Superintendencia de Banca, Seguros y Afp', N'es el organismo encargado de la regulación y supervisión del Sistema Financiero de Seguros y del Sistema Privado de Pensiones en el Perú', N'sfg', N'http://cde.elcomercio.pe/66/ima/0/0/5/0/7/507845.jpg', CAST(140 AS Numeric(18, 0)))
GO
INSERT [dbo].[Organismos] ([Id], [nombre], [descripcion], [direccion], [imagen], [visita]) VALUES (5, N'Ministerio Publico', N'Es el conjuntos de ministerios que posee el estado Peruano.', N'Av Javier Pado', N'http://www.analitica.com/wp-content/uploads/2016/04/ministerio-publico.jpg', CAST(129 AS Numeric(18, 0)))
GO
INSERT [dbo].[Organismos] ([Id], [nombre], [descripcion], [direccion], [imagen], [visita]) VALUES (6, N'PRONABEC', N'Oficina Nacional de Becas', N'Av. Arequipa 1935, Lince 15046', N'http://www.pronabec.gob.pe/inicio/regiones/lima/lima_local.jpg', CAST(2040 AS Numeric(18, 0)))
GO
INSERT [dbo].[Organismos] ([Id], [nombre], [descripcion], [direccion], [imagen], [visita]) VALUES (7, N'Sat - Servicio de Administracion Tributaria', N'es un órgano desconcentrado de la Secretaría de Hacienda y Crédito Público, que tiene la responsabilidad de aplicar la legislación fiscal y aduanera.', N'Av Chabuca Grand nº 324', N'http://clubdecontadores.com/wp-content/uploads/2016/04/sat-1_1.jpg', CAST(400 AS Numeric(18, 0)))
GO
INSERT [dbo].[Organismos] ([Id], [nombre], [descripcion], [direccion], [imagen], [visita]) VALUES (8, N'Congreso de la Republica', N'es el órgano que ejerce el poder legislativo en la República del Perú.', N'Av Independencia  nº123', N'http://cdn8.larepublica.pe/sites/default/files/styles/img_620x369/public/imagen/2016/08/19/congreso-la-republica-noticia-718443-Noticia-795583.jpg', CAST(500 AS Numeric(18, 0)))
GO
INSERT [dbo].[Organismos] ([Id], [nombre], [descripcion], [direccion], [imagen], [visita]) VALUES (9, N'Onpe', N'es un organismo electoral constitucional autónomo que forma parte de la estructura del Estado.', N'Av Los Preceres nº 3445', N'http://cdne.diariocorreo.pe/thumbs/uploads/articles/images/puno-onpe-recibira-solicitudes-JPG_604x0.jpg', CAST(1000 AS Numeric(18, 0)))
GO
INSERT [dbo].[Organismos] ([Id], [nombre], [descripcion], [direccion], [imagen], [visita]) VALUES (10, N'Indecopi', N'Tiene como funciones la promoción del mercado y la protección de los derechos de los consumidores.', N'Av. Chimu nº 2345', N'https://www.indecopi.gob.pe/image/journal/article?img_id=1662056&t=1499276650630', NULL)
GO
INSERT [dbo].[Organismos] ([Id], [nombre], [descripcion], [direccion], [imagen], [visita]) VALUES (11, N'Superintendencia Nacional de los Registro Publicos', N'es un organismo descentralizado autónomo del Sector Justicia y ente del Sistema Nacional de los Registros Público.', N'Av. Los Martires nº 4332', N'http://cdne.diariocorreo.pe/thumbs/uploads/articles/images/sunarp-nueva-ley-cancelara-ins-jpg_604x0.jpg', CAST(3 AS Numeric(18, 0)))
GO
INSERT [dbo].[Organismos] ([Id], [nombre], [descripcion], [direccion], [imagen], [visita]) VALUES (14, N'Embajada de EE.UU.', N'Embajada de Los Estados Unidos', N'Av. Los Martes nº 2345', N'http://cde.peru21.pe/ima/0/0/2/8/5/285285.jpg', CAST(2005 AS Numeric(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[Organismos] OFF
GO
