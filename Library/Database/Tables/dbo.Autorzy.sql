CREATE TABLE [dbo].[Autorzy] (
  [Id_Autora] [int] IDENTITY (100, 1),
  [Imię] [varchar](30) NOT NULL,
  [Nazwisko] [varchar](50) NOT NULL,
  PRIMARY KEY CLUSTERED ([Id_Autora])
)
ON [PRIMARY]
GO