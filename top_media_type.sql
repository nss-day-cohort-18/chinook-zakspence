SELECT m.name, count(il.invoicelineid) as Sales
FROM MediaType m, Track t, Invoice i, InvoiceLine il
WHERE t.trackid == il.trackid
AND il.invoiceid == i.invoiceid
AND m.mediatypeid == t.mediatypeid
GROUP BY m.name
ORDER BY Sales DESC
LIMIT 1
