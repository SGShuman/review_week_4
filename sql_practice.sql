# Running total with window functions
SELECT DISTINCT month, sum(sales) OVER
  (ORDER BY id ASC) as running_total
FROM sales
ORDER BY running_total;

# Rank a and b by month
SELECT month, type, sales, rank() OVER
  (PARTITION BY month ORDER BY sales DESC)
FROM sales
ORDER BY id;

# Running total by type
SELECT month, type, sum(sales) OVER
  (PARTITION BY type ORDER BY id) as running_total
FROM sales;

# Sum for a, b for Jan and Feb, then add inflation
SELECT type,
  sum(CASE WHEN id < 3 THEN sales ELSE sales * 1.5 END)
FROM sales
GROUP BY type;

# Similar to case
SELECT type, sum(sales)
FROM sales
WHERE id < 3
GROUP BY type;
