# Window Functions
These operate on a set of rows and return a single aggregated value for each row
These do not cause rows to become grouped into a single output row, the rows retain their identities and an aggregate value will be added to each row.

We define Window (set of rows) using an OVER() clause.
```sql
  window_function ([ALL] expression) OVER ([PARTITION BY partition_list] [ORDER BY order_list])
```
  ALL: count all values including duplicate ones
  expression: target column or expression that the functions operates on
  OVER: specifies window
  PARTITION BY partition_list: defines the window. partition_list lists the columns to partition by. If not specified entire table and values will be aggregated accordingly.
  ORDER BY order_list: sorts the rows within each partition.

Types of Window functions:
- Aggregate: SUM(), MIN(), AVG(), COUNT()
```sql
SELECT order_id, order_date, customer_name, city, order_amount ,SUM(order_amount) OVER(PARTITION BY city) as grand_total FROM Orders
```

- Ranking
RANK(): gives unique rank to each record based on a value. Identical values get same rank, and when that happens rank is skipped for next value.
DENSE_RANK(): gives unique rank to each record based on a value. Identical values get same rank. Rank is not skipped.
ROW_NUMBER(): gives unique row number to each record.
NTILE(): helps in identifying what subdivision a given row falls into. E.g. dividing rows in 4 quarters.
```sql
SELECT order_id,order_date,customer_name,city, RANK() OVER(ORDER BY order_amount DESC) MyRank FROM Orders
SELECT order_id,order_date,customer_name,city, order_amount, ROW_NUMBER() OVER(ORDER BY order_id) [row_number] FROM Orders
SELECT order_id,order_date,customer_name,city, order_amount, ROW_NUMBER() OVER(PARTITION BY city ORDER BY order_amount DESC) [row_number] FROM Orders
SELECT order_id,order_date,customer_name,city, order_amount, NTILE(4) OVER(ORDER BY order_amount) [row_number] FROM Orders
```



- Value
LAG(): to access data from previous row
LEAD(): to access data from next row
FIRST_VALUE()
LAST_VALUE()
```sql
SELECT order_id,customer_name,city, order_amount,order_date,
 --in below line, 1 indicates check for previous row of the current row
LAG(order_date,1) OVER(ORDER BY order_date) prev_order_date FROM Orders

SELECT order_id,order_date,customer_name,city, order_amount,
FIRST_VALUE(order_date) OVER(PARTITION BY city ORDER BY city) first_order_date,
LAST_VALUE(order_date) OVER(PARTITION BY city ORDER BY city) last_order_date
FROM Orders
```




