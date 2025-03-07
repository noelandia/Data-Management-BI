CREATE TABLE [staging].[IngresoHospital](
    [idIngresoSK] [int] NOT NULL,
    [idIngreso] [int] NOT NULL,
    [fechaIngreso] [date] NULL,
    [fechaSalida] [date] NULL,
    [idVisitaSK] [int] NOT NULL,
    [codCama] [int] NOT NULL,
    [codHospitalSK] [int] NOT NULL,
    [idServicioSK] [int] NOT NULL,
    [estadoCama] [varchar](20) NULL,
    [nroHabitacion] [varchar](6) NULL,
    [codMedicoSK] [int] NOT NULL,
    [codHistSK] [int] NOT NULL
)