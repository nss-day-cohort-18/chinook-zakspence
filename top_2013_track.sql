SELECT Name, NumSales
FROM (SELECT t.Name, count(t.Name) NumSales
FROM Track t, InvoiceLine il, Invoice i
WHERE i.invoicedate BETWEEN '2013-01-01 00:00:00' AND '2014-01-01 00:00:00'
AND il.invoiceid == i.invoiceid
AND t.trackid == il.trackid
GROUP BY t.name
) AS top
ORDER BY NumSales DESC
LIMIT 9
