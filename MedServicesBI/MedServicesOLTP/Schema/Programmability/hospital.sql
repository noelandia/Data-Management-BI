
CREATE PROCEDURE [dbo].[GethospitalChangesByRowVersion]
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
