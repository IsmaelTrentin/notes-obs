---
tags:
  - db
lang: en
---

## Create Table

```sql
CREATE TABLE <name> (
	<FIELD> <TYPE>,
	...,
	<INTEGRITY_CONSTRAINT>,
	...
);
```

example:

```sql
CREATE TABLE branch (
	name       char(15),
	city       char(30),
	assets     integer NOT NULL, /* assures value is not null            */
	evaluation REAL,             /* floating point number                */

	PRIMARY KEY(name),           /* sets PK on field `name`              */
	UNIQUE(city),                /* candidate key(s)                     */
	CHECK(assets >= 0),          /* throws error if condition is not met */
	/* everyone except for branch 'test' has to have evaluation > 0      */
	REAL CHECK(name = 'test' OR evaluation > 0)
);
```

FK example:

```sql
CREATE TABLE loan (
	number CHAR(10),
	amount INTEGER,
	/* FK field has to have same datatype */
	branch CHAR(15) NOT NULL, /* impl. total participation */

	PRIMARY KEY (number),
	FOREIGN KEY (branch) REFERENCES branch(name)
);
```

UNIQUE for 1:1
NOT NULL for total participation

## Sequence (Auto-Increment)

```sql
CREATE SEQUENCE s_name START WITH 1 INCREMENT BY 1;
-- ...
s_name.next()
```

## Insert

```sql
INSERT INTO table_name(col, ...) VALUES(col_val, ...);
```

## Update

```sql
UPDATE table_name SET col = <expr/subquery>
WHERE <condition>
```

## Select

`*` wildcard: `%`
`?` wildcard: `_`

For string comparisons use `LIKE`, if exact match is needed then `=`.

`to_date('1.1.1970', 'DD.MM.YYYY')`

`UNION` removes duplicates
`UNION ALL` keeps duplicates

### Join
