CREATE TABLE [servicios].[cama](
	[codCama] [int] NOT NULL,
	[codHospital] [int] NOT NULL,
	[idServicio] [int] NOT NULL,
	[nroHabitacion] [varchar](6),
	[estado] [varchar](20),
	[rowversion] [timestamp] NOT NULL,
	CONSTRAINT [PK_Cama] PRIMARY KEY CLUSTERED 
	(
		[codCama] ASC,
		[codHospital] ASC,
		[idServicio] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
	CONSTRAINT [FK_Cama_Hospital] FOREIGN KEY (codHospital) REFERENCES [servicios].[hospital](codHospital),
	CONSTRAINT [FK_Cama_Servicio] FOREIGN KEY (idServicio) REFERENCES [servicios].[servicio](idServicio)
) ON [PRIMARY]
GO