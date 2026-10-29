# Complete SQL Roadmap for a Professional Data Analyst
**Focus:** Microsoft SQL Server / T-SQL  
**Goal:** Progress from beginner SQL to job-ready data analysis, reporting, and database-query skills.  
**Recommended stack:** SQL Server + SSMS, Excel, Power BI, Python (pandas), and Git.

---

## How to Use This Roadmap

1. Create a folder for each numbered phase in the suggested structure below.
2. Study topics in order. Do not skip the fundamentals or join practice.
3. For each topic:
   - Read the concept.
   - Write and run at least 3–5 queries.
   - Save your work in a `.sql` file.
   - Add comments explaining what the query does.
   - Test normal, missing, duplicate, and boundary cases where applicable.
4. Use a practice database such as Microsoft AdventureWorks or a small database you create yourself.
5. Build business-focused projects, not just isolated query exercises.
6. Review incorrect queries and rewrite them without looking at your previous solution.
7. Track progress using the checklist at the end.

**Suggested weekly effort:** 8–12 focused hours. If you have less time, extend the schedule rather than rushing through core skills.

---

# 1. Learning Outcomes

By the end of this roadmap, you should be able to:

- Retrieve, filter, sort, and transform data with T-SQL.
- Clean and validate imperfect business data.
- Combine multiple tables using joins and set operators.
- Build accurate summaries, KPIs, and management reports.
- Analyze trends, rankings, running totals, and period-over-period changes.
- Use CTEs and subqueries to structure complex queries.
- Understand database tables, keys, relationships, and normalization.
- Read and write views and stored procedures.
- Understand transactions, permissions, indexes, and basic performance tuning.
- Connect SQL Server data to Excel, Power BI, and Python.
- Explain the business meaning and validation logic behind your results.
- Present a portfolio of practical SQL projects.

> **Priority for Data Analyst roles:** querying, filtering, data cleaning, joins, aggregation, CTEs, window functions, dates, business KPIs, and query validation. Learn advanced database administration after these are strong.

---

# 2. Recommended Tools and Practice Data

## Tools
- **SQL Server Developer or Express:** local SQL database engine.
- **SQL Server Management Studio (SSMS):** write and run T-SQL.
- **Git and GitHub/GitLab:** version control for your practice repository.
- **Excel:** validate outputs and compare results.
- **Power BI:** model and visualize analyzed data.
- **Python with pandas:** optional but valuable for validation and automation.

## Practice databases
- Microsoft AdventureWorks sample database.
- Microsoft Wide World Importers sample database.
- Your own practice database containing customers, products, orders, order details, employees, departments, and inventory.

Use synthetic or approved training data. Do not commit confidential company data, credentials, server names, or personal information to a public repository.

---

# 3. Repository and Folder Structure

Create a root folder such as `SQL_Data_Analyst_Roadmap`. Open Command Prompt in that folder and run:

```bat
mkdir 00_Setup
mkdir 01_SQL_Fundamentals
mkdir 02_Filtering_and_Sorting
mkdir 03_SQL_Functions
mkdir 04_Data_Manipulation
mkdir 05_Constraints_and_Keys
mkdir 06_Joins_and_Set_Operators
mkdir 07_Aggregation_and_Grouping
mkdir 08_Subqueries_and_CTEs
mkdir 09_Intermediate_Query_Patterns
mkdir 10_Window_Functions
mkdir 11_Data_Cleaning_and_Validation
mkdir 12_Business_Data_Analysis
mkdir 13_Date_and_Time_Analysis
mkdir 14_Views_and_Stored_Procedures
mkdir 15_SQL_Functions_and_Triggers
mkdir 16_Transactions_and_Error_Handling
mkdir 17_Database_Design_and_Modeling
mkdir 18_Indexing_and_Performance_Tuning
mkdir 19_SQL_Security_and_Best_Practices
mkdir 20_Advanced_SQL
mkdir 21_SQL_Interview_Questions
mkdir 22_Real_World_Projects
mkdir 23_Practice_Exercises
mkdir 24_Reference_and_Cheatsheets
```

Suggested files for each folder:

```text
SQL_Data_Analyst_Roadmap/
├── README.md
├── 00_Setup/
│   ├── 01_Install_and_Connect.md
│   ├── 02_Create_Practice_Database.sql
│   └── 03_SQL_Server_Notes.md
├── 01_SQL_Fundamentals/
│   ├── 01_SELECT.sql
│   ├── 02_DISTINCT.sql
│   ├── 03_Column_Aliases.sql
│   ├── 04_TOP.sql
│   ├── 05_Data_Types.sql
│   └── README.md
├── 02_Filtering_and_Sorting/
│   ├── 01_WHERE.sql
│   ├── 02_AND_OR_NOT.sql
│   ├── 03_IN_BETWEEN_LIKE.sql
│   ├── 04_NULL_Handling.sql
│   └── 05_ORDER_BY.sql
├── 03_SQL_Functions/
│   ├── 01_String_Functions.sql
│   ├── 02_Numeric_Functions.sql
│   ├── 03_Date_Functions.sql
│   ├── 04_CONVERT_CAST.sql
│   └── 05_CASE_COALESCE.sql
├── 04_Data_Manipulation/
│   ├── 01_INSERT.sql
│   ├── 02_UPDATE.sql
│   ├── 03_DELETE.sql
│   └── 04_MERGE_Concepts.sql
├── 05_Constraints_and_Keys/
├── 06_Joins_and_Set_Operators/
├── 07_Aggregation_and_Grouping/
├── 08_Subqueries_and_CTEs/
├── 09_Intermediate_Query_Patterns/
├── 10_Window_Functions/
├── 11_Data_Cleaning_and_Validation/
├── 12_Business_Data_Analysis/
├── 13_Date_and_Time_Analysis/
├── 14_Views_and_Stored_Procedures/
├── 15_SQL_Functions_and_Triggers/
├── 16_Transactions_and_Error_Handling/
├── 17_Database_Design_and_Modeling/
├── 18_Indexing_and_Performance_Tuning/
├── 19_SQL_Security_and_Best_Practices/
├── 20_Advanced_SQL/
├── 21_SQL_Interview_Questions/
├── 22_Real_World_Projects/
├── 23_Practice_Exercises/
└── 24_Reference_and_Cheatsheets/
```

Add numbered `.sql` files and a short `README.md` to each phase as you progress. The structure is a guide; you do not need to create every file on day one.

---

# 4. Phase-by-Phase Topic Roadmap

## Phase 00 — Setup and SQL Environment

- [ ] Understand database, schema, table, row, column, query, and result set.
- [ ] Install or access SQL Server and SSMS.
- [ ] Connect to a SQL Server instance.
- [ ] Understand server, database, and schema names.
- [ ] Create a practice database and inspect sample tables.
- [ ] Run a basic `SELECT` query.
- [ ] Save scripts as `.sql` files.
- [ ] Learn how to execute a selected query and read error messages.
- [ ] Learn the difference between development, test, and production environments.
- [ ] Understand why production data should not be modified casually.

**Practice deliverable:** a script that creates a practice database and basic tables.

## Phase 01 — SQL Fundamentals

- [ ] `SELECT`
- [ ] `SELECT *` and why explicitly naming columns is often better
- [ ] Selecting expressions and constants
- [ ] Column aliases with `AS`
- [ ] `DISTINCT`
- [ ] `TOP` and `TOP ... PERCENT`
- [ ] `ORDER BY`, ascending and descending
- [ ] Basic arithmetic expressions
- [ ] SQL comments (`--` and `/* ... */`)
- [ ] SQL statement structure and readability
- [ ] Basic data types: `INT`, `BIGINT`, `DECIMAL`, `VARCHAR`, `NVARCHAR`, `DATE`, `DATETIME2`, `BIT`
- [ ] Understanding precision and scale for numeric values
- [ ] Schema-qualified names such as `dbo.Customers`

**Practice:** select specific columns, create aliases, return unique values, and show the top 10 records.

## Phase 02 — Filtering and Sorting

- [ ] `WHERE`
- [ ] Comparison operators: `=`, `<>`, `!=`, `>`, `<`, `>=`, `<=`
- [ ] `AND`, `OR`, `NOT`
- [ ] Operator precedence and parentheses
- [ ] `IN` and `NOT IN`
- [ ] `BETWEEN` and inclusive boundaries
- [ ] `LIKE`, `%`, `_`, and wildcard matching
- [ ] `IS NULL` and `IS NOT NULL`
- [ ] Combining multiple conditions
- [ ] Filtering dates with inclusive/exclusive ranges
- [ ] Sorting by one or multiple columns
- [ ] Stable sorting and tie-breakers
- [ ] `OFFSET ... FETCH` for paging

**Practice:** find orders within a date range, pending invoices, records for selected buyers, and products above a threshold.

## Phase 03 — SQL Functions and Expressions

### String functions
- [ ] `CONCAT`, `CONCAT_WS`
- [ ] `LEN`, `DATALENGTH`
- [ ] `LEFT`, `RIGHT`, `SUBSTRING`
- [ ] `CHARINDEX`, `PATINDEX`
- [ ] `REPLACE`, `TRANSLATE`
- [ ] `UPPER`, `LOWER`
- [ ] `LTRIM`, `RTRIM`, `TRIM`
- [ ] `STRING_SPLIT`, `STRING_AGG`
- [ ] Unicode text and `NVARCHAR`

### Numeric and conversion functions
- [ ] `ROUND`, `CEILING`, `FLOOR`, `ABS`
- [ ] `CAST`, `CONVERT`, `TRY_CAST`, `TRY_CONVERT`
- [ ] `ISNULL`, `COALESCE`, `NULLIF`
- [ ] `CASE WHEN`
- [ ] `CHOOSE`, `IIF` (recognize them; prefer clear `CASE` where appropriate)

### Date and time functions
- [ ] `GETDATE`, `SYSDATETIME`, `CURRENT_TIMESTAMP`
- [ ] `DATEADD`, `DATEDIFF`, `DATEDIFF_BIG`
- [ ] `DATEPART`, `DATENAME`
- [ ] `YEAR`, `MONTH`, `DAY`
- [ ] `EOMONTH`, `DATEFROMPARTS`, `DATETIME2FROMPARTS`
- [ ] `AT TIME ZONE` basics
- [ ] Understand implicit conversion and date-format ambiguity

**Practice:** standardize text, extract a code from a hyphen-separated reference, calculate durations, and classify records with `CASE`.

## Phase 04 — Data Manipulation (DML)

- [ ] `INSERT INTO ... VALUES`
- [ ] `INSERT INTO ... SELECT`
- [ ] `UPDATE ... SET`
- [ ] `DELETE`
- [ ] `OUTPUT` clause for reviewing changed rows
- [ ] `TRUNCATE TABLE` and how it differs from `DELETE`
- [ ] `MERGE` concepts and risks; understand alternatives for safe upsert logic
- [ ] `IDENTITY` columns
- [ ] Default values
- [ ] Safe `UPDATE` and `DELETE` practices
- [ ] Preview affected rows with a `SELECT` first
- [ ] Use transactions where appropriate
- [ ] Verify row counts and results after changes

**Safety rule:** never run an `UPDATE` or `DELETE` in a real database until you have verified the target rows, predicate, permissions, backup/recovery expectations, and transaction plan.

## Phase 05 — Constraints, Keys, and Data Integrity

- [ ] Primary keys
- [ ] Foreign keys
- [ ] Unique constraints
- [ ] `NOT NULL`
- [ ] `CHECK` constraints
- [ ] `DEFAULT` constraints
- [ ] Composite keys
- [ ] Natural keys versus surrogate keys
- [ ] Referential integrity
- [ ] Duplicate detection
- [ ] Orphan-row detection
- [ ] Data type and length validation

**Practice:** design customer, product, order, and order-detail tables with valid keys and constraints.

## Phase 06 — Joins and Set Operators

- [ ] `INNER JOIN`
- [ ] `LEFT JOIN`
- [ ] `RIGHT JOIN` and why `LEFT JOIN` is often easier to read
- [ ] `FULL OUTER JOIN`
- [ ] `CROSS JOIN`
- [ ] Self joins
- [ ] Joining three or more tables
- [ ] Composite join conditions
- [ ] Join cardinality and one-to-many relationships
- [ ] Duplicate row multiplication caused by joins
- [ ] `UNION` versus `UNION ALL`
- [ ] `EXCEPT`
- [ ] `INTERSECT`
- [ ] Anti-joins with `NOT EXISTS` or `LEFT JOIN ... IS NULL`
- [ ] Semi-joins with `EXISTS`
- [ ] Join columns with mismatched data types
- [ ] Choosing the correct join key

**Practice:** combine orders, customers, products, factories, buyers, and invoices. Validate row counts before and after each join.

## Phase 07 — Aggregation and Grouping

- [ ] `COUNT(*)` versus `COUNT(column)`
- [ ] `COUNT(DISTINCT column)`
- [ ] `SUM`, `AVG`, `MIN`, `MAX`
- [ ] `GROUP BY`
- [ ] `HAVING`
- [ ] Conditional aggregation with `SUM(CASE WHEN ... THEN ... END)`
- [ ] Multiple grouping columns
- [ ] Aggregating after joins without double counting
- [ ] Handling `NULL` in aggregates
- [ ] Percentages and ratios with safe division using `NULLIF`
- [ ] Rounding and numeric precision
- [ ] Grouping sets, `ROLLUP`, and `CUBE` (introductory)
- [ ] `GROUPING` and `GROUPING_ID` (introductory)

**Practice:** sales by buyer/month, invoice count by status, stock by item/factory, and pending versus completed totals.

## Phase 08 — Subqueries and Common Table Expressions

- [ ] Scalar subqueries
- [ ] Multi-row subqueries
- [ ] Correlated subqueries
- [ ] `EXISTS` and `NOT EXISTS`
- [ ] `IN` and `NOT IN` caveats with `NULL`
- [ ] Derived tables
- [ ] Common Table Expressions (`WITH ... AS`)
- [ ] Multiple CTEs
- [ ] Recursive CTE concepts
- [ ] CTE versus temporary table versus derived table
- [ ] Query decomposition into logical steps
- [ ] Rewriting a subquery as a join when appropriate

**Practice:** find customers above average sales, latest record per key, missing related rows, and invoices with no matching shipment record.

## Phase 09 — Intermediate Query Patterns

- [ ] `CASE`-based status classification
- [ ] Conditional counts and sums
- [ ] De-duplication with `ROW_NUMBER`
- [ ] Selecting latest/earliest record per entity
- [ ] Finding missing sequence values
- [ ] Comparing two data extracts
- [ ] Finding unmatched records between systems
- [ ] Pivoting rows into columns with conditional aggregation
- [ ] `PIVOT` and `UNPIVOT` basics
- [ ] `APPLY`, `CROSS APPLY`, and `OUTER APPLY`
- [ ] Dynamic search conditions
- [ ] Safe optional-parameter filtering
- [ ] Pagination
- [ ] Handling many-to-many relationships
- [ ] Avoiding accidental many-to-many joins

**Practice:** compare ERP and MIS totals, identify records present in one source but not another, and assign a clear pending/completed status.

## Phase 10 — Window Functions

- [ ] `OVER()`
- [ ] `PARTITION BY`
- [ ] `ORDER BY` inside `OVER`
- [ ] Window frames: `ROWS` and `RANGE`
- [ ] `ROW_NUMBER`
- [ ] `RANK` and `DENSE_RANK`
- [ ] `NTILE`
- [ ] `LAG` and `LEAD`
- [ ] `FIRST_VALUE` and `LAST_VALUE`
- [ ] Running totals
- [ ] Moving averages
- [ ] Percent-of-total calculations
- [ ] Period-over-period change
- [ ] Ranking within each buyer/factory/category
- [ ] Deduplication using window functions
- [ ] Difference between grouped aggregates and window aggregates

**Practice:** top buyers per month, latest invoice per custom code, running monthly totals, and month-over-month growth.

## Phase 11 — Data Cleaning and Validation

- [ ] Detect `NULL`, empty strings, and whitespace-only strings
- [ ] Remove leading/trailing spaces with `TRIM`
- [ ] Detect hidden/control characters
- [ ] Standardize case and spelling
- [ ] Parse dates safely with `TRY_CONVERT`
- [ ] Detect invalid numeric values
- [ ] Identify duplicate business keys
- [ ] Validate required columns
- [ ] Check allowed values and reference tables
- [ ] Detect impossible or suspicious dates
- [ ] Detect negative or unusually large quantities
- [ ] Validate totals and cross-table relationships
- [ ] Compare source and target row counts
- [ ] Build exception reports rather than silently dropping bad rows
- [ ] Document transformation rules
- [ ] Make cleaning operations repeatable and auditable

**Practice:** create a data-quality report with counts for missing values, duplicates, invalid dates, invalid codes, and unmatched records.

## Phase 12 — Business Data Analysis and KPI Reporting

- [ ] Define a business question before writing SQL
- [ ] Translate KPI definitions into precise SQL logic
- [ ] Sales, quantity, order, and invoice metrics
- [ ] Pending versus completed status analysis
- [ ] Buyer, supplier, product, factory, and department analysis
- [ ] Top-N and bottom-N analysis
- [ ] Contribution percentage
- [ ] Average order value and average quantity
- [ ] Conversion and completion rates
- [ ] Backlog and aging analysis
- [ ] Target versus actual analysis
- [ ] Exception and outlier analysis
- [ ] Reconciliation between two reports/systems
- [ ] Snapshot versus transaction data
- [ ] Avoiding double counting
- [ ] Define the grain of every report
- [ ] Add totals and subtotals when needed
- [ ] Explain metric definitions and exclusions

**Practice:** create a management summary showing totals, status breakdown, top contributors, exceptions, and period comparison.

## Phase 13 — Date and Time Analysis

- [ ] Date literals and unambiguous formats
- [ ] Filter dates with half-open ranges: `>= start` and `< next period`
- [ ] Day, week, month, quarter, and year analysis
- [ ] Month-to-date (MTD)
- [ ] Quarter-to-date (QTD)
- [ ] Year-to-date (YTD)
- [ ] Previous day/week/month
- [ ] Rolling 7-day, 30-day, and 12-month metrics
- [ ] Business days and weekends
- [ ] Fiscal years and fiscal periods
- [ ] Calendar/date dimension
- [ ] Month-over-month and year-over-year comparison
- [ ] Aging buckets
- [ ] Time zone basics
- [ ] Date boundaries and daylight-saving concepts where relevant
- [ ] Avoid wrapping indexed date columns in functions in `WHERE` when a range predicate will work

**Practice:** daily ex-factory summary, yesterday versus month-to-date, and invoice aging by status.

## Phase 14 — Views and Stored Procedures

- [ ] What a view is
- [ ] Create and alter views
- [ ] Schema binding concepts
- [ ] View limitations and ordering
- [ ] What a stored procedure is
- [ ] `CREATE PROCEDURE` / `ALTER PROCEDURE`
- [ ] Input parameters
- [ ] Output parameters and return codes
- [ ] Default parameter values
- [ ] Parameter data types and validation
- [ ] `SET NOCOUNT ON`
- [ ] `TRY...CATCH` basics
- [ ] `THROW`
- [ ] Parameterized execution
- [ ] Read and understand existing procedures
- [ ] Inspect procedure definitions and dependencies
- [ ] Safely test procedures in a non-production environment
- [ ] Understand permissions and ownership chaining
- [ ] Understand how reporting tools call procedures

**Practice:** create a parameterized monthly sales report procedure and a reusable view for cleaned invoice data.

## Phase 15 — User-Defined Functions and Triggers

- [ ] Scalar functions
- [ ] Inline table-valued functions
- [ ] Multi-statement table-valued functions (know trade-offs)
- [ ] Function limitations and performance implications
- [ ] What triggers are
- [ ] `AFTER` and `INSTEAD OF` triggers
- [ ] `inserted` and `deleted` pseudo-tables
- [ ] Multi-row-safe trigger logic
- [ ] Auditing use cases
- [ ] Why triggers can make systems harder to debug
- [ ] Alternatives such as explicit application logic or audit tables

**Priority:** learn what these objects do and how to read them. For a Data Analyst, creating complex triggers is usually lower priority than query analysis and reporting.

## Phase 16 — Transactions and Error Handling

- [ ] ACID properties
- [ ] `BEGIN TRANSACTION`
- [ ] `COMMIT`
- [ ] `ROLLBACK`
- [ ] `TRY...CATCH`
- [ ] `XACT_STATE()`
- [ ] `@@TRANCOUNT`
- [ ] `SET XACT_ABORT ON`
- [ ] Savepoints
- [ ] Isolation levels
- [ ] Dirty reads, non-repeatable reads, phantom reads
- [ ] Blocking and deadlocks
- [ ] Locking basics
- [ ] Idempotent scripts
- [ ] Safe retry concepts
- [ ] Transaction scope and duration

**Practice:** test an update in a transaction, inspect the result, then roll it back. Never experiment with transaction scripts against production data.

## Phase 17 — Database Design and Modeling

- [ ] Entities, attributes, and relationships
- [ ] ER diagrams
- [ ] One-to-one, one-to-many, many-to-many
- [ ] Primary and foreign keys
- [ ] Composite keys
- [ ] Normalization: 1NF, 2NF, 3NF
- [ ] Functional dependencies (introductory)
- [ ] Surrogate versus natural keys
- [ ] Fact and dimension tables
- [ ] Star schema
- [ ] Snowflake schema
- [ ] Transactional systems versus analytical systems
- [ ] Grain of fact tables
- [ ] Slowly changing dimensions (introductory)
- [ ] Date dimension
- [ ] Data dictionary and schema documentation

**Practice:** design a small sales star schema suitable for Power BI.

## Phase 18 — Indexing and Performance Tuning

- [ ] What an index does
- [ ] Clustered and nonclustered indexes
- [ ] Composite indexes and column order
- [ ] Included columns
- [ ] Unique indexes
- [ ] Index seek versus scan
- [ ] Actual execution plan
- [ ] Estimated versus actual rows
- [ ] SARGable predicates
- [ ] Avoid `SELECT *` in production reporting queries
- [ ] Avoid unnecessary conversions on join/filter columns
- [ ] Understand statistics
- [ ] Parameter sniffing (conceptual)
- [ ] Query Store (introductory)
- [ ] Common causes of slow queries
- [ ] Measure before and after changes
- [ ] Index maintenance concepts
- [ ] Why indexes can slow down data modifications
- [ ] Avoid adding indexes without evidence

**Practice:** inspect the execution plan of a slow query, identify the likely bottleneck, and measure the result of one justified change.

## Phase 19 — SQL Security and Professional Practices

- [ ] Principle of least privilege
- [ ] Login versus database user
- [ ] Roles and permissions
- [ ] `GRANT`, `DENY`, and `REVOKE`
- [ ] Avoid embedding passwords in scripts
- [ ] Use parameterized queries in applications
- [ ] SQL injection concepts and prevention
- [ ] Separate development, test, and production access
- [ ] Avoid exposing personal or confidential data
- [ ] Use transactions and approvals for destructive changes
- [ ] Naming conventions
- [ ] Formatting and comments
- [ ] Script versioning with Git
- [ ] Code review and change tracking
- [ ] Document assumptions, business rules, and known limitations
- [ ] Verify report totals against a trusted reference

## Phase 20 — Advanced SQL Topics (After Core Competence)

- [ ] Recursive CTE use cases
- [ ] Advanced window frames
- [ ] Dynamic SQL and `sp_executesql`
- [ ] Safe dynamic SQL and identifier quoting with `QUOTENAME`
- [ ] Temporary tables (`#temp`) and table variables
- [ ] Table-valued parameters (conceptual)
- [ ] JSON functions in SQL Server
- [ ] XML basics if required by the source system
- [ ] `OPENJSON`
- [ ] `PIVOT` / `UNPIVOT`
- [ ] `APPLY`
- [ ] Temporal tables (conceptual)
- [ ] Change Data Capture (CDC) and Change Tracking (conceptual)
- [ ] Query Store
- [ ] Partitioning concepts
- [ ] Columnstore indexes (analytics workloads)
- [ ] Import/export and bulk-loading concepts
- [ ] Linked servers and cross-database queries (with governance)
- [ ] SQL Agent jobs (read and monitor; administration may require permissions)

**Note:** choose advanced topics based on your job and environment rather than learning every feature without a use case.

## Phase 21 — SQL Interview Preparation

- [ ] Explain `WHERE` versus `HAVING`
- [ ] Explain `UNION` versus `UNION ALL`
- [ ] Explain `INNER JOIN` versus `LEFT JOIN`
- [ ] Explain `COUNT(*)` versus `COUNT(column)`
- [ ] Explain `ROW_NUMBER`, `RANK`, and `DENSE_RANK`
- [ ] Explain CTE versus subquery versus temporary table
- [ ] Find the second-highest salary
- [ ] Find duplicate records
- [ ] Find the latest row per customer
- [ ] Find customers with no orders
- [ ] Calculate running totals
- [ ] Calculate month-over-month growth
- [ ] Find gaps in dates or sequences
- [ ] Delete duplicates safely (explain before executing)
- [ ] Explain primary keys and foreign keys
- [ ] Explain normalization and star schema
- [ ] Explain clustered versus nonclustered indexes
- [ ] Read an execution plan at a basic level
- [ ] Debug a query returning duplicate or missing rows
- [ ] Explain a project and validate its business logic

---

# 5. Data Analyst Priority Order

Use this order if your main goal is to become employable as a Data Analyst.

## Must master
1. `SELECT`, `WHERE`, `ORDER BY`, `TOP`
2. String, numeric, date, and conversion functions
3. `CASE`, `NULL` handling
4. `GROUP BY`, aggregates, `HAVING`
5. `INNER JOIN`, `LEFT JOIN`, multi-table joins
6. Subqueries, `EXISTS`, CTEs
7. Window functions
8. Data cleaning and validation
9. Date-based reporting and period comparisons
10. Business KPIs and reconciliation
11. Views and reading stored procedures
12. Query correctness and basic performance tuning

## Learn next
- Writing stored procedures
- Data modeling and star schemas
- Transactions and error handling
- Index design basics
- Power BI data modeling and DAX
- Python/pandas for repeatable analysis

## Learn later or as the job requires
- Complex triggers
- Deep SQL Server administration
- Replication, high availability, and disaster recovery
- Advanced partitioning and specialized indexing
- Complex dynamic SQL and XML processing

---

# 6. A 12-Week SQL Study Plan

This is a suggested plan, not a deadline. Move forward only when you can solve exercises independently.

| Week | Main topics | Practical output |
|---|---|---|
| 1 | Setup, `SELECT`, aliases, `DISTINCT`, `TOP`, data types | 25 basic queries |
| 2 | `WHERE`, logical operators, `LIKE`, `IN`, `BETWEEN`, sorting | 30 filtering queries |
| 3 | String, numeric, date, conversion functions, `CASE`, `NULL` | Data-cleaning script |
| 4 | `GROUP BY`, aggregates, `HAVING`, conditional aggregation | KPI summary report |
| 5 | Joins, set operators, join cardinality | Multi-table report |
| 6 | Subqueries, `EXISTS`, CTEs, intermediate patterns | Reconciliation report |
| 7 | Window functions and ranking | Top-N and running-total analysis |
| 8 | Data validation, date analysis, MTD/YTD, aging | Data-quality and date report |
| 9 | Business analysis, KPI definitions, report validation | Business case study |
| 10 | Views, stored procedures, transactions, error handling | Reusable parameterized report |
| 11 | Data modeling, indexes, execution plans, security basics | Query review and schema diagram |
| 12 | Portfolio project, interview practice, documentation | One complete portfolio project |

**Weekly routine:**
- 20% reading and examples.
- 60% writing and debugging queries.
- 20% reviewing, documenting, and explaining results.

---

# 7. Real-World Portfolio Projects

Each project should include a business question, schema/grain notes, SQL scripts, validation checks, example output, and a short explanation of findings. Use public or synthetic data.

## Project 1 — Sales Performance Analysis
**Questions**
- What are total sales and quantities by month?
- Which buyers/products contribute most?
- What is the month-over-month growth?
- Which products have declining sales?

**Skills:** joins, aggregation, dates, CTEs, window functions.

## Project 2 — Export Invoice Status and Aging
**Questions**
- How many invoices are pending at each stage?
- Which invoices have been pending longest?
- What are pending amounts by buyer, factory, and month?
- Are status totals consistent with the source report?

**Skills:** `CASE`, dates, aging buckets, conditional aggregation, validation, CTEs.

## Project 3 — ERP vs MIS Reconciliation
**Questions**
- Which business keys appear in one system but not the other?
- Which totals differ by buyer, invoice, or date?
- Are differences caused by duplicates, date logic, missing keys, or join multiplication?

**Skills:** `FULL OUTER JOIN`, `EXCEPT`, aggregation, duplicate detection, data-quality checks.

## Project 4 — Inventory and Stock Analysis
**Questions**
- What is current stock by item, factory, and category?
- Which items are below a reorder threshold?
- Which items have no movement?
- Do stock totals reconcile with transaction records?

**Skills:** joins, aggregation, dates, validation, data modeling.

## Project 5 — HR Attendance Analysis
**Questions**
- What are attendance and lateness trends by month and department?
- Which teams have recurring attendance exceptions?
- How are approved leave and duty assignments treated?

**Skills:** date functions, conditional aggregation, CTEs, window functions. Define policies clearly; do not treat a score as objective without explaining the rules.

## Project 6 — Executive KPI Dataset for Power BI
Build a documented, reusable SQL dataset for a Power BI dashboard.

**Include**
- Fact and dimension tables or a clearly documented source grain.
- Consistent KPI definitions.
- Date dimension and period logic.
- A view or stored procedure where appropriate.
- Reconciliation checks.
- Refresh and data-quality notes.

**Suggested project folder**
```text
22_Real_World_Projects/
├── 01_Sales_Performance/
│   ├── README.md
│   ├── 01_Exploration.sql
│   ├── 02_Cleaning_and_Validation.sql
│   ├── 03_Analysis.sql
│   └── 04_KPI_Report.sql
├── 02_Export_Invoice_Aging/
├── 03_ERP_MIS_Reconciliation/
├── 04_Inventory_Analysis/
├── 05_HR_Attendance_Analysis/
└── 06_PowerBI_KPI_Dataset/
```

---

# 8. Query Quality Checklist

Before submitting or relying on a report, ask:

- [ ] Does the query answer a clearly defined business question?
- [ ] Is the row grain understood (one row per invoice, order line, buyer/month, etc.)?
- [ ] Are joins made on the correct keys?
- [ ] Could any join multiply rows?
- [ ] Are `NULL`, blank, and invalid values handled intentionally?
- [ ] Are date boundaries correct?
- [ ] Are totals and percentages mathematically valid?
- [ ] Is division by zero handled?
- [ ] Have duplicates and unmatched records been checked?
- [ ] Do row counts and totals reconcile with a trusted source?
- [ ] Are aliases meaningful and formatting readable?
- [ ] Are filters appropriate for the report?
- [ ] Is the query performant enough for its expected volume?
- [ ] Are sensitive fields excluded where not needed?
- [ ] Are data assumptions and exceptions documented?

---

# 9. Suggested SQL File Template

Use this header in your practice scripts:

```sql
/*
Topic:
Business question:
Source tables:
Expected grain:
Assumptions:
Validation checks:
Author: Your Name
Date:
*/

-- 1. Explore source data
-- SELECT TOP (20) ...
-- FROM dbo.YourTable;

-- 2. Main query
-- Write the query here.

-- 3. Validation
-- Compare counts, totals, duplicates, and unmatched rows.
```

For each topic, include:
1. A simple example.
2. A realistic business example.
3. Three to five exercises.
4. One edge case or validation query.
5. A short explanation of what you learned.

---

# 10. Common Mistakes to Avoid

- Learning syntax without practicing business questions.
- Using `SELECT *` in every report.
- Joining tables without understanding their grain and cardinality.
- Assuming a join is correct because the query runs.
- Ignoring `NULL` values.
- Using `NOT IN` without considering `NULL` values in the subquery.
- Using `BETWEEN` carelessly with datetime values that include time.
- Filtering a date column with a function when a range predicate would be more appropriate.
- Using `DISTINCT` to hide unexplained duplicate rows.
- Aggregating after a one-to-many join without checking double counting.
- Writing destructive `UPDATE` or `DELETE` statements without previewing target rows.
- Building a dashboard before agreeing on KPI definitions.
- Optimizing queries without measuring performance.
- Publishing real company data or secrets in a public repository.
- Spending too much time on advanced administration before mastering analysis.

---

# 11. Free Official Learning Resources

- Microsoft Learn — SQL Server documentation: https://learn.microsoft.com/en-us/sql/sql-server/
- Microsoft Learn — T-SQL reference: https://learn.microsoft.com/en-us/sql/t-sql/language-reference
- Microsoft Learn — SQL training: https://learn.microsoft.com/en-us/training/browse/?products=sql-server
- Microsoft SQL samples and AdventureWorks: https://learn.microsoft.com/en-us/sql/samples/
- SQLBolt — interactive SQL lessons: https://sqlbolt.com/
- HackerRank SQL practice: https://www.hackerrank.com/domains/sql
- LeetCode SQL problems: https://leetcode.com/problemset/database/
- Git documentation: https://git-scm.com/doc
- Power BI learning: https://learn.microsoft.com/en-us/training/powerplatform/power-bi/

Use official documentation to confirm SQL Server-specific syntax and behavior.

---

# 12. Progress Tracker

## Foundations
- [ ] I can write a `SELECT` query without copying an example.
- [ ] I can filter and sort data correctly.
- [ ] I can use common functions and `CASE`.
- [ ] I can explain how `NULL` affects query results.

## Analysis
- [ ] I can join multiple tables without unexplained duplication.
- [ ] I can summarize data with aggregates.
- [ ] I can use subqueries and CTEs.
- [ ] I can solve common window-function problems.
- [ ] I can analyze dates and calculate period comparisons.
- [ ] I can validate totals, duplicates, and unmatched rows.

## Professional practice
- [ ] I can explain the grain and KPI definitions of a report.
- [ ] I can read and modify a view or stored procedure safely in a test environment.
- [ ] I understand transactions and basic SQL permissions.
- [ ] I can inspect an execution plan and recognize common performance issues.
- [ ] I use Git to track my scripts.
- [ ] I have completed at least three documented projects.
- [ ] I can explain a project to a hiring manager in business terms.

---

# 13. Definition of Job-Ready SQL

You are approaching job-ready SQL analyst level when you can independently:

1. Receive a business question and clarify the metric, date range, and grain.
2. Locate the required tables and identify reliable join keys.
3. Write a readable query using joins, CTEs, aggregates, and window functions as needed.
4. Handle missing, duplicate, invalid, and unmatched records deliberately.
5. Validate results against source totals or a trusted report.
6. Explain assumptions, limitations, and findings in plain language.
7. Deliver repeatable scripts with documented logic.
8. Connect the result to Excel, Power BI, or Python where appropriate.

SQL is one part of the Data Analyst toolkit. Pair this roadmap with **Excel, Power BI (Power Query, data modeling, and DAX), business communication, and basic Python/pandas** to build a stronger professional profile.

---

## Final Advice

**Master the core before chasing advanced features.** For most analyst work, reliable joins, correct aggregation, date logic, data validation, and business understanding matter more than knowing every SQL Server feature. Practice consistently, save every useful query, and turn your strongest work into documented projects.
