CREATE TABLE [staging].[paciente]
(
	codHistSK INT NOT NULL,
	codHist INT NOT NULL,
	dni VARCHAR(20) NOT NULL,
	apPaterno VARCHAR(50),
	apMaterno VARCHAR(50),
	nombres VARCHAR(50) NOT NULL,
	fecNacimiento DATE,
	nroSeguro VARCHAR(30),
	nroCelular INT
)
GO