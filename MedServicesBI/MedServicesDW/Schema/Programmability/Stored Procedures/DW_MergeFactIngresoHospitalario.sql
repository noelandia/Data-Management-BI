CREATE PROCEDURE [dbo].[DW_MergeFactIngresoHospitalario]
AS
BEGIN
    UPDATE fact
    SET 
        fact.fechaIngreso = stg.fechaIngreso,
        fact.fechaSalida = stg.fechaSalida,
        fact.idVisitaSK = stg.idVisitaSK,
        fact.codCama = stg.codCama,
        fact.codHospitalSK = stg.codHospitalSK,
        fact.idServicioSK = stg.idServicioSK,
        fact.estadoCama = stg.estadoCama,
        fact.nroHabitacion = stg.nroHabitacion,
        fact.codMedicoSK = stg.codMedicoSK,
        fact.codHistSK = stg.codHistSK
    FROM [dbo].[FactIngresoHospitalario] fact
    INNER JOIN [staging].[IngresoHospital] stg 
        ON fact.idIngresoSK = stg.idIngresoSK 
        AND fact.idIngreso = stg.idIngreso;
END
GO