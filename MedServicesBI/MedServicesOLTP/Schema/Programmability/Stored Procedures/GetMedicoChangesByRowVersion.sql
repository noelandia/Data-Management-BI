CREATE PROCEDURE [dbo].[GetMedicoChangesByRowVersion]
(
   @startRow BIGINT,
   @endRow  BIGINT 
)
AS
BEGIN
	SELECT m.codMedico,
		m.dni,
		m.apPaterno,
		m.apMaterno,
		m.nombres,
		m.fechaNacimiento,
		d.codDirector
	FROM servicios.medico m
	LEFT JOIN servicios.director d ON d.codMedico = m.codMedico
	WHERE (m.[rowversion] > CONVERT(ROWVERSION,@startRow) AND m.[rowversion] <= CONVERT(ROWVERSION,@endRow))
	OR (d.[rowversion] > CONVERT(ROWVERSION,@startRow) AND d.[rowversion] <= CONVERT(ROWVERSION,@endRow))
END
GO
