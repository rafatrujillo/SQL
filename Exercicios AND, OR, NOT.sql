-- EXERCICIOS DE FIXACAO: AND, OR e NOT

SELECT * FROM DimEmployee
Where Gender = 'F' AND DepartmentName = 'Finance'

SELECT * FROM DimProduct
Where BrandName = 'Contoso' AND ColorName = 'Red' AND UnitPrice >= 100
Order by UnitPrice ASC

SELECT * FROM DimProduct
Where BrandName = 'Litware' OR BrandName = 'Fabrikam' OR ColorName = 'Black'

SELECT * FROM DimSalesTerritory
Where SalesTerritoryGroup = 'Europe' AND NOT SalesTerritoryCountry = 'Italy'