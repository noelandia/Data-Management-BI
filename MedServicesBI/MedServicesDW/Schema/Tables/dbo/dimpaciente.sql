CREATE TABLE [dbo].[DimPaciente](
	codHistSK INT IDENTITY(1,1) NOT NULL,
	codHist INT NOT NULL,
	dni VARCHAR(20) NOT NULL,
	apPaterno VARCHAR(50),
	apMaterno VARCHAR(50),
	nombres VARCHAR(50) NOT NULL,
	fecNacimiento DATE,
	nroSeguro VARCHAR(30),
	nroCelular INT,
	CONSTRAINT [PK_DimPaciente] PRIMARY KEY (codHistSK)
)
GO