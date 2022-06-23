/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [ID]
      ,[Course_Name]
      ,[Hand_Out]
      ,[Filename]
      ,[Type]
      ,[Assignment]
  FROM [User].[dbo].[Assignment]