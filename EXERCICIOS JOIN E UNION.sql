-- EXERCICIOS SOBRE JOIN E UNION

-- 01

SELECT * FROM DimProduct
SELECT * FROM DimProductSubcategory

SELECT	
	ProductName,
	DimProduct.ProductSubcategoryKey,
	ProductSubcategoryName
FROM
	DimProduct
INNER JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey

-- EXERCICIO 2

