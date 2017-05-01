SELECT (e.firstname || ' ' || e.lastname) Name, ROUND(SUM(i.total), 2) TotalSales
FROM Invoice i, Employee e, Customer c
WHERE e.employeeid == c.supportrepid
AND i.customerid == c.customerid
GROUP BY Name
