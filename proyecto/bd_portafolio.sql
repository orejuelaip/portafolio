USE [portafolio]
GO
/****** Object:  Table [dbo].[Experiencia]    Script Date: 10/12/2017 07:30:28 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Experiencia](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Usuario_id] [int] NOT NULL,
	[Tipo] [tinyint] NOT NULL CONSTRAINT [DF_Experiencia_Tipo]  DEFAULT ((1)),
	[Nombre] [varchar](100) NOT NULL,
	[Titulo] [varchar](50) NOT NULL,
	[Desde] [varchar](10) NOT NULL,
	[Hasta] [varchar](10) NOT NULL,
	[Descripcion] [text] NULL,
 CONSTRAINT [PK_Experiencia] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Habilidad]    Script Date: 10/12/2017 07:30:29 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Habilidad](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Usuario_id] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Dominio] [int] NOT NULL CONSTRAINT [DF_Habilidad_Dominio]  DEFAULT ((0)),
 CONSTRAINT [PK_Habilidad] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TablaDato]    Script Date: 10/12/2017 07:30:29 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TablaDato](
	[Relacion] [varchar](20) NOT NULL,
	[Valor] [varchar](20) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[Orden] [int] NOT NULL CONSTRAINT [DF_TablaDato_Orden]  DEFAULT ((1)),
 CONSTRAINT [PK_TablaDato] PRIMARY KEY CLUSTERED 
(
	[Relacion] ASC,
	[Valor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Testimonio]    Script Date: 10/12/2017 07:30:29 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Testimonio](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Usuario_id] [int] NOT NULL,
	[IP] [varchar](50) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Comentario] [text] NOT NULL,
	[Fecha] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Testimonio] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 10/12/2017 07:30:29 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](100) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Password] [varchar](32) NOT NULL,
	[Direccion] [text] NULL,
	[Ciudad] [varchar](50) NULL,
	[Pais_id] [int] NULL,
	[Telefono] [varchar](50) NULL,
	[Facebook] [varchar](100) NULL,
	[Twitter] [varchar](100) NULL,
	[YouTube] [varchar](100) NULL,
	[Foto] [varchar](50) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Experiencia] ON 

GO
INSERT [dbo].[Experiencia] ([id], [Usuario_id], [Tipo], [Nombre], [Titulo], [Desde], [Hasta], [Descripcion]) VALUES (5, 3, 1, N'PCA Abogados', N'Analista Programador  PHP', N'2013-02-01', N'2017-07-15', N'Analista programador a medida')
GO
INSERT [dbo].[Experiencia] ([id], [Usuario_id], [Tipo], [Nombre], [Titulo], [Desde], [Hasta], [Descripcion]) VALUES (6, 3, 2, N'Ingles', N'Open English', N'2015-02-11', N'2015-04-11', N'Ingles básico con el pelado.')
GO
INSERT [dbo].[Experiencia] ([id], [Usuario_id], [Tipo], [Nombre], [Titulo], [Desde], [Hasta], [Descripcion]) VALUES (9, 3, 1, N'Summit SAC', N'Analista Programador .NET', N'2017-08-01', N'2017-10-24', N'Desarrollo de sw a medida.')
GO
INSERT [dbo].[Experiencia] ([id], [Usuario_id], [Tipo], [Nombre], [Titulo], [Desde], [Hasta], [Descripcion]) VALUES (10, 3, 2, N'ASP.NET MVC', N'Tecnico con conocimientos en ASP.NET MVC', N'2015-08-01', N'2015-08-01', NULL)
GO
INSERT [dbo].[Experiencia] ([id], [Usuario_id], [Tipo], [Nombre], [Titulo], [Desde], [Hasta], [Descripcion]) VALUES (1002, 5, 1, N'Traba jo 1', N'Titulo 1', N'2015-08-01', N'2015-08-02', N'Descripcion')
GO
INSERT [dbo].[Experiencia] ([id], [Usuario_id], [Tipo], [Nombre], [Titulo], [Desde], [Hasta], [Descripcion]) VALUES (1003, 3, 1, N'AGP Peru', N'Analista Desarrollador', N'2017-10-25', N'2017-12-08', N'Desarrollar requerimientos de usuarios')
GO
SET IDENTITY_INSERT [dbo].[Experiencia] OFF
GO
SET IDENTITY_INSERT [dbo].[Habilidad] ON 

GO
INSERT [dbo].[Habilidad] ([id], [Usuario_id], [Nombre], [Dominio]) VALUES (1, 3, N'ASP.NET MVC', 99)
GO
INSERT [dbo].[Habilidad] ([id], [Usuario_id], [Nombre], [Dominio]) VALUES (2, 3, N'jQuery', 100)
GO
INSERT [dbo].[Habilidad] ([id], [Usuario_id], [Nombre], [Dominio]) VALUES (3, 3, N'BootStrap', 50)
GO
INSERT [dbo].[Habilidad] ([id], [Usuario_id], [Nombre], [Dominio]) VALUES (4, 3, N'PHP', 80)
GO
INSERT [dbo].[Habilidad] ([id], [Usuario_id], [Nombre], [Dominio]) VALUES (5, 3, N'CSS 3', 60)
GO
SET IDENTITY_INSERT [dbo].[Habilidad] OFF
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'1', N'Afganistán', 1)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'10', N'Antillas Holandesas', 10)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'100', N'Haití', 100)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'101', N'Islas Heard y McDonald', 101)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'102', N'Honduras', 102)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'103', N'Hong Kong', 103)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'104', N'Hungría', 104)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'105', N'India', 105)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'106', N'Indonesia', 106)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'107', N'Irán', 107)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'108', N'Iraq', 108)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'109', N'Irlanda', 109)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'11', N'Arabia Saudí', 11)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'110', N'Islandia', 110)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'111', N'Israel', 111)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'112', N'Italia', 112)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'113', N'Jamaica', 113)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'114', N'Japón', 114)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'115', N'Jordania', 115)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'116', N'Kazajstán', 116)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'117', N'Kenia', 117)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'118', N'Kirguistán', 118)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'119', N'Kiribati', 119)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'12', N'Argelia', 12)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'120', N'Kuwait', 120)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'121', N'Laos', 121)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'122', N'Lesotho', 122)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'123', N'Letonia', 123)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'124', N'Líbano', 124)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'125', N'Liberia', 125)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'126', N'Libia', 126)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'127', N'Liechtenstein', 127)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'128', N'Lituania', 128)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'129', N'Luxemburgo', 129)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'13', N'Argentina', 13)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'130', N'Macao', 130)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'131', N'ARY Macedonia', 131)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'132', N'Madagascar', 132)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'133', N'Malasia', 133)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'134', N'Malawi', 134)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'135', N'Maldivas', 135)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'136', N'Malí', 136)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'137', N'Malta', 137)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'138', N'Islas Malvinas', 138)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'139', N'Islas Marianas del Norte', 139)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'14', N'Armenia', 14)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'140', N'Marruecos', 140)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'141', N'Islas Marshall', 141)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'142', N'Martinica', 142)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'143', N'Mauricio', 143)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'144', N'Mauritania', 144)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'145', N'Mayotte', 145)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'146', N'México', 146)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'147', N'Micronesia', 147)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'148', N'Moldavia', 148)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'149', N'Mónaco', 149)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'15', N'Aruba', 15)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'150', N'Mongolia', 150)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'151', N'Montserrat', 151)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'152', N'Mozambique', 152)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'153', N'Myanmar', 153)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'154', N'Namibia', 154)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'155', N'Nauru', 155)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'156', N'Nepal', 156)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'157', N'Nicaragua', 157)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'158', N'Níger', 158)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'159', N'Nigeria', 159)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'16', N'Australia', 16)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'160', N'Niue', 160)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'161', N'Isla Norfolk', 161)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'162', N'Noruega', 162)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'163', N'Nueva Caledonia', 163)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'164', N'Nueva Zelanda', 164)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'165', N'Omán', 165)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'166', N'Países Bajos', 166)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'167', N'Pakistán', 167)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'168', N'Palau', 168)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'169', N'Palestina', 169)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'17', N'Austria', 17)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'170', N'Panamá', 170)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'171', N'Papúa Nueva Guinea', 171)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'172', N'Paraguay', 172)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'173', N'Perú', 173)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'174', N'Islas Pitcairn', 174)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'175', N'Polinesia Francesa', 175)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'176', N'Polonia', 176)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'177', N'Portugal', 177)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'178', N'Puerto Rico', 178)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'179', N'Qatar', 179)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'18', N'Azerbaiyán', 18)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'180', N'Reino Unido', 180)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'181', N'Reunión', 181)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'182', N'Ruanda', 182)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'183', N'Rumania', 183)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'184', N'Rusia', 184)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'185', N'Sahara Occidental', 185)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'186', N'Islas Salomón', 186)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'187', N'Samoa', 187)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'188', N'Samoa Americana', 188)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'189', N'San Cristóbal y Nevis', 189)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'19', N'Bahamas', 19)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'190', N'San Marino', 190)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'191', N'San Pedro y Miquelón', 191)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'192', N'San Vicente y las Granadinas', 192)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'193', N'Santa Helena', 193)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'194', N'Santa Lucía', 194)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'195', N'Santo Tomé y Príncipe', 195)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'196', N'Senegal', 196)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'197', N'Serbia y Montenegro', 197)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'198', N'Seychelles', 198)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'199', N'Sierra Leona', 199)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'2', N'Islas Gland', 2)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'20', N'Bahréin', 20)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'200', N'Singapur', 200)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'201', N'Siria', 201)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'202', N'Somalia', 202)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'203', N'Sri Lanka', 203)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'204', N'Suazilandia', 204)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'205', N'Sudáfrica', 205)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'206', N'Sudán', 206)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'207', N'Suecia', 207)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'208', N'Suiza', 208)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'209', N'Surinam', 209)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'21', N'Bangladesh', 21)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'210', N'Svalbard y Jan Mayen', 210)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'211', N'Tailandia', 211)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'212', N'Taiwán', 212)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'213', N'Tanzania', 213)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'214', N'Tayikistán', 214)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'215', N'Territorio Británico del Océano Índico', 215)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'216', N'Territorios Australes Franceses', 216)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'217', N'Timor Oriental', 217)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'218', N'Togo', 218)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'219', N'Tokelau', 219)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'22', N'Barbados', 22)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'220', N'Tonga', 220)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'221', N'Trinidad y Tobago', 221)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'222', N'Túnez', 222)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'223', N'Islas Turcas y Caicos', 223)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'224', N'Turkmenistán', 224)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'225', N'Turquía', 225)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'226', N'Tuvalu', 226)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'227', N'Ucrania', 227)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'228', N'Uganda', 228)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'229', N'Uruguay', 229)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'23', N'Bielorrusia', 23)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'230', N'Uzbekistán', 230)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'231', N'Vanuatu', 231)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'232', N'Venezuela', 232)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'233', N'Vietnam', 233)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'234', N'Islas Vírgenes Británicas', 234)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'235', N'Islas Vírgenes de los Estados Unidos', 235)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'236', N'Wallis y Futuna', 236)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'237', N'Yemen', 237)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'238', N'Yibuti', 238)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'239', N'Zambia', 239)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'24', N'Bélgica', 24)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'240', N'Zimbabue', 240)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'25', N'Belice', 25)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'26', N'Benin', 26)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'27', N'Bermudas', 27)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'28', N'Bhután', 28)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'29', N'Bolivia', 29)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'3', N'Albania', 3)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'30', N'Bosnia y Herzegovina', 30)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'31', N'Botsuana', 31)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'32', N'Isla Bouvet', 32)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'33', N'Brasil', 33)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'34', N'Brunéi', 34)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'35', N'Bulgaria', 35)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'36', N'Burkina Faso', 36)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'37', N'Burundi', 37)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'38', N'Cabo Verde', 38)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'39', N'Islas Caimán', 39)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'4', N'Alemania', 4)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'40', N'Camboya', 40)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'41', N'Camerún', 41)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'42', N'Canadá', 42)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'43', N'República Centroafricana', 43)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'44', N'Chad', 44)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'45', N'República Checa', 45)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'46', N'Chile', 46)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'47', N'China', 47)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'48', N'Chipre', 48)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'49', N'Isla de Navidad', 49)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'5', N'Andorra', 5)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'50', N'Ciudad del Vaticano', 50)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'51', N'Islas Cocos', 51)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'52', N'Colombia', 52)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'53', N'Comoras', 53)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'54', N'República Democrática del Congo', 54)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'55', N'Congo', 55)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'56', N'Islas Cook', 56)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'57', N'Corea del Norte', 57)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'58', N'Corea del Sur', 58)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'59', N'Costa de Marfil', 59)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'6', N'Angola', 6)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'60', N'Costa Rica', 60)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'61', N'Croacia', 61)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'62', N'Cuba', 62)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'63', N'Dinamarca', 63)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'64', N'Dominica', 64)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'65', N'República Dominicana', 65)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'66', N'Ecuador', 66)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'67', N'Egipto', 67)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'68', N'El Salvador', 68)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'69', N'Emiratos Árabes Unidos', 69)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'7', N'Anguilla', 7)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'70', N'Eritrea', 70)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'71', N'Eslovaquia', 71)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'72', N'Eslovenia', 72)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'73', N'España', 73)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'74', N'Islas ultramarinas de Estados Unidos', 74)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'75', N'Estados Unidos', 75)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'76', N'Estonia', 76)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'77', N'Etiopía', 77)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'78', N'Islas Feroe', 78)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'79', N'Filipinas', 79)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'8', N'Antártida', 8)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'80', N'Finlandia', 80)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'81', N'Fiyi', 81)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'82', N'Francia', 82)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'83', N'Gabón', 83)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'84', N'Gambia', 84)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'85', N'Georgia', 85)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'86', N'Islas Georgias del Sur y Sandwich del Sur', 86)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'87', N'Ghana', 87)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'88', N'Gibraltar', 88)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'89', N'Granada', 89)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'9', N'Antigua y Barbuda', 9)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'90', N'Grecia', 90)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'91', N'Groenlandia', 91)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'92', N'Guadalupe', 92)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'93', N'Guam', 93)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'94', N'Guatemala', 94)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'95', N'Guayana Francesa', 95)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'96', N'Guinea', 96)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'97', N'Guinea Ecuatorial', 97)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'98', N'Guinea-Bissau', 98)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'pais', N'99', N'Guyana', 99)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'tema', N'anexsoft', N'Anexsoft', 1)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'testimonioestado', N'1', N'Pendiente', 1)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'testimonioestado', N'2', N'Aprobado', 2)
GO
INSERT [dbo].[TablaDato] ([Relacion], [Valor], [Descripcion], [Orden]) VALUES (N'testimonioestado', N'3', N'Rechazado', 3)
GO
SET IDENTITY_INSERT [dbo].[Testimonio] ON 

GO
INSERT [dbo].[Testimonio] ([id], [Usuario_id], [IP], [Nombre], [Comentario], [Fecha]) VALUES (1, 3, N'190.192.1.15', N'Pedro', N'Excelente tu curso que estas brindando !!', N'2015-08-14')
GO
INSERT [dbo].[Testimonio] ([id], [Usuario_id], [IP], [Nombre], [Comentario], [Fecha]) VALUES (2, 3, N'190.157.4.78', N'Miguel', N'Muy buen el portafolio  Paul!!', N'2015-08-15')
GO
INSERT [dbo].[Testimonio] ([id], [Usuario_id], [IP], [Nombre], [Comentario], [Fecha]) VALUES (3, 3, N'::1', N'Carlos', N'Excelente profesional, ha demostrado gran desempeño en la empresa SUMMIT SAC.', N'2015-08-18')
GO
SET IDENTITY_INSERT [dbo].[Testimonio] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

GO
INSERT [dbo].[Usuario] ([id], [Nombre], [Apellido], [Email], [Password], [Direccion], [Ciudad], [Pais_id], [Telefono], [Facebook], [Twitter], [YouTube], [Foto]) VALUES (3, N'Paul', N'Orejuela', N'orejuelaip@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', N'Pueblo Libre', N'Lima', 173, N'969733365', N'https://www.facebook.com/paulOrejuela', N'https://twitter.com/OrejuelaJoaquin?lang=es', N'https://twitter.com/OrejuelaJoaquin?lang=es', N'20171210050741.jpg')
GO
INSERT [dbo].[Usuario] ([id], [Nombre], [Apellido], [Email], [Password], [Direccion], [Ciudad], [Pais_id], [Telefono], [Facebook], [Twitter], [YouTube], [Foto]) VALUES (5, N'Miguel', N'Gustamante', N'egustamante@hotmail.com', N'e10adc3949ba59abbe56e057f20f883e', N'Av Picairn 2015 - Ipcairn', N'Pitcaim', 174, N'123123123', NULL, NULL, NULL, N'20150818064259.jpg')
GO
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
ALTER TABLE [dbo].[Experiencia]  WITH CHECK ADD  CONSTRAINT [FK_Experiencia_Usuario] FOREIGN KEY([Usuario_id])
REFERENCES [dbo].[Usuario] ([id])
GO
ALTER TABLE [dbo].[Experiencia] CHECK CONSTRAINT [FK_Experiencia_Usuario]
GO
ALTER TABLE [dbo].[Habilidad]  WITH CHECK ADD  CONSTRAINT [FK_Habilidad_Usuario] FOREIGN KEY([Usuario_id])
REFERENCES [dbo].[Usuario] ([id])
GO
ALTER TABLE [dbo].[Habilidad] CHECK CONSTRAINT [FK_Habilidad_Usuario]
GO
ALTER TABLE [dbo].[Testimonio]  WITH CHECK ADD  CONSTRAINT [FK_Testimonio_Usuario] FOREIGN KEY([Usuario_id])
REFERENCES [dbo].[Usuario] ([id])
GO
ALTER TABLE [dbo].[Testimonio] CHECK CONSTRAINT [FK_Testimonio_Usuario]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1 Trabajo 2 Estudios' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Experiencia', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hasta el 10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Habilidad', @level2type=N'COLUMN',@level2name=N'Dominio'
GO
