LOAD CSV FROM "file:///data/preprocessed/posts.csv" AS line
WITH toInteger(line[0]) AS id,
     toInteger(line[1]) AS posttypeid,
     toInteger(line[2]) AS parentid,
     toInteger(line[3]) AS acceptedanswerid,
     datetime(replace(line[4], " ", "T")) AS creationdate,
     toInteger(line[5]) AS score,
     toInteger(line[6]) AS viewcount,
     toInteger(line[7]) AS owneruserid,
     line[8] AS title,
     toInteger(line[9]) AS answercount
CREATE(:Post {id: id, posttypeid: posttypeid, parentid: parentid,
		acceptedanswerid: acceptedanswerid, creationdate: creationdate,
              score: score, viewcount: viewcount, owneruserid: owneruserid,
              title: title, answercount: answercount})
