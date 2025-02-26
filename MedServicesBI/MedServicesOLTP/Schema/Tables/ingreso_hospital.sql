CREATE TABLE [pacientes].[ingreso_hospital](
    [idIngreso] INT IDENTITY(1,1) NOT NULL,   -- PK Autoincremental
    [fecIngreso] DATE,                        -- Fecha de ingreso
    [fecSalida] DATE,                         -- Fecha de salida
    [idVisita] INT NOT NULL,                  -- FK a visita_medica
    [codCama] INT NOT NULL,                   -- FK a Cama llave compuesta
    [codHospital] [int] NOT NULL,             -- FK a Cama llave compuesta
	[idServicio] [int] NOT NULL,              -- FK a Cama llave compuesta
    [rowversion] [timestamp] NOT NULL,
    CONSTRAINT [PK_Ingreso_Hospital] PRIMARY KEY CLUSTERED ([idIngreso] ASC)
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, 
          ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
    ON [PRIMARY],
    CONSTRAINT [FK_IH_Visita_Medica] FOREIGN KEY (idVisita) REFERENCES pacientes.visita_medica(idVisita),
    CONSTRAINT [FK_IH_Cama] FOREIGN KEY (codCama,codHospital,idServicio) REFERENCES servicios.cama(codCama,codHospital,idServicio)
) ON [PRIMARY]
GO