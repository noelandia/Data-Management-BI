CREATE PROCEDURE [dbo].[GetMedicoServicioChangesByRowVersion]
(
   @startRow BIGINT,
   @endRow  BIGINT 
)
AS
BEGIN
	SELECT codMedico,
			idServicio
	  FROM servicios.medico_servicio
	 WHERE rowversion > CONVERT(ROWVERSION, @startRow) 
	   AND rowversion <= CONVERT(ROWVERSION,@endRow)
END
GO