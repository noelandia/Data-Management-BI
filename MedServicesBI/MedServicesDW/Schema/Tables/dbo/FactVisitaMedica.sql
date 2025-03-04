CREATE TABLE [dbo].[factVisitaMedica]
(
    [idVisita] [int] IDENTITY(1,1) NOT NULL,
    [fechaHora] [datetime2] NOT NULL,
    [diagnostico] [varchar](1000) NULL,
    [tratamiento] [varchar](2000) NULL,
    [codHist] [int] NOT NULL,
    [codHospital] [int] NOT NULL,
    [idServicio] [int] NOT NULL,
    [codMedico] [int] NOT NULL,
    
    CONSTRAINT [PK_fact_visita_medica] PRIMARY KEY CLUSTERED 
    (
        [idVisita] ASC
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, 
           ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
    
    CONSTRAINT [FK_fact_visita_medica_dimhospital] FOREIGN KEY ([codHospital]) 
       REFERENCES [dbo].[dimhospital]([codHospital]),

    CONSTRAINT [FK_fact_visita_medica_dimPaciente] FOREIGN KEY ([codHist]) 
       REFERENCES [dbo].[dimPaciente]([codHist]),

    CONSTRAINT [FK_fact_visita_medica_dimservicio] FOREIGN KEY ([idServicio]) 
       REFERENCES [dbo].[dimServicio]([idServicio]),

    CONSTRAINT [FK_fact_visita_medica_dimmedico] FOREIGN KEY ([codMedico]) 
       	REFERENCES [dbo].[dimHospital]([codMedico]),
    
) ON [PRIMARY]
GO