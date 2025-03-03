CREATE TABLE [dbo].[dimmedico](
    [codMedico] [int] NOT NULL,
	[dni] [varchar](20) NOT NULL,
	[apPaterno] [varchar](50),
	[apMaterno] [varchar](50),
	[nombres] [varchar](50) NOT NULL,
	[fechaNacimiento] [date],
	[codDirector] [int] NOT NULL,
	CONSTRAINT AK_dni UNIQUE (dni),
	CONSTRAINT [PK_Medico] PRIMARY KEY (codMedico)
)
GO
