MATCH (troll:Troll)-[:POSTED]->(Tweet)-[:CONTAINS_ENTITY]->(loc:Location)
RETURN troll, COUNT(loc)
ORDER BY COUNT(loc) DESC
LIMIT 10
