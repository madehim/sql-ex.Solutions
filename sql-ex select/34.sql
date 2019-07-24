-- In accordance with the Washington Naval Treaty concluded in the beginning of 1922, it was prohibited to build battle ships with a displacement of more than 35 thousand tons.  Get the ships violating this treaty (only consider ships for which the year of launch is known).  List the names of the ships.

SELECT name FROM Ships
WHERE launched IS NOT NULL AND launched>=1922 AND class IN
(SELECT class FROM Classes
WHERE type='bb' AND displacement>35000)






