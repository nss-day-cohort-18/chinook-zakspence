SELECT t.name, al.title, m.name, g.name
from Track t, Album al, MediaType m, Genre g
WHERE t.genreid == g.genreid
AND   t.albumid == al.albumid
AND   t.mediatypeid == m.mediatypeid
