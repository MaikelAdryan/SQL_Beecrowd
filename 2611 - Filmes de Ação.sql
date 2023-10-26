SELECT 
  m.id,
  m.name
FROM 
  genres g,
  movies m
WHERE
  g.id = m.id_genres
  AND g.description = 'Action'