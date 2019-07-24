-- Get the laptop models that have a speed smaller than the speed of any PC.  Result set: type, model, speed.

SELECT DISTINCT 'Laptop', a.model, a.speed
FROM Laptop a, PC b
WHERE a.speed < (SELECT MIN(speed) FROM PC)


