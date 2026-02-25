-- APRENDENDO JOIN

SELECT TOP(1000) * FROM FactSales
SELECT * FROM DimChannel

SELECT
	ChannelKey,
	SUM(SalesQuantity)
FROM
	FactSales
GROUP BY channelKey