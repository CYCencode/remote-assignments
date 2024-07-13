-- Write an SQL statement to select all articles with their author’s email.
SELECT * FROM assignment.article
JOIN user ON user.id = article.user_id
WHERE email = "Cyc.evelynchang@gmail.com";

-- Write another SQL statement to select articles from 7th to 12th sorted by id.
SELECT * FROM assignment.article
ORDER BY id
LIMIT 6 OFFSET 6;