CREATE TABLE [servicios].[hospital](
	[codhospital] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[ciudad] [varchar](20) NOT NULL,
	[telefono] [int],
	[rowversion] [timestamp] NOT NULL,
CONSTRAINT [pk_hospital] PRIMARY KEY  CLUSTERED 
(
	[codhospital] ASC

	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO