-- For the ships in the Ships table that have at least 10 guns, get the class, name, and country.

SELECT b.class, a.name, b.country 
FROM Ships a 
JOIN Classes b ON a.class=b.class 
WHERE b.numGuns>=10
