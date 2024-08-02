SELECT CustomerName, Count(*) AS Total
FROM Orders o, Customers c 
WHERE c.CustomerID = o.CustomerID
GROUP BY CustomerName;