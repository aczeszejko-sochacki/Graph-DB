LOAD CSV FROM "file:///data/preprocessed/badges.csv" AS line
WITH toInteger(line[0]) AS id,
     toInteger(line[1]) AS userid,
     line[2] AS name,
     datetime(replace(line[3], " ", "T")) AS date
CREATE(:Badge {id: id, userid: userid, name: name, date: date})
