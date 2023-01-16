CREATE TABLE [dbo].[Książki] (
  [Id_Książki] [int] IDENTITY,
  [Tytuł] [varchar](50) NOT NULL,
  [Id_Wydawnictwa] [int] NULL,
  [Id_Autora] [int] NULL,
  [ISBN] [varchar](30) NOT NULL,
  [Liczba_Stron] [smallint] NOT NULL,
  [Rok_Wydania] [date] NOT NULL,
  [Uwagi] [varchar](500) NULL,
  PRIMARY KEY CLUSTERED ([Id_Książki]),
  UNIQUE ([ISBN]),
  CHECK ([Liczba_Stron]>=(50) AND [Liczba_Stron]<=(3000))
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Książki]
  ADD FOREIGN KEY ([Id_Autora]) REFERENCES [dbo].[Autorzy] ([Id_Autora]) ON UPDATE CASCADE
GO

ALTER TABLE [dbo].[Książki]
  ADD FOREIGN KEY ([Id_Wydawnictwa]) REFERENCES [dbo].[Wydawnictwo] ([Id_Wydawnictwa]) ON UPDATE CASCADE
GO