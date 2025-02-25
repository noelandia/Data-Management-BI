SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [servicios].[cama](
	[codCama] [int] NOT NULL,
	[codHospital] [int] NOT NULL,
	[idServicio] [int] NOT NULL,
	[estado] [bit] DEFAULT 1,
	[nroHabitacion] [int] DEFAULT 0,
	CONSTRAINT [PK_Cama] PRIMARY KEY(codCama, codHospital, idServicio),
	CONSTRAINT [FK_Hospital_Servicio_hosp] FOREIGN KEY (codHospital) REFERENCES [servicios].[hospital_servicio](codHospital),
	CONSTRAINT [FK_Hospital_Servicio_serv] FOREIGN KEY (idServicio) REFERENCES [servicios].[hospital_servicio](idServicio)
)
GO