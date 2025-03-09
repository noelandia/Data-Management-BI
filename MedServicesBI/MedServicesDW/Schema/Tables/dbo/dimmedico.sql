CREATE TABLE [dbo].[DimMedico](
    [codMedicoSK] [int] IDENTITY(1,1) NOT NULL,
	[codMedico] [int] NOT NULL,
	[dni] [varchar](20) NOT NULL,
	[apPaterno] [varchar](50),
	[apMaterno] [varchar](50),
	[nombres] [varchar](50) NOT NULL,
	[fechaNacimiento] [date],
	[codDirector] [int] NULL,
	CONSTRAINT [PK_DimMedico] PRIMARY KEY (codMedicoSK)
)
GO
