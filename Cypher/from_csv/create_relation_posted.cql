MATCH(user: User), (post: Post)
WHERE user.id = post.owneruserid
CREATE (user)-[:POSTED]->(post)
