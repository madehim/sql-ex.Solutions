-- Maker A has passed manufacture of printers to maker Z. Perform necessary changes.

UPDATE Product
SET maker='Z'
WHERE maker='A' AND type='Printer'

