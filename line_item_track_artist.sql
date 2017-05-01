SELECT il.InvoiceLineId, t.Name, ar.Name
FROM InvoiceLine il, Track t, Album al, Artist ar
WHERE il.TrackId == t.TrackId AND t.AlbumId == al.AlbumId AND al.ArtistId == ar.ArtistId
