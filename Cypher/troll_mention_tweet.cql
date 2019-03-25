MATCH (tweet:Tweet)-[:MENTIONS]->(troll:Troll)
RETURN troll, COUNT(tweet)
ORDER BY COUNT(tweet) DESC
LIMIT 10
