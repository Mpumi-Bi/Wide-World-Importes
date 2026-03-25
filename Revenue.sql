-- Total revenue by month
SELECT
YEAR(WideWorldImporters.Sales.CustomerTransactions.FinalizationDate) as 'Year'
,MONTH(WideWorldImporters.Sales.CustomerTransactions.FinalizationDate) AS 'Month'
,SUM(WideWorldImporters.Sales.CustomerTransactions.AmountExcludingTax) AS 'Revenue'

FROM WideWorldImporters.Sales.CustomerTransactions
GROUP BY YEAR(WideWorldImporters.Sales.CustomerTransactions.FinalizationDate)
,MONTH(WideWorldImporters.Sales.CustomerTransactions.FinalizationDate)