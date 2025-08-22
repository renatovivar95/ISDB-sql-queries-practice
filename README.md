# SQL Queries Practice Repository

This repository contains SQL queries and exercises solved during my courses in **Databases and Information Systems.**  
It is designed as a reference and practice resource for anyone learning SQL, starting from **simple queries** and moving toward **joins, aggregations, subqueries, and more complex logic**, and later exploring **query optimization techniques**.

---

## Repository Structure

.
├── README.md

├── estructura_proyecto.txt

├── sql-queries-1

│   ├── Bank Example - Printable.png

│   ├── bank.sql

│   ├── queries-practice-1.ipynb

│   └── queries-practice-1.pdf

├── sql-queries-2

│   ├── database.sqlite

│   ├── queries-practice-2.ipynb

│   ├── queries-practice-2.pdf

│   └── soccer.drawio.png

├── sql-queries-optimization-1

│   ├── index_data.sql

│   ├── sql-opt-1.ipynb

│   └── sql-opt-1.pdf

└── sql-queries-optimization-2

    ├── ProjectDB.bak

    ├── recommendations.sql

    ├── sql-opt-2-documentation.pdf

    └── worload.sql



---

## Content Overview

### Part I — Bank Example (PostgreSQL)
- Database schema: **Bank** (accounts, customers, loans, branches).
- Topics covered:
  - Simple selection queries
  - Filtering and ordering
  - Joins
  - Aggregations (`SUM`, `COUNT`, `AVG`)
  - Subqueries and nested queries
  - Advanced queries (e.g., comparing assets vs liabilities, customers with conditions)

See: [`queries-practice-1.ipynb`](sql-queries-1/queries-practice-1.ipynb) | [`queries-practice-1.pdf`](sql-queries-1/queries-practice-1.pdf)

---

### Part II — Soccer Database (SQLite & PostgreSQL)
- Database schema: **European Soccer Matches** (teams, players, matches, statistics).
- Topics covered:
  - Querying match statistics
  - Aggregations by league and team
  - Identifying key players (e.g., goalkeepers playing all away matches)
  - Migration of SQLite database to PostgreSQL using `pgloader`
  - Creating new tables, functions, and stored procedures (e.g., `match_player` table)
  - Writing queries on the transformed schema

See: [`queries-practice-2.ipynb`](sql-queries-2/queries-practice-2.ipynb) | [`queries-practice-2.pdf`](sql-queries-2/queries-practice-2.pdf)

---

### Part III — Query Optimization I (PostgreSQL, Bank Example)
- Goal: **Analyze the improvement of query performance with indexes**.
- Materials:
  - [`index_data.sql`](sql-queries-optimization-1/index_data.sql) → Creates the data to experiment with.
  - [`sql-opt-1.ipynb`](sql-queries-optimization-1/sql-opt-1.ipynb) → Editable Jupyter notebook with queries and EXPLAIN plans.
  - [`sql-opt-1.pdf`](sql-queries-optimization-1/sql-opt-1.pdf) → PDF with results and analysis.
- Notes:
  - The environment does not need to be the same as in the course — anyone can create and practice using `index_data.sql`.
  - The **Bank Example schema (`bank.sql`)** is reused here.
- Topics covered:
  - Comparing **index scans vs sequential scans**
  - Using **B-tree vs hash indexes**
  - Analyzing execution plans (`EXPLAIN`)
  - Case studies with range queries, equality conditions, and aggregate queries.

See: [`sql-opt-1.pdf`](sql-queries-optimization-1/sql-opt-1.pdf)

---

### Part IV — Query Optimization II (SQL Server, Energy Consumption Project)
- Goal: **Optimization with indexes, materialized views, and tuning advisor**.
- Materials:
  - [`ProjectDB.bak`](sql-queries-optimization-2/ProjectDB.bak) → Backup of the project database.
  - [`worload.sql`](sql-queries-optimization-2/worload.sql) → Workload queries used for the tuning advisor.
  - [`recommendations.sql`](sql-queries-optimization-2/recommendations.sql) → Output of the tuning advisor.
  - [`sql-opt-2-documentation.pdf`](sql-queries-optimization-2/sql-opt-2-documentation.pdf) → Full explanation of the tasks and results.
- Topics covered:
  - **Query optimization by index creation**  
  - **Materialized views (indexed views in SQL Server)**  
  - **Database Engine Tuning Advisor**: using workload queries to generate optimization recommendations.
- Notes:
  - The `.bak` file can be restored in SQL Server to replicate the environment.
  - The workload file was analyzed with the tuning advisor, and the recommendations (indexes + materialized views) are included.

See: [`sql-opt-2-documentation.pdf`](sql-queries-optimization-2/sql-opt-2-documentation.pdf)

---

## Setup Instructions

You can replicate the practice environment using **PostgreSQL**, **SQLite**, or **SQL Server**:

1. **Bank Example**
   - Run `bank.sql` to create and populate the Bank database.
   - Open the Jupyter notebook `queries-practice-1.ipynb` to run queries interactively.

2. **Soccer Example**
   - Use the provided `database.sqlite` file to explore with SQLite.
   - For PostgreSQL, migrate the database using [pgloader](https://pgloader.io/).
   - Open `queries-practice-2.ipynb` to follow the queries.

3. **Optimization I**
   - Run `index_data.sql` (plus `bank.sql`) to set up tables.
   - Use `sql-opt-1.ipynb` or `sql-opt-1.pdf` to follow the optimization tasks.

4. **Optimization II**
   - Restore `ProjectDB.bak` in SQL Server.
   - Use `worload.sql` with **Database Engine Tuning Advisor** to replicate recommendations.
   - Consult `sql-opt-2-documentation.pdf` for step-by-step details.

---

## Goal of the Repository

The goal is to provide **common solutions for common query patterns**, along with **optimization strategies**.  
It serves as a **learning and reference guide** for students or professionals improving their SQL skills.  

You will find:
- Step-by-step SQL solutions
- Example schemas
- Practice datasets
- Optimization experiments
- Exported results for review

---

## Technologies Used

- **PostgreSQL**
- **SQLite**
- **SQL Server**
- **Jupyter Notebooks** with `ipython-sql` extension
- **pgloader** (for migration tasks)
- **Database Engine Tuning Advisor**

---

## Database Schemas

- Bank Example: [`Bank Example - Printable.png`](sql-queries-1/Bank%20Example%20-%20Printable.png)  
- Soccer Example: [`soccer.drawio.png`](sql-queries-2/soccer.drawio.png)

---

## License

This repository is for **educational purposes** only.  
You are free to use and adapt the queries for your own learning and practice.
