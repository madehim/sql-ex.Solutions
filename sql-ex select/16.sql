-- Get pairs of PC models with identical speeds and the same RAM capacity. Each resulting pair should be displayed only once, i.e. (i, j) but not (j, i). Result set: model with the bigger number, model with the smaller number, speed, and RAM.

SELECT DISTINCT b.model, a.model, a.speed, a.ram
FROM PC a, PC b
WHERE a.speed=b.speed AND a.ram=b.ram AND a.model<b.model

