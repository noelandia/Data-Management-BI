/*
Plantilla de script posterior a la implementación							
--------------------------------------------------------------------------------------
 Este archivo contiene instrucciones de SQL que se anexarán al script de compilación.		
 Use la sintaxis de SQLCMD para incluir un archivo en el script posterior a la implementación.			
 Ejemplo:      :r .\miArchivo.sql								
 Use la sintaxis de SQLCMD para hacer referencia a una variable en el script posterior a la implementación.		
 Ejemplo:      :setvar TableName miTabla							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

INSERT INTO servicios.hospital(codHospital,nombre,ciudad,telefono) VALUES ('1','San Juan de Dios','Santa Cruz','33345789');
INSERT INTO servicios.hospital(codHospital,nombre,ciudad,telefono) VALUES ('2','Japones','Santa Cruz','33245763');
INSERT INTO servicios.hospital(codHospital,nombre,ciudad,telefono) VALUES ('3','Montalvo','Cochabamba','33178123');

