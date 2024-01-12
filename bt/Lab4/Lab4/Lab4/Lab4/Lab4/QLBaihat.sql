/****** Object:  Table [dbo].[Artist]    Script Date: 10/26/2011 19:54:24 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[Artist]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[Artist]
GO
/****** Object:  Table [dbo].[AlbumSong]    Script Date: 10/26/2011 19:54:24 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[AlbumSong]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[AlbumSong]
GO
/****** Object:  Table [dbo].[Album]    Script Date: 10/26/2011 19:54:24 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[Album]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[Album]
GO
/****** Object:  Table [dbo].[Song]    Script Date: 10/26/2011 19:54:24 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[Song]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[Song]
GO
/****** Object:  Table [dbo].[Genres]    Script Date: 10/26/2011 19:54:24 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[Genres]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[Genres]
GO
/****** Object:  Table [dbo].[Genres]    Script Date: 10/26/2011 19:54:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[Genres]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[Genres](
	[GenreID] [int] NOT NULL,
	[GenreName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Genres] PRIMARY KEY CLUSTERED 
(
	[GenreID] ASC
)
)
END
GO
INSERT [dbo].[Genres] ([GenreID], [GenreName]) VALUES (1, convert(text, N'POP' collate SQL_Latin1_General_CP1_CI_AS))
INSERT [dbo].[Genres] ([GenreID], [GenreName]) VALUES (2, convert(text, N'Rock' collate SQL_Latin1_General_CP1_CI_AS))
INSERT [dbo].[Genres] ([GenreID], [GenreName]) VALUES (3, convert(text, N'Country' collate SQL_Latin1_General_CP1_CI_AS))
INSERT [dbo].[Genres] ([GenreID], [GenreName]) VALUES (4, convert(text, N'Jazz' collate SQL_Latin1_General_CP1_CI_AS))
INSERT [dbo].[Genres] ([GenreID], [GenreName]) VALUES (5, convert(text, N'Hiphop' collate SQL_Latin1_General_CP1_CI_AS))
/****** Object:  Table [dbo].[Song]    Script Date: 10/26/2011 19:54:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[Song]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[Song](
	[SongID] [int] NOT NULL,
	[SongName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[GenreID] [int] NULL,
	[ArtistID] [int] NULL,
 CONSTRAINT [PK_Song] PRIMARY KEY CLUSTERED 
(
	[SongID] ASC
)
)
END
GO
INSERT [dbo].[Song] ([SongID], [SongName], [GenreID], [ArtistID]) VALUES (1, convert(text, N'Happy New year' collate SQL_Latin1_General_CP1_CI_AS), 1, 1)
INSERT [dbo].[Song] ([SongID], [SongName], [GenreID], [ArtistID]) VALUES (2, convert(text, N'Dancing Queen' collate SQL_Latin1_General_CP1_CI_AS), 1, 1)
INSERT [dbo].[Song] ([SongID], [SongName], [GenreID], [ArtistID]) VALUES (3, convert(text, N'No Matter What' collate SQL_Latin1_General_CP1_CI_AS), 1, 2)
INSERT [dbo].[Song] ([SongID], [SongName], [GenreID], [ArtistID]) VALUES (4, convert(text, N'Ill Never Break your heart' collate SQL_Latin1_General_CP1_CI_AS), 1, 3)
INSERT [dbo].[Song] ([SongID], [SongName], [GenreID], [ArtistID]) VALUES (5, convert(text, N'As long as you love me' collate SQL_Latin1_General_CP1_CI_AS), 1, 3)
INSERT [dbo].[Song] ([SongID], [SongName], [GenreID], [ArtistID]) VALUES (6, convert(text, N'Soledad' collate SQL_Latin1_General_CP1_CI_AS), 1, 2)
INSERT [dbo].[Song] ([SongID], [SongName], [GenreID], [ArtistID]) VALUES (7, convert(text, N'Seasons in the sun  ' collate SQL_Latin1_General_CP1_CI_AS), 2, 3)
INSERT [dbo].[Song] ([SongID], [SongName], [GenreID], [ArtistID]) VALUES (8, convert(text, N'Too hard to say good bye  ' collate SQL_Latin1_General_CP1_CI_AS), 3, 2)
INSERT [dbo].[Song] ([SongID], [SongName], [GenreID], [ArtistID]) VALUES (9, convert(text, N'All out of love  ' collate SQL_Latin1_General_CP1_CI_AS), 4, 3)
INSERT [dbo].[Song] ([SongID], [SongName], [GenreID], [ArtistID]) VALUES (10, convert(text, N'The unforgiven II' collate SQL_Latin1_General_CP1_CI_AS), 5, 4)
INSERT [dbo].[Song] ([SongID], [SongName], [GenreID], [ArtistID]) VALUES (11, convert(text, N'Nothing else matters  ' collate SQL_Latin1_General_CP1_CI_AS), 1, 5)
INSERT [dbo].[Song] ([SongID], [SongName], [GenreID], [ArtistID]) VALUES (12, convert(text, N'My Apocalypse  ' collate SQL_Latin1_General_CP1_CI_AS), 2, 6)
INSERT [dbo].[Song] ([SongID], [SongName], [GenreID], [ArtistID]) VALUES (13, convert(text, N'One' collate SQL_Latin1_General_CP1_CI_AS), 3, 1)
INSERT [dbo].[Song] ([SongID], [SongName], [GenreID], [ArtistID]) VALUES (14, convert(text, N'I Don’t want to miss a thing  ' collate SQL_Latin1_General_CP1_CI_AS), 4, 2)
INSERT [dbo].[Song] ([SongID], [SongName], [GenreID], [ArtistID]) VALUES (15, convert(text, N'Dream on  ' collate SQL_Latin1_General_CP1_CI_AS), 5, 3)
INSERT [dbo].[Song] ([SongID], [SongName], [GenreID], [ArtistID]) VALUES (16, convert(text, N'Lay it down  ' collate SQL_Latin1_General_CP1_CI_AS), 1, 4)
INSERT [dbo].[Song] ([SongID], [SongName], [GenreID], [ArtistID]) VALUES (17, convert(text, N'Kings and Queens  ' collate SQL_Latin1_General_CP1_CI_AS), 1, 5)
INSERT [dbo].[Song] ([SongID], [SongName], [GenreID], [ArtistID]) VALUES (18, convert(text, N'Back to December  ' collate SQL_Latin1_General_CP1_CI_AS), 2, 6)
INSERT [dbo].[Song] ([SongID], [SongName], [GenreID], [ArtistID]) VALUES (19, convert(text, N'White Horse  ' collate SQL_Latin1_General_CP1_CI_AS), 3, 3)
INSERT [dbo].[Song] ([SongID], [SongName], [GenreID], [ArtistID]) VALUES (20, convert(text, N'Tell me why  ' collate SQL_Latin1_General_CP1_CI_AS), 4, 3)
INSERT [dbo].[Song] ([SongID], [SongName], [GenreID], [ArtistID]) VALUES (21, convert(text, N'Beautiful Eyes' collate SQL_Latin1_General_CP1_CI_AS), 5, 4)
INSERT [dbo].[Song] ([SongID], [SongName], [GenreID], [ArtistID]) VALUES (22, convert(text, N'What a Wonderful World   ' collate SQL_Latin1_General_CP1_CI_AS), 1, 4)
INSERT [dbo].[Song] ([SongID], [SongName], [GenreID], [ArtistID]) VALUES (23, convert(text, N'A Kiss to Build a Dream On   ' collate SQL_Latin1_General_CP1_CI_AS), 1, 5)
INSERT [dbo].[Song] ([SongID], [SongName], [GenreID], [ArtistID]) VALUES (24, convert(text, N'Fall Again   ' collate SQL_Latin1_General_CP1_CI_AS), 2, 5)
INSERT [dbo].[Song] ([SongID], [SongName], [GenreID], [ArtistID]) VALUES (25, convert(text, N'Forever in Love  ' collate SQL_Latin1_General_CP1_CI_AS), 2, 5)
INSERT [dbo].[Song] ([SongID], [SongName], [GenreID], [ArtistID]) VALUES (26, convert(text, N'Songbird' collate SQL_Latin1_General_CP1_CI_AS), 2, 5)
INSERT [dbo].[Song] ([SongID], [SongName], [GenreID], [ArtistID]) VALUES (27, convert(text, N'Sa la la' collate SQL_Latin1_General_CP1_CI_AS), 2, 1)
/****** Object:  Table [dbo].[Album]    Script Date: 10/26/2011 19:54:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[Album]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[Album](
	[AlbumID] [int] NOT NULL,
	[TenAlbum] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Ngaytao] [smalldatetime] NULL
)
END
GO
/****** Object:  Table [dbo].[AlbumSong]    Script Date: 10/26/2011 19:54:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[AlbumSong]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[AlbumSong](
	[AlbumID] [int] NOT NULL,
	[SongID] [int] NOT NULL,
 CONSTRAINT [PK_AlbumSong] PRIMARY KEY CLUSTERED 
(
	[AlbumID] ASC,
	[SongID] ASC
)
)
END
GO
/****** Object:  Table [dbo].[Artist]    Script Date: 10/26/2011 19:54:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[Artist]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[Artist](
	[ArtistID] [int] NOT NULL,
	[TenArtist] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Artist] PRIMARY KEY CLUSTERED 
(
	[ArtistID] ASC
)
)
END
GO
INSERT [dbo].[Artist] ([ArtistID], [TenArtist]) VALUES (1, convert(text, N'Boyzone' collate SQL_Latin1_General_CP1_CI_AS))
INSERT [dbo].[Artist] ([ArtistID], [TenArtist]) VALUES (2, convert(text, N'BackStreets Boy' collate SQL_Latin1_General_CP1_CI_AS))
INSERT [dbo].[Artist] ([ArtistID], [TenArtist]) VALUES (3, convert(text, N'WestLife' collate SQL_Latin1_General_CP1_CI_AS))
INSERT [dbo].[Artist] ([ArtistID], [TenArtist]) VALUES (4, convert(text, N'Metallica' collate SQL_Latin1_General_CP1_CI_AS))
INSERT [dbo].[Artist] ([ArtistID], [TenArtist]) VALUES (5, convert(text, N'Metallica' collate SQL_Latin1_General_CP1_CI_AS))
INSERT [dbo].[Artist] ([ArtistID], [TenArtist]) VALUES (6, convert(text, N'Aerossmith' collate SQL_Latin1_General_CP1_CI_AS))
