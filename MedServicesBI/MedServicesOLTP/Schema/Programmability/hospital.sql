
CREATE PROCEDURE [dbo].[GethospitalChangesByRowVersion] ----creacion del procedimiento almacenado Hospital
(
   @startRow BIGINT,
   @endRow  BIGINT 
)
AS
BEGIN
	SELECT codHospital,
		   nombre,
		   ciudad,
		   telefono
	 FROM servicios.hospital
	 WHERE rowversion > CONVERT(ROWVERSION, @startRow) 
	   AND rowversion <= CONVERT(ROWVERSION,@endRow)
END
GO
