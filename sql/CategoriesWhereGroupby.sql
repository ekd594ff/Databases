SELECT c.CategoryName, count(*) as Total 
FROM Products p INNER JOIN Categories c 
ON p.CategoryID=c.CategoryID
GROUP BY CategoryName 
HAVING c.CategoryName='Beverages' OR c.CategoryName='Produce';
