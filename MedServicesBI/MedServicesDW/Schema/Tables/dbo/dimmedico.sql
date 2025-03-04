CREATE TABLE [dbo].[dimmedico](
    [codMedico] [int] IDENTITY(1,1) NOT NULL,
	[dni] [varchar](20) NOT NULL,
	[apPaterno] [varchar](50),
	[apMaterno] [varchar](50),
	[nombres] [varchar](50) NOT NULL,
	[fechaNacimiento] [date],
	[codDirector] [int] NOT NULL,
	CONSTRAINT [PK_Medico] PRIMARY KEY (codMedico)
)
GO
