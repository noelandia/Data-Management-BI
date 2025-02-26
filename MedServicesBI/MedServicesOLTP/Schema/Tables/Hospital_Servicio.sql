CREATE TABLE servicios.hospital_servicio 
(
	codHospital INT NOT NULL,
	idServicio INT NOT NULL,
	cant_cama INT,
	[rowversion] [timestamp] NOT NULL,
	CONSTRAINT [PK_hospital_servicio] PRIMARY KEY CLUSTERED 
	(
		[codHospital] ASC,
		[idServicio] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
	CONSTRAINT [FK_HS_Hospital] FOREIGN KEY (codHospital) REFERENCES servicios.hospital(codHospital),
	CONSTRAINT [FK_HS_Servicio] FOREIGN KEY (idServicio) REFERENCES servicios.servicio(idServicio)
	) ON [PRIMARY]
GO