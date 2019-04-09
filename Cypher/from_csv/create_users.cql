LOAD CSV FROM "file:///data/preprocessed/users.csv" AS line
WITH toInteger(line[0]) AS id,
     toInteger(line[1]) AS reputation,
     datetime(replace(line[2], " ", "T")) AS creationdate,
     line[3] AS displayname,
     line[4] AS websiteurl,
     toInteger(line[5]) AS age
CREATE(:User {id: id, reputation: reputation, creationdate: creationdate, 
			 displayname: displayname, websiteurl: websiteurl, age: age})
