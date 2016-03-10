# Week 4 Review Session

## SQL Practice

We are going to start off with sql query practice.  Start postgres by searching it with spotlight (its started when you can see the psql elephant at the top right of your screen).  Then run

```python
psql
```
Now, inside the psql shell:

```sql
CREATE DATABASE sales
```
(This database should already exist if you created it last week for Eric's review).  Then run:

```python
psql sales < sales.sql
```

Super quick review of what we just did.  First, you got postgres started by searching it with spotlight (or if you run linux or windows I have no idea what you did but hopefully you are still with me).  Second we started psql and created the database called sales.  Third we used the command line to ask psql to run the sales.sql file inside the sales database.  This executes all the sql commands in the file inside the sales database.  Open up the file to see what it does.  It drops the sales table in case it already exists so we can overwrite it, then it creates it again.  Finally it inserts some data.

So we have a sales database, and a sales table inside that database.  We also have a file called sales.sql that creates the table and inserts data into it.

Now, start psql again inside the sales DATABASE:
```python
psql sales
```

 and try answer these questions.

 I'll do my best to explain window functions.  I learned it from <a href=http://www.postgresql.org/docs/9.1/static/tutorial-window.html> here <\a> so you can follow along.

### Questions

1. Write a cumulative sum with a window function. (You should have an OVER clause)
2. By month, which product type sold more. (You should use the RANK() function.)
3. Create a monthly running total by product type.
4. Use CASE to sum up only Jan and Feb sales by type.
Answers are in the sql_practice.sql file.

## Documentation Practice
Pop open the ipython notebook, we are going to talk about writing code using documentation you know nothing about.
