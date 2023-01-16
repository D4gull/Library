CREATE TABLE [dbo].[Czytelnicy] (
  [Id_Czytelnika] [int] IDENTITY (1000, 1),
  [Imię] [varchar](30) NOT NULL,
  [Nazwisko] [varchar](50) NOT NULL,
  [Nr_Telefonu] [varchar](15) NOT NULL,
  [E_mail] [varchar](40) NULL,
  [Data_Dołączenia] [date] NOT NULL,
  PRIMARY KEY CLUSTERED ([Id_Czytelnika]),
  CHECK ((len([E_mail])-len(replace([E_mail],'@','')))>(0))
)
ON [PRIMARY]
GO