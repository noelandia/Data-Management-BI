CREATE PROCEDURE [dbo].[GetHospitalChangesByRowVersion] 
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
		   d.fecInicio,
		   d.fecFin
     FROM servicios.hospital h 
  INNER JOIN servicios.director d 
   ON h.codHospital = d.codHospital
  WHERE (h.[rowversion] > CONVERT(ROWVERSION,@startRow) AND h.[rowversion] <= CONVERT(ROWVERSION,@endRow))
 OR (d.[rowversion] > CONVERT(ROWVERSION,@startRow) AND d.[rowversion] <= CONVERT(ROWVERSION,@endRow))
END
GO


