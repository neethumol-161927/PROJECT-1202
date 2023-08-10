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
