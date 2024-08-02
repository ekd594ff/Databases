SELECT CustomerName, Count(*) AS Total
FROM Orders o INNER JOIN Customers c 
ON c.CustomerID=o.CustomerID
GROUP BY CustomerName;
