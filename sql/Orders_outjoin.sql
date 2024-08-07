SELECT Employees.EmployeeID, LastName, FirstName FROM 
Employees LEFT JOIN Orders
ON Employees.EmployeeID = Orders.EmployeeID
WHERE Orders.OrderID IS NULL;
