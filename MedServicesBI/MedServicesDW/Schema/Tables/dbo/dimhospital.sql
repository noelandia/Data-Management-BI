CREATE TABLE [dbo].[DimHospital]
(
    [codHospitalSK] [int] IDENTITY(1,1) NOT NULL,
	[codHospital] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[ciudad] [varchar](20) NOT NULL,
	[telefono] [int],
	[coddirector] [int]  NULL,
	[fechainidir] [date] NULL,
	[fechafindir] [date] NULL,
CONSTRAINT [PK_DimHospital] PRIMARY KEY  CLUSTERED 
(
	[codHospitalSK] ASC

	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
