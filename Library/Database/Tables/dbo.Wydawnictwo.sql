CREATE TABLE [dbo].[Wydawnictwo] (
  [Id_Wydawnictwa] [int] IDENTITY (100, 15),
  [Nazwa] [varchar](50) NOT NULL,
  PRIMARY KEY CLUSTERED ([Id_Wydawnictwa])
)
ON [PRIMARY]
GO