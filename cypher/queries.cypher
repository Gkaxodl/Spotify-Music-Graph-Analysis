// Spotify Music Graph Analysis
// Cypher queries transcribed from the original project presentation.
// The original source-code files are no longer available.

// Task 1: Highly popular tracks
MATCH (t:Track)
WHERE t.popularity > 80
RETURN t.track_name AS track_name,
       t.popularity AS popularity
ORDER BY t.popularity DESC
LIMIT 20;

// Task 2: Tracks containing "love" or "dream"
MATCH (t:Track)
WHERE toLower(t.track_name) CONTAINS 'love'
   OR toLower(t.track_name) CONTAINS 'dream'
RETURN t.track_name AS track_name,
       t.popularity AS popularity
ORDER BY t.popularity DESC
LIMIT 50;

// Task 3: Tracks by Harry Styles
MATCH (t:Track)-[:PERFORMED_BY]->(a:Artist)
WHERE a.name = 'Harry Styles'
RETURN t.track_name AS track_name,
       t.popularity AS popularity
ORDER BY t.popularity DESC;

// Task 4: Upbeat and happy tracks
MATCH (t:Track)
WHERE t.danceability > 0.7
  AND t.valence > 0.7
  AND t.popularity > 70
RETURN t.track_name AS track_name,
       t.popularity AS popularity,
       t.danceability AS danceability,
       t.valence AS valence
ORDER BY t.popularity DESC;

// Task 5: Update artist name
MATCH (a:Artist)
WHERE a.name = 'Bad Bunny'
SET a.name = 'Bad B.'
RETURN a.name;

// The presentation states that the artist name was reset afterward,
// but the reset query itself was not preserved in the available slide.

// Task 6: Average track popularity by genre
MATCH (t:Track)-[:HAS_GENRE]->(g:Genre)
RETURN g.name AS genre_name,
       AVG(t.popularity) AS avg_popularity
ORDER BY avg_popularity DESC;

// Task 7: Genre-wise track counts
MATCH (t:Track)-[:HAS_GENRE]->(g:Genre)
RETURN g.name AS genre_name,
       COUNT(t) AS track_count
ORDER BY track_count DESC
LIMIT 10;
