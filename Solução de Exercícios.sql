-- LISTA DE EXERCICIOS

-- 01

SELECT
	*
FROM
	DimProduct
-- 2517 produtos na base

SELECT
	*
FROM
	DimCustomer
-- Numero de clientes reduziu de 19.500 para 18.869


-- 02

SELECT
	CustomerKey AS 'ID do Cliente',
	FirstName AS 'Primeiro Nome',
	EmailAddress AS 'E-mail',
	BirthDate AS 'Data de Nascimento'
FROM
	DimCustomer
-- EXERCICIO PARA SELECIONAR COLUNAS ESPECIFICAS E RENOMEAR


-- 03

SELECT TOP(100)
	*
FROM
	DimCustomer
-- 100 Primeiros clientes para premiacao

SELECT TOP(20) PERCENT	
	*
FROM
	DimCustomer
-- 20% dos primeiros clientes para premiacao

SELECT TOP(100)
	FirstName AS 'Primeiro Nome',
	EmailAddress AS 'E-mail',
	BirthDate AS 'Data de Nascimento'
FROM
	DimCustomer
-- Adaptacao do primeiro codigo


-- 04

SELECT DISTINCT
	Manufacturer AS 'Fornecedores'
FROM
	DimProduct
-- Mostrar os Fornecedores da empresa


-- 05

SELECT
	*
FROM
	DimProduct

SELECT TOP(1000)
	*
FROM
	FactSales

SELECT DISTINCT	
	ProductKey
FROM
	FactSales
-- Um produto nao foi vendido