MATCH (trollMentioning:Troll)-[:POSTED]->(tweet:Tweet)-[:MENTIONS]->(trollMentioned:Troll)
RETURN trollMentioning, COUNT(trollMentioned)
ORDER BY COUNT(trollMentioned) DESC
LIMIT 10
