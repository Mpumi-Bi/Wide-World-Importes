SELECT 
C.CustomerID
,B.CustomerName
,(I.UnitPrice * I.Quantity) AS 'TotalSpent'

FROM WideWorldImporters.Sales.CustomerTransactions C
JOIN WideWorldImporters.Sales.InvoiceLines I
ON C.InvoiceID = I.InvoiceID
JOIN WideWorldImporters.Sales.Customers B
ON B.CustomerID = C.CustomerID
GROUP BY B.CustomerName
,C.CustomerID
,(I.UnitPrice * I.Quantity)
