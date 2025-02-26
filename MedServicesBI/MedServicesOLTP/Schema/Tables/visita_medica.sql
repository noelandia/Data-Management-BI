CREATE TABLE [pacientes].[visita_medica](
	[idVisita] [int] IDENTITY(1,1) NOT NULL,
	[fechaHora] DATETIME2 NOT NULL,
	[diagnostico] VARCHAR(1000),
	[tratamiento] VARCHAR(2000),
	[codHist] [int] NOT NULL,
	[codHospital] [int] NOT NULL,
	[idServicio] [int] NOT NULL,
	[codMedico] [int] NOT NULL,
	[rowversion] [timestamp] NOT NULL,
CONSTRAINT [PK_visita_medica] PRIMARY KEY CLUSTERED 
(
	[idVisita] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
CONSTRAINT [FK_VM_Hospital] FOREIGN KEY (codHospital) REFERENCES servicios.hospital(codHospital),
CONSTRAINT [FK_VM_Servicio] FOREIGN KEY (idServicio) REFERENCES servicios.servicio(idServicio),
CONSTRAINT [FK_VM_Medico] FOREIGN KEY (codMedico) REFERENCES servicios.medico(codMedico)
) ON [PRIMARY]
GO