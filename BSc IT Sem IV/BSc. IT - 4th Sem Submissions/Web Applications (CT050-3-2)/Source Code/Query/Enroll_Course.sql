/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Enroll_ID]
      ,[Student_Username]
      ,[Course_Name]
  FROM [User].[dbo].[Enroll_course]