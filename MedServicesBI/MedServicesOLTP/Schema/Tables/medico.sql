SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [servicios].[medico](
	[codMedico] [int] NOT NULL,
	[dni] [int] NOT NULL,
	[apPaterno] [varchar](200) NULL,
	[apMaterno] [varchar](200) NULL,
	[nombres] [varchar](200) NULL,
	[fechaNacimiento] [date],
	CONSTRAINT [PK_Medico] PRIMARY KEY (codMedico)
)
GO