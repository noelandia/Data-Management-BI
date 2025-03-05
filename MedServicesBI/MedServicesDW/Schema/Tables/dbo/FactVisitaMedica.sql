CREATE TABLE [dbo].[FactVisitaMedica]
(
    [idVisitaSK] [int] IDENTITY(1,1) NOT NULL,
    [idVisita] [int] NOT NULL,
    [fechaHora] [datetime2] NOT NULL,
    [diagnostico] [varchar](1000) NULL,
    [tratamiento] [varchar](2000) NULL,
    [codHistSK] [int] NOT NULL,
    [codHospitalSK] [int] NOT NULL,
    [idServicioSK] [int] NOT NULL,
    [codMedicoSK] [int] NOT NULL,
    
    CONSTRAINT [PK_FactVisitaMedica] PRIMARY KEY CLUSTERED 
    (
        [idVisitaSK] ASC
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, 
           ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
    
    CONSTRAINT [FK_FactVisitaMedica_DimHospital] FOREIGN KEY ([codHospitalSK]) 
       REFERENCES [dbo].[DimHospital]([codHospitalSK]),

    CONSTRAINT [FK_FactVisitaMedica_DimPaciente] FOREIGN KEY ([codHistSK]) 
       REFERENCES [dbo].[DimPaciente]([codHistSK]),

    CONSTRAINT [FK_FactVisitaMedica_DimServicio] FOREIGN KEY ([idServicioSK]) 
       REFERENCES [dbo].[DimServicio]([idServicioSK]),

    CONSTRAINT [FK_FactVisitaMedica_DimMedico] FOREIGN KEY ([codMedicoSK]) 
       	REFERENCES [dbo].[DimMedico]([codMedicoSK]),
    
) ON [PRIMARY]
GO