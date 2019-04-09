MATCH(user: User),(badge: Badge)
WHERE user.id = badge.userid
CREATE (user)-[:RECEIVED]->(badge)
