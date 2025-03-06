CREATE PROCEDURE [dbo].[GetDirectorChangesByRowVersion]
(
   @startRow BIGINT,
   @endRow  BIGINT 
)
AS
BEGIN
	SELECT codDirector,
		   codHospital,
		   fecInicio,
		   fecFin,
		   codMedico
	  FROM servicios.director
	 WHERE rowversion > CONVERT(ROWVERSION, @startRow) 
	   AND rowversion <= CONVERT(ROWVERSION,@endRow)
END
GO