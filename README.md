# SQL Practice: Beginner to Advanced

A structured, hands-on SQL learning repository covering fundamental queries, relational database concepts, intermediate data analysis, advanced SQL programming, performance tuning, and real-world projects.

The goal is to progress from writing your first `SELECT` query to designing reliable, optimized SQL solutions for business applications and reporting systems.

> **Primary database:** Microsoft SQL Server (T-SQL)  
> **Also transferable to:** PostgreSQL, MySQL, Oracle (syntax varies by database)  
> **Level:** Beginner → Intermediate → Advanced

---

## Table of Contents

- [Learning Objectives](#learning-objectives)
- [Prerequisites and Setup](#prerequisites-and-setup)
- [Repository Structure](#repository-structure)
- [Learning Roadmap](#learning-roadmap)
  - [Phase 1: SQL Fundamentals](#phase-1-sql-fundamentals)
  - [Phase 2: Filtering, Sorting, and Built-in Functions](#phase-2-filtering-sorting-and-built-in-functions)
  - [Phase 3: Data Manipulation and Table Design](#phase-3-data-manipulation-and-table-design)
  - [Phase 4: Joins and Set Operators](#phase-4-joins-and-set-operators)
  - [Phase 5: Aggregation and Reporting](#phase-5-aggregation-and-reporting)
  - [Phase 6: Subqueries and CTEs](#phase-6-subqueries-and-ctes)
  - [Phase 7: Intermediate Query Patterns](#phase-7-intermediate-query-patterns)
  - [Phase 8: Advanced SQL and Window Functions](#phase-8-advanced-sql-and-window-functions)
  - [Phase 9: Views, Procedures, Functions, and Triggers](#phase-9-views-procedures-functions-and-triggers)
  - [Phase 10: Transactions and Concurrency](#phase-10-transactions-and-concurrency)
  - [Phase 11: Database Design and Constraints](#phase-11-database-design-and-constraints)
  - [Phase 12: Indexing and Query Optimization](#phase-12-indexing-and-query-optimization)
  - [Phase 13: Security and Production Practices](#phase-13-security-and-production-practices)
- [SQL Query Execution Order](#sql-query-execution-order)
- [Practice Database Ideas](#practice-database-ideas)
- [Real-World Projects](#real-world-projects)
- [Practice Method](#practice-method)
- [Progress Tracker](#progress-tracker)
- [Common SQL Mistakes](#common-sql-mistakes)
- [Recommended Learning Resources](#recommended-learning-resources)
- [Contribution Guidelines](#contribution-guidelines)
- [License](#license)

---

## Learning Objectives

By completing this repository, you should be able to:

- Write readable and accurate SQL queries.
- Create and modify tables and manage relational data.
- Filter, sort, group, and aggregate records.
- Combine data from multiple tables using joins and set operators.
- Solve business problems using subqueries, CTEs, and window functions.
- Build reusable views, stored procedures, and functions.
- Use transactions and error handling safely.
- Design normalized tables with appropriate keys and constraints.
- Analyze execution plans and improve query performance.
- Apply permissions and safe database practices.
- Build reporting and analytics solutions using realistic datasets.

---

## Prerequisites and Setup

### Recommended environment

For the main T-SQL practice path, install:

1. **SQL Server Developer edition** for local learning, or use an authorized SQL Server instance.
2. **SQL Server Management Studio (SSMS)** or **Visual Studio Code** with the SQL Server extension.
3. A sample database such as **AdventureWorks** or a small custom practice database.

Use a local, disposable practice database for exercises involving `UPDATE`, `DELETE`, stored procedures, and schema changes. Never experiment with destructive statements on a production database.

### First query

```sql
SELECT
    'Hello, SQL!' AS message,
    GETDATE() AS current_datetime;
```

> `GETDATE()` is specific to SQL Server. Other database systems provide different date/time functions.

### Create a practice database

```sql
CREATE DATABASE SQLPractice;
GO

USE SQLPractice;
GO
```

`GO` is a client-side batch separator supported by tools such as SSMS; it is not a Transact-SQL statement sent to the database engine.

---

## Repository Structure

A suggested folder layout:

```text
sql-practice/
├── README.md
├── 00_setup/
│   ├── create_database.sql
│   └── sample_data.sql
├── 01_beginner/
│   ├── 01_select.sql
│   ├── 02_where_order_by.sql
│   ├── 03_operators.sql
│   ├── 04_nulls.sql
│   ├── 05_string_functions.sql
│   ├── 06_numeric_functions.sql
│   └── 07_date_functions.sql
├── 02_data_manipulation/
│   ├── 01_create_alter_drop.sql
│   ├── 02_insert.sql
│   ├── 03_update.sql
│   ├── 04_delete.sql
│   └── 05_constraints.sql
├── 03_intermediate/
│   ├── 01_joins.sql
│   ├── 02_aggregates.sql
│   ├── 03_case_expressions.sql
│   ├── 04_subqueries.sql
│   ├── 05_ctes.sql
│   └── 06_set_operators.sql
├── 04_advanced/
│   ├── 01_window_functions.sql
│   ├── 02_recursive_ctes.sql
│   ├── 03_views.sql
│   ├── 04_stored_procedures.sql
│   ├── 05_functions.sql
│   ├── 06_triggers.sql
│   ├── 07_transactions.sql
│   └── 08_error_handling.sql
├── 05_performance/
│   ├── 01_indexes.sql
│   ├── 02_execution_plans.sql
│   └── 03_query_tuning.sql
├── 06_projects/
│   ├── 01_sales_analysis.sql
│   ├── 02_inventory_management.sql
│   ├── 03_hr_analytics.sql
│   └── 04_export_invoice_reporting.sql
└── 07_interview_questions/
    ├── beginner.sql
    ├── intermediate.sql
    └── advanced.sql
```

This is a suggested structure. Create folders and files as you work through each topic.

---

# Learning Roadmap

## Phase 1: SQL Fundamentals

**Goal:** Retrieve data and understand tables.

### Topics

- What SQL is and how relational databases work
- Database, schema, table, row, and column
- Data types: `INT`, `BIGINT`, `DECIMAL`, `VARCHAR`, `NVARCHAR`, `DATE`, `DATETIME2`, `BIT`
- `SELECT`
- Selecting individual columns and all columns
- Column aliases with `AS`
- `DISTINCT`
- `TOP`
- `ORDER BY`
- `ASC` and `DESC`
- `WHERE`
- Comparison operators: `=`, `<>`, `!=`, `<`, `>`, `<=`, `>=`
- Logical operators: `AND`, `OR`, `NOT`
- `IN`, `BETWEEN`, `LIKE`
- Wildcards in `LIKE`
- `IS NULL` and `IS NOT NULL`
- Operator precedence and parentheses

### Practice

```sql
-- Select specific columns
SELECT EmployeeID, EmployeeName, Department
FROM Employees;

-- Return unique departments
SELECT DISTINCT Department
FROM Employees;

-- Filter and sort
SELECT EmployeeID, EmployeeName, Salary
FROM Employees
WHERE Salary >= 30000
ORDER BY Salary DESC;

-- Match a list of departments
SELECT EmployeeID, EmployeeName, Department
FROM Employees
WHERE Department IN ('IT', 'Finance', 'HR');

-- Find names beginning with A
SELECT EmployeeID, EmployeeName
FROM Employees
WHERE EmployeeName LIKE 'A%';

-- Find rows where a value is missing
SELECT EmployeeID, EmployeeName
FROM Employees
WHERE ManagerID IS NULL;
```

### Exercises

- Return the five highest-paid employees.
- Find employees hired after a given date.
- List unique job titles.
- Find names containing a specific substring.
- Identify rows with missing values in a selected column.

---

## Phase 2: Filtering, Sorting, and Built-in Functions

**Goal:** Transform values and write flexible filters.

### Topics

- `CASE` expressions
- `COALESCE`, `ISNULL`, and `NULLIF`
- String functions: `CONCAT`, `LEN`, `LEFT`, `RIGHT`, `SUBSTRING`, `UPPER`, `LOWER`, `TRIM`, `REPLACE`, `CHARINDEX`
- Numeric functions: `ROUND`, `ABS`, `CEILING`, `FLOOR`
- Date/time functions: `GETDATE`, `SYSDATETIME`, `DATEADD`, `DATEDIFF`, `DATEPART`, `DATENAME`, `EOMONTH`, `YEAR`, `MONTH`, `DAY`
- Type conversion: `CAST`, `CONVERT`, `TRY_CAST`, `TRY_CONVERT`
- Conditional logic with `CASE WHEN`
- Handling missing values
- Sorting by calculated expressions
- Pattern matching and data cleaning
- Safe date filtering and date-range boundaries

### Practice

```sql
-- Categorize salary
SELECT
    EmployeeID,
    EmployeeName,
    Salary,
    CASE
        WHEN Salary >= 80000 THEN 'High'
        WHEN Salary >= 40000 THEN 'Medium'
        ELSE 'Entry'
    END AS SalaryCategory
FROM Employees;

-- Clean leading and trailing spaces
SELECT TRIM(EmployeeName) AS CleanEmployeeName
FROM Employees;

-- Replace a missing commission with zero
SELECT
    EmployeeID,
    COALESCE(Commission, 0) AS Commission
FROM Employees;

-- Find employees hired during 2026
SELECT EmployeeID, EmployeeName, HireDate
FROM Employees
WHERE HireDate >= '20260101'
  AND HireDate <  '20270101';

-- Add 30 days to a date
SELECT DATEADD(DAY, 30, CAST('20261001' AS DATE)) AS FutureDate;
```

### Exercises

- Standardize text values and remove extra spaces.
- Classify employees into salary bands.
- Calculate employee tenure.
- Extract year and month from a date.
- Find records with invalid date or numeric text using `TRY_CONVERT`.

---

## Phase 3: Data Manipulation and Table Design

**Goal:** Create tables and modify data safely.

### Topics

- DDL: `CREATE`, `ALTER`, `DROP`, `TRUNCATE`
- DML: `INSERT`, `UPDATE`, `DELETE`
- `INSERT INTO ... SELECT`
- `SELECT INTO`
- `IDENTITY`
- Primary keys and foreign keys
- `NOT NULL`, `UNIQUE`, `CHECK`, `DEFAULT`
- Adding and removing constraints
- Temporary tables: `#TempTable`, `##GlobalTempTable`
- Table variables
- Basic data import and export
- Data type selection
- Referential integrity
- Safe update/delete patterns

### Practice

```sql
CREATE TABLE Departments (
    DepartmentID INT IDENTITY(1,1) PRIMARY KEY,
    DepartmentName NVARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Employees (
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeName NVARCHAR(150) NOT NULL,
    DepartmentID INT NULL,
    Salary DECIMAL(12,2) NOT NULL
        CHECK (Salary >= 0),
    HireDate DATE NOT NULL
        DEFAULT (CONVERT(DATE, GETDATE())),
    CONSTRAINT FK_Employees_Departments
        FOREIGN KEY (DepartmentID)
        REFERENCES Departments(DepartmentID)
);

INSERT INTO Departments (DepartmentName)
VALUES ('IT'), ('Finance'), ('HR');

INSERT INTO Employees
    (EmployeeName, DepartmentID, Salary, HireDate)
VALUES
    ('Amina Rahman', 1, 55000, '20240115'),
    ('Karim Hasan', 2, 48000, '20230610'),
    ('Nadia Islam', 1, 62000, '20220520');

-- Always inspect the target rows before changing them.
SELECT *
FROM Employees
WHERE EmployeeID = 1;

UPDATE Employees
SET Salary = 57000
WHERE EmployeeID = 1;

DELETE FROM Employees
WHERE EmployeeID = 3;
```

### Important safety rule

Never run an `UPDATE` or `DELETE` without verifying the target rows and the `WHERE` condition. For important changes, use a transaction and confirm the affected row count.

---

## Phase 4: Joins and Set Operators

**Goal:** Combine related data from multiple tables.

### Topics

- `INNER JOIN`
- `LEFT JOIN` / `LEFT OUTER JOIN`
- `RIGHT JOIN` / `RIGHT OUTER JOIN`
- `FULL OUTER JOIN`
- `CROSS JOIN`
- Self joins
- Joining three or more tables
- Composite join conditions
- One-to-one, one-to-many, and many-to-many relationships
- `UNION` and `UNION ALL`
- `INTERSECT`
- `EXCEPT`
- Anti-joins with `NOT EXISTS` or `LEFT JOIN ... IS NULL`
- Identifying duplicate rows after joins
- Join cardinality and row multiplication

### Practice

```sql
-- Employees with their department names
SELECT
    e.EmployeeID,
    e.EmployeeName,
    d.DepartmentName
FROM Employees AS e
LEFT JOIN Departments AS d
    ON e.DepartmentID = d.DepartmentID;

-- Employees without a matching department
SELECT e.EmployeeID, e.EmployeeName
FROM Employees AS e
LEFT JOIN Departments AS d
    ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentID IS NULL;

-- Combine two compatible result sets
SELECT EmployeeName AS PersonName
FROM CurrentEmployees
UNION ALL
SELECT EmployeeName
FROM FormerEmployees;
```

### Exercises

- Find departments with no employees.
- List employees with their manager names using a self join.
- Find customers who have never placed an order.
- Compare two datasets and return records found in one but not the other.
- Investigate why a join unexpectedly increases the row count.

---

## Phase 5: Aggregation and Reporting

**Goal:** Summarize records for business reports.

### Topics

- Aggregate functions: `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`
- `GROUP BY`
- `HAVING`
- Conditional aggregation
- `COUNT(*)` versus `COUNT(column)`
- `COUNT(DISTINCT column)`
- Grouping by multiple columns
- Aggregating by month, year, department, customer, or product
- Ratios, percentages, and averages
- `ROLLUP`, `CUBE`, and `GROUPING SETS`
- Pivoting and unpivoting with `PIVOT` and `UNPIVOT`
- Report totals and subtotals

### Practice

```sql
-- Department salary summary
SELECT
    d.DepartmentName,
    COUNT(e.EmployeeID) AS EmployeeCount,
    AVG(e.Salary) AS AverageSalary,
    SUM(e.Salary) AS TotalSalary
FROM Departments AS d
LEFT JOIN Employees AS e
    ON d.DepartmentID = e.DepartmentID
GROUP BY d.DepartmentName
ORDER BY TotalSalary DESC;

-- Departments with at least five employees
SELECT DepartmentID, COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY DepartmentID
HAVING COUNT(*) >= 5;

-- Conditional aggregation
SELECT
    DepartmentID,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Salary >= 50000 THEN 1 ELSE 0 END) AS EmployeesAtOrAbove50000
FROM Employees
GROUP BY DepartmentID;
```

### Exercises

- Calculate monthly sales and year-to-date totals.
- Find the top five products by revenue.
- Calculate each department's share of total salary.
- Produce a report with subtotals by department and job title.
- Count records by status, including pending and completed items.

---

## Phase 6: Subqueries and CTEs

**Goal:** Solve multi-step query problems clearly.

### Topics

- Scalar subqueries
- Single-row and multi-row subqueries
- Correlated subqueries
- Subqueries in `SELECT`, `FROM`, and `WHERE`
- `EXISTS` and `NOT EXISTS`
- `IN` and `NOT IN`, including NULL-related behavior
- Common Table Expressions (CTEs)
- Multiple CTEs
- Recursive CTEs
- Derived tables
- `APPLY`, `CROSS APPLY`, and `OUTER APPLY` in SQL Server
- Choosing between joins, subqueries, and CTEs

### Practice

```sql
-- Employees earning above the overall average
SELECT EmployeeID, EmployeeName, Salary
FROM Employees
WHERE Salary > (
    SELECT AVG(Salary)
    FROM Employees
);

-- Departments with at least one employee
SELECT d.DepartmentID, d.DepartmentName
FROM Departments AS d
WHERE EXISTS (
    SELECT 1
    FROM Employees AS e
    WHERE e.DepartmentID = d.DepartmentID
);

-- A CTE for department salary totals
WITH DepartmentSalary AS (
    SELECT DepartmentID, SUM(Salary) AS TotalSalary
    FROM Employees
    GROUP BY DepartmentID
)
SELECT DepartmentID, TotalSalary
FROM DepartmentSalary
WHERE TotalSalary > 100000;
```

### Exercises

- Find employees earning more than their department's average salary.
- Find the latest order for each customer.
- Identify customers who placed orders in every month of a period.
- Use a recursive CTE to represent an employee-manager hierarchy.
- Rewrite a query using both a join and a subquery, then compare clarity and performance.

---

## Phase 7: Intermediate Query Patterns

**Goal:** Handle common data-cleaning and business logic problems.

### Topics

- Duplicate detection with `GROUP BY` and `HAVING`
- Duplicate removal using `ROW_NUMBER()` and a controlled delete
- Missing and unmatched records
- Gaps and islands
- Consecutive dates and streaks
- Latest row per group
- First and last transaction per customer
- Top N records per category
- Conditional updates
- Upsert concepts and SQL Server `MERGE` considerations
- `OUTPUT` clause
- `CROSS APPLY` and `OUTER APPLY`
- Data quality checks
- Reconciliation between source and target datasets
- Dynamic filters and optional parameters
- Pagination with `OFFSET ... FETCH`
- Idempotent data-processing patterns

### Practice: Find duplicate values

```sql
SELECT Email, COUNT(*) AS DuplicateCount
FROM Customers
GROUP BY Email
HAVING COUNT(*) > 1;
```

### Practice: Latest record per customer

```sql
WITH RankedOrders AS (
    SELECT
        OrderID,
        CustomerID,
        OrderDate,
        ROW_NUMBER() OVER (
            PARTITION BY CustomerID
            ORDER BY OrderDate DESC, OrderID DESC
        ) AS rn
    FROM Orders
)
SELECT OrderID, CustomerID, OrderDate
FROM RankedOrders
WHERE rn = 1;
```

### Exercises

- Find duplicate invoice numbers and decide which records need review.
- Find the latest status for every order.
- Compare two tables to identify missing or changed records.
- Find date gaps in a sequence of daily transactions.
- Return page 3 of a sorted result set.

---

## Phase 8: Advanced SQL and Window Functions

**Goal:** Perform advanced analytics without collapsing rows into groups.

### Window function topics

- `OVER`
- `PARTITION BY`
- `ORDER BY` inside `OVER`
- Window frames: `ROWS BETWEEN ...`
- `ROW_NUMBER`
- `RANK`
- `DENSE_RANK`
- `NTILE`
- `LAG`
- `LEAD`
- `FIRST_VALUE`
- `LAST_VALUE`
- Running totals
- Moving averages
- Percentages of total
- Period-over-period comparisons
- Ranking within categories
- Window aggregates and frame boundaries

### Other advanced topics

- Recursive CTE patterns
- Advanced `CASE` logic
- `PIVOT` and `UNPIVOT`
- JSON support in SQL Server
- XML basics where relevant
- Dynamic SQL and `sp_executesql`
- Table-valued parameters
- Temporary objects and query scope
- Set-based processing versus cursors
- Query design for large datasets

### Practice: Rank employees by salary within each department

```sql
SELECT
    EmployeeID,
    EmployeeName,
    DepartmentID,
    Salary,
    DENSE_RANK() OVER (
        PARTITION BY DepartmentID
        ORDER BY Salary DESC
    ) AS SalaryRank
FROM Employees;
```

### Practice: Running total of sales

```sql
SELECT
    OrderDate,
    OrderID,
    TotalAmount,
    SUM(TotalAmount) OVER (
        ORDER BY OrderDate, OrderID
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS RunningTotal
FROM Orders;
```

### Practice: Compare a value with the previous row

```sql
SELECT
    ProductID,
    SnapshotDate,
    StockQuantity,
    LAG(StockQuantity) OVER (
        PARTITION BY ProductID
        ORDER BY SnapshotDate
    ) AS PreviousStockQuantity
FROM InventorySnapshots;
```

### Exercises

- Return the top three salaries in each department.
- Calculate a rolling seven-day sales total.
- Compare current-month sales with the previous month.
- Identify products whose stock decreased between snapshots.
- Calculate each customer's percentage contribution to revenue.

---

## Phase 9: Views, Procedures, Functions, and Triggers

**Goal:** Create reusable database objects and encapsulate business logic.

### Views

- `CREATE VIEW`
- `ALTER VIEW` and `CREATE OR ALTER VIEW`
- Views for reporting
- View limitations and updateability
- Schema binding
- Indexed views and their restrictions

```sql
CREATE OR ALTER VIEW dbo.vw_EmployeeDepartment
AS
SELECT
    e.EmployeeID,
    e.EmployeeName,
    d.DepartmentName,
    e.Salary
FROM dbo.Employees AS e
LEFT JOIN dbo.Departments AS d
    ON e.DepartmentID = d.DepartmentID;
GO
```

### Stored procedures

- `CREATE PROCEDURE`
- Input and output parameters
- Default parameter values
- `EXEC` / `EXECUTE`
- Return codes
- Parameter validation
- `SET NOCOUNT ON`
- `TRY...CATCH`
- Transaction handling
- Dynamic SQL with `sp_executesql`
- Altering and dropping stored procedures
- Permissions and execution context

```sql
CREATE OR ALTER PROCEDURE dbo.GetEmployeesByDepartment
    @DepartmentID INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT EmployeeID, EmployeeName, Salary
    FROM dbo.Employees
    WHERE DepartmentID = @DepartmentID
    ORDER BY EmployeeName;
END;
GO

EXEC dbo.GetEmployeesByDepartment @DepartmentID = 1;
```

### Functions

- Scalar user-defined functions
- Inline table-valued functions
- Multi-statement table-valued functions
- Parameters and return values
- Determinism and performance considerations
- When a view or stored procedure is more suitable

### Triggers

- `AFTER` triggers
- `INSTEAD OF` triggers
- `INSERTED` and `DELETED` pseudo-tables
- Multi-row-safe trigger design
- Audit logging
- Trigger recursion and side effects
- When not to use triggers

### Other database objects

- Schemas
- Synonyms
- Sequences
- Constraints
- SQL Server Agent jobs (where available)
- User-defined table types

### Exercises

- Create a procedure that returns pending invoices by date range.
- Add validation for invalid date ranges.
- Create a view that summarizes monthly sales.
- Write a multi-row-safe audit trigger.
- Compare a view, inline table-valued function, and stored procedure for a reporting requirement.

---

## Phase 10: Transactions and Concurrency

**Goal:** Protect data integrity during multi-step operations.

### Topics

- ACID properties
- `BEGIN TRANSACTION`
- `COMMIT`
- `ROLLBACK`
- `SAVE TRANSACTION`
- `TRY...CATCH`
- `XACT_STATE()`
- `@@TRANCOUNT`
- `SET XACT_ABORT ON`
- Isolation levels:
  - `READ UNCOMMITTED`
  - `READ COMMITTED`
  - `REPEATABLE READ`
  - `SNAPSHOT`
  - `SERIALIZABLE`
- Locking and blocking
- Deadlocks and deadlock graphs
- Optimistic versus pessimistic concurrency
- Lost updates and dirty reads
- Transaction scope and duration

### Practice

```sql
SET XACT_ABORT ON;

BEGIN TRY
    BEGIN TRANSACTION;

    UPDATE dbo.Employees
    SET Salary = Salary + 1000
    WHERE EmployeeID = 1;

    -- Verify the result before committing.
    SELECT EmployeeID, EmployeeName, Salary
    FROM dbo.Employees
    WHERE EmployeeID = 1;

    COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    IF XACT_STATE() <> 0
        ROLLBACK TRANSACTION;

    THROW;
END CATCH;
```

Practice transaction examples in a test database. Understand the effects before applying them to real data.

---

## Phase 11: Database Design and Constraints

**Goal:** Build consistent and maintainable relational models.

### Topics

- Entities, attributes, and relationships
- Primary and foreign keys
- Candidate and composite keys
- Natural keys versus surrogate keys
- One-to-one, one-to-many, and many-to-many relationships
- Junction tables
- Referential integrity
- Normalization: 1NF, 2NF, 3NF, and BCNF concepts
- Functional dependencies
- Denormalization and trade-offs
- Choosing data types and lengths
- Handling NULLs correctly
- Unique constraints and check constraints
- Naming conventions
- ER diagrams
- OLTP versus OLAP
- Fact and dimension tables
- Star and snowflake schemas
- Slowly changing dimensions (overview)

### Practice

Design a small sales system containing:

- `Customers`
- `Products`
- `Orders`
- `OrderDetails`
- `Payments`

Define primary keys, foreign keys, appropriate data types, uniqueness rules, and validation constraints. Explain why each relationship exists.

---

## Phase 12: Indexing and Query Optimization

**Goal:** Understand why queries are slow and how to improve them.

### Topics

- Clustered and nonclustered indexes
- Composite indexes and column order
- Included columns
- Unique indexes
- Filtered indexes
- Index selectivity
- Index seeks versus scans
- Execution plans: estimated and actual
- Query cost estimates and their limitations
- Statistics and cardinality estimation
- SARGable predicates
- Implicit conversions
- Avoiding unnecessary `SELECT *`
- Avoiding functions on filtered columns when they prevent efficient index access
- Join and aggregation performance
- Appropriate data types
- Key lookups
- Sort and spill warnings
- Parameter sniffing and plan reuse
- Query Store
- Missing-index suggestions and their limitations
- Index fragmentation and maintenance trade-offs
- Measuring before and after changes

### Practice: Create an index

```sql
CREATE NONCLUSTERED INDEX IX_Employees_DepartmentID
ON dbo.Employees (DepartmentID)
INCLUDE (EmployeeName, Salary);
```

Do not create indexes indiscriminately. Indexes use storage and can slow down inserts, updates, and deletes. Measure the workload and inspect execution plans.

### Practice: Use a SARGable date range

```sql
-- Usually preferable to applying YEAR() to every row:
SELECT OrderID, OrderDate
FROM dbo.Orders
WHERE OrderDate >= '20260101'
  AND OrderDate <  '20270101';
```

### Performance checklist

- Does the query return only the columns needed?
- Are filters selective and data types compatible?
- Are joins based on correct keys?
- Are duplicates caused by one-to-many joins?
- Does the actual execution plan show expensive scans, sorts, spills, or lookups?
- Are indexes aligned with the real workload?
- Have duration, reads, and row counts been measured before and after changes?
- Is the result still correct after optimization?

---

## Phase 13: Security and Production Practices

**Goal:** Write SQL that is safer to operate and maintain.

### Topics

- Least-privilege access
- Database roles and permissions
- `GRANT`, `DENY`, and `REVOKE`
- SQL injection
- Parameterized queries
- Dynamic SQL safety
- Avoiding string concatenation for user-supplied values
- Sensitive data handling
- Auditing and change tracking
- Backup and restore concepts
- Development, testing, and production environments
- Deployment scripts and rollback planning
- Naming conventions and formatting
- Documentation and comments
- Error handling and meaningful messages
- Idempotent scripts
- Version control for SQL scripts
- Testing edge cases and NULL values

### Security rules

- Use parameterized queries in application code.
- Prefer `sp_executesql` with parameters when dynamic SQL is necessary.
- Grant only the permissions required for the task.
- Do not expose passwords, connection strings, or sensitive production data in a repository.
- Test destructive operations on disposable data first.
- Use an explicit transaction and a reviewed rollback plan for high-impact changes.
- A read-only reporting assistant should be restricted by database permissions as well as application-side validation; a text check alone is not a complete security boundary.

---

## SQL Query Execution Order

A simplified logical processing order for a typical `SELECT` query is:

1. `FROM` and `JOIN`
2. `ON`
3. `WHERE`
4. `GROUP BY`
5. `HAVING`
6. `SELECT`
7. `DISTINCT`
8. `ORDER BY`
9. `TOP` / `OFFSET ... FETCH` (logical details depend on the query and database)

This explains why a `SELECT` alias usually cannot be referenced in `WHERE` at the same query level, while it can often be used in `ORDER BY`.

Example:

```sql
SELECT
    DepartmentID,
    AVG(Salary) AS AverageSalary
FROM Employees
WHERE Salary > 0
GROUP BY DepartmentID
HAVING AVG(Salary) > 40000
ORDER BY AverageSalary DESC;
```

---

## Practice Database Ideas

Use a consistent dataset across multiple topics so you can build on earlier work.

### 1. Employee database

Tables: `Employees`, `Departments`, `Attendance`, `LeaveRequests`, `Salaries`

Practice: joins, tenure, attendance summaries, conditional aggregation, ranking, and HR reporting.

### 2. Sales database

Tables: `Customers`, `Products`, `Orders`, `OrderDetails`, `Payments`

Practice: revenue, top products, customer retention, monthly comparisons, and running totals.

### 3. Inventory database

Tables: `Items`, `Warehouses`, `StockMovements`, `PurchaseOrders`, `GoodsReceipts`

Practice: current stock, stock movement reconciliation, low-stock alerts, and inventory valuation.

### 4. Export invoice reporting database

Tables might include `ExportInvoices`, `Buyers`, `Factories`, `ShippingBills`, `OnBoardRecords`, `BankSubmissions`, and `Realizations`.

Practice: pending-status reports, invoice reconciliation, date-range reporting, duplicate checks, factory-wise summaries, and exception handling.

Use fictional or sanitized data for portfolio projects. Do not upload confidential company records.

---

## Real-World Projects

Complete each project with a schema, sample data, SQL scripts, expected outputs, and a short explanation of the business problem.

### Project 1: Sales Performance Dashboard Dataset

- Monthly and yearly revenue
- Top products and customers
- Revenue contribution percentage
- Month-over-month growth
- Running totals and rolling averages
- A reusable reporting view

### Project 2: Inventory and Stock Reconciliation

- Opening stock, receipts, issues, and closing stock
- Identify negative stock and inconsistent movements
- Compare system stock with physical stock
- Find duplicate or missing transaction references
- Add indexes and measure query performance

### Project 3: HR Attendance Analytics

- Employee-wise attendance summary
- Late arrivals and absence counts
- Monthly attendance rates
- Department-level comparison
- Explainable rule-based attendance categories
- Data quality checks for missing or conflicting records

### Project 4: Export Invoice Pending Status

- Identify invoices pending at each business stage
- Filter by factory, buyer, and date range
- Detect missing shipping-bill or bank-submission information
- Reconcile invoice totals between reports
- Build a stored procedure with validated parameters
- Produce exception reports for duplicate and missing references

### Project 5: SQL Performance Investigation

- Create a large synthetic dataset
- Record a baseline execution plan and logical reads
- Add or revise an index
- Compare actual runtime, reads, and row counts
- Explain the improvement and any trade-offs

---

## Practice Method

For every topic:

1. Read the concept and understand when it is useful.
2. Type the query yourself instead of only copying it.
3. Predict the output before executing the query.
4. Run it against the practice database.
5. Test edge cases: empty results, duplicates, NULLs, and boundary dates.
6. Rewrite the query in a different way where appropriate.
7. Check correctness before considering performance.
8. Save the exercise in the relevant `.sql` file.
9. Add comments explaining the business rule.
10. Commit meaningful changes to Git.

### Suggested weekly routine

| Day | Focus |
|---|---|
| Day 1 | Learn the topic and run guided examples |
| Day 2 | Solve beginner exercises |
| Day 3 | Solve intermediate problems |
| Day 4 | Apply the topic to a business dataset |
| Day 5 | Review mistakes and rewrite queries |
| Day 6 | Build or improve a mini-project |
| Day 7 | Revise and document what you learned |

Adjust the pace to your available study time. Consistent practice is more important than rushing through every topic.

---

## Progress Tracker

Mark each topic as complete only when you can solve several problems independently.

### Beginner

- [ ] `SELECT`, aliases, `DISTINCT`, `TOP`
- [ ] `WHERE`, operators, `IN`, `BETWEEN`, `LIKE`
- [ ] NULL handling
- [ ] `ORDER BY`
- [ ] String, numeric, date, and conversion functions
- [ ] `CASE`
- [ ] `CREATE`, `ALTER`, `DROP`
- [ ] `INSERT`, `UPDATE`, `DELETE`
- [ ] Keys and constraints
- [ ] Basic joins
- [ ] `GROUP BY`, aggregate functions, `HAVING`

### Intermediate

- [ ] All major join types
- [ ] Set operators
- [ ] Subqueries and correlated subqueries
- [ ] `EXISTS` and `NOT EXISTS`
- [ ] CTEs and derived tables
- [ ] Duplicate detection and data cleaning
- [ ] Conditional aggregation
- [ ] Latest row per group
- [ ] Pagination
- [ ] Views
- [ ] Basic stored procedures and parameters
- [ ] Transaction fundamentals

### Advanced

- [ ] Window functions and window frames
- [ ] Recursive CTEs
- [ ] Advanced grouping and pivoting
- [ ] Functions, triggers, and error handling
- [ ] Dynamic SQL and parameterization
- [ ] ACID, isolation levels, locking, and deadlocks
- [ ] Normalization and dimensional modeling
- [ ] Index design
- [ ] Execution-plan analysis
- [ ] Query tuning and measurement
- [ ] Permissions and SQL injection prevention
- [ ] Completed at least two real-world projects

---

## Common SQL Mistakes

1. **Using `= NULL`**  
   Use `IS NULL` or `IS NOT NULL`.

2. **Forgetting the `WHERE` clause in a modification**  
   Preview the affected rows before running an `UPDATE` or `DELETE`.

3. **Using `NOT IN` with a set containing NULL**  
   The result can be surprising. Consider `NOT EXISTS` where appropriate.

4. **Using `SELECT *` in production reports**  
   Select only the columns needed to improve clarity and reduce unnecessary data transfer.

5. **Joining on the wrong key**  
   Confirm table relationships and compare row counts before and after joins.

6. **Ignoring one-to-many relationships**  
   A join can legitimately produce multiple rows for one parent record.

7. **Filtering a date with an imprecise end boundary**  
   Prefer half-open ranges: `>= start_date AND < next_period_start`.

8. **Assuming a CTE is automatically materialized**  
   A CTE is a query expression; it is not automatically stored as a temporary result.

9. **Creating indexes without measurement**  
   Examine the execution plan and workload before adding indexes.

10. **Concatenating user input into SQL**  
    Use parameters to reduce SQL injection risk.

11. **Using a cursor when a set-based solution is possible**  
    Prefer set-based operations when they express the requirement clearly and correctly.

12. **Confusing `DELETE`, `TRUNCATE`, and `DROP`**  
    They have different effects, permissions, logging behavior, and rollback considerations.

---

## Recommended Learning Resources

- [Microsoft Learn: Transact-SQL reference](https://learn.microsoft.com/en-us/sql/t-sql/language-reference)
- [Microsoft Learn: SQL Server documentation](https://learn.microsoft.com/en-us/sql/sql-server/)
- [Microsoft Learn: Query processing architecture guide](https://learn.microsoft.com/en-us/sql/relational-databases/query-processing-architecture-guide)
- [Microsoft Learn: Index architecture and design guide](https://learn.microsoft.com/en-us/sql/relational-databases/sql-server-index-design-guide)
- [SQLBolt: Interactive SQL lessons](https://sqlbolt.com/)
- [SQLZoo: Interactive SQL tutorials](https://sqlzoo.net/wiki/SQL_Tutorial)
- [Use The Index, Luke: SQL indexing and tuning](https://use-the-index-luke.com/)
- [AdventureWorks sample databases](https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure)

**Tip:** Follow the SQL Server documentation for T-SQL-specific features and use interactive tutorials for additional repetition. Syntax and feature support differ across database engines.

---

## Contribution Guidelines

Contributions are welcome.

1. Create a branch for your changes.
2. Use descriptive file names and consistent formatting.
3. Include sample tables and data when needed.
4. Add comments to explain non-obvious logic.
5. Include expected output or validation steps for exercises.
6. Test scripts against the stated database engine.
7. Never commit credentials, confidential information, or production data.
8. Submit a pull request with a clear description of the change.

---

## License

Choose a license before publishing this repository publicly. If you intend to share and reuse the material openly, consider adding an appropriate open-source license file.

---

## Final Goal

By the end of this roadmap, you should be able to:

- Write SQL confidently from basic retrieval to advanced analytics.
- Design relational tables and maintain data integrity.
- Build reusable reporting queries and stored procedures.
- Debug incorrect results and reconcile datasets.
- Analyze execution plans and improve query performance.
- Develop a portfolio of practical SQL projects.

**Learn the concept → write the query → test the result → handle edge cases → optimize → document.**
