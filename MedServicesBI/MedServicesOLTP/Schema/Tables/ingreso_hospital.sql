CREATE TABLE [pacientes].[ingreso_hospital](
    [idIngreso] INT IDENTITY(1,1) NOT NULL,   -- PK Autoincremental
    [fecIngreso] DATE,                        -- Fecha de ingreso
    [fecSalida] DATE,                         -- Fecha de salida
    [idVisita] INT NOT NULL,                  -- FK a visita_medica
    [codCama] INT NOT NULL,                   -- FK a Cama
    CONSTRAINT [PK_ingreso_hospital] PRIMARY KEY CLUSTERED ([idIngreso] ASC)
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, 
          ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
    ON [PRIMARY],
    CONSTRAINT [FK_ingreso_hospital_visita_medica] FOREIGN KEY ([idVisita])
        REFERENCES [esquema_visita_medica].[visita_medica]([idVisita]),
    CONSTRAINT [FK_ingreso_hospital_cama] FOREIGN KEY ([codCama])
        REFERENCES [esquema_cama].[cama]([codCama])
) ON [PRIMARY];
GO