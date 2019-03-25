MATCH ({location:"USA"})-[:POSTED]->(tweet:Tweet)
RETURN time(split(tweet.created_str, ' ')[1]).hour, COUNT(tweet)
