LOAD CSV FROM "file:///data/preprocessed/comments.csv" AS line
WITH toInteger(line[0]) AS id,
     tointeger(line[1]) AS postid,
     toInteger(line[2]) AS score,
     datetime(replace(line[3], " ", "T")) AS creationdate,
     toInteger(line[4]) AS userid
CREATE(:Comment {id: id, postid: postid, score: score,
		creationdate: creationdate, userid: userid})
