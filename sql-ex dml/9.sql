-- Modify data in Classes table so that gun calibers are measured in centimeters (1 inch = 2.5cm), and the displacement - in metric tons (1 metric ton = 1.1 tons). Calculate displacement to within integer.

UPDATE Classes
SET bore=bore*2.5, displacement=ROUND((displacement/1.1),0)
