-- Add one inch to the screen size and reduce the price by $100 for any laptop produced by makers E and B

UPDATE Laptop
SET screen=screen+1, price=price-100
WHERE model IN (SELECT model FROM Product WHERE maker='E' OR maker='B')
