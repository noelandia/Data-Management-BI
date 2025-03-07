CREATE PROCEDURE [dbo].[DW_MergeDimHospital]
AS
BEGIN

	UPDATE dc
	SET [codHospital]  = sc.[codHospital]
	   ,[nombre]     = sc.[nombre]
	   ,[ciudad]     = sc.[ciudad]
	   ,[telefono]    = sc.[telefono]
	   ,[coddirector] = sc.[coddirector]
	   ,[fechainidir]     = sc.[fechainidir]
	   ,[fechafindir]   = sc.[fechafindir]
 	   FROM [dbo].[DimHospital]        dc
	   INNER JOIN [staging].[hospital] sc on  (dc.[codHospitalSK]=sc.[codHospitalSK]) 
	   AND dc.codHospital= sc.codHospital
	  
END
GO

