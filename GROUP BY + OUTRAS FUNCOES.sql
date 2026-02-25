-- GROUP BY + ORDER BY

SELECT * FROM DimStore

SELECT
	StoreType,
	SUM(EmployeeCount)
FROM
	DimStore
GROUP BY StoreType
ORDER BY SUM(EmployeeCount) DESC

-- GROUP BY + WHERE

SELECT * FROM DimProduct

SELECT
	ColorName,
	COUNT(*)
FROM 
	DimProduct
WHERE BrandName = 'Contoso'
GROUP BY ColorName

-- GROUP BY + HAVING

SELECT * FROM DimProduct

SELECT
	BrandName,
	COUNT(BrandName)
FROM
	DimProduct
GROUP BY BrandName
HAVING COUNT(BrandName) >= 200
