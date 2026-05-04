-- EXERCICIOS GROUP BY + OUTRAS FUNCOES

-- EXERCICIO 01

-- A
SELECT TOP(100) * FROM FactSales

SELECT
	channelKey AS 'Chave do Produto',
	SUM(SalesQuantity) AS 'Quantidade Vendida'
FROM
	FactSales
GROUP BY channelKey

-- B

SELECT TOP(100) * FROM FactSales

SELECT
	StoreKey,
	SUM(SalesQuantity) AS 'Quantidade Vendida',
	SUM(ReturnQuantity) AS 'Quantidade Devolvida'
FROM
	FactSales
GROUP BY StoreKey

-- C

SELECT TOP(100) * FROM FactSales

SELECT
	channelKey AS 'Canal de Venda',
	SUM(SalesAmount) AS 'Faturamento Total'
FROM
	FactSales
WHERE DateKey BETWEEN '20070101' AND '20071231'
GROUP BY channelKey


-- EXERCICIO 02

-- A

SELECT TOP(100) * FROM FactSales

SELECT
	ProductKey,
	SUM(SalesAmount) AS 'Quantidade Vendida'
FROM
	FactSales
GROUP BY ProductKey
HAVING SUM(SalesAmount) > 5000000
ORDER BY SUM(SalesAmount) DESC

-- B

SELECT TOP(100) * FROM FactSales

SELECT TOP(10)
	ProductKey,
	SUM(SalesAmount) AS 'Quantidade Vendida'
FROM
	FactSales
GROUP BY ProductKey
ORDER BY SUM(SalesAmount) DESC


-- EXERCICIO 03

-- A

SELECT TOP(100) * FROM FactOnlineSales

SELECT TOP(1)
	CustomerKey AS 'Chave do Cliente',
	SUM(SalesQuantity) AS 'Quantidade Comprada'
FROM
	FactOnlineSales
GROUP BY CustomerKey
ORDER BY SUM(SalesQuantity) DESC

-- B

SELECT TOP(3)
	ProductKey AS 'ID do Produto',
	SUM(SalesQuantity) AS 'Total Comprado'
FROM
	FactOnlineSales
WHERE CustomerKey = '19037'
GROUP BY ProductKey
ORDER BY SUM(SalesQuantity) DESC


-- EXERCICIO 04

-- A

SELECT * FROM DimProduct

SELECT
	BrandName AS 'Marca',
	COUNT(*) AS 'Quantidade de Produto'
FROM 
	DimProduct
GROUP BY BrandName

-- B

SELECT
	ClassName AS 'Classe',
	AVG(UnitPrice) AS 'Media do Preco Unitario'
FROM 
	DimProduct
GROUP BY ClassName

-- C

SELECT
	ColorName AS 'Cor',
	SUM(Weight) AS 'Peso Total'
FROM
	DimProduct
GROUP BY ColorName


-- EXERCICIO 05

SELECT * FROM DimProduct

SELECT
	StockTypeName,
	SUM(Weight)
FROM
	DimProduct
WHERE BrandName = 'Contoso'
GROUP BY StockTypeName
ORDER BY SUM(Weight) DESC

-- EXERCICIO 06

SELECT
	BrandName,
	COUNT(Distinct ColorName)
FROM
	DimProduct
GROUP BY BrandName


-- EXERCICIO 07

SELECT * FROM DimCustomer

SELECT
	Gender AS 'Genero',
	COUNT(*) AS 'Total de Clientes',
	AVG(YearlyIncome) AS 'Media Salarial'
FROM
	DimCustomer
WHERE Gender IS NOT NULL
GROUP BY Gender

-- EXERCICIO 08

SELECT 
	Education,
	COUNT(*) AS 'Total de Clientes',
	AVG(YearlyIncome) AS 'Media Salarial'
FROM
	DimCustomer
WHERE Education IS NOT NULL
GROUP BY Education

-- EXERCICIO 09

SELECT * FROM DimEmployee

SELECT
	DepartmentName AS 'Departamento',
	COUNT(*) AS 'Total de Funcionarios'
FROM
	DimEmployee
WHERE EndDate IS NULL
GROUP BY DepartmentName

-- EXERCICIO 10

SELECT * FROM DimEmployee

SELECT
	Title AS 'Cargo',
	SUM(VacationHours) AS 'Horas de Ferias'
FROM
	DimEmployee
WHERE DepartmentName IN ('Production', 'Marketing', 'Engineering', 'Finance') AND Gender = 'F' AND HireDate BETWEEN '19990101' AND '20001231'
GROUP BY Title

