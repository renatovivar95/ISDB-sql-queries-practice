# ISDB-sql-queries-practice

This repository contains SQL queries and exercises solved during my **first course in Databases and Information Systems**.  
It is designed as a reference and practice resource for anyone learning SQL, starting from **simple queries** and moving toward **joins, aggregations, subqueries, and more complex logic**.

The repository is divided into two parts:

## Repository Structure

├── sql-queries-1

│ ├── Bank Example - Printable.png # Schema of the Bank database

│ ├── bank.sql # SQL script to create and populate the Bank example

│ ├── queries-practice-1.ipynb # Jupyter Notebook with SQL solutions (PostgreSQL)

│ └── queries-practice-1.pdf # PDF export of the notebook

└── sql-queries-2

├── database.sqlite # SQLite database with soccer data

├── queries-practice-2.ipynb # Jupyter Notebook with SQL solutions (SQLite + PostgreSQL)

├── queries-practice-2.pdf # PDF export of the notebook

└── soccer.drawio.png # Schema diagram of the Soccer database

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

### Part II — Soccer Database (SQLite → PostgreSQL)
- Database schema: **European Soccer Matches** (teams, players, matches, statistics).
- Topics covered:
  - Querying match statistics
  - Aggregations by league and team
  - Identifying key players (e.g., goalkeepers playing all away matches)
  - Creating new tables, functions, and stored procedures (e.g., `match_player` table)
  - Writing queries on the transformed schema

See: [`queries-practice-2.ipynb`](sql-queries-2/queries-practice-2.ipynb) | [`queries-practice-2.pdf`](sql-queries-2/queries-practice-2.pdf)

---

## Setup Instructions

You can replicate the practice environment using either **PostgreSQL** or **SQLite**:

1. **Bank Example**
   - Run `bank.sql` to create and populate the Bank database.
   - Open the Jupyter notebook `queries-practice-1.ipynb` to run queries interactively.

2. **Soccer Example**
   - Use the provided `database.sqlite` file to explore with SQLite.
   - For PostgreSQL, you can migrate the database using [pgloader](https://pgloader.io/).
   - Open `queries-practice-2.ipynb` to follow the queries.

---

## Goal of the Repository

The goal is to provide **common solutions for common query patterns**, serving as a learning and reference guide for students or professionals improving their SQL skills.  

You will find:
- Step-by-step SQL solutions
- Example schemas
- Practice datasets
- Exported results for review

---

## Technologies Used

- **PostgreSQL**
- **SQLite**
- **Jupyter Notebooks** with `ipython-sql` extension
- **pgloader** (for migration tasks)

---

## Database Schemas

- Bank Example: [`Bank Example - Printable.png`](sql-queries-1/Bank%20Example%20-%20Printable.png)  
- Soccer Example: [`soccer.drawio.png`](sql-queries-2/soccer.drawio.png)

---

## License

This repository is for **educational purposes** only.  
You are free to use and adapt the queries for your own learning and practice.