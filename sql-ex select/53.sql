-- With a precision of two decimal places, determine the average number of guns for the battleship classes.

SELECT CAST(AVG(CAST(numGuns AS NUMERIC(5,2))) AS NUMERIC(5,2)) numGuns FROM Classes WHERE type='bb'
