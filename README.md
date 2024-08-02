# SQL
## OrderDetailsInformations.sql
- Table : OrderDetails
- Quest : 제품명,가격, 주문 갯수, 고객명 표시
```SQL
SELECT ProductName, Price, Quantity, CustomerName
FROM 
(SELECT ps.ProductName, ps.Price, os.Quantity, os.OrderID
FROM OrderDetails os INNER JOIN Products ps
ON os.ProductID=ps.ProductID) a
INNER JOIN
(SELECT os.OrderID, c.CustomerName
FROM Orders os INNER JOIN Customers c
ON os.CustomerID=c.CustomerID) b
ON a.OrderID=b.OrderID;
```
## OrdersMaxEmployee.sql
- Table : Orders
- Quest : 가장 많이 주문 받은 회사 직원명과 갯수
```SQL
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
```
## CustomersJoinOrders.sql
- Table : Customers, Orders
- Quest : 
  - CustomerName별로 주문 갯수 표시
  - 연결 키는 각자 찾기
```SQL
SELECT CustomerName, Count(*) AS Total
FROM Orders o INNER JOIN Customers c 
ON c.CustomerID=o.CustomerID
GROUP BY CustomerName;
```
## ProductsWhereGroupby.sql
- Table : Products
- Quest : CategoryID 가 10개 이상
```SQL
SELECT CategoryID, count(*) AS Total FROM Products GROUP BY CategoryID HAVING count(*) > 10;
```
## CategoriesWhereGroupby.sql
- Table : Categories
- Quest : CategoryName가 Produce, Beverages 제품에 갯수 각각 표시
```SQL
SELECT c.CategoryName, count(*) as Total 
FROM Products p INNER JOIN Categories c 
ON p.CategoryID=c.CategoryID
GROUP BY CategoryName 
HAVING c.CategoryName='Beverages' OR c.CategoryName='Produce';
```
