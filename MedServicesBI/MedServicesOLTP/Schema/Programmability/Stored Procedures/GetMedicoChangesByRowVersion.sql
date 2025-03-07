CREATE PROCEDURE [dbo].[GetMedicoChangesByRowVersion]
(
   @startRow BIGINT,
   @endRow  BIGINT 
)
AS
BEGIN
	SELECT dni,
		apPaterno,
		apMaterno,
		nombres,
		fechaNacimiento
	FROM servicios.medico
	WHERE rowversion > CONVERT(ROWVERSION, @startRow) 
	AND rowversion <= CONVERT(ROWVERSION,@endRow)
END
GO
