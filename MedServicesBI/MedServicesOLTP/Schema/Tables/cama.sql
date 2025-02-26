CREATE TABLE [servicios].[cama](
	[codCama] [int] NOT NULL,
	[codHospital] [int] NOT NULL,
	[idServicio] [int] NOT NULL,
	[nroHabitacion] [varchar](6),
	[estado] [varchar](20),
	CONSTRAINT [PK_Cama] PRIMARY KEY(codCama, codHospital, idServicio),
)
GO