CREATE TABLE [dbo].[Pracownicy] (
  [Id_Pracownicy] [int] IDENTITY (1000, 1),
  [Imię] [varchar](30) NOT NULL,
  [Nazwisko] [varchar](50) NOT NULL,
  [Id_Rola] [int] NULL,
  [Data_Utworzenia] [date] NOT NULL,
  PRIMARY KEY CLUSTERED ([Id_Pracownicy])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Pracownicy]
  ADD FOREIGN KEY ([Id_Rola]) REFERENCES [dbo].[Rola] ([Id_Rola]) ON UPDATE CASCADE
GO