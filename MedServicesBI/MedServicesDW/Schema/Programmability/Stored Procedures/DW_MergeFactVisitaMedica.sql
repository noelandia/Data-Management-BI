CREATE PROCEDURE [dbo].[DW_MergeFactVisitaMedica]
AS
BEGIN

	UPDATE dc
	   SET fechaHora = sc.fechaHora,
		   diagnostico = sc.diagnostico,
		   tratamiento = sc.tratamiento,
		   codHistSK = sc.codHistSK,
		   codHospitalSK = sc.codHospitalSK,
		   idServicioSK = sc.idServicioSK,
		   codMedicoSK = sc.codMedicoSK
	FROM [dbo].[FactVisitaMedica] dc
	INNER JOIN [staging].[VisitaMedica] sc on dc.idVisitaSK = sc.idVisitaSK AND dc.idVisita = sc.idVisita;
END
GO