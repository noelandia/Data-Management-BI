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
        vm.codHist
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