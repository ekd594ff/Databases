SELECT ProductName, Price, Quantity, CustomerName FROM 
(SELECT ps.ProductName, ps.Price, os.Quantity, os.OrderID FROM OrderDetails os, Products ps WHERE os.ProductID=ps.ProductID) a,
(SELECT os.OrderID, c.CustomerName FROM Orders os, Customers c WHERE os.CustomerID=c.CustomerID) b
WHERE a.OrderID=b.OrderID;