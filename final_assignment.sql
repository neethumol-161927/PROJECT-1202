SELECT * FROM airline.airfact;

SELECT * FROM airline.airrdimension;

ALTER TABLE airline.airrdimension
DROP COLUMN MyUnknownColumn;

CREATE VIEW combined_table1 AS
SELECT
    f.*,
    d.gender, d.class, d.satisfaction
FROM
    airline.airfact f
INNER JOIN
    airline.airrdimension d ON f.`Row ID` = d.`Row ID`;
    
    
SELECT * FROM combined_table1;

SELECT gender, AVG(age) AS avg_age
FROM  combined_table1
GROUP BY gender;
