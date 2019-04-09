MATCH(user: User),(comment: Comment)
WHERE user.id = comment.userid
CREATE (user)-[:COMMENTED]->(comment)
