CREATE TABLE [dbo].[FactIngresoHospitalario]
(
	[idIngreso] [int] IDENTITY(1,1) NOT NULL,
	[fechaIngreso] [date] NOT NULL, 	--atributos
	[fechaSalida][date] NULL, 	--atributos
	[idVisita] [int] NOT NULL, -- fk a FAcVisitaMEdica --Claves foraneas hacia las dimensiones
	[codCama][int] NOT NULL,
	[codHospital] [int] NOT NULL, -- FK a dimHospital --Claves foraneas hacia las dimensiones
	[idServicio] [int] NOT NULL, --FK a dimservicio --Claves foraneas hacia las dimensiones
	[estadoCama][varchar](20) NULL,
	[nroHabitacion][varchar](6) NULL,
	[codMedico][int] NOT NULL, --Claves foraneas hacia las dimensiones
	[codHist] [int] NOT NULL, -- fk a dimPaciente
	
	CONSTRAINT [PK_fact_ingreso_hospital] PRIMARY KEY CLUSTERED (idIngreso ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, 
           ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],

	CONSTRAINT [FK_fact_ingreso_hospital_dimhospital] FOREIGN KEY ([codHospital]) 
        REFERENCES [dbo].[dimhospital]([codHospital]),

	CONSTRAINT [FK_fact_ingreso_hospital_fact_visita_medica] FOREIGN KEY ([idVisita])
	REFERENCES [dbo].[FactVisitaMedica]([idVisita]),

	
	CONSTRAINT [FK_fact_ingreso_hospital_dimServicio] FOREIGN KEY ([idServicio])
	REFERENCES [dbo].[dimServicio]([idServicio]),

	CONSTRAINT [FK_fact_ingreso_hospital_dimMedico] FOREIGN KEY ([codMedico])
	REFERENCES [dbo].[dimHospital]([codMedico]),

	CONSTRAINT [FK_fact_ingreso_hospital_dimPaciente] FOREIGN KEY ([codHist])
	REFERENCES [dbo].[dimPaciente]([codHist])
		
		
		) ON [PRIMARY]
GO
