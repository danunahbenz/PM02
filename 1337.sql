USE [PM02Zhuykov]
GO
/****** Object:  Table [dbo].[Детали]    Script Date: 06.05.2025 13:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Детали](
	[ДетальID] [int] IDENTITY(1,1) NOT NULL,
	[Имя] [varchar](255) NOT NULL,
	[Описание] [text] NULL,
 CONSTRAINT [PK__Детали__363461CFE5BE8528] PRIMARY KEY CLUSTERED 
(
	[ДетальID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ДеталиЗаказов]    Script Date: 06.05.2025 13:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ДеталиЗаказов](
	[ДетальЗаказаID] [int] IDENTITY(1,1) NOT NULL,
	[ЗаказID] [int] NOT NULL,
	[ПутьКФайлу] [varchar](255) NULL,
	[Описание] [text] NULL,
 CONSTRAINT [PK__ДеталиЗа__10F8120BD8228F7F] PRIMARY KEY CLUSTERED 
(
	[ДетальЗаказаID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Заказы]    Script Date: 06.05.2025 13:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Заказы](
	[ЗаказID] [int] IDENTITY(1,1) NOT NULL,
	[КлиентID] [int] NOT NULL,
	[ИзделиеID] [int] NOT NULL,
	[ДатаЗаказа] [datetime] NULL,
 CONSTRAINT [PK__Заказы__D9B7FE454FA47939] PRIMARY KEY CLUSTERED 
(
	[ЗаказID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Изделия]    Script Date: 06.05.2025 13:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Изделия](
	[ИзделиеID] [int] IDENTITY(1,1) NOT NULL,
	[Имя] [varchar](255) NOT NULL,
	[Описание] [text] NULL,
	[ДатаСоздания] [datetime] NULL,
	[КлиентID] [int] NULL,
 CONSTRAINT [PK__Изделия__0D8A8A1DDF729124] PRIMARY KEY CLUSTERED 
(
	[ИзделиеID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Клиенты]    Script Date: 06.05.2025 13:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Клиенты](
	[КлиентID] [int] IDENTITY(1,1) NOT NULL,
	[Имя] [varchar](255) NOT NULL,
	[КонтактнаяИнформация] [varchar](255) NULL,
 CONSTRAINT [PK__Клиенты__E9EF66DA0853A4B6] PRIMARY KEY CLUSTERED 
(
	[КлиентID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[КомпонентыСборочныхЕдиниц]    Script Date: 06.05.2025 13:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[КомпонентыСборочныхЕдиниц](
	[КомпонентСборочнойЕдиницыID] [int] IDENTITY(1,1) NOT NULL,
	[СборочнаяЕдиницаID] [int] NOT NULL,
	[ТипКомпонента] [nvarchar](20) NOT NULL,
	[КомпонентID] [int] NOT NULL,
	[Количество] [int] NOT NULL,
 CONSTRAINT [PK__Компонен__5BE0DBA8156EA8C1] PRIMARY KEY CLUSTERED 
(
	[КомпонентСборочнойЕдиницыID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Материалы]    Script Date: 06.05.2025 13:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Материалы](
	[МатериалID] [int] IDENTITY(1,1) NOT NULL,
	[Имя] [varchar](255) NOT NULL,
	[Количество] [int] NOT NULL,
	[ОсновнойПоставщикID] [int] NULL,
 CONSTRAINT [PK__Материал__FC2618DD0BB7674B] PRIMARY KEY CLUSTERED 
(
	[МатериалID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[МатериалыДляИзделий]    Script Date: 06.05.2025 13:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[МатериалыДляИзделий](
	[МатериалДляИзделияID] [int] IDENTITY(1,1) NOT NULL,
	[ИзделиеID] [int] NOT NULL,
	[МатериалID] [int] NOT NULL,
	[Количество] [int] NOT NULL,
 CONSTRAINT [PK__Материал__40F373A438800B80] PRIMARY KEY CLUSTERED 
(
	[МатериалДляИзделияID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Операции]    Script Date: 06.05.2025 13:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Операции](
	[ОперацияID] [int] IDENTITY(1,1) NOT NULL,
	[ТипОборудования] [varchar](255) NOT NULL,
	[Длительность] [int] NOT NULL,
 CONSTRAINT [PK__Операции__05D0F102E3AD064C] PRIMARY KEY CLUSTERED 
(
	[ОперацияID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Пользователи]    Script Date: 06.05.2025 13:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Пользователи](
	[ID] [int] NOT NULL,
	[Имя] [nvarchar](50) NOT NULL,
	[Логин] [nvarchar](50) NOT NULL,
	[Пароль] [nvarchar](50) NOT NULL,
	[IP_Адрес] [nvarchar](50) NOT NULL,
	[Последний_вход] [date] NOT NULL,
	[Услуги] [nvarchar](100) NOT NULL,
	[Тип] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Пользователи] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Поставщики]    Script Date: 06.05.2025 13:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Поставщики](
	[ПоставщикID] [int] IDENTITY(1,1) NOT NULL,
	[Имя] [varchar](255) NOT NULL,
	[ВремяДоставки] [int] NOT NULL,
 CONSTRAINT [PK__Поставщи__70CFD93B4AE4D468] PRIMARY KEY CLUSTERED 
(
	[ПоставщикID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[РазмерыДеталей]    Script Date: 06.05.2025 13:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[РазмерыДеталей](
	[РазмерДеталиID] [int] IDENTITY(1,1) NOT NULL,
	[ДетальID] [int] NOT NULL,
	[ИмяРазмер] [varchar](255) NOT NULL,
	[ЕдиницаИзмерения] [varchar](50) NOT NULL,
	[Значение] [float] NOT NULL,
 CONSTRAINT [PK__РазмерыД__8CCCB4479BE90C9A] PRIMARY KEY CLUSTERED 
(
	[РазмерДеталиID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[РазмерыИзделий]    Script Date: 06.05.2025 13:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[РазмерыИзделий](
	[РазмерID] [int] IDENTITY(1,1) NOT NULL,
	[ИзделиеID] [int] NOT NULL,
	[ИмяРазмер] [varchar](255) NOT NULL,
	[ЕдиницаИзмерения] [varchar](50) NOT NULL,
	[Значение] [float] NOT NULL,
 CONSTRAINT [PK__РазмерыИ__76039280B87892E8] PRIMARY KEY CLUSTERED 
(
	[РазмерID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[СборочныеЕдиницы]    Script Date: 06.05.2025 13:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[СборочныеЕдиницы](
	[СборочнаяЕдиницаID] [int] IDENTITY(1,1) NOT NULL,
	[Имя] [varchar](255) NOT NULL,
	[Описание] [text] NULL,
	[РодительИзделиеID] [int] NULL,
 CONSTRAINT [PK__Сборочны__0AFD7F6FEBD0BF17] PRIMARY KEY CLUSTERED 
(
	[СборочнаяЕдиницаID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Спецификации]    Script Date: 06.05.2025 13:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Спецификации](
	[СпецификацияID] [int] IDENTITY(1,1) NOT NULL,
	[ИзделиеID] [int] NOT NULL,
	[ОперацияID] [int] NOT NULL,
 CONSTRAINT [PK__Специфик__48189284D8FB2A1A] PRIMARY KEY CLUSTERED 
(
	[СпецификацияID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Услуги]    Script Date: 06.05.2025 13:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Услуги](
	[Код] [int] NOT NULL,
	[Услуга] [nvarchar](50) NOT NULL,
	[Цена] [float] NOT NULL,
 CONSTRAINT [PK_Услуги] PRIMARY KEY CLUSTERED 
(
	[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Фурнитура]    Script Date: 06.05.2025 13:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Фурнитура](
	[ФурнитураID] [int] IDENTITY(1,1) NOT NULL,
	[Имя] [varchar](255) NOT NULL,
	[Количество] [int] NOT NULL,
	[ОсновнойПоставщикID] [int] NULL,
 CONSTRAINT [PK__Фурнитур__C13F1F38D2FCCC84] PRIMARY KEY CLUSTERED 
(
	[ФурнитураID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ФурнитураДляИзделий]    Script Date: 06.05.2025 13:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ФурнитураДляИзделий](
	[ФурнитураДляИзделияID] [int] IDENTITY(1,1) NOT NULL,
	[ИзделиеID] [int] NOT NULL,
	[ФурнитураID] [int] NOT NULL,
	[Количество] [int] NOT NULL,
 CONSTRAINT [PK__Фурнитур__5288D58F359CA80F] PRIMARY KEY CLUSTERED 
(
	[ФурнитураДляИзделияID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Заказы] ADD  CONSTRAINT [DF__Заказы__ДатаЗака__02FC7413]  DEFAULT (getdate()) FOR [ДатаЗаказа]
GO
ALTER TABLE [dbo].[Изделия] ADD  CONSTRAINT [DF__Изделия__ДатаСоз__7F2BE32F]  DEFAULT (getdate()) FOR [ДатаСоздания]
GO
ALTER TABLE [dbo].[Материалы] ADD  CONSTRAINT [DF__Материалы__Колич__778AC167]  DEFAULT ((0)) FOR [Количество]
GO
ALTER TABLE [dbo].[Фурнитура] ADD  CONSTRAINT [DF__Фурнитура__Колич__7B5B524B]  DEFAULT ((0)) FOR [Количество]
GO
ALTER TABLE [dbo].[ДеталиЗаказов]  WITH CHECK ADD  CONSTRAINT [FK__ДеталиЗак__Заказ__07C12930] FOREIGN KEY([ЗаказID])
REFERENCES [dbo].[Заказы] ([ЗаказID])
GO
ALTER TABLE [dbo].[ДеталиЗаказов] CHECK CONSTRAINT [FK__ДеталиЗак__Заказ__07C12930]
GO
ALTER TABLE [dbo].[Заказы]  WITH CHECK ADD  CONSTRAINT [FK__Заказы__ИзделиеI__04E4BC85] FOREIGN KEY([ИзделиеID])
REFERENCES [dbo].[Изделия] ([ИзделиеID])
GO
ALTER TABLE [dbo].[Заказы] CHECK CONSTRAINT [FK__Заказы__ИзделиеI__04E4BC85]
GO
ALTER TABLE [dbo].[Заказы]  WITH CHECK ADD  CONSTRAINT [FK__Заказы__КлиентID__03F0984C] FOREIGN KEY([КлиентID])
REFERENCES [dbo].[Клиенты] ([КлиентID])
GO
ALTER TABLE [dbo].[Заказы] CHECK CONSTRAINT [FK__Заказы__КлиентID__03F0984C]
GO
ALTER TABLE [dbo].[Изделия]  WITH CHECK ADD  CONSTRAINT [FK__Изделия__КлиентI__00200768] FOREIGN KEY([КлиентID])
REFERENCES [dbo].[Клиенты] ([КлиентID])
GO
ALTER TABLE [dbo].[Изделия] CHECK CONSTRAINT [FK__Изделия__КлиентI__00200768]
GO
ALTER TABLE [dbo].[КомпонентыСборочныхЕдиниц]  WITH CHECK ADD  CONSTRAINT [FK__Компонент__Сборо__17F790F9] FOREIGN KEY([СборочнаяЕдиницаID])
REFERENCES [dbo].[СборочныеЕдиницы] ([СборочнаяЕдиницаID])
GO
ALTER TABLE [dbo].[КомпонентыСборочныхЕдиниц] CHECK CONSTRAINT [FK__Компонент__Сборо__17F790F9]
GO
ALTER TABLE [dbo].[Материалы]  WITH CHECK ADD  CONSTRAINT [FK__Материалы__Основ__787EE5A0] FOREIGN KEY([ОсновнойПоставщикID])
REFERENCES [dbo].[Поставщики] ([ПоставщикID])
GO
ALTER TABLE [dbo].[Материалы] CHECK CONSTRAINT [FK__Материалы__Основ__787EE5A0]
GO
ALTER TABLE [dbo].[МатериалыДляИзделий]  WITH CHECK ADD  CONSTRAINT [FK__Материалы__Издел__1AD3FDA4] FOREIGN KEY([ИзделиеID])
REFERENCES [dbo].[Изделия] ([ИзделиеID])
GO
ALTER TABLE [dbo].[МатериалыДляИзделий] CHECK CONSTRAINT [FK__Материалы__Издел__1AD3FDA4]
GO
ALTER TABLE [dbo].[МатериалыДляИзделий]  WITH CHECK ADD  CONSTRAINT [FK__Материалы__Матер__1BC821DD] FOREIGN KEY([МатериалID])
REFERENCES [dbo].[Материалы] ([МатериалID])
GO
ALTER TABLE [dbo].[МатериалыДляИзделий] CHECK CONSTRAINT [FK__Материалы__Матер__1BC821DD]
GO
ALTER TABLE [dbo].[РазмерыДеталей]  WITH CHECK ADD  CONSTRAINT [FK_РазмерыДеталей_Детали] FOREIGN KEY([ДетальID])
REFERENCES [dbo].[Детали] ([ДетальID])
GO
ALTER TABLE [dbo].[РазмерыДеталей] CHECK CONSTRAINT [FK_РазмерыДеталей_Детали]
GO
ALTER TABLE [dbo].[РазмерыИзделий]  WITH CHECK ADD  CONSTRAINT [FK__РазмерыИз__Издел__0E6E26BF] FOREIGN KEY([ИзделиеID])
REFERENCES [dbo].[Изделия] ([ИзделиеID])
GO
ALTER TABLE [dbo].[РазмерыИзделий] CHECK CONSTRAINT [FK__РазмерыИз__Издел__0E6E26BF]
GO
ALTER TABLE [dbo].[СборочныеЕдиницы]  WITH CHECK ADD  CONSTRAINT [FK__Сборочные__Родит__151B244E] FOREIGN KEY([РодительИзделиеID])
REFERENCES [dbo].[Изделия] ([ИзделиеID])
GO
ALTER TABLE [dbo].[СборочныеЕдиницы] CHECK CONSTRAINT [FK__Сборочные__Родит__151B244E]
GO
ALTER TABLE [dbo].[Спецификации]  WITH CHECK ADD  CONSTRAINT [FK_Спецификации_Изделия] FOREIGN KEY([ИзделиеID])
REFERENCES [dbo].[Изделия] ([ИзделиеID])
GO
ALTER TABLE [dbo].[Спецификации] CHECK CONSTRAINT [FK_Спецификации_Изделия]
GO
ALTER TABLE [dbo].[Спецификации]  WITH CHECK ADD  CONSTRAINT [FK_Спецификации_Операции] FOREIGN KEY([ОперацияID])
REFERENCES [dbo].[Операции] ([ОперацияID])
GO
ALTER TABLE [dbo].[Спецификации] CHECK CONSTRAINT [FK_Спецификации_Операции]
GO
ALTER TABLE [dbo].[Фурнитура]  WITH CHECK ADD  CONSTRAINT [FK__Фурнитура__Основ__7C4F7684] FOREIGN KEY([ОсновнойПоставщикID])
REFERENCES [dbo].[Поставщики] ([ПоставщикID])
GO
ALTER TABLE [dbo].[Фурнитура] CHECK CONSTRAINT [FK__Фурнитура__Основ__7C4F7684]
GO
ALTER TABLE [dbo].[ФурнитураДляИзделий]  WITH CHECK ADD  CONSTRAINT [FK__Фурнитура__Издел__1EA48E88] FOREIGN KEY([ИзделиеID])
REFERENCES [dbo].[Изделия] ([ИзделиеID])
GO
ALTER TABLE [dbo].[ФурнитураДляИзделий] CHECK CONSTRAINT [FK__Фурнитура__Издел__1EA48E88]
GO
ALTER TABLE [dbo].[ФурнитураДляИзделий]  WITH CHECK ADD  CONSTRAINT [FK__Фурнитура__Фурни__1F98B2C1] FOREIGN KEY([ФурнитураID])
REFERENCES [dbo].[Фурнитура] ([ФурнитураID])
GO
ALTER TABLE [dbo].[ФурнитураДляИзделий] CHECK CONSTRAINT [FK__Фурнитура__Фурни__1F98B2C1]
GO
