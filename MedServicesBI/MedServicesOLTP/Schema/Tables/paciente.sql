CREATE TABLE [pacientes].[paciente](
	codHist INT IDENTITY(1,1) NOT NULL,
	dni VARCHAR(20) NOT NULL,
	apPaterno VARCHAR(50),
	apMaterno VARCHAR(50),
	nombres VARCHAR(50) NOT NULL,
	fecNacimiento DATE,
	nroSeguro VARCHAR(30),
	nroCelular INT,
	[rowversion] [timestamp] NOT NULL,
	CONSTRAINT AK_dni UNIQUE (dni),
	CONSTRAINT [PK_Paciente] PRIMARY KEY (codHist)
)
GO