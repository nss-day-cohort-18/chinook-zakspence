SELECT i.invoiceid, count(il.invoiceid)
FROM Invoice i, InvoiceLine il
WHERE i.invoiceid == il.invoiceid
GROUP BY i.invoiceid
