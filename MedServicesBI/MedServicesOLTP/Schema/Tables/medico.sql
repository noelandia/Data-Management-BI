SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [servicios].[medico](
	[codMedico] [int] NOT NULL,
	[dni] [int] NOT NULL,
	[apPaterno] [varchar](200) NULL,
	[apMaterno] [varchar](200) NULL,
	[nombres] [varchar](200) NULL,
	[fechaNacimiento] [date],
	CONSTRAINT AK_dni UNIQUE (dni),
	CONSTRAINT [PK_Medico] PRIMARY KEY (codMedico)
)
GO

GO
INSERT INTO servicios.medico VALUES
(1,6401,'Perez','Perez','Juan','1980-01-01'),
(2,6402,'Bolivar','Palacios','Simon','1985-02-02'),
(3,6403,'Fernandez','Taboada','Maria','1990-03-03'),
(4,6404,'Revilla','Lenoci','Angel David','1995-04-04'),
(5,6405,'Domingo','Murillo','Pedro','2000-05-05')
GO