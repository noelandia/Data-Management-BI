SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [servicios].[medico](
	[codMedico]  [int] IDENTITY(1,1) NOT NULL,
	[dni] [int] NOT NULL,
	[apPaterno] [varchar](200) NULL,
	[apMaterno] [varchar](200) NULL,
	[nombres] [varchar](200) NULL,
	[fechaNacimiento] [date],
	PRIMARY KEY(codMedico)
)
GO