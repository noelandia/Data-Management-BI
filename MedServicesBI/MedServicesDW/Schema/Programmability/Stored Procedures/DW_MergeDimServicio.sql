CREATE PROCEDURE [dbo].[DW_MergeDimServicio]
AS
BEGIN
	UPDATE dp
		SET idServicio = sp.idServicio,
			nombre = sp.nombre,
			acronimo = sp.acronimo,
			comentario = sp.comentario
		FROM dbo.DimServicio dp
		INNER JOIN staging.servicio sp ON dp.idServicioSK = sp.idServicioSK;
END
GO