CREATE PROCEDURE [dbo].[DW_MergeDimHospital]
AS
BEGIN

	UPDATE dc
	   SET [codHospital]  = sc.[codHospital]
	      ,[nombre]     = sc.[nombre]
		  ,[ciudad]     = sc.[ciudad]
	      ,[telefono]    = sc.[telefono]
	      ,[codDirector] = sc.[codDirector]
	      ,[fecInicioDir]= sc.[fecInicioDir]
	      ,[fecFinDir]   = sc.[fecFinDir]
	  FROM [dbo].[DimHospital] dc
	 INNER JOIN [staging].[hospital] sc on  (dc.[codHospitalSK]=sc.[codHospitalSK]) 
	   AND dc.codHospital= sc.codHospital
END
GO

