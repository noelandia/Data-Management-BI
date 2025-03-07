CREATE TABLE [staging].[servicio]
(
	idServicioSK int NOT NULL,
	idServicio int NOT NULL,
	nombre NVARCHAR(200) NOT NULL,
	acronimo NVARCHAR(50),
	comentario NVARCHAR(1000)
)
GO
