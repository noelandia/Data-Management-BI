CREATE TABLE [staging].[IngresoHospital](
    [idIngresoSK] [int] NOT NULL,
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
	[ingresoDateKey] [int] NOT NULL, --Clave foránea DimDate
	[salidaDateKey] [int] NULL --Clave foránea DimDate
)
GO