-- Add into the PC table all the PC models from the Product table that are absent from the PC table.

--Along with above the inserted models must have the specifications:

--1. The code should be equal to the model number plus maximal code value which has been in the PC table before insert operation.

--2. Speed, RAM and HD capacities, and CD-speed should be maximal among all available corresponding values in the PC table.

--3. The price should be an average among all the PCs which have been in the PC table before insert operation.

INSERT INTO PC
SELECT MAX(b.code)+a.model code, a.model, MAX(b.speed) speed, MAX(b.ram) ram, MAX(b.hd) hd, CAST(MAX(CAST(REPLACE(b.cd,'x','')AS int))AS varchar)+'x' cd, AVG(b.price) price
FROM Product a JOIN
PC b ON a.type='PC'
WHERE a.model NOT IN (SELECT model FROM PC)
GROUP BY a.model
