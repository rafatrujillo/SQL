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
Where Status = 'On' AND StoreType = 'Store'

-- Exercicio 05

SELECT
	*
FROM
	DimProduct
WHERE ProductName LIKE '%Home Theater%' AND BrandName = 'Litware' AND AvailableForSaleDate = '20090315' /* Sem tracos pq a coluna e datetime */

-- Exercicio 06

SELECT
	*
FROM
	DimStore
WHERE Status = 'Off' AND StoreType = 'Store' /* Utilizando coluna Status*/

SELECT
	*
FROM
	DimStore
WHERE CloseDate IS NOT NULL /* Utilizando outra coluna, mas dando mesmo resultado */

-- Exercicio 07

SELECT
	StoreName,
	EmployeeCount
FROM
	DimStore
WHERE Status = 'On'
ORDER BY EmployeeCount ASC /* DA PARA UTILIZAR O WHERE BETWEEN */

-- Exercicio 08


SELECT
	ProductKey AS 'ID',
	ProductName AS 'Nome do Produto',
	UnitPrice AS 'Preco'
FROM
	DimProduct
WHERE ProductDescription LIKE '%LCD%'

-- EXERCICIO 09

SELECT
	*
FROM
	DimProduct
WHERE ColorName IN ('Green', 'Orange', 'Black', 'Silver', 'Pink') AND BrandName IN ('Contoso', 'Litware', 'Fabrikam')

-- EXERCICIO 10

SELECT
	*
FROM
	DimProduct
WHERE BrandName = 'Contoso' AND ColorName = 'Silver' AND Weight BETWEEN 10 AND 30
ORDER BY UnitPrice DESC