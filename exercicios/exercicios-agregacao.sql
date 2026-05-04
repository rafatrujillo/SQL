-- EXERCICIOS FUNCOES DE AGREGACAO

-- EXERCICIO 01

SELECT TOP(100) * FROM FactSales

SELECT
	SUM(SalesQuantity) AS 'QUANTIDADE VENDIDA',
	SUM(ReturnQuantity) AS 'QUANTIDADE RETORNADA'
FROM
	FactSales
WHERE channelKey = 1

-- EXERCICIO 02

SELECT * FROM DimCustomer

SELECT
	AVG(YearlyIncome) AS 'MEDIA SALARIAL'
FROM
	DimCustomer
Where Occupation = 'Professional'

-- EXERCICIO 03

SELECT * FROM DimStore

SELECT
	MAX(EmployeeCount) AS 'MAXIMO DE FUNCIONARIOS',
	MIN(EmployeeCount) AS 'MINIMO DE FUNCIONARIOS'
FROM
	DimStore

SELECT
	*
FROM	
	DimStore
Where EmployeeCount = '325'

-- EXERCICIO 04

SELECT * FROM DimEmployee

SELECT
	COUNT(Gender)
FROM
	DimEmployee
Where Gender = 'F'
/* 206 funcionarios do sexo Masculino e 87 do sexo feminimo */

SELECT
	TOP(1) FirstName,
	HireDate,
	EmailAddress
FROM
	DimEmployee
WHERE Gender = 'f'
Order by HireDate ASC

-- EXERCICIO 05

SELECT * FROM DimProduct

SELECT
	COUNT(DISTINCT ColorName) AS 'Qnt. Distinta de Cor',
	Count(Distinct BrandName) AS 'Qnt. Distinta de Marca',
	Count(Distinct ClassName) AS 'Qnt. Distinta de Classe'
FROM
	DimProduct
/* 16 cores distintas, 11 marcas distintas e 3 classes distintas */