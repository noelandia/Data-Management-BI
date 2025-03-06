CREATE PROCEDURE [dbo].[GetVisitaMedicaChangesByRowVersion]
(
   @startRow BIGINT,
   @endRow  BIGINT 
)
AS
BEGIN
	SELECT idVisita,
		   fechaHora,
		   diagnostico,
		   tratamiento,
		   codHist,
		   codHospital,
		   idServicio,
		   codMedico
	  FROM pacientes.visita_medica
	 WHERE rowversion > CONVERT(ROWVERSION, @startRow) 
	   AND rowversion <= CONVERT(ROWVERSION,@endRow)
END
GO
