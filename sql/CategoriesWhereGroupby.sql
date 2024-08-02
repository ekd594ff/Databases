SELECT c.CategoryName, count(*) as Total 
FROM Products p, Categories c 
WHERE p.CategoryID=c.CategoryID 
GROUP BY CategoryName 
HAVING c.CategoryName='Beverages' OR c.CategoryName='Produce';