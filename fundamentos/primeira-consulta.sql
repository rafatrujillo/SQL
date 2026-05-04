select 
	* 
from 
	DimStore

select 
	StoreKey, 
	StoreName, 
	StorePhone 
from 
	DimStore


	-- COMANDOS SELECT TOP(N) E TOP(N) PERCENT: retorna N primeiras linhas

	select top(10) * from DimProduct

	select top(10) percent * from DimCustomer

	select top(1000) * from FactSales

	-- SELECT DISTINT

	select * from DimProduct

	select distinct ColorName from DimProduct

	-- COMANDO AS

	select
		ProductName AS Produto,
		BrandName AS Marca,
		ColorName AS Cor
	from
		DimProduct