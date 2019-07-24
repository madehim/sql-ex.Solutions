-- All the trailing spaces in the name column of the Battles table remove and add them at the beginning of the name.

UPDATE Battles
SET name=SPACE(DATALENGTH(name)-LEN(name))+RTRIM(name)

