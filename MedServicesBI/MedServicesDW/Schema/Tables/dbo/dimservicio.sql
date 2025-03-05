CREATE TABLE [dbo].[dimservicio]
(
	[idServicioSK] [int] IDENTITY(1,1) NOT NULL,
	[idServicio] [int] NOT NULL,
	[nombre] NVARCHAR(200) NOT NULL,
	[acronimo] NVARCHAR(50),
	[comentario] NVARCHAR(1000),
	CONSTRAINT [pk_dimservicio] PRIMARY KEY CLUSTERED ([idServicioSK] ASC)
)
