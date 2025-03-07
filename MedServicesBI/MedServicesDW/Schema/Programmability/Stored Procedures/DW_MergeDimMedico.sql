CREATE PROCEDURE [dbo].[DW_MergeDimMedico]
AS
BEGIN
	UPDATE dp
		SET codMedico = sp.codMedico, 
			dni = sp.dni,
			apPaterno = sp.apPaterno,
			apMaterno = sp.apMaterno,
			nombres = sp.nombres,
			fechaNacimiento = sp.fechaNacimiento,
			codDirector = sp.codDirector
		FROM dbo.DimMedico dp
		INNER JOIN staging.medico sp ON dp.codMedicoSK = sp.codMedicoSK;
END
GO
