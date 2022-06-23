/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [ID]
      ,[Name]
      ,[Email]
      ,[Username]
      ,[Course_Name]
  FROM [User].[dbo].[EnrollStudents]