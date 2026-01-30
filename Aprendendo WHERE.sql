/* SELECT
	*
FROM
	DimProduct

SELECT
	TOP (1) UnitPrice
FROM
	DimProduct
ORDER BY
	UnitPrice DESC */

-- Quantos produtos tem um preco unitario maior que 1000?

SELECT
	ProductName AS 'Produto',
	UnitPrice AS 'Preco'
FROM
	DimProduct
WHERE UnitPrice >= 2000