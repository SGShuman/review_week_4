# Running total with window functions
SELECT DISTINCT month, sum(sales) OVER
  (ORDER BY id ASC) as running_total
FROM sales
ORDER BY running_total;

# Rank by type by month
SELECT month, type, sales, rank() OVER
  (PARTITION BY month ORDER BY sales DESC)
FROM sales
ORDER BY id;

# Monthly running total by type
SELECT month, type, sum(sales) OVER
  (PARTITION BY type ORDER BY id) as running_total
FROM sales;

# Sum for a, b for Jan and Feb, then add inflation
# Just doing this to show the power of CASE
# What would happen if we didn't aggregate the CASE?
SELECT type,
  sum(CASE WHEN id < 3 THEN sales ELSE sales * 1.5 END)
FROM sales
GROUP BY type;

# Similar to case, but more simple
SELECT type, sum(sales)
FROM sales
WHERE id < 3
GROUP BY type;
