-- Accounts Receivables
SELECT 
a.CustomerID
,a.OutstandingBalance
,b.CustomerName
FROM WideWorldImporters.Sales.CustomerTransactions a
JOIN WideWorldImporters.Sales.Customers b
ON a.CustomerID = b.CustomerID
WHERE OutstandingBalance != 0
