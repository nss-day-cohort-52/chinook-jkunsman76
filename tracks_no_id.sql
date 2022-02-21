SELECT
    a.Title,
    m.Name,
    g.Name
FROM Track t
JOIN Album a ON a.AlbumId = t.AlbumId
JOIN MediaType m ON m.MediaTypeId = t.MediaTypeId
JOIN Genre g ON g.GenreId = t.GenreId
