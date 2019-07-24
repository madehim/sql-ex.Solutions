-- For the database with money transactions being recorded not more than once a day, calculate the total cash balance of all buy-back centers.

SELECT sum(i) FROM
(SELECT point, sum(inc) as i FROM
income_o
group by point

UNION

SELECT point, -sum(out) as i FROM
outcome_o
group by point
) as t
