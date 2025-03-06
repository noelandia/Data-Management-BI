CREATE PROCEDURE [dbo].[DW_MergeDimPaciente]
AS
BEGIN
	UPDATE dp
	   SET dni = sp.dni,
		   apPaterno = sp.apPaterno,
		   apMaterno = sp.apMaterno,
		   nombres = sp.nombres,
		   fecNacimiento = sp.fecNacimiento,
		   nroSeguro = sp.nroSeguro,
		   nroCelular = sp.nroCelular
	  FROM dbo.DimPaciente dp
	  INNER JOIN staging.paciente sp ON dp.codHistSK = sp.codHistSK;
END
GO