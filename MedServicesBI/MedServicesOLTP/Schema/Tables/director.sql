CREATE TABLE [servicios].[director](
	[codDirector] [int] NOT NULL,
	[codHospital] [int] NOT NULL,
	[fecInicio] [date],
	[fecFin] [date],
	codMedico [int] NOT NULL,
	[rowversion] [timestamp] NOT NULL,
CONSTRAINT [PK_director] PRIMARY KEY CLUSTERED 
(
	[codDirector] ASC,
	[codHospital] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO