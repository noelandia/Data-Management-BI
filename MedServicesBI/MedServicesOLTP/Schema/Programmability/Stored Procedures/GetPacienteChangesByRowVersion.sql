CREATE PROCEDURE [dbo].[GetPacienteChangesByRowVersion]
(
	@startRow BIGINT,
	@endRow  BIGINT
)
AS
BEGIN
	SELECT	codHist,
			dni,
			apPaterno,
			apMaterno,
			nombres,
			fecNacimiento,
			nroSeguro,
			nroCelular
	  FROM pacientes.paciente
	 WHERE rowversion > CONVERT(ROWVERSION, @startRow) 
	   AND rowversion <= CONVERT(ROWVERSION,@endRow)
END
GO