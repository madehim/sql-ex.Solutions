-- Delete from PC table the computers having minimal hdd size or minimal ram size.

DELETE FROM PC
WHERE ram=(SELECT MIN(ram) FROM PC) OR hd=(SELECT MIN(hd) FROM PC)
