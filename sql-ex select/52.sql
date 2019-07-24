-- Determine the names of all ships in the Ships table that can be a Japanese battleship having at least nine main guns with a caliber of less than 19 inches and a displacement of not more than 65 000 tons.


SELECT name FROM Ships a JOIN
(SELECT class 
FROM Classes 
WHERE country='Japan' AND type='bb' AND (numGuns>=9 OR numGuns IS NULL) AND (bore<19 OR bore IS NULL) AND (displacement<=65000 or displacement IS NULL)) b 
ON a.class=b.class
