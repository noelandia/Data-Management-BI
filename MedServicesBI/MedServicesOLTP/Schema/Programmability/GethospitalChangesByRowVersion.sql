CREATE PROCEDURE [dbo].[GethospitalChangesByRowVersion] 
(
   @startRow BIGINT,
   @endRow  BIGINT 
)
AS
BEGIN
	SELECT h.codHospital,
		   h.nombre,
		   h.ciudad,
		   h.telefono,
		   d.codDirector,
           d.codHospital,
           d.fecInicio,
           d.fecFin,
           d.codMedico
		 
		   FROM servicios.hospital h 
           INNER JOIN servicios.director d ON h.codHospital = d.codHospital
           WHERE h.rowversion > CONVERT(ROWVERSION, @startRow)
           AND h.rowversion <= CONVERT(ROWVERSION,@endRow)
           END
           GO

      

