MATCH(accepted: Post), (post: Post)
WHERE post.posttypeid = 1 AND post.acceptedanswerid = accepted.id
CREATE (post)-[:ACCEPTED]->(accepted)
