/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
-- Carga esquemas y tablas primero si no existen
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'servicios')
BEGIN
    EXEC('CREATE SCHEMA servicios')
END

IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'pacientes')
BEGIN
    EXEC('CREATE SCHEMA pacientes')
END

-- Variables para controlar qué scripts se ejecutan

:setvar CargarDatosMaestros 1
:setvar CargarDatosPacientes 1
:setvar CargarDatosIngresos 1

-- Datos maestros (hospitales, servicios, médicos)
IF $(CargarDatosMaestros) = 1
BEGIN

    PRINT 'Cargando datos maestros...'
    
    PRINT '- Cargando hospitales'
    :r .\hospital.data.sql

    PRINT '- Cargando servicios'
    :r .\servicio.data.sql
    
    PRINT '- Cargando médicos'
    :r .\medico.data.sql

    PRINT '- Cargando relaciones hospital-servicio'
    :r .\hospital_servicio.data.sql
    
    PRINT '- Cargando relaciones médico-servicio'
    :r .\medico_servicio.data.sql
    
    PRINT '- Cargando camas'
    :r .\cama.data.sql
    
    PRINT '- Cargando directores'
    :r .\director.data.sql

PRINT 'Datos maestros cargados correctamente.'
END
ELSE
BEGIN
    PRINT 'La carga de datos maestros está desactivada.'
END
-- Datos de pacientes
IF $(CargarDatosPacientes) = 1
BEGIN
    PRINT 'Cargando datos de pacientes...'
    
    PRINT '- Cargando pacientes'
    :r .\paciente.data.sql
    
    PRINT '- Cargando visitas médicas'
    :r .\visita_medica.data.sql
    
    PRINT 'Datos de pacientes cargados correctamente.'
END
ELSE
BEGIN
    PRINT 'La carga de datos de pacientes está desactivada.'
END

-- Datos de ingresos hospitalarios
IF $(CargarDatosIngresos) = 1
BEGIN
    PRINT 'Cargando datos de ingresos hospitalarios...'
    
    PRINT '- Cargando ingresos hospitalarios'
    :r .\ingreso_hospital.data.sql
    
    PRINT 'Datos de ingresos hospitalarios cargados correctamente.'
END
ELSE
BEGIN
    PRINT 'La carga de datos de ingresos hospitalarios está desactivada.'
END

PRINT '==============================================='
PRINT 'Iniciando script de post-implementación'
PRINT '==============================================='
-- Verificar la cantidad de registros cargados
PRINT 'Resumen de datos cargados: '
PRINT '-------------------------'
SELECT 'Hospital' as Tabla, COUNT(*) AS Registros From servicios.hospital
UNION ALL
SELECT 'Servicio', COUNT(*) FROM servicios.servicio
UNION ALL
SELECT 'Médico', COUNT(*) FROM servicios.medico
UNION ALL
SELECT 'Hospital-Servicio', COUNT(*) FROM servicios.hospital_servicio
UNION ALL
SELECT 'Médico-Servicio', COUNT(*) FROM servicios.medico_servicio
UNION ALL
SELECT 'Cama', COUNT(*) FROM servicios.cama
UNION ALL
SELECT 'Director', COUNT(*) FROM servicios.director
UNION ALL
SELECT 'Paciente', COUNT(*) FROM pacientes.paciente
UNION ALL
SELECT 'Visita Médica', COUNT(*) FROM pacientes.visita_medica
UNION ALL
SELECT 'Ingreso Hospital', COUNT(*) FROM pacientes.ingreso_hospital;
