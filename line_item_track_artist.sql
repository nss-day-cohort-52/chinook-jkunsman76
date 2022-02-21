SELECT 
    i.InvoiceLineId,
    t.Name,
    a.Name
    
FROM 
    InvoiceLine i
JOIN Track t ON t.TrackId = i.TrackId
JOIN Album b ON b.AlbumId = t.AlbumId
Join Artist a ON a.ArtistId = b.ArtistId