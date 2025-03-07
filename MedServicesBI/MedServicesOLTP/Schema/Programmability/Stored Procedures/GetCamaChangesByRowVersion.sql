CREATE PROCEDURE [dbo].[GetCamaChangesByRowVersion]
(
   @startRow BIGINT,
   @endRow  BIGINT 
)
AS
BEGIN
	SELECT estado, nroHabitacion
	FROM servicios.cama
	WHERE rowversion > CONVERT(ROWVERSION, @startRow) 
	AND rowversion <= CONVERT(ROWVERSION,@endRow)
END
GO