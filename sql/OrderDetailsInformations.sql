SELECT ProductName, Price, Quantity, CustomerName FROM 
(SELECT ps.ProductName, ps.Price, os.Quantity, os.OrderID FROM OrderDetails os INNER JOIN Products ps ON os.ProductID=ps.ProductID) a
INNER JOIN
(SELECT os.OrderID, c.CustomerName FROM Orders os INNER JOIN Customers c ON os.CustomerID=c.CustomerID) b
ON a.OrderID=b.OrderID;
