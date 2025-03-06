CREATE TABLE [dbo].[DimServicio]
(
	[idServicioSK] [int] IDENTITY(1,1) NOT NULL,
	[idServicio] [int] NOT NULL,
	[nombre] NVARCHAR(200) NOT NULL,
	[acronimo] NVARCHAR(50),
	[comentario] NVARCHAR(1000),
	CONSTRAINT [PK_DimServicio] PRIMARY KEY ([idServicioSK])
)
GO