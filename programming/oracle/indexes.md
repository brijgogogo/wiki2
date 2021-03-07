# Oracle Indexes

create table cust
(cust_id
number
,last_name varchar2(30)
,first_name varchar2(30));

insert into cust (cust_id, last_name, first_name) values(1, 'STARK','JIM');

insert into cust
select level + 1
,dbms_random.string('U',dbms_random.value(3,15)) rand_last_name
,dbms_random.string('U',dbms_random.value(3,15)) rand_first_name
from dual
connect by level < 100000;

select cust_id, last_name, first_name
from cust
where last_name = 'STARK';


exec dbms_stats.gather_table_stats( user, 'CUST' );

explain plan for
select cust_id, last_name, first_name
from cust
where last_name = 'STARK';

select * from table(dbms_xplan.display(null,null,'BASIC +COST'));

create index cust_idx1
on cust(last_name);

The prior statement creates a B-tree index. This is the default index type in Oracle.

The higher the degree of uniqueness, the more efficient a B-tree index becomes. In database jargon, a very selective (unique) column value compared to the total number of rows in a table is said to have high cardinality . Conversely, low cardinality refers to few unique values compared to the total rows for the table.

In some situations, Oracle can retrieve data for a query by only accessing the index (covering index); the table doesn’t have to be accessed.

In some scenarios, the query optimizer chooses not to use an index. In other words, the query optimizer calculates that the cost of a full table scan is less than the cost when using an index.

truncate table cust;

insert into cust
select level
,'STARK'
,'JIM'
from dual
connect by level <= 100000;


B-tree Indexes
-----------------------
The default index type in Oracle is a B-tree index. This index type is very efficient for high-cardinality column values.

Index-Organized Table
-----------------------
An index-organized table (IOT) stores the entire contents of the table’s row in a B-tree index structure. An IOT provides fast access for queries that have exact matches and/or range searches on the primary key.

create table prod_sku
(prod_sku_id number
,sku
varchar2(256),
constraint prod_sku_pk primary key(prod_sku_id, sku)
) organization index;

Unique Indexes
---------------
create unique index cust_uidx1
on cust(last_name, first_name);


Reverse Key Indexes
----------------------
Reverse key indexes are useful to balance I/O in an index that has many sequential inserts in a table with a column managed by a sequence. These indexes perform better in scenarios where you need a way to evenly distribute index data that would otherwise have similar values clustered together. Thus, when using a reverse key index, you avoid having I/O concentrated in one physical disk location within the index during large inserts of sequential values.

create index cust_ridx1
on cust(cust_id) reverse;

The disadvantage of reverse key indexes is that it can’t be used for range scans.

Key Compressed Indexes
-----------------------
A key compressed index is useful in reducing the storage and I/O requirements of concatenated indexes where the leading column is often repeated.

create index cust_cidx_1
on cust(last_name, first_name) compress 2;


Descending Indexes
---------------------
create index cust_didx1
on cust(cust_id desc);

Descending indexes are useful for queries that sort some columns in ascending order and other columns in descending order.


Bitmap Index
-----------------
These indexes are recommended for columns with a relatively low number of distinct values (low cardinality). Bitmap indexes are also efficient for SQL statements that use multiple AND or OR join operators in the WHERE clause (which is typical in a data warehouse environment)

You should not use bitmap indexes in OLTP databases with high INSERT / UPDATE / DELETE activities. This is because the structure of the bitmap index results in many locked rows during singular DML operations (which results in locking problems for high-transaction OLTP systems).

create table f_sales(
sales_amt numberselect name, height from index_stats;
,d_date_id number
,d_product_id number
,d_customer_id number);

create bitmap index f_sales_fk1
on f_sales(d_date_id);


Bitmap Join
--------------
A bitmap join index stores the results of a join between two tables in an index. These indexes are beneficial because they avoid joining tables to retrieve results. Bitmap join indexes are appropriate in situations where you’re joining two tables using the foreign key column(s) in one table that relate to primary key column(s) in another table.

Bitmap join indexes are usually suitable for data warehouse environments that have tables periodically batch loaded but then are not updated. When updating tables that have bitmap join indexes, this potentially results in several rows being locked. Therefore, this type of index is not suitable for an OLTP database.

create bitmap index f_sales_bmj_idx1
on f_sales(d_customers.cust_name)
from f_sales, d_customers
where f_sales.d_customer_id = d_customers.d_customer_id;

Function-Based Indexes
--------------------------
Function-based indexes are created with SQL functions or expressions in their definitions. Function-based indexes allow index lookups on columns referenced by SQL functions in the WHERE clause of a query.

create index cust_fidx1
on cust(upper(last_name));

These types of indexes are necessaryselect name, height from index_stats; because Oracle won’t use a normal B-tree index when a query references a column with a SQL function applied to it.

Indexed Virtual Column
-----------------------
An alternative to a function-based index is to add a virtual column to a table and then create an index on that virtual column.

create table inv(
inv_id number
,inv_count number
,inv_status generated always as (
case when inv_count <= 100 then 'GETTING LOW'
when inv_count > 100 then 'OKAY'
end)
);

create index inv_idx1
on inv(inv_status);

alter table ext_demo add (xv as (substr(x,1,10)));





Virtual Index
-----------------
You can instruct Oracle to create an index that will never be used and won’t have any extents allocated to it via the NOSEGMENT clause, as follows:

create index cust_idx1
on cust(first_name) nosegment;

Even though this index is not physically instantiated, you can instruct Oracle to determine if the index might be used by the optimizer via the _USE_NOSEGMENT_INDEXES initialization parameter; for example:

SQL> alter session set "_use_nosegment_indexes"=true;

When would this be useful? Let’s suppose you have a very large index that you want to create without allocating space. To determine if the index would be used by the optimizer, you can create an index with NOSEGMENT , which allows you to test that scenario. If you determine that the index would be useful, you can drop the index and re-create it without the NOSEGMENT clause.


Invisible Index
-----------------
An invisible index means that the optimizer doesn’t use the index when retrieving data for a query. However, the index structure is still maintained as the underlying table has records inserted, updated, or deleted. This feature is used when you want to test the viability of an index without impacting existing application code.

create index cust_iidx1
on cust(last_name) invisible;

alter index addr_fk1 invisible;



Performance Tips
--------------------------------
If you’ve identified a poorly performing SQL query, also consider creating indexes for the following columns:
1) Create indexes on columns used often as predicates in the WHERE clause; when multiple columns from a table are used in the WHERE clause, consider using a concatenated (multicolumn) index.
2) Create a covering index on columns used in the SELECT clause.
3) Consider creating indexes on columns used in the ORDER BY , GROUP BY , UNION , or DISTINCT clauses.
4) Consider using the SQL Tuning Advisor for indexing recommendations.
5) Rebuilding indexes is generally unnecessary unless an index is corrupt or you want to move an index to different tablespace.
6) Monitor your indexes. Drop indexes that aren’t used. Before dropping an index, consider marking it as unusable or invisible.

alter index addr_fk1 unusable;
alter index addr_fk1 rebuild;
drop index addr_fk1;



ROWID
-----------
You can view the ROWID information via the following query:
select
cust_id, last_name, first_name,
dbms_rowid.rowid_to_absolute_fno(rowid, user, 'CUST') absolute_fno,
dbms_rowid.rowid_block_number(rowid) blocknumber,
dbms_rowid.rowid_row_number(rowid) rownumber
from cust
where cust_id <= 16
order by cust_id;

B-Tree structure
--------------------
The leaf nodes in the B-tree index structure are implemented internally as a doubly linked list. The linked list allows indexes to efficiently provide the results of queries that have ranges in the WHERE clause, such as:
where last name < 'F'
This makes it possible for range scanning through the leaf nodes without having to traverse up and down through branch blocks (known as an index range scan ).

Height of Index
---------------------
One aspect of the B-tree structure is that the leaf nodes should all appear at the same height . The height of an index is defined as the number of blocks it takes to travel from the root to a leaf node. Typically, B-tree indexes have a height of two or three, even for indexes on tables with millions of rows. This means that it only takes two or three I/O operations to find a key value.

View height of index:
1)
analyze index cust_idx1 validate structure;
select name, height from index_stats;

2) blevel + 1 (blevel = branches) (so +1 to count root also)
select blevel from user_indexes where index_name='CUST_IDX1';

You can also visualize the use of an index this by enabling tracing and rerunning the query:

set autotrace on;
select cust_id, last_name, first_name from cust where last_name='ACER';
set autotrace off;

db block gets plus consistent gets equals the total read operations from memory


Estimate size of an index
---------------------------
set serverout on
exec dbms_stats.gather_table_stats(user,'CUST');
variable used_bytes number
variable alloc_bytes number
exec dbms_space.create_index_cost( 'create index cust_idx2 on cust(first_name)', -
:used_bytes, :alloc_bytes );
print :used_bytes
print :alloc_bytes

The used_bytes variable gives you an estimate of how much room is required for the index data. The alloc_bytes variable provides an estimate of how much space is allocated within the tablespace.

The actual amount of space consumed is shown by this query:

select bytes from user_segments where segment_name='CUST_IDX2';




Reports on Indexes
-----------------------
select index_name, index_type, uniqueness, table_name, tablespace_name, status
from user_indexes
where table_name in ('CUST','ADDRESS');

select index_name, column_name, column_position
from user_ind_columns
where table_name in ('CUST','ADDRESS')
order by index_name, column_position;


select a.segment_name, a.segment_type, a.extents, a.bytes
from user_segments a, user_indexes b
where a.segment_name = b.index_name
and b.table_name in ('CUST','ADDRESS');

set long 1000000
select dbms_metadata.get_ddl('INDEX','ADDR_FK1') from dual;

select dbms_metadata.get_ddl('INDEX', index_name) from user_indexes;


select constraint_name, constraint_type
from user_constraints
where table_name = 'CUST';








