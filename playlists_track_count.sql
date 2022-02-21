SELECT
 p.Name, 
 count(t.TrackId) AS tracks
FROM Playlist p
JOIN PlaylistTrack t ON t.PlaylistId = p.PlaylistId
GROUP BY t.PlaylistId;