CREATE PROCEDURE [dbo].[GetIngresoHospitalChangesByRowVersion]
(
   @startRow BIGINT,
   @endRow BIGINT 
)
AS
BEGIN
    SELECT 
        ih.idIngreso,
        ih.fecIngreso,
        ih.fecSalida,
        ih.idVisita,
        ih.codCama,
        ih.codHospital,
        ih.idServicio,
        cm.estado,
        cm.nroHabitacion,
        vm.codMedico,
        vm.codHist,
        ingresoDateKey = CONVERT(INT,
							(CONVERT(CHAR(4),DATEPART(YEAR,ih.[fecIngreso]))
						  + CASE 
								WHEN DATEPART(MONTH,ih.[fecIngreso]) < 10 THEN '0' + CONVERT(CHAR(1),DATEPART(MONTH,ih.[fecIngreso]))
								ELSE + CONVERT(CHAR(2),DATEPART(MONTH,ih.[fecIngreso]))
							END
						  + CASE 
								WHEN DATEPART(DAY,ih.[fecIngreso]) < 10 THEN '0' + CONVERT(CHAR(1),DATEPART(DAY,ih.[fecIngreso]))
								ELSE + CONVERT(CHAR(2),DATEPART(DAY,ih.[fecIngreso]))
							END)),
		salidaDateKey = CONVERT(INT,
							(CONVERT(CHAR(4),DATEPART(YEAR,ih.[fecSalida]))
						  + CASE 
								WHEN DATEPART(MONTH,ih.[fecSalida]) < 10 THEN '0' + CONVERT(CHAR(1),DATEPART(MONTH,ih.[fecSalida]))
								ELSE + CONVERT(CHAR(2),DATEPART(MONTH,ih.[fecSalida]))
							END
						  + CASE 
								WHEN DATEPART(DAY,ih.[fecSalida]) < 10 THEN '0' + CONVERT(CHAR(1),DATEPART(DAY,ih.[fecSalida]))
								ELSE + CONVERT(CHAR(2),DATEPART(DAY,ih.[fecSalida]))
							END))
    FROM pacientes.ingreso_hospital ih
    INNER JOIN pacientes.visita_medica vm ON ih.idVisita = vm.idVisita
    INNER JOIN servicios.cama cm 
        ON ih.codCama = cm.codCama 
        AND ih.codHospital = cm.codHospital 
        AND ih.idServicio = cm.idServicio
    WHERE (ih.rowversion > CONVERT(ROWVERSION, @startRow) 
        AND ih.rowversion <= CONVERT(ROWVERSION, @endRow))
        OR (vm.rowversion > CONVERT(ROWVERSION, @startRow) 
        AND vm.rowversion <= CONVERT(ROWVERSION, @endRow))
        OR (cm.rowversion > CONVERT(ROWVERSION, @startRow) 
        AND cm.rowversion <= CONVERT(ROWVERSION, @endRow))
END
GO