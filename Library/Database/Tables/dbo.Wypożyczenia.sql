CREATE TABLE [dbo].[Wypożyczenia] (
  [Id_Wypożyczenia] [int] IDENTITY,
  [Data_Wypożyczenia] [date] NOT NULL,
  [Id_Książki] [int] NULL,
  [Id_Pracownika_Wypożyczenie] [int] NULL,
  [Id_Czytelnika] [int] NULL,
  [Data_Oddania] [date] NOT NULL,
  [Oddano] [bit] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([Id_Wypożyczenia])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Wypożyczenia]
  ADD FOREIGN KEY ([Id_Czytelnika]) REFERENCES [dbo].[Czytelnicy] ([Id_Czytelnika]) ON UPDATE CASCADE
GO

ALTER TABLE [dbo].[Wypożyczenia]
  ADD FOREIGN KEY ([Id_Książki]) REFERENCES [dbo].[Książki] ([Id_Książki]) ON UPDATE CASCADE
GO

ALTER TABLE [dbo].[Wypożyczenia]
  ADD FOREIGN KEY ([Id_Pracownika_Wypożyczenie]) REFERENCES [dbo].[Pracownicy] ([Id_Pracownicy]) ON UPDATE CASCADE
GO