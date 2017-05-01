SELECT countrysales.country, max(countrysales.totalsales)
FROM (SELECT c.country, SUM(i.total) TotalSales
FROM Invoice i, Customer c
WHERE i.customerid == c.customerid
GROUP BY c.country) as countrysales
