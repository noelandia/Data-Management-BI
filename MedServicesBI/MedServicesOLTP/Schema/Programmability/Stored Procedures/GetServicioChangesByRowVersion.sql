CREATE PROCEDURE [dbo].[GetServicioChangesByRowVersion]
(	@starRow BIGINT,
	@endRow BIGINT)
AS
BEGIN
	SELECT idServicio,
			nombre,
			acronimo,
			comentario
			FROM servicios.servicio
			WHERE rowversion > CONVERT(ROWVERSION, @starRow)
			AND rowversion <= CONVERT(ROWVERSION,@endRow)
END
GO
