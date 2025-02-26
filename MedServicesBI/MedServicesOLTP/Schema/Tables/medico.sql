SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [servicios].[medico](
	[codMedico] [int] IDENTITY(1,1) NOT NULL,
	[dni] [varchar](20) NOT NULL,
	[apPaterno] [varchar](50),
	[apMaterno] [varchar](50),
	[nombres] [varchar](50) NOT NULL,
	[fechaNacimiento] [date],
	CONSTRAINT AK_dni UNIQUE (dni),
	CONSTRAINT [PK_Medico] PRIMARY KEY (codMedico)
)
GO

GO
INSERT INTO servicios.medico VALUES
('6401','Perez','Perez','Juan','1980-01-01'),
('6402','Bolivar','Palacios','Simon','1985-02-02'),
('6403','Fernandez','Taboada','Maria','1990-03-03'),
('6404','Revilla','Lenoci','Angel David','1995-04-04'),
('6405','Domingo','Murillo','Pedro','2000-05-05')
GO