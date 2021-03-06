USE [minifacebook]
GO
/****** Object:  Table [dbo].[comments]    Script Date: 05/05/2020 08:15:00 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comments](
	[postID] [int] NOT NULL,
	[userID] [int] NOT NULL,
	[comment] [varchar](1000) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[friends]    Script Date: 05/05/2020 08:15:00 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[friends](
	[userID] [int] NOT NULL,
	[friendID] [int] NOT NULL,
	[accepted] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[likes]    Script Date: 05/05/2020 08:15:00 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[likes](
	[postID] [int] NOT NULL,
	[userID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[post]    Script Date: 05/05/2020 08:15:00 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[post](
	[postID] [int] IDENTITY(1,1) NOT NULL,
	[userID] [int] NOT NULL,
	[postTxt] [varchar](1000) NOT NULL,
	[postImage] [varchar](255) NULL,
	[postDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[postID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tags]    Script Date: 05/05/2020 08:15:00 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tags](
	[tagID] [int] IDENTITY(1,1) NOT NULL,
	[postID] [int] NULL,
	[userID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 05/05/2020 08:15:00 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[firstName] [varchar](255) NOT NULL,
	[lastName] [varchar](255) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[pwd] [varchar](255) NOT NULL,
	[gender] [varchar](10) NOT NULL,
	[dateJoined] [datetime] NOT NULL,
	[birthday] [datetime] NOT NULL,
	[profilePicture] [varchar](255) NULL,
 CONSTRAINT [PK__users__CB9A1CDFF3170B0D] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[comments] ([postID], [userID], [comment]) VALUES (4, 1, N'comentario 1 prueba')
INSERT [dbo].[comments] ([postID], [userID], [comment]) VALUES (4, 1, N'comentario 2 prueba')
INSERT [dbo].[comments] ([postID], [userID], [comment]) VALUES (4, 1, N'prueba 3 comment comment')
INSERT [dbo].[comments] ([postID], [userID], [comment]) VALUES (3, 1, N'hola comment')
INSERT [dbo].[comments] ([postID], [userID], [comment]) VALUES (4, 1, N'prueba4')
INSERT [dbo].[comments] ([postID], [userID], [comment]) VALUES (4, 1, N'prueba5')
INSERT [dbo].[comments] ([postID], [userID], [comment]) VALUES (5, 1, N'asdfasdfasdfasdfasf')
INSERT [dbo].[comments] ([postID], [userID], [comment]) VALUES (1, 1, N'hola mariana')
INSERT [dbo].[comments] ([postID], [userID], [comment]) VALUES (15, 1, N'comment1 prueba')
INSERT [dbo].[comments] ([postID], [userID], [comment]) VALUES (15, 1, N'asdfasdf')
INSERT [dbo].[comments] ([postID], [userID], [comment]) VALUES (15, 1, N'prueba prueba')
INSERT [dbo].[comments] ([postID], [userID], [comment]) VALUES (1, 1, N'prueba en post con foto de facebook')
INSERT [dbo].[comments] ([postID], [userID], [comment]) VALUES (15, 1, N'prueba5')
INSERT [dbo].[comments] ([postID], [userID], [comment]) VALUES (4, 53, N'prueba6')
INSERT [dbo].[comments] ([postID], [userID], [comment]) VALUES (17, 1, N'comment builder2')
INSERT [dbo].[comments] ([postID], [userID], [comment]) VALUES (17, 1, N'comment 3')
INSERT [dbo].[comments] ([postID], [userID], [comment]) VALUES (4, 1, N'comment builder')
INSERT [dbo].[comments] ([postID], [userID], [comment]) VALUES (28, 1, N'comment')
INSERT [dbo].[comments] ([postID], [userID], [comment]) VALUES (5, 1, N'prueba prueba')
INSERT [dbo].[comments] ([postID], [userID], [comment]) VALUES (1, 1, N'prueba2 foto fb')
INSERT [dbo].[comments] ([postID], [userID], [comment]) VALUES (1, 1, N'prueba3')
INSERT [dbo].[comments] ([postID], [userID], [comment]) VALUES (15, 1, N'prueba4')
INSERT [dbo].[comments] ([postID], [userID], [comment]) VALUES (25, 60, N'primer comment andrea')
INSERT [dbo].[comments] ([postID], [userID], [comment]) VALUES (4, 1, N'prueba7')
INSERT [dbo].[comments] ([postID], [userID], [comment]) VALUES (4, 53, N'prueba8')
INSERT [dbo].[comments] ([postID], [userID], [comment]) VALUES (1, 1, N'prueba4')
INSERT [dbo].[comments] ([postID], [userID], [comment]) VALUES (4, 53, N'prueba9 prueba')
INSERT [dbo].[comments] ([postID], [userID], [comment]) VALUES (17, 1, N'comment builder')
INSERT [dbo].[comments] ([postID], [userID], [comment]) VALUES (4, 1, N'prueba10 mariana')
INSERT [dbo].[comments] ([postID], [userID], [comment]) VALUES (4, 1, N'prueba11 mariana')
INSERT [dbo].[comments] ([postID], [userID], [comment]) VALUES (4, 1, N'prueba12 mariana')
GO
INSERT [dbo].[friends] ([userID], [friendID], [accepted]) VALUES (52, 1, 1)
INSERT [dbo].[friends] ([userID], [friendID], [accepted]) VALUES (1, 52, 1)
INSERT [dbo].[friends] ([userID], [friendID], [accepted]) VALUES (1, 53, 1)
INSERT [dbo].[friends] ([userID], [friendID], [accepted]) VALUES (53, 1, 1)
GO
INSERT [dbo].[likes] ([postID], [userID]) VALUES (28, 1)
INSERT [dbo].[likes] ([postID], [userID]) VALUES (4, 53)
INSERT [dbo].[likes] ([postID], [userID]) VALUES (3, 1)
INSERT [dbo].[likes] ([postID], [userID]) VALUES (14, 1)
INSERT [dbo].[likes] ([postID], [userID]) VALUES (1, 1)
INSERT [dbo].[likes] ([postID], [userID]) VALUES (29, 62)
INSERT [dbo].[likes] ([postID], [userID]) VALUES (17, 1)
INSERT [dbo].[likes] ([postID], [userID]) VALUES (16, 1)
INSERT [dbo].[likes] ([postID], [userID]) VALUES (15, 1)
INSERT [dbo].[likes] ([postID], [userID]) VALUES (13, 1)
INSERT [dbo].[likes] ([postID], [userID]) VALUES (5, 1)
INSERT [dbo].[likes] ([postID], [userID]) VALUES (2, 1)
INSERT [dbo].[likes] ([postID], [userID]) VALUES (25, 60)
INSERT [dbo].[likes] ([postID], [userID]) VALUES (26, 1)
INSERT [dbo].[likes] ([postID], [userID]) VALUES (4, 1)
GO
SET IDENTITY_INSERT [dbo].[post] ON 

INSERT [dbo].[post] ([postID], [userID], [postTxt], [postImage], [postDate]) VALUES (1, 1, N'Hola, soy Mariana', N'C:\Users\Mariana De la Vega\Desktop\Patrones\MiniFacebookVisual\images\fbIcon.png', CAST(N'2020-04-25T23:09:36.360' AS DateTime))
INSERT [dbo].[post] ([postID], [userID], [postTxt], [postImage], [postDate]) VALUES (2, 1, N'¿Qué easdfasdfasdf', N'null', CAST(N'2020-04-26T00:20:03.453' AS DateTime))
INSERT [dbo].[post] ([postID], [userID], [postTxt], [postImage], [postDate]) VALUES (3, 1, N'prueba post 3 mariana de la vega martínez', N'C:\Users\Mariana De la Vega\Desktop\Patrones\MiniFacebookVisual\images\searchIcon.png', CAST(N'2020-04-26T00:21:02.867' AS DateTime))
INSERT [dbo].[post] ([postID], [userID], [postTxt], [postImage], [postDate]) VALUES (4, 53, N'prueba post ceci martinez hola hola ', N'null', CAST(N'2020-04-26T00:27:36.420' AS DateTime))
INSERT [dbo].[post] ([postID], [userID], [postTxt], [postImage], [postDate]) VALUES (5, 1, N'hola post post post ', N'null', CAST(N'2020-04-26T23:10:21.817' AS DateTime))
INSERT [dbo].[post] ([postID], [userID], [postTxt], [postImage], [postDate]) VALUES (6, 1, N'hola hola hola ', N'null', CAST(N'2020-04-27T11:17:53.303' AS DateTime))
INSERT [dbo].[post] ([postID], [userID], [postTxt], [postImage], [postDate]) VALUES (7, 1, N'prueba prueba', N'null', CAST(N'2020-04-27T11:18:44.380' AS DateTime))
INSERT [dbo].[post] ([postID], [userID], [postTxt], [postImage], [postDate]) VALUES (8, 1, N'asdfasdfasdfasdfsfasdf', N'null', CAST(N'2020-04-27T11:19:01.997' AS DateTime))
INSERT [dbo].[post] ([postID], [userID], [postTxt], [postImage], [postDate]) VALUES (9, 1, N'asdfasdfasdfadsf', N'null', CAST(N'2020-04-27T11:27:42.817' AS DateTime))
INSERT [dbo].[post] ([postID], [userID], [postTxt], [postImage], [postDate]) VALUES (10, 1, N'asdfasdfasdfasdfqwerqwerqwerqwer', N'null', CAST(N'2020-04-27T11:28:55.570' AS DateTime))
INSERT [dbo].[post] ([postID], [userID], [postTxt], [postImage], [postDate]) VALUES (11, 1, N'hola hola hola ', N'null', CAST(N'2020-04-27T11:30:31.487' AS DateTime))
INSERT [dbo].[post] ([postID], [userID], [postTxt], [postImage], [postDate]) VALUES (12, 1, N'asdfqwerqwerqwer', N'null', CAST(N'2020-04-27T11:31:04.210' AS DateTime))
INSERT [dbo].[post] ([postID], [userID], [postTxt], [postImage], [postDate]) VALUES (13, 1, N'qwerqwerasdf', N'null', CAST(N'2020-04-27T11:31:11.627' AS DateTime))
INSERT [dbo].[post] ([postID], [userID], [postTxt], [postImage], [postDate]) VALUES (14, 1, N'prueba multiples tags', N'null', CAST(N'2020-04-27T12:06:05.197' AS DateTime))
INSERT [dbo].[post] ([postID], [userID], [postTxt], [postImage], [postDate]) VALUES (15, 1, N'prueba 2 tags', N'null', CAST(N'2020-04-27T12:06:57.273' AS DateTime))
INSERT [dbo].[post] ([postID], [userID], [postTxt], [postImage], [postDate]) VALUES (16, 1, N'prueba post refresh', N'C:\Users\Mariana De la Vega\Desktop\Patrones\MiniFacebookVisual\images\likeIcon2Blue.png', CAST(N'2020-04-27T13:07:54.520' AS DateTime))
INSERT [dbo].[post] ([postID], [userID], [postTxt], [postImage], [postDate]) VALUES (17, 1, N'prueba builder', N'null', CAST(N'2020-04-27T17:15:31.770' AS DateTime))
INSERT [dbo].[post] ([postID], [userID], [postTxt], [postImage], [postDate]) VALUES (18, 1, N'prueba decorator', N'null', CAST(N'2020-04-27T19:23:53.467' AS DateTime))
INSERT [dbo].[post] ([postID], [userID], [postTxt], [postImage], [postDate]) VALUES (19, 1, N'decirator prueba 2', N'null', CAST(N'2020-04-27T19:31:09.677' AS DateTime))
INSERT [dbo].[post] ([postID], [userID], [postTxt], [postImage], [postDate]) VALUES (20, 1, N'tags prueba 3', N'null', CAST(N'2020-04-27T19:41:04.127' AS DateTime))
INSERT [dbo].[post] ([postID], [userID], [postTxt], [postImage], [postDate]) VALUES (21, 1, N'prueba4 decorator', N'null', CAST(N'2020-04-27T19:51:01.533' AS DateTime))
INSERT [dbo].[post] ([postID], [userID], [postTxt], [postImage], [postDate]) VALUES (22, 1, N'prueba 5 decorator', N'null', CAST(N'2020-04-27T19:52:47.960' AS DateTime))
INSERT [dbo].[post] ([postID], [userID], [postTxt], [postImage], [postDate]) VALUES (23, 1, N'6', N'null', CAST(N'2020-04-27T19:54:50.673' AS DateTime))
INSERT [dbo].[post] ([postID], [userID], [postTxt], [postImage], [postDate]) VALUES (24, 1, N'7', N'null', CAST(N'2020-04-27T19:54:56.020' AS DateTime))
INSERT [dbo].[post] ([postID], [userID], [postTxt], [postImage], [postDate]) VALUES (25, 60, N'primer post andrea', N'null', CAST(N'2020-04-28T19:23:00.347' AS DateTime))
INSERT [dbo].[post] ([postID], [userID], [postTxt], [postImage], [postDate]) VALUES (26, 1, N'post ', N'null', CAST(N'2020-04-28T19:32:06.927' AS DateTime))
INSERT [dbo].[post] ([postID], [userID], [postTxt], [postImage], [postDate]) VALUES (27, 53, N'post 29 abril', N'null', CAST(N'2020-04-29T12:31:19.513' AS DateTime))
INSERT [dbo].[post] ([postID], [userID], [postTxt], [postImage], [postDate]) VALUES (28, 1, N'hola', N'C:\Users\Mariana De la Vega\Desktop\Patrones\MiniFacebookVisual\images\fbIcon.png', CAST(N'2020-05-05T18:59:56.997' AS DateTime))
INSERT [dbo].[post] ([postID], [userID], [postTxt], [postImage], [postDate]) VALUES (29, 62, N'prueba post', N'null', CAST(N'2020-05-05T19:11:23.720' AS DateTime))
SET IDENTITY_INSERT [dbo].[post] OFF
GO
SET IDENTITY_INSERT [dbo].[tags] ON 

INSERT [dbo].[tags] ([tagID], [postID], [userID]) VALUES (5, 6, 53)
INSERT [dbo].[tags] ([tagID], [postID], [userID]) VALUES (6, 7, 53)
INSERT [dbo].[tags] ([tagID], [postID], [userID]) VALUES (7, 8, 53)
INSERT [dbo].[tags] ([tagID], [postID], [userID]) VALUES (9, 9, 53)
INSERT [dbo].[tags] ([tagID], [postID], [userID]) VALUES (10, 10, 53)
INSERT [dbo].[tags] ([tagID], [postID], [userID]) VALUES (11, 11, 53)
INSERT [dbo].[tags] ([tagID], [postID], [userID]) VALUES (12, 12, 53)
INSERT [dbo].[tags] ([tagID], [postID], [userID]) VALUES (13, 13, 53)
INSERT [dbo].[tags] ([tagID], [postID], [userID]) VALUES (14, 14, 53)
INSERT [dbo].[tags] ([tagID], [postID], [userID]) VALUES (15, 14, 54)
INSERT [dbo].[tags] ([tagID], [postID], [userID]) VALUES (16, 14, 52)
INSERT [dbo].[tags] ([tagID], [postID], [userID]) VALUES (17, 15, 52)
INSERT [dbo].[tags] ([tagID], [postID], [userID]) VALUES (18, 15, 54)
INSERT [dbo].[tags] ([tagID], [postID], [userID]) VALUES (19, 16, 52)
INSERT [dbo].[tags] ([tagID], [postID], [userID]) VALUES (20, 18, 53)
INSERT [dbo].[tags] ([tagID], [postID], [userID]) VALUES (21, 19, 53)
INSERT [dbo].[tags] ([tagID], [postID], [userID]) VALUES (22, 20, 53)
INSERT [dbo].[tags] ([tagID], [postID], [userID]) VALUES (23, 20, 52)
INSERT [dbo].[tags] ([tagID], [postID], [userID]) VALUES (25, 21, 53)
INSERT [dbo].[tags] ([tagID], [postID], [userID]) VALUES (26, 21, 52)
INSERT [dbo].[tags] ([tagID], [postID], [userID]) VALUES (28, 22, 53)
INSERT [dbo].[tags] ([tagID], [postID], [userID]) VALUES (29, 22, 52)
INSERT [dbo].[tags] ([tagID], [postID], [userID]) VALUES (30, 22, 54)
INSERT [dbo].[tags] ([tagID], [postID], [userID]) VALUES (31, 23, 54)
INSERT [dbo].[tags] ([tagID], [postID], [userID]) VALUES (32, 26, 53)
INSERT [dbo].[tags] ([tagID], [postID], [userID]) VALUES (33, 28, 53)
SET IDENTITY_INSERT [dbo].[tags] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([userID], [firstName], [lastName], [email], [pwd], [gender], [dateJoined], [birthday], [profilePicture]) VALUES (1, N'Mariana', N'DelaVega', N'mariana@gmail.com', N'pwd', N'mujer', CAST(N'2020-04-23T11:43:27.733' AS DateTime), CAST(N'1998-05-21T10:34:09.000' AS DateTime), N'C:\Users\Mariana De la Vega\Desktop\Patrones\MiniFacebookVisual\images\imageIcon.jpg')
INSERT [dbo].[users] ([userID], [firstName], [lastName], [email], [pwd], [gender], [dateJoined], [birthday], [profilePicture]) VALUES (52, N'Santiago', N'De la Vega', N'santiago@gmail.com', N'pwd', N'Hombre', CAST(N'2020-04-24T11:17:35.307' AS DateTime), CAST(N'1994-04-24T00:00:00.000' AS DateTime), N'C:\Users\Mariana De la Vega\Desktop\Patrones\MiniFacebookVisual\images\imageIcon.jpg')
INSERT [dbo].[users] ([userID], [firstName], [lastName], [email], [pwd], [gender], [dateJoined], [birthday], [profilePicture]) VALUES (53, N'Ceci', N'De la Vega', N'ceci@gmail.com', N'pwd', N'Mujer', CAST(N'2020-04-24T19:07:24.020' AS DateTime), CAST(N'1999-04-24T00:00:00.000' AS DateTime), N'C:\Users\Mariana De la Vega\Desktop\Patrones\MiniFacebookVisual\images\fbIcon.png')
INSERT [dbo].[users] ([userID], [firstName], [lastName], [email], [pwd], [gender], [dateJoined], [birthday], [profilePicture]) VALUES (54, N'Humberto', N'De la Vega', N'humberto@gmail.com', N'pwd', N'Hombre', CAST(N'2020-04-24T19:08:05.213' AS DateTime), CAST(N'1999-04-24T00:00:00.000' AS DateTime), N'C:\Users\Mariana De la Vega\Desktop\Patrones\MiniFacebookVisual\images\socialNetwork.png')
INSERT [dbo].[users] ([userID], [firstName], [lastName], [email], [pwd], [gender], [dateJoined], [birthday], [profilePicture]) VALUES (57, N'Emmanuel', N'Centeno', N'emmanuel@gmail.com', N'12345678', N'Hombre', CAST(N'2020-04-28T13:25:16.907' AS DateTime), CAST(N'1996-04-28T00:00:00.000' AS DateTime), N'C:\Users\Mariana De la Vega\Desktop\Patrones\MiniFacebookVisual\images\profileIcon.png')
INSERT [dbo].[users] ([userID], [firstName], [lastName], [email], [pwd], [gender], [dateJoined], [birthday], [profilePicture]) VALUES (60, N'Andrea', N'Cruz', N'andrea@gmail.com', N'12345678', N'Mujer', CAST(N'2020-04-28T13:34:30.323' AS DateTime), CAST(N'1999-04-28T00:00:00.000' AS DateTime), N'C:\Users\Mariana De la Vega\Desktop\Patrones\MiniFacebookVisual\images\profileIcon.png')
INSERT [dbo].[users] ([userID], [firstName], [lastName], [email], [pwd], [gender], [dateJoined], [birthday], [profilePicture]) VALUES (61, N'Tere', N'Jiménez', N'tere@gmail.com', N'12345678', N'Mujer', CAST(N'2020-04-28T19:20:41.823' AS DateTime), CAST(N'1998-03-10T00:00:00.000' AS DateTime), N'C:\Users\Mariana De la Vega\Desktop\Patrones\MiniFacebookVisual\images\friendIcon.png')
INSERT [dbo].[users] ([userID], [firstName], [lastName], [email], [pwd], [gender], [dateJoined], [birthday], [profilePicture]) VALUES (62, N'Prueba', N'5 mayo', N'prueba5mayo@gmail.com', N'12345678', N'Hombre', CAST(N'2020-05-05T19:11:01.460' AS DateTime), CAST(N'1998-05-05T00:00:00.000' AS DateTime), N'C:\Users\Mariana De la Vega\Desktop\Patrones\MiniFacebookVisual\images\profileIcon.png')
SET IDENTITY_INSERT [dbo].[users] OFF
GO
