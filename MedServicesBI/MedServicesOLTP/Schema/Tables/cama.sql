SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [servicios].[cama](
	[codCama] [int] IDENTITY(1,1) NOT NULL,
	[codHospital] [int] NOT NULL,
	[idServicio] [int] NOT NULL,
	[estado] [bit] DEFAULT 1,
	[nroHabitacion] [int] DEFAULT 0,
	PRIMARY KEY(codCama, codHospital, idServicio),
	CONSTRAINT [FK_Hospital_hosp] FOREIGN KEY (codHospital) REFERENCES [servicios].[hospital_servicio](codHospital),
	CONSTRAINT [FK_Hospital_serv] FOREIGN KEY (idServicio) REFERENCES [servicios].[hospital_servicio](idServicio)
)
GO