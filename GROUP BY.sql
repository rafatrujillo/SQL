-- COMO UTILIZAR O GROUP BY

SELECT * FROM DimProduct

SELECT 
	BrandName AS 'Marca',
	COUNT(*) AS 'Quantidade Total'
FROM 
	DimProduct
GROUP BY BrandName

--

SELECT * FROM DimStore

SELECT 
	StoreType,
	SUM(EmployeeCount)
FROM
	DimStore
GROUP BY StoreType

--

SELECT * FROM DimProduct

SELECT
	BrandName,
	AVG(UnitCost)
FROM
	DimProduct
GROUP BY BrandName

--

SELECT * FROM DimProduct

SELECT
	ClassName,
	MAX(UnitPrice)
FROM
	DimProduct
GROUP BY ClassName