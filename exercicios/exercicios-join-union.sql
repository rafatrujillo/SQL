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

SELECT * FROM DimProductSubcategory
SELECT * FROM DimProductCategory

SELECT
	ProductSubcategoryKey,
	ProductSubcategoryName,
	DimProductSubcategory.ProductCategoryKey,
	ProductCategoryName
FROM
	DimProductSubcategory
LEFT JOIN DimProductCategory
	ON DimProductSubcategory.ProductCategoryKey = DimProductCategory.ProductCategoryKey

-- EXERCICIO 3

SELECT * FROM DimStore
SELECT * FROM DimGeography

SELECT
	StoreKey,
	StoreName,
	EmployeeCount,
	ContinentName,
	RegionCountryName
FROM 
	DimStore
LEFT JOIN DimGeography
	ON DimStore.GeographyKey = DimGeography.GeographyKey

-- EXERCICIO 4

SELECT * FROM DimProduct
SELECT * FROM DimProductSubcategory
SELECT * FROM DimProductCategory

SELECT
	ProductKey,
	ProductName,
	ProductDescription,
	BrandName,
	ProductCategoryDescription
FROM
	DimProduct
LEFT JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
	LEFT JOIN DimProductCategory
		ON DimProductSubcategory.ProductCategoryKey = DimProductCategory.ProductCategorykey

-- EXERCICIO 5

