CREATE TABLE [dbo].[DimHospital]
(
    [codHospitalSK] [int] IDENTITY(1,1) NOT NULL,
	[codHospital] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[ciudad] [varchar](20) NOT NULL,
	[telefono] [int],
	[codDirector] [int]  NULL,
	CONSTRAINT [PK_DimHospital] PRIMARY KEY ([codHospitalSK])
)
GO
