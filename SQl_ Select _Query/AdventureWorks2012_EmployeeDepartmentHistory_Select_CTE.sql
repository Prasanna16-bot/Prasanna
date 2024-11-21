
--Select * from HumanResources.EmployeeDepartmentHistory
--go
use AdventureWorks2012
go
WITH DepartmentEmployee AS (
    SELECT 
        edh.BusinessEntityID,
        edh.DepartmentID,
        d.Name AS DepartmentName,
        edh.StartDate,
        edh.EndDate
    FROM HumanResources.EmployeeDepartmentHistory edh
     left JOIN HumanResources.Department d 
        ON edh.DepartmentID = d.DepartmentID
)
SELECT *
FROM DepartmentEmployee
