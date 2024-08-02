SELECT LastName, FirstName, Total
FROM (SELECT e.LastName, e.FirstName, count(o.OrderID) AS Total
FROM Orders o INNER JOIN Employees e 
ON o.EmployeeID=e.EmployeeID 
GROUP BY e.LastName, e.FirstName)
WHERE Total >= All (
SELECT count(o.OrderID) AS Total
FROM Orders o INNER JOIN Employees e 
ON o.EmployeeID=e.EmployeeID 
GROUP BY e.LastName, e.FirstName);
