SELECT sales.name, MAX(sales.totalsales)
FROM (SELECT (e.firstname || ' ' || e.lastname) Name, ROUND(SUM(i.total), 2) TotalSales
FROM Invoice i, Employee e, Customer c
WHERE e.employeeid == c.supportrepid
AND i.customerid == c.customerid
AND i.invoicedate BETWEEN 2009-01-01 00:00:00 AND 2010-01-01 00:00:00
GROUP BY Name)
as sales
