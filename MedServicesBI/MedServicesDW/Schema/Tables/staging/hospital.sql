CREATE TABLE [staging].[hospital]
(
	
    [codHospitalSK] [int] NOT NULL,
	[codHospital] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[ciudad] [varchar](20) NOT NULL,
	[telefono] [int],
	[coddirector] [int]  NULL,
	[fechainidir] [date] NULL,
	[fechafindir] [date] NULL,
	
)
GO

