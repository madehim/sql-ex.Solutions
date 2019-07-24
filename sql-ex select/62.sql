-- For the database with money transactions being recorded not more than once a day, calculate the total cash balance of all buy-back centers at the beginning of 04/15/2001.

SELECT sum(i) 
FROM (SELECT point, sum(inc) as i 
FROM income_o
WHERE date<'2001-04-15 00:00:00.000'
group by point

UNION

SELECT point, -sum(out) as i 
FROM outcome_o
WHERE date<'2001-04-15 00:00:00.000'
group by point
) as t
