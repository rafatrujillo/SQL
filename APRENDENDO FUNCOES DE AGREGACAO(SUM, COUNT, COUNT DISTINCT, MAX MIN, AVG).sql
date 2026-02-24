-- USO DO SUM
SELECT
	TOP(100) *
FROM
	FactSales

SELECT
	SUM(SalesQuantity) AS 'Total Vendido',
	SUM(ReturnQuantity) AS 'Total Devolvido'
FROM
	FactSales

-- USO DO COUNT
SELECT
	*
FROM 
	DimProduct

SELECT
	COUNT(*) AS 'Total de Produtos'
FROM
	DimProduct

--USO DO COUNT + DISTINCT

SELECT * FROM DimProduct

SELECT
	COUNT(DISTINCT BrandName)
FROM
	DimProduct

-- USO DO MIN E MAX

SELECT * FROM DimProduct

SELECT
	MAX(UnitCost) AS 'Custo Maximo',
	MIN(UnitCost) AS 'Custo Minimo'
FROM
	DimProduct

-- FUNCAO AVG

SELECT * FROM DimCustomer

SELECT
	AVG(YearlyIncome) AS 'Media anual de salario'
FROM
	DimCustomer