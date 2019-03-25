MATCH (citing:Troll)-[:POSTED]->(:Tweet)-[:RETWEETED]->(:Tweet)<-[:POSTED]-(cited:Troll)
WHERE citing <> cited
CREATE (citing)-[:CITES]->(cited)
