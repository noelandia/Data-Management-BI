CREATE TABLE [pacientes].[paciente](
	codHist INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	dni VARCHAR(20) NOT NULL,
	apPaterno VARCHAR(50),
	apMaterno VARCHAR(50),
	nombres VARCHAR(50) NOT NULL,
	fecNacimiento DATE,
	nroSeguro VARCHAR(30),
	nroCelular INT,
	CONSTRAINT AK_dni UNIQUE (dni)
)
GO


