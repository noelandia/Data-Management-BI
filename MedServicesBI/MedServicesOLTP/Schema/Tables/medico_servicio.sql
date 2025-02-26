CREATE TABLE [servicios].[medico_servicio] (
	codMedico INT NOT NULL,
	idServicio INT NOT NULL,
	[rowversion] [timestamp] NOT NULL,
	CONSTRAINT [PK_Medico_Servicio] PRIMARY KEY CLUSTERED 
	(
		[codMedico] ASC,
		[idServicio] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
	CONSTRAINT [FK_MS_Medico] FOREIGN KEY (codMedico) REFERENCES servicios.medico(codMedico),
	CONSTRAINT [FK_MS_Servicio] FOREIGN KEY (idServicio) REFERENCES servicios.servicio(idServicio)
	) ON [PRIMARY]
GO