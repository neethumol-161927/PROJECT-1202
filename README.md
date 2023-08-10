# PROJECT-1202
Displaying fact and dimension table
```sql
SELECT * FROM airline.airfact;

SELECT * FROM airline.airrdimension;

```
Dropping empty columns
```sql
ALTER TABLE airline.airrdimension
DROP COLUMN MyUnknownColumn;

```
creating combined view of fact and dimensional table
```sql
CREATE VIEW combined_table1 AS
SELECT
    f.*,
    d.gender, d.class, d.satisfaction
FROM
    airline.airfact f
INNER JOIN
    airline.airrdimension d ON f.`Row ID` = d.`Row ID`;
SELECT * FROM combined_table1;


```

Displying the result of the analysis
```sql
SELECT gender, AVG(age) AS avg_age
FROM  combined_table1
GROUP BY gender;
```
