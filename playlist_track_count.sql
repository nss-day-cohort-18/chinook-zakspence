SELECT pl.Name, count(plt.TrackId) as NumTracks
FROM Playlist pl, PlaylistTrack plt
WHERE plt.playlistid == pl.playlistid
Group By pl.name
