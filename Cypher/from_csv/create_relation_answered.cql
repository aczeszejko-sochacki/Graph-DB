MATCH(answer: Post), (post: Post)
WHERE answer.posttypeid = 2 AND answer.parentid = post.id
CREATE (answer)-[:ANSWERED]->(post)
