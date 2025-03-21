﻿CREATE PROCEDURE [dbo].[GetVisitaMedicaChangesByRowVersion]
(
   @startRow BIGINT,
   @endRow  BIGINT 
)
AS
BEGIN
	SELECT idVisita,
		   fechaHora,
		   diagnostico,
		   tratamiento,
		   vm.codHist,
		   vm.codHospital,
		   vm.idServicio,
		   vm.codMedico,
		   fechaHoraDateKey = CONVERT(INT,
							(CONVERT(CHAR(4),DATEPART(YEAR,vm.[fechaHora]))
						  + CASE 
								WHEN DATEPART(MONTH,vm.[fechaHora]) < 10 THEN '0' + CONVERT(CHAR(1),DATEPART(MONTH,vm.[fechaHora]))
								ELSE + CONVERT(CHAR(2),DATEPART(MONTH,vm.[fechaHora]))
							END
						  + CASE 
								WHEN DATEPART(DAY,vm.[fechaHora]) < 10 THEN '0' + CONVERT(CHAR(1),DATEPART(DAY,vm.[fechaHora]))
								ELSE + CONVERT(CHAR(2),DATEPART(DAY,vm.[fechaHora]))
							END))
	  FROM pacientes.visita_medica vm
	 INNER JOIN pacientes.paciente pa ON vm.codHist = pa.codHist
	 INNER JOIN servicios.hospital ho ON vm.codHospital = ho.codHospital
	 INNER JOIN servicios.servicio se ON vm.idServicio = se.idServicio
	 INNER JOIN servicios.medico me ON vm.codMedico = me.codMedico
	 WHERE (vm.[rowversion] > CONVERT(ROWVERSION,@startRow) 
	   AND vm.[rowversion] <= CONVERT(ROWVERSION,@endRow))
	   	OR (pa.[rowversion] > CONVERT(ROWVERSION,@startRow) 
	   AND pa.[rowversion] <= CONVERT(ROWVERSION,@endRow))
	    OR (ho.[rowversion] > CONVERT(ROWVERSION,@startRow)
	   AND ho.[rowversion] <= CONVERT(ROWVERSION,@endRow))
	    OR (se.[rowversion] > CONVERT(ROWVERSION,@startRow)
	   AND se.[rowversion] <= CONVERT(ROWVERSION,@endRow))
	    OR (me.[rowversion] > CONVERT(ROWVERSION,@startRow)
	   AND me.[rowversion] <= CONVERT(ROWVERSION,@endRow))
END
GO
