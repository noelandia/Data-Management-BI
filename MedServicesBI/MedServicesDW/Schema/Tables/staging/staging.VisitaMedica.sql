CREATE TABLE [staging].[VisitaMedica]
(
	[idVisitaSK] [int] NOT NULL,
    [idVisita] [int] NOT NULL,
    [fechaHora] [datetime2] NOT NULL,
    [diagnostico] [varchar](1000) NULL,
    [tratamiento] [varchar](2000) NULL,
    [codHistSK] [int] NOT NULL,
    [codHospitalSK] [int] NOT NULL,
    [idServicioSK] [int] NOT NULL,
    [codMedicoSK] [int] NOT NULL,
)
