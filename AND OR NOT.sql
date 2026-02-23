--SELECT * FROM DimProduct

/* SELECT * FROM DimProduct
WHERE BrandName = 'Fabrikam' AND ColorName = 'Black' */

/* SELECT * FROM DimProduct
WHERE BrandName = 'Contoso' or ColorName = 'White' */

SELECT * FROM DimEmployee
WHERE NOT DepartmentName = 'Marketing'