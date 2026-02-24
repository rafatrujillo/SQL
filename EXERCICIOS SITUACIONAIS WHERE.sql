-- EXERCICIOS DO MODULO WHERE

-- Exercicio 01

SELECT 
	top(100) * 
FROM 
	FactSales
ORDER BY 
	SalesQuantity DESC

-- Exercicio 02

SELECT 
	TOP(10) * 
FROM 
	DimProduct
ORDER BY 
	UnitPrice DESC, 
	Weight DESC, 
	Size DESC

-- EXERCICIO 03

SELECT 
	ProductName AS 'Nome do Produto',
	Weight AS 'Peso'
FROM 
	DimProduct
WHERE Weight > 100
ORDER BY Weight DESC

-- EXERCICIO 04

SELECT
	StoreName AS 'Nome da loja',
	OpenDate AS 'Data de Abertura',
	EmployeeCount AS 'Numero de funcionarios'
FROM
	DimStore
Where Status = 'On'

-- Exercicio 05