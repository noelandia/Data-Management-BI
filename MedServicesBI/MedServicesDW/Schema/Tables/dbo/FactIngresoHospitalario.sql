CREATE TABLE [dbo].[FactIngresoHospitalario]
(
	[idIngresoSK] [int] IDENTITY(1,1) NOT NULL,
	[idIngreso] [int] NOT NULL,
	[fechaIngreso] [date] NOT NULL, 	--atributos
	[fechaSalida][date] NULL, 	--atributos
	[codCama][int] NOT NULL,
	[estadoCama][varchar](20) NULL,
	[nroHabitacion][varchar](6) NULL,
	[idVisitaSK] [int] NOT NULL, -- fk a FAcVisitaMEdica --Claves foraneas hacia las dimensiones
	[codHospitalSK] [int] NOT NULL, -- FK a dimHospital --Claves foraneas hacia las dimensiones
	[idServicioSK] [int] NOT NULL, --FK a dimservicio --Claves foraneas hacia las dimensiones
	[codMedicoSK][int] NOT NULL, --Claves foraneas hacia las dimensiones
	[codHistSK] [int] NOT NULL, -- fk a dimPaciente
	
	CONSTRAINT [PK_FactIngresoHospital] PRIMARY KEY CLUSTERED (idIngresoSK ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, 
           ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],

	CONSTRAINT [FK_FactIngresoHospital_DimHospital] FOREIGN KEY ([codHospitalSK]) 
        REFERENCES [dbo].[DimHospital]([codHospitalSK]),

	CONSTRAINT [FK_FactIngresoHospital_FactVisitaMedica] FOREIGN KEY ([idVisitaSK])
	REFERENCES [dbo].[FactVisitaMedica]([idVisitaSK]),

	CONSTRAINT [FK_FactIngresoHospital_DimServicio] FOREIGN KEY ([idServicioSK])
	REFERENCES [dbo].[DimServicio]([idServicioSK]),

	CONSTRAINT [FK_FactIngresoHospital_DimMedico] FOREIGN KEY ([codMedicoSK])
	REFERENCES [dbo].[DimMedico]([codMedicoSK]),

	CONSTRAINT [FK_FactIngresoHospital_DimPaciente] FOREIGN KEY ([codHistSK])
	REFERENCES [dbo].[DimPaciente]([codHistSK])
		
		
		) ON [PRIMARY]
GO
