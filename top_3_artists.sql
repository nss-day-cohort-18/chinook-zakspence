SELECT ar.name, round(sum(il.unitprice), 2) as Sales
FROM Artist ar, Album al, Track t, Invoice i, InvoiceLine il
WHERE ar.artistid == al.artistid
AND al.albumid == t.albumid
AND t.trackid == il.trackid
AND il.invoiceid == i.invoiceid
GROUP BY ar.name
ORDER BY Sales DESC
LIMIT 3
