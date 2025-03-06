
CREATE PROCEDURE [dbo].[Gethospital_servicioChangesByRowVersion]
(
   @startRow BIGINT,
   @endRow  BIGINT 
)
AS
BEGIN
	SELECT codHospital,
		   idServicio,
		   cant_cama
		  
	  FROM hospital_servicio.servicio
	 WHERE rowversion > CONVERT(ROWVERSION, @startRow) 
	   AND rowversion <= CONVERT(ROWVERSION,@endRow)
END
GO